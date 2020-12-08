#
# Copyright 2018 Analytics Zoo Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

import copy
from collections import namedtuple
from io import BytesIO
import numpy as np
from itertools import chain, islice

from enum import Enum
import json


class DType(Enum):
    STRING = 1
    BYTES = 2
    INT32 = 3
    FLOAT32 = 4
    UINT8 = 5


def ndarray_dtype_to_dtype(dtype):

    if dtype == np.int32:
        return DType.INT32

    if dtype == np.float32:
        return DType.FLOAT32

    if dtype == np.uint8:
        return DType.UINT8

    raise ValueError(f"{dtype} is not supported")


class FeatureType(Enum):
    IMAGE = 1
    NDARRAY = 2
    SCALAR = 3


PUBLIC_ENUMS = {
    "FeatureType": FeatureType,
    "DType": DType
}


class SchemaField(namedtuple("SchemaField", ("feature_type", "dtype", "shape"))):

    def to_dict(self):
        return {
            "feature_type": self.feature_type,
            "dtype": self.dtype,
            "shape": self.shape
        }

    @classmethod
    def from_dict(cls, d):
        return cls(**d)


class EnumEncoder(json.JSONEncoder):
    def default(self, obj):
        if type(obj) in PUBLIC_ENUMS.values():
            return {"__enum__": str(obj)}
        return json.JSONEncoder.default(self, obj)


def as_enum(d):
    if "__enum__" in d:
        name, member = d["__enum__"].split(".")
        return getattr(PUBLIC_ENUMS[name], member)
    else:
        return d


def encode_schema(schema):

    copy_schema = schema.copy()

    for k, v in copy_schema.items():
        copy_schema[k] = v.to_dict()

    return json.dumps(copy_schema, cls=EnumEncoder)


def decode_schema(j_str):
    schema_dict = json.loads(j_str, object_hook=as_enum)
    schema = {}
    for k, v in schema_dict.items():
        schema[k] = SchemaField.from_dict(v)
    return schema


def decode_ndarray(bs):
    return np.load(BytesIO(bs))['arr']


def row_to_dict(schema, row):

    row_dict = {}
    for k, field in schema.items():
        if field.feature_type == FeatureType.IMAGE:
            row_dict[k] = row[k]
        elif field.feature_type == FeatureType.NDARRAY:
            row_dict[k] = decode_ndarray(row[k])
        else:
            row_dict[k] = row[k]

    return row_dict


def dict_to_row(schema, row_dict):
    import pyspark
    err_msg = 'Dictionary fields \n{}\n do not match schema fields \n{}'\
        .format('\n'.join(sorted(row_dict.keys())), '\n'.join(schema.keys()))
    assert set(row_dict.keys()) == set(schema.keys()), err_msg

    row = {}
    for k, v in row_dict.items():
        schema_field = schema[k]
        if schema_field.feature_type == FeatureType.IMAGE:
            image_path = v
            with open(image_path, "rb") as f:
                img_bytes = f.read()
            row[k] = bytearray(img_bytes)
        elif schema_field.feature_type == FeatureType.NDARRAY:
            memfile = BytesIO()
            np.savez_compressed(memfile, arr=v)
            row[k] = bytearray(memfile.getvalue())
        else:
            row[k] = v
    return pyspark.Row(**row)


def chunks(iterable, size=10):
    iterator = iter(iterable)
    for first in iterator:
        yield chain([first], islice(iterator, size - 1))
