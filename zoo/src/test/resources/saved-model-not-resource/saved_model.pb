??
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype?
is_initialized
"
dtypetype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve*1.13.12b'v1.13.1-0-g6612da8951'??
~
PlaceholderPlaceholder*
dtype0*/
_output_shapes
:?????????*$
shape:?????????
?
6LeNet/conv1/weights/Initializer/truncated_normal/shapeConst*&
_class
loc:@LeNet/conv1/weights*%
valueB"             *
dtype0*
_output_shapes
:
?
5LeNet/conv1/weights/Initializer/truncated_normal/meanConst*&
_class
loc:@LeNet/conv1/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
?
7LeNet/conv1/weights/Initializer/truncated_normal/stddevConst*&
_class
loc:@LeNet/conv1/weights*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
@LeNet/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6LeNet/conv1/weights/Initializer/truncated_normal/shape*
T0*&
_class
loc:@LeNet/conv1/weights*
seed2 *
dtype0*&
_output_shapes
: *

seed 
?
4LeNet/conv1/weights/Initializer/truncated_normal/mulMul@LeNet/conv1/weights/Initializer/truncated_normal/TruncatedNormal7LeNet/conv1/weights/Initializer/truncated_normal/stddev*&
_output_shapes
: *
T0*&
_class
loc:@LeNet/conv1/weights
?
0LeNet/conv1/weights/Initializer/truncated_normalAdd4LeNet/conv1/weights/Initializer/truncated_normal/mul5LeNet/conv1/weights/Initializer/truncated_normal/mean*&
_output_shapes
: *
T0*&
_class
loc:@LeNet/conv1/weights
?
LeNet/conv1/weights
VariableV2*
shape: *
dtype0*&
_output_shapes
: *
shared_name *&
_class
loc:@LeNet/conv1/weights*
	container 
?
LeNet/conv1/weights/AssignAssignLeNet/conv1/weights0LeNet/conv1/weights/Initializer/truncated_normal*
use_locking(*
T0*&
_class
loc:@LeNet/conv1/weights*
validate_shape(*&
_output_shapes
: 
?
LeNet/conv1/weights/readIdentityLeNet/conv1/weights*
T0*&
_class
loc:@LeNet/conv1/weights*&
_output_shapes
: 
?
$LeNet/conv1/biases/Initializer/zerosConst*
dtype0*
_output_shapes
: *%
_class
loc:@LeNet/conv1/biases*
valueB *    
?
LeNet/conv1/biases
VariableV2*
dtype0*
_output_shapes
: *
shared_name *%
_class
loc:@LeNet/conv1/biases*
	container *
shape: 
?
LeNet/conv1/biases/AssignAssignLeNet/conv1/biases$LeNet/conv1/biases/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@LeNet/conv1/biases*
validate_shape(*
_output_shapes
: 
?
LeNet/conv1/biases/readIdentityLeNet/conv1/biases*
_output_shapes
: *
T0*%
_class
loc:@LeNet/conv1/biases
j
LeNet/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
LeNet/conv1/Conv2DConv2DPlaceholderLeNet/conv1/weights/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:????????? *
	dilations

?
LeNet/conv1/BiasAddBiasAddLeNet/conv1/Conv2DLeNet/conv1/biases/read*
data_formatNHWC*/
_output_shapes
:????????? *
T0
g
LeNet/conv1/ReluReluLeNet/conv1/BiasAdd*
T0*/
_output_shapes
:????????? 
?
LeNet/pool1/MaxPoolMaxPoolLeNet/conv1/Relu*
ksize
*
paddingVALID*/
_output_shapes
:????????? *
T0*
data_formatNHWC*
strides

?
6LeNet/conv2/weights/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*&
_class
loc:@LeNet/conv2/weights*%
valueB"          @   
?
5LeNet/conv2/weights/Initializer/truncated_normal/meanConst*&
_class
loc:@LeNet/conv2/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
?
7LeNet/conv2/weights/Initializer/truncated_normal/stddevConst*&
_class
loc:@LeNet/conv2/weights*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
@LeNet/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6LeNet/conv2/weights/Initializer/truncated_normal/shape*
T0*&
_class
loc:@LeNet/conv2/weights*
seed2 *
dtype0*&
_output_shapes
: @*

seed 
?
4LeNet/conv2/weights/Initializer/truncated_normal/mulMul@LeNet/conv2/weights/Initializer/truncated_normal/TruncatedNormal7LeNet/conv2/weights/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@LeNet/conv2/weights*&
_output_shapes
: @
?
0LeNet/conv2/weights/Initializer/truncated_normalAdd4LeNet/conv2/weights/Initializer/truncated_normal/mul5LeNet/conv2/weights/Initializer/truncated_normal/mean*&
_output_shapes
: @*
T0*&
_class
loc:@LeNet/conv2/weights
?
LeNet/conv2/weights
VariableV2*
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *&
_class
loc:@LeNet/conv2/weights*
	container 
?
LeNet/conv2/weights/AssignAssignLeNet/conv2/weights0LeNet/conv2/weights/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*&
_class
loc:@LeNet/conv2/weights
?
LeNet/conv2/weights/readIdentityLeNet/conv2/weights*
T0*&
_class
loc:@LeNet/conv2/weights*&
_output_shapes
: @
?
$LeNet/conv2/biases/Initializer/zerosConst*%
_class
loc:@LeNet/conv2/biases*
valueB@*    *
dtype0*
_output_shapes
:@
?
LeNet/conv2/biases
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *%
_class
loc:@LeNet/conv2/biases*
	container 
?
LeNet/conv2/biases/AssignAssignLeNet/conv2/biases$LeNet/conv2/biases/Initializer/zeros*
T0*%
_class
loc:@LeNet/conv2/biases*
validate_shape(*
_output_shapes
:@*
use_locking(
?
LeNet/conv2/biases/readIdentityLeNet/conv2/biases*
T0*%
_class
loc:@LeNet/conv2/biases*
_output_shapes
:@
j
LeNet/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
LeNet/conv2/Conv2DConv2DLeNet/pool1/MaxPoolLeNet/conv2/weights/read*
paddingSAME*/
_output_shapes
:?????????@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
LeNet/conv2/BiasAddBiasAddLeNet/conv2/Conv2DLeNet/conv2/biases/read*
T0*
data_formatNHWC*/
_output_shapes
:?????????@
g
LeNet/conv2/ReluReluLeNet/conv2/BiasAdd*/
_output_shapes
:?????????@*
T0
?
LeNet/pool2/MaxPoolMaxPoolLeNet/conv2/Relu*/
_output_shapes
:?????????@*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
n
LeNet/Flatten/flatten/ShapeShapeLeNet/pool2/MaxPool*
_output_shapes
:*
T0*
out_type0
s
)LeNet/Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+LeNet/Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+LeNet/Flatten/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
#LeNet/Flatten/flatten/strided_sliceStridedSliceLeNet/Flatten/flatten/Shape)LeNet/Flatten/flatten/strided_slice/stack+LeNet/Flatten/flatten/strided_slice/stack_1+LeNet/Flatten/flatten/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
p
%LeNet/Flatten/flatten/Reshape/shape/1Const*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
#LeNet/Flatten/flatten/Reshape/shapePack#LeNet/Flatten/flatten/strided_slice%LeNet/Flatten/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
?
LeNet/Flatten/flatten/ReshapeReshapeLeNet/pool2/MaxPool#LeNet/Flatten/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
4LeNet/fc3/weights/Initializer/truncated_normal/shapeConst*$
_class
loc:@LeNet/fc3/weights*
valueB"@     *
dtype0*
_output_shapes
:
?
3LeNet/fc3/weights/Initializer/truncated_normal/meanConst*$
_class
loc:@LeNet/fc3/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
?
5LeNet/fc3/weights/Initializer/truncated_normal/stddevConst*$
_class
loc:@LeNet/fc3/weights*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
>LeNet/fc3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4LeNet/fc3/weights/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
??*

seed *
T0*$
_class
loc:@LeNet/fc3/weights*
seed2 
?
2LeNet/fc3/weights/Initializer/truncated_normal/mulMul>LeNet/fc3/weights/Initializer/truncated_normal/TruncatedNormal5LeNet/fc3/weights/Initializer/truncated_normal/stddev*
T0*$
_class
loc:@LeNet/fc3/weights* 
_output_shapes
:
??
?
.LeNet/fc3/weights/Initializer/truncated_normalAdd2LeNet/fc3/weights/Initializer/truncated_normal/mul3LeNet/fc3/weights/Initializer/truncated_normal/mean*
T0*$
_class
loc:@LeNet/fc3/weights* 
_output_shapes
:
??
?
LeNet/fc3/weights
VariableV2*
shared_name *$
_class
loc:@LeNet/fc3/weights*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??
?
LeNet/fc3/weights/AssignAssignLeNet/fc3/weights.LeNet/fc3/weights/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*$
_class
loc:@LeNet/fc3/weights
?
LeNet/fc3/weights/readIdentityLeNet/fc3/weights*
T0*$
_class
loc:@LeNet/fc3/weights* 
_output_shapes
:
??
?
2LeNet/fc3/biases/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*#
_class
loc:@LeNet/fc3/biases*
valueB:?
?
(LeNet/fc3/biases/Initializer/zeros/ConstConst*#
_class
loc:@LeNet/fc3/biases*
valueB
 *    *
dtype0*
_output_shapes
: 
?
"LeNet/fc3/biases/Initializer/zerosFill2LeNet/fc3/biases/Initializer/zeros/shape_as_tensor(LeNet/fc3/biases/Initializer/zeros/Const*
T0*#
_class
loc:@LeNet/fc3/biases*

index_type0*
_output_shapes	
:?
?
LeNet/fc3/biases
VariableV2*
shared_name *#
_class
loc:@LeNet/fc3/biases*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
LeNet/fc3/biases/AssignAssignLeNet/fc3/biases"LeNet/fc3/biases/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@LeNet/fc3/biases*
validate_shape(*
_output_shapes	
:?
~
LeNet/fc3/biases/readIdentityLeNet/fc3/biases*
T0*#
_class
loc:@LeNet/fc3/biases*
_output_shapes	
:?
?
LeNet/fc3/MatMulMatMulLeNet/Flatten/flatten/ReshapeLeNet/fc3/weights/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:??????????
?
LeNet/fc3/BiasAddBiasAddLeNet/fc3/MatMulLeNet/fc3/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:??????????
\
LeNet/fc3/ReluReluLeNet/fc3/BiasAdd*(
_output_shapes
:??????????*
T0
`
LeNet/dropout3/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
j
LeNet/dropout3/dropout/ShapeShapeLeNet/fc3/Relu*
T0*
out_type0*
_output_shapes
:
a
LeNet/dropout3/dropout/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
}
LeNet/dropout3/dropout/subSubLeNet/dropout3/dropout/sub/xLeNet/dropout3/dropout/rate*
T0*
_output_shapes
: 
n
)LeNet/dropout3/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
n
)LeNet/dropout3/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
3LeNet/dropout3/dropout/random_uniform/RandomUniformRandomUniformLeNet/dropout3/dropout/Shape*
T0*
dtype0*
seed2 *(
_output_shapes
:??????????*

seed 
?
)LeNet/dropout3/dropout/random_uniform/subSub)LeNet/dropout3/dropout/random_uniform/max)LeNet/dropout3/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
)LeNet/dropout3/dropout/random_uniform/mulMul3LeNet/dropout3/dropout/random_uniform/RandomUniform)LeNet/dropout3/dropout/random_uniform/sub*
T0*(
_output_shapes
:??????????
?
%LeNet/dropout3/dropout/random_uniformAdd)LeNet/dropout3/dropout/random_uniform/mul)LeNet/dropout3/dropout/random_uniform/min*(
_output_shapes
:??????????*
T0
?
LeNet/dropout3/dropout/addAddLeNet/dropout3/dropout/sub%LeNet/dropout3/dropout/random_uniform*
T0*(
_output_shapes
:??????????
t
LeNet/dropout3/dropout/FloorFloorLeNet/dropout3/dropout/add*
T0*(
_output_shapes
:??????????
?
LeNet/dropout3/dropout/truedivRealDivLeNet/fc3/ReluLeNet/dropout3/dropout/sub*(
_output_shapes
:??????????*
T0
?
LeNet/dropout3/dropout/mulMulLeNet/dropout3/dropout/truedivLeNet/dropout3/dropout/Floor*
T0*(
_output_shapes
:??????????
?
4LeNet/fc4/weights/Initializer/truncated_normal/shapeConst*$
_class
loc:@LeNet/fc4/weights*
valueB"   
   *
dtype0*
_output_shapes
:
?
3LeNet/fc4/weights/Initializer/truncated_normal/meanConst*$
_class
loc:@LeNet/fc4/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
?
5LeNet/fc4/weights/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *$
_class
loc:@LeNet/fc4/weights*
valueB
 *???=
?
>LeNet/fc4/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4LeNet/fc4/weights/Initializer/truncated_normal/shape*
T0*$
_class
loc:@LeNet/fc4/weights*
seed2 *
dtype0*
_output_shapes
:	?
*

seed 
?
2LeNet/fc4/weights/Initializer/truncated_normal/mulMul>LeNet/fc4/weights/Initializer/truncated_normal/TruncatedNormal5LeNet/fc4/weights/Initializer/truncated_normal/stddev*
_output_shapes
:	?
*
T0*$
_class
loc:@LeNet/fc4/weights
?
.LeNet/fc4/weights/Initializer/truncated_normalAdd2LeNet/fc4/weights/Initializer/truncated_normal/mul3LeNet/fc4/weights/Initializer/truncated_normal/mean*
T0*$
_class
loc:@LeNet/fc4/weights*
_output_shapes
:	?

?
LeNet/fc4/weights
VariableV2*
shared_name *$
_class
loc:@LeNet/fc4/weights*
	container *
shape:	?
*
dtype0*
_output_shapes
:	?

?
LeNet/fc4/weights/AssignAssignLeNet/fc4/weights.LeNet/fc4/weights/Initializer/truncated_normal*
T0*$
_class
loc:@LeNet/fc4/weights*
validate_shape(*
_output_shapes
:	?
*
use_locking(
?
LeNet/fc4/weights/readIdentityLeNet/fc4/weights*
T0*$
_class
loc:@LeNet/fc4/weights*
_output_shapes
:	?

?
"LeNet/fc4/biases/Initializer/zerosConst*#
_class
loc:@LeNet/fc4/biases*
valueB
*    *
dtype0*
_output_shapes
:

?
LeNet/fc4/biases
VariableV2*
shape:
*
dtype0*
_output_shapes
:
*
shared_name *#
_class
loc:@LeNet/fc4/biases*
	container 
?
LeNet/fc4/biases/AssignAssignLeNet/fc4/biases"LeNet/fc4/biases/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@LeNet/fc4/biases*
validate_shape(*
_output_shapes
:

}
LeNet/fc4/biases/readIdentityLeNet/fc4/biases*
T0*#
_class
loc:@LeNet/fc4/biases*
_output_shapes
:

?
LeNet/fc4/MatMulMatMulLeNet/dropout3/dropout/mulLeNet/fc4/weights/read*
T0*
transpose_a( *'
_output_shapes
:?????????
*
transpose_b( 
?
LeNet/fc4/BiasAddBiasAddLeNet/fc4/MatMulLeNet/fc4/biases/read*
T0*
data_formatNHWC*'
_output_shapes
:?????????

j
Predictions/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"????
   
?
Predictions/ReshapeReshapeLeNet/fc4/BiasAddPredictions/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:?????????

e
Predictions/SoftmaxSoftmaxPredictions/Reshape*'
_output_shapes
:?????????
*
T0
b
Predictions/ShapeShapeLeNet/fc4/BiasAdd*
T0*
out_type0*
_output_shapes
:
?
Predictions/Reshape_1ReshapePredictions/SoftmaxPredictions/Shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
initNoOp^LeNet/conv1/biases/Assign^LeNet/conv1/weights/Assign^LeNet/conv2/biases/Assign^LeNet/conv2/weights/Assign^LeNet/fc3/biases/Assign^LeNet/fc3/weights/Assign^LeNet/fc4/biases/Assign^LeNet/fc4/weights/Assign
?
IsVariableInitializedIsVariableInitializedLeNet/fc4/weights*
dtype0*
_output_shapes
: *$
_class
loc:@LeNet/fc4/weights
?
IsVariableInitialized_1IsVariableInitializedLeNet/fc4/biases*#
_class
loc:@LeNet/fc4/biases*
dtype0*
_output_shapes
: 
?
IsVariableInitialized_2IsVariableInitializedLeNet/conv2/biases*
dtype0*
_output_shapes
: *%
_class
loc:@LeNet/conv2/biases
?
IsVariableInitialized_3IsVariableInitializedLeNet/conv2/weights*&
_class
loc:@LeNet/conv2/weights*
dtype0*
_output_shapes
: 
?
IsVariableInitialized_4IsVariableInitializedLeNet/fc3/weights*$
_class
loc:@LeNet/fc3/weights*
dtype0*
_output_shapes
: 
?
IsVariableInitialized_5IsVariableInitializedLeNet/conv1/biases*%
_class
loc:@LeNet/conv1/biases*
dtype0*
_output_shapes
: 
?
IsVariableInitialized_6IsVariableInitializedLeNet/fc3/biases*
dtype0*
_output_shapes
: *#
_class
loc:@LeNet/fc3/biases
?
IsVariableInitialized_7IsVariableInitializedLeNet/conv1/weights*
dtype0*
_output_shapes
: *&
_class
loc:@LeNet/conv1/weights
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
?
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_9bb575f5e4e4469cb4968086d37db8c0/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*?
value?B?BLeNet/conv1/biasesBLeNet/conv1/weightsBLeNet/conv2/biasesBLeNet/conv2/weightsBLeNet/fc3/biasesBLeNet/fc3/weightsBLeNet/fc4/biasesBLeNet/fc4/weights*
dtype0*
_output_shapes
:
s
save/SaveV2/shape_and_slicesConst*#
valueBB B B B B B B B *
dtype0*
_output_shapes
:
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesLeNet/conv1/biasesLeNet/conv1/weightsLeNet/conv2/biasesLeNet/conv2/weightsLeNet/fc3/biasesLeNet/fc3/weightsLeNet/fc4/biasesLeNet/fc4/weights*
dtypes

2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst*?
value?B?BLeNet/conv1/biasesBLeNet/conv1/weightsBLeNet/conv2/biasesBLeNet/conv2/weightsBLeNet/fc3/biasesBLeNet/fc3/weightsBLeNet/fc4/biasesBLeNet/fc4/weights*
dtype0*
_output_shapes
:
v
save/RestoreV2/shape_and_slicesConst*#
valueBB B B B B B B B *
dtype0*
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*4
_output_shapes"
 ::::::::*
dtypes

2
?
save/AssignAssignLeNet/conv1/biasessave/RestoreV2*
T0*%
_class
loc:@LeNet/conv1/biases*
validate_shape(*
_output_shapes
: *
use_locking(
?
save/Assign_1AssignLeNet/conv1/weightssave/RestoreV2:1*
use_locking(*
T0*&
_class
loc:@LeNet/conv1/weights*
validate_shape(*&
_output_shapes
: 
?
save/Assign_2AssignLeNet/conv2/biasessave/RestoreV2:2*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*%
_class
loc:@LeNet/conv2/biases
?
save/Assign_3AssignLeNet/conv2/weightssave/RestoreV2:3*
use_locking(*
T0*&
_class
loc:@LeNet/conv2/weights*
validate_shape(*&
_output_shapes
: @
?
save/Assign_4AssignLeNet/fc3/biasessave/RestoreV2:4*
T0*#
_class
loc:@LeNet/fc3/biases*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_5AssignLeNet/fc3/weightssave/RestoreV2:5*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*$
_class
loc:@LeNet/fc3/weights
?
save/Assign_6AssignLeNet/fc4/biasessave/RestoreV2:6*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0*#
_class
loc:@LeNet/fc4/biases
?
save/Assign_7AssignLeNet/fc4/weightssave/RestoreV2:7*
validate_shape(*
_output_shapes
:	?
*
use_locking(*
T0*$
_class
loc:@LeNet/fc4/weights
?
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"?
	variables??
?
LeNet/conv1/weights:0LeNet/conv1/weights/AssignLeNet/conv1/weights/read:022LeNet/conv1/weights/Initializer/truncated_normal:08
v
LeNet/conv1/biases:0LeNet/conv1/biases/AssignLeNet/conv1/biases/read:02&LeNet/conv1/biases/Initializer/zeros:08
?
LeNet/conv2/weights:0LeNet/conv2/weights/AssignLeNet/conv2/weights/read:022LeNet/conv2/weights/Initializer/truncated_normal:08
v
LeNet/conv2/biases:0LeNet/conv2/biases/AssignLeNet/conv2/biases/read:02&LeNet/conv2/biases/Initializer/zeros:08
}
LeNet/fc3/weights:0LeNet/fc3/weights/AssignLeNet/fc3/weights/read:020LeNet/fc3/weights/Initializer/truncated_normal:08
n
LeNet/fc3/biases:0LeNet/fc3/biases/AssignLeNet/fc3/biases/read:02$LeNet/fc3/biases/Initializer/zeros:08
}
LeNet/fc4/weights:0LeNet/fc4/weights/AssignLeNet/fc4/weights/read:020LeNet/fc4/weights/Initializer/truncated_normal:08
n
LeNet/fc4/biases:0LeNet/fc4/biases/AssignLeNet/fc4/biases/read:02$LeNet/fc4/biases/Initializer/zeros:08"?
model_variables??
?
LeNet/conv1/weights:0LeNet/conv1/weights/AssignLeNet/conv1/weights/read:022LeNet/conv1/weights/Initializer/truncated_normal:08
v
LeNet/conv1/biases:0LeNet/conv1/biases/AssignLeNet/conv1/biases/read:02&LeNet/conv1/biases/Initializer/zeros:08
?
LeNet/conv2/weights:0LeNet/conv2/weights/AssignLeNet/conv2/weights/read:022LeNet/conv2/weights/Initializer/truncated_normal:08
v
LeNet/conv2/biases:0LeNet/conv2/biases/AssignLeNet/conv2/biases/read:02&LeNet/conv2/biases/Initializer/zeros:08
}
LeNet/fc3/weights:0LeNet/fc3/weights/AssignLeNet/fc3/weights/read:020LeNet/fc3/weights/Initializer/truncated_normal:08
n
LeNet/fc3/biases:0LeNet/fc3/biases/AssignLeNet/fc3/biases/read:02$LeNet/fc3/biases/Initializer/zeros:08
}
LeNet/fc4/weights:0LeNet/fc4/weights/AssignLeNet/fc4/weights/read:020LeNet/fc4/weights/Initializer/truncated_normal:08
n
LeNet/fc4/biases:0LeNet/fc4/biases/AssignLeNet/fc4/biases/read:02$LeNet/fc4/biases/Initializer/zeros:08"?
trainable_variables??
?
LeNet/conv1/weights:0LeNet/conv1/weights/AssignLeNet/conv1/weights/read:022LeNet/conv1/weights/Initializer/truncated_normal:08
v
LeNet/conv1/biases:0LeNet/conv1/biases/AssignLeNet/conv1/biases/read:02&LeNet/conv1/biases/Initializer/zeros:08
?
LeNet/conv2/weights:0LeNet/conv2/weights/AssignLeNet/conv2/weights/read:022LeNet/conv2/weights/Initializer/truncated_normal:08
v
LeNet/conv2/biases:0LeNet/conv2/biases/AssignLeNet/conv2/biases/read:02&LeNet/conv2/biases/Initializer/zeros:08
}
LeNet/fc3/weights:0LeNet/fc3/weights/AssignLeNet/fc3/weights/read:020LeNet/fc3/weights/Initializer/truncated_normal:08
n
LeNet/fc3/biases:0LeNet/fc3/biases/AssignLeNet/fc3/biases/read:02$LeNet/fc3/biases/Initializer/zeros:08
}
LeNet/fc4/weights:0LeNet/fc4/weights/AssignLeNet/fc4/weights/read:020LeNet/fc4/weights/Initializer/truncated_normal:08
n
LeNet/fc4/biases:0LeNet/fc4/biases/AssignLeNet/fc4/biases/read:02$LeNet/fc4/biases/Initializer/zeros:08*?
serving_default?
7
input_1,
Placeholder:0?????????4
output*
LeNet/fc4/BiasAdd:0?????????
tensorflow/serving/predict