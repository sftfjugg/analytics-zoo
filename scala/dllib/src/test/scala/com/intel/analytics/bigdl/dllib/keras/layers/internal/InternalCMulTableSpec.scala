/*
 * Copyright 2018 Analytics Zoo Authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.intel.analytics.bigdl.dllib.keras.layers.internal

import com.intel.analytics.bigdl.dllib.tensor.Tensor
import com.intel.analytics.bigdl.dllib.utils.T
import com.intel.analytics.zoo.pipeline.api.keras.serializer.ModuleSerializationTest

class InternalCMulTableSerialTest extends ModuleSerializationTest {
  override def test(): Unit = {
    val layer = new InternalCMulTable[Float]().
      setName("InternalCMulTable")
    val a = Tensor[Float](2, 5, 5).rand()
    val b = Tensor[Float](2, 5, 5).rand()
    runSerializationTest(layer, T(a, b))
  }
}
