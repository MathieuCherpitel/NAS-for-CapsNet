��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
p
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2	"
adj_xbool( "
adj_ybool( 
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorMod
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
7
Square
x"T
y"T"
Ttype:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02unknown8��
�
Reconstruction/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_nameReconstruction/dense/bias
�
-Reconstruction/dense/bias/Read/ReadVariableOpReadVariableOpReconstruction/dense/bias*
_output_shapes	
:�*
dtype0
�
Reconstruction/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*,
shared_nameReconstruction/dense/kernel
�
/Reconstruction/dense/kernel/Read/ReadVariableOpReadVariableOpReconstruction/dense/kernel* 
_output_shapes
:
��*
dtype0
�
Reconstruction/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameReconstruction/dense_3/bias
�
/Reconstruction/dense_3/bias/Read/ReadVariableOpReadVariableOpReconstruction/dense_3/bias*
_output_shapes	
:�*
dtype0
�
Reconstruction/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameReconstruction/dense_3/kernel
�
1Reconstruction/dense_3/kernel/Read/ReadVariableOpReadVariableOpReconstruction/dense_3/kernel* 
_output_shapes
:
��*
dtype0
�
Reconstruction/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameReconstruction/dense_2/bias
�
/Reconstruction/dense_2/bias/Read/ReadVariableOpReadVariableOpReconstruction/dense_2/bias*
_output_shapes	
:�*
dtype0
�
Reconstruction/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameReconstruction/dense_2/kernel
�
1Reconstruction/dense_2/kernel/Read/ReadVariableOpReadVariableOpReconstruction/dense_2/kernel* 
_output_shapes
:
��*
dtype0

PrimaryCapsule/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namePrimaryCapsule/bias
x
'PrimaryCapsule/bias/Read/ReadVariableOpReadVariableOpPrimaryCapsule/bias*
_output_shapes	
:�*
dtype0
�
PrimaryCapsule/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		��*&
shared_namePrimaryCapsule/kernel
�
)PrimaryCapsule/kernel/Read/ReadVariableOpReadVariableOpPrimaryCapsule/kernel*(
_output_shapes
:		��*
dtype0
�
ConvolutionLayer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameConvolutionLayer/bias
|
)ConvolutionLayer/bias/Read/ReadVariableOpReadVariableOpConvolutionLayer/bias*
_output_shapes	
:�*
dtype0
�
ConvolutionLayer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		�*(
shared_nameConvolutionLayer/kernel
�
+ConvolutionLayer/kernel/Read/ReadVariableOpReadVariableOpConvolutionLayer/kernel*'
_output_shapes
:		�*
dtype0
�
Variables/PoseEstimationVarHandleOp*
_output_shapes
: *
dtype0* 
shape:�	
*)
shared_nameVariables/PoseEstimation
�
,Variables/PoseEstimation/Read/ReadVariableOpReadVariableOpVariables/PoseEstimation*+
_output_shapes
:�	
*
dtype0
�
serving_default_input_1Placeholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
z
serving_default_input_2Placeholder*'
_output_shapes
:���������
*
dtype0*
shape:���������

�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2ConvolutionLayer/kernelConvolutionLayer/biasPrimaryCapsule/kernelPrimaryCapsule/biasVariables/PoseEstimationReconstruction/dense_2/kernelReconstruction/dense_2/biasReconstruction/dense_3/kernelReconstruction/dense_3/biasReconstruction/dense/kernelReconstruction/dense/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:���������
:����������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_177938

NoOpNoOp
�(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�'
value�'B�' B�'
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
convolution
	primary_capsule

w
dense_1
dense_2
	optimizer
loss
dense_3
training_metrics
call
predict_capsule_output
regenerate_image

signatures*
R
0
1
2
3
4
5
6
7
8
9

10*
R
0
1
2
3
4
5
6
7
8
9

10*
* 
�
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

$trace_0
%trace_1* 

&trace_0
'trace_1* 
* 
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

kernel
bias
 ._jit_compiled_convolution_op*
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

kernel
bias
 5_jit_compiled_convolution_op*
NH
VARIABLE_VALUEVariables/PoseEstimationw/.ATTRIBUTES/VARIABLE_VALUE*
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

kernel
bias*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias*
* 
* 
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

kernel
bias*
:
Haccuracy
Iloss
Jval_accuracy
Kval_loss* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 

Ptrace_0
Qtrace_1* 
* 

Rserving_default* 
WQ
VARIABLE_VALUEConvolutionLayer/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEConvolutionLayer/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEPrimaryCapsule/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEPrimaryCapsule/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEReconstruction/dense_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEReconstruction/dense_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEReconstruction/dense_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEReconstruction/dense_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEReconstruction/dense/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEReconstruction/dense/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
	1
2
3
4*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
�
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

Xtrace_0* 

Ytrace_0* 
* 

0
1*

0
1*
* 
�
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

_trace_0* 

`trace_0* 
* 

0
1*

0
1*
* 
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

ftrace_0* 

gtrace_0* 

0
1*

0
1*
* 
�
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

mtrace_0* 

ntrace_0* 

0
1*

0
1*
* 
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

ttrace_0* 

utrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariables/PoseEstimationConvolutionLayer/kernelConvolutionLayer/biasPrimaryCapsule/kernelPrimaryCapsule/biasReconstruction/dense_2/kernelReconstruction/dense_2/biasReconstruction/dense_3/kernelReconstruction/dense_3/biasReconstruction/dense/kernelReconstruction/dense/biasConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_178392
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariables/PoseEstimationConvolutionLayer/kernelConvolutionLayer/biasPrimaryCapsule/kernelPrimaryCapsule/biasReconstruction/dense_2/kernelReconstruction/dense_2/biasReconstruction/dense_3/kernelReconstruction/dense_3/biasReconstruction/dense/kernelReconstruction/dense/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_178435��
�

�
A__inference_dense_layer_call_and_return_conditional_losses_176218

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:����������[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
1__inference_baseline_capsnet_layer_call_fn_176482
input_1
input_2"
unknown:		�
	unknown_0:	�%
	unknown_1:		��
	unknown_2:	�(
	unknown_3:�	

	unknown_4:
��
	unknown_5:	�
	unknown_6:
��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:���������
:����������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_baseline_capsnet_layer_call_and_return_conditional_losses_176455w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������
r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������:���������
: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:PL
'
_output_shapes
:���������

!
_user_specified_name	input_2:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
��
�
)__inference_predict_capsule_output_177702

inputsJ
/convolutionlayer_conv2d_readvariableop_resource:		�?
0convolutionlayer_biasadd_readvariableop_resource:	�I
-primarycapsule_conv2d_readvariableop_resource:		��=
.primarycapsule_biasadd_readvariableop_resource:	�N
/capsuleformation_matmul_readvariableop_resource:�	

identity��&CapsuleFormation/MatMul/ReadVariableOp�'ConvolutionLayer/BiasAdd/ReadVariableOp�&ConvolutionLayer/Conv2D/ReadVariableOp�%PrimaryCapsule/BiasAdd/ReadVariableOp�$PrimaryCapsule/Conv2D/ReadVariableOp�
&ConvolutionLayer/Conv2D/ReadVariableOpReadVariableOp/convolutionlayer_conv2d_readvariableop_resource*'
_output_shapes
:		�*
dtype0�
ConvolutionLayer/Conv2DConv2Dinputs.ConvolutionLayer/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:��*
paddingVALID*
strides
�
'ConvolutionLayer/BiasAdd/ReadVariableOpReadVariableOp0convolutionlayer_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ConvolutionLayer/BiasAddBiasAdd ConvolutionLayer/Conv2D:output:0/ConvolutionLayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:��s
ConvolutionLayer/ReluRelu!ConvolutionLayer/BiasAdd:output:0*
T0*(
_output_shapes
:���
$PrimaryCapsule/Conv2D/ReadVariableOpReadVariableOp-primarycapsule_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype0�
PrimaryCapsule/Conv2DConv2D#ConvolutionLayer/Relu:activations:0,PrimaryCapsule/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:��*
paddingVALID*
strides
�
%PrimaryCapsule/BiasAdd/ReadVariableOpReadVariableOp.primarycapsule_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
PrimaryCapsule/BiasAddBiasAddPrimaryCapsule/Conv2D:output:0-PrimaryCapsule/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:��s
CapsuleFormation/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"�����     �
CapsuleFormation/ReshapeReshapePrimaryCapsule/BiasAdd:output:0'CapsuleFormation/Reshape/shape:output:0*
T0*$
_output_shapes
:��	j
CapsuleFormation/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims
ExpandDims!CapsuleFormation/Reshape:output:0(CapsuleFormation/ExpandDims/dim:output:0*
T0*(
_output_shapes
:��	l
!CapsuleFormation/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims_1
ExpandDims$CapsuleFormation/ExpandDims:output:0*CapsuleFormation/ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:��	�
&CapsuleFormation/MatMul/ReadVariableOpReadVariableOp/capsuleformation_matmul_readvariableop_resource*+
_output_shapes
:�	
*
dtype0�
CapsuleFormation/MatMulBatchMatMulV2.CapsuleFormation/MatMul/ReadVariableOp:value:0&CapsuleFormation/ExpandDims_1:output:0*
T0*,
_output_shapes
:��	
�
CapsuleFormation/SqueezeSqueeze CapsuleFormation/MatMul:output:0*
T0*(
_output_shapes
:��	
*
squeeze_dims
}
$DynamicRouting/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"�  �  
      _
DynamicRouting/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
DynamicRouting/zerosFill-DynamicRouting/zeros/shape_as_tensor:output:0#DynamicRouting/zeros/Const:output:0*
T0*(
_output_shapes
:��	
U
DynamicRouting/RankConst*
_output_shapes
: *
dtype0*
value	B :_
DynamicRouting/add/xConst*
_output_shapes
: *
dtype0*
valueB :
���������y
DynamicRouting/addAddV2DynamicRouting/add/x:output:0DynamicRouting/Rank:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :V
DynamicRouting/mod/yConst*
_output_shapes
: *
dtype0*
value	B :v
DynamicRouting/modFloorModDynamicRouting/add:z:0DynamicRouting/mod/y:output:0*
T0*
_output_shapes
: V
DynamicRouting/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/SubSubDynamicRouting/Rank_1:output:0DynamicRouting/Sub/y:output:0*
T0*
_output_shapes
: \
DynamicRouting/range/startConst*
_output_shapes
: *
dtype0*
value	B : \
DynamicRouting/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/rangeRange#DynamicRouting/range/start:output:0DynamicRouting/mod:z:0#DynamicRouting/range/delta:output:0*
_output_shapes
:X
DynamicRouting/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_1AddV2DynamicRouting/mod:z:0DynamicRouting/add_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_1RangeDynamicRouting/add_1:z:0DynamicRouting/Sub:z:0%DynamicRouting/range_1/delta:output:0*
_output_shapes
: l
DynamicRouting/concat/values_1PackDynamicRouting/Sub:z:0*
N*
T0*
_output_shapes
:l
DynamicRouting/concat/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:\
DynamicRouting/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concatConcatV2DynamicRouting/range:output:0'DynamicRouting/concat/values_1:output:0DynamicRouting/range_1:output:0'DynamicRouting/concat/values_3:output:0#DynamicRouting/concat/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose	TransposeDynamicRouting/zeros:output:0DynamicRouting/concat:output:0*
T0*(
_output_shapes
:��	
r
DynamicRouting/SoftmaxSoftmaxDynamicRouting/transpose:y:0*
T0*(
_output_shapes
:��	
X
DynamicRouting/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_1SubDynamicRouting/Rank_1:output:0DynamicRouting/Sub_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_2Range%DynamicRouting/range_2/start:output:0DynamicRouting/mod:z:0%DynamicRouting/range_2/delta:output:0*
_output_shapes
:X
DynamicRouting/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_2AddV2DynamicRouting/mod:z:0DynamicRouting/add_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_3RangeDynamicRouting/add_2:z:0DynamicRouting/Sub_1:z:0%DynamicRouting/range_3/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_1/values_1PackDynamicRouting/Sub_1:z:0*
N*
T0*
_output_shapes
:n
 DynamicRouting/concat_1/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_1ConcatV2DynamicRouting/range_2:output:0)DynamicRouting/concat_1/values_1:output:0DynamicRouting/range_3:output:0)DynamicRouting/concat_1/values_3:output:0%DynamicRouting/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_1	Transpose DynamicRouting/Softmax:softmax:0 DynamicRouting/concat_1:output:0*
T0*(
_output_shapes
:��	
�
DynamicRouting/MulMulDynamicRouting/transpose_1:y:0!CapsuleFormation/Squeeze:output:0*
T0*(
_output_shapes
:��	
f
$DynamicRouting/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/SumSumDynamicRouting/Mul:z:0-DynamicRouting/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:�
*
	keep_dims(�
&DynamicRouting/SquashFunction/norm/mulMulDynamicRouting/Sum:output:0DynamicRouting/Sum:output:0*
T0*'
_output_shapes
:�
�
8DynamicRouting/SquashFunction/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
&DynamicRouting/SquashFunction/norm/SumSum*DynamicRouting/SquashFunction/norm/mul:z:0ADynamicRouting/SquashFunction/norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:�
*
	keep_dims(�
'DynamicRouting/SquashFunction/norm/SqrtSqrt/DynamicRouting/SquashFunction/norm/Sum:output:0*
T0*'
_output_shapes
:�
�
$DynamicRouting/SquashFunction/SquareSquare+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*'
_output_shapes
:�
�
&DynamicRouting/SquashFunction/Square_1Square+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*'
_output_shapes
:�
h
#DynamicRouting/SquashFunction/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!DynamicRouting/SquashFunction/addAddV2,DynamicRouting/SquashFunction/add/x:output:0*DynamicRouting/SquashFunction/Square_1:y:0*
T0*'
_output_shapes
:�
�
%DynamicRouting/SquashFunction/truedivRealDiv(DynamicRouting/SquashFunction/Square:y:0%DynamicRouting/SquashFunction/add:z:0*
T0*'
_output_shapes
:�
�
!DynamicRouting/SquashFunction/mulMul)DynamicRouting/SquashFunction/truediv:z:0DynamicRouting/Sum:output:0*
T0*'
_output_shapes
:�
j
%DynamicRouting/SquashFunction/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
#DynamicRouting/SquashFunction/add_1AddV2+DynamicRouting/SquashFunction/norm/Sqrt:y:0.DynamicRouting/SquashFunction/add_1/y:output:0*
T0*'
_output_shapes
:�
�
'DynamicRouting/SquashFunction/truediv_1RealDiv%DynamicRouting/SquashFunction/mul:z:0'DynamicRouting/SquashFunction/add_1:z:0*
T0*'
_output_shapes
:�
h
DynamicRouting/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims
ExpandDims!CapsuleFormation/Squeeze:output:0&DynamicRouting/ExpandDims/dim:output:0*
T0*,
_output_shapes
:��	
j
DynamicRouting/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_1
ExpandDims+DynamicRouting/SquashFunction/truediv_1:z:0(DynamicRouting/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:�
�
DynamicRouting/MatMulBatchMatMulV2"DynamicRouting/ExpandDims:output:0$DynamicRouting/ExpandDims_1:output:0*
T0*,
_output_shapes
:��	
*
adj_x(�
DynamicRouting/SqueezeSqueezeDynamicRouting/MatMul:output:0*
T0*(
_output_shapes
:��	
*
squeeze_dims
�
DynamicRouting/add_3AddV2DynamicRouting/zeros:output:0DynamicRouting/Squeeze:output:0*
T0*(
_output_shapes
:��	
W
DynamicRouting/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_4/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_4AddV2DynamicRouting/add_4/x:output:0DynamicRouting/Rank_2:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_3Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_1/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_1FloorModDynamicRouting/add_4:z:0DynamicRouting/mod_1/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_2SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_4/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_4/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_4Range%DynamicRouting/range_4/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_4/delta:output:0*
_output_shapes
:X
DynamicRouting/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_5AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_5/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_5/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_5RangeDynamicRouting/add_5:z:0DynamicRouting/Sub_2:z:0%DynamicRouting/range_5/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_2/values_1PackDynamicRouting/Sub_2:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_2/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_2ConcatV2DynamicRouting/range_4:output:0)DynamicRouting/concat_2/values_1:output:0DynamicRouting/range_5:output:0)DynamicRouting/concat_2/values_3:output:0%DynamicRouting/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_2	TransposeDynamicRouting/add_3:z:0 DynamicRouting/concat_2:output:0*
T0*(
_output_shapes
:��	
v
DynamicRouting/Softmax_1SoftmaxDynamicRouting/transpose_2:y:0*
T0*(
_output_shapes
:��	
X
DynamicRouting/Sub_3/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_3SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_3/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_6/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_6/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_6Range%DynamicRouting/range_6/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_6/delta:output:0*
_output_shapes
:X
DynamicRouting/add_6/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_6AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_6/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_7/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_7RangeDynamicRouting/add_6:z:0DynamicRouting/Sub_3:z:0%DynamicRouting/range_7/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_3/values_1PackDynamicRouting/Sub_3:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_3/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_3ConcatV2DynamicRouting/range_6:output:0)DynamicRouting/concat_3/values_1:output:0DynamicRouting/range_7:output:0)DynamicRouting/concat_3/values_3:output:0%DynamicRouting/concat_3/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_3	Transpose"DynamicRouting/Softmax_1:softmax:0 DynamicRouting/concat_3:output:0*
T0*(
_output_shapes
:��	
�
DynamicRouting/Mul_1MulDynamicRouting/transpose_3:y:0!CapsuleFormation/Squeeze:output:0*
T0*(
_output_shapes
:��	
h
&DynamicRouting/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_1SumDynamicRouting/Mul_1:z:0/DynamicRouting/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:�
*
	keep_dims(�
(DynamicRouting/SquashFunction_1/norm/mulMulDynamicRouting/Sum_1:output:0DynamicRouting/Sum_1:output:0*
T0*'
_output_shapes
:�
�
:DynamicRouting/SquashFunction_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_1/norm/SumSum,DynamicRouting/SquashFunction_1/norm/mul:z:0CDynamicRouting/SquashFunction_1/norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:�
*
	keep_dims(�
)DynamicRouting/SquashFunction_1/norm/SqrtSqrt1DynamicRouting/SquashFunction_1/norm/Sum:output:0*
T0*'
_output_shapes
:�
�
&DynamicRouting/SquashFunction_1/SquareSquare-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*'
_output_shapes
:�
�
(DynamicRouting/SquashFunction_1/Square_1Square-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*'
_output_shapes
:�
j
%DynamicRouting/SquashFunction_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_1/addAddV2.DynamicRouting/SquashFunction_1/add/x:output:0,DynamicRouting/SquashFunction_1/Square_1:y:0*
T0*'
_output_shapes
:�
�
'DynamicRouting/SquashFunction_1/truedivRealDiv*DynamicRouting/SquashFunction_1/Square:y:0'DynamicRouting/SquashFunction_1/add:z:0*
T0*'
_output_shapes
:�
�
#DynamicRouting/SquashFunction_1/mulMul+DynamicRouting/SquashFunction_1/truediv:z:0DynamicRouting/Sum_1:output:0*
T0*'
_output_shapes
:�
l
'DynamicRouting/SquashFunction_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_1/add_1AddV2-DynamicRouting/SquashFunction_1/norm/Sqrt:y:00DynamicRouting/SquashFunction_1/add_1/y:output:0*
T0*'
_output_shapes
:�
�
)DynamicRouting/SquashFunction_1/truediv_1RealDiv'DynamicRouting/SquashFunction_1/mul:z:0)DynamicRouting/SquashFunction_1/add_1:z:0*
T0*'
_output_shapes
:�
j
DynamicRouting/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_2
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:��	
j
DynamicRouting/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_3
ExpandDims-DynamicRouting/SquashFunction_1/truediv_1:z:0(DynamicRouting/ExpandDims_3/dim:output:0*
T0*+
_output_shapes
:�
�
DynamicRouting/MatMul_1BatchMatMulV2$DynamicRouting/ExpandDims_2:output:0$DynamicRouting/ExpandDims_3:output:0*
T0*,
_output_shapes
:��	
*
adj_x(�
DynamicRouting/Squeeze_1Squeeze DynamicRouting/MatMul_1:output:0*
T0*(
_output_shapes
:��	
*
squeeze_dims
�
DynamicRouting/add_7AddV2DynamicRouting/add_3:z:0!DynamicRouting/Squeeze_1:output:0*
T0*(
_output_shapes
:��	
W
DynamicRouting/Rank_4Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_8/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_8AddV2DynamicRouting/add_8/x:output:0DynamicRouting/Rank_4:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_5Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_2/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_2FloorModDynamicRouting/add_8:z:0DynamicRouting/mod_2/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_4SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_4/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_8/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_8/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_8Range%DynamicRouting/range_8/start:output:0DynamicRouting/mod_2:z:0%DynamicRouting/range_8/delta:output:0*
_output_shapes
:X
DynamicRouting/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_9AddV2DynamicRouting/mod_2:z:0DynamicRouting/add_9/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_9/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_9RangeDynamicRouting/add_9:z:0DynamicRouting/Sub_4:z:0%DynamicRouting/range_9/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_4/values_1PackDynamicRouting/Sub_4:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_4/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_4ConcatV2DynamicRouting/range_8:output:0)DynamicRouting/concat_4/values_1:output:0DynamicRouting/range_9:output:0)DynamicRouting/concat_4/values_3:output:0%DynamicRouting/concat_4/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_4	TransposeDynamicRouting/add_7:z:0 DynamicRouting/concat_4:output:0*
T0*(
_output_shapes
:��	
v
DynamicRouting/Softmax_2SoftmaxDynamicRouting/transpose_4:y:0*
T0*(
_output_shapes
:��	
X
DynamicRouting/Sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_5SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_5/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_10/startConst*
_output_shapes
: *
dtype0*
value	B : _
DynamicRouting/range_10/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_10Range&DynamicRouting/range_10/start:output:0DynamicRouting/mod_2:z:0&DynamicRouting/range_10/delta:output:0*
_output_shapes
:Y
DynamicRouting/add_10/yConst*
_output_shapes
: *
dtype0*
value	B :{
DynamicRouting/add_10AddV2DynamicRouting/mod_2:z:0 DynamicRouting/add_10/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_11/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_11RangeDynamicRouting/add_10:z:0DynamicRouting/Sub_5:z:0&DynamicRouting/range_11/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_5/values_1PackDynamicRouting/Sub_5:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_5/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_5ConcatV2 DynamicRouting/range_10:output:0)DynamicRouting/concat_5/values_1:output:0 DynamicRouting/range_11:output:0)DynamicRouting/concat_5/values_3:output:0%DynamicRouting/concat_5/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_5	Transpose"DynamicRouting/Softmax_2:softmax:0 DynamicRouting/concat_5:output:0*
T0*(
_output_shapes
:��	
�
DynamicRouting/Mul_2MulDynamicRouting/transpose_5:y:0!CapsuleFormation/Squeeze:output:0*
T0*(
_output_shapes
:��	
h
&DynamicRouting/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_2SumDynamicRouting/Mul_2:z:0/DynamicRouting/Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:�
*
	keep_dims(�
(DynamicRouting/SquashFunction_2/norm/mulMulDynamicRouting/Sum_2:output:0DynamicRouting/Sum_2:output:0*
T0*'
_output_shapes
:�
�
:DynamicRouting/SquashFunction_2/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_2/norm/SumSum,DynamicRouting/SquashFunction_2/norm/mul:z:0CDynamicRouting/SquashFunction_2/norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:�
*
	keep_dims(�
)DynamicRouting/SquashFunction_2/norm/SqrtSqrt1DynamicRouting/SquashFunction_2/norm/Sum:output:0*
T0*'
_output_shapes
:�
�
&DynamicRouting/SquashFunction_2/SquareSquare-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*'
_output_shapes
:�
�
(DynamicRouting/SquashFunction_2/Square_1Square-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*'
_output_shapes
:�
j
%DynamicRouting/SquashFunction_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_2/addAddV2.DynamicRouting/SquashFunction_2/add/x:output:0,DynamicRouting/SquashFunction_2/Square_1:y:0*
T0*'
_output_shapes
:�
�
'DynamicRouting/SquashFunction_2/truedivRealDiv*DynamicRouting/SquashFunction_2/Square:y:0'DynamicRouting/SquashFunction_2/add:z:0*
T0*'
_output_shapes
:�
�
#DynamicRouting/SquashFunction_2/mulMul+DynamicRouting/SquashFunction_2/truediv:z:0DynamicRouting/Sum_2:output:0*
T0*'
_output_shapes
:�
l
'DynamicRouting/SquashFunction_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_2/add_1AddV2-DynamicRouting/SquashFunction_2/norm/Sqrt:y:00DynamicRouting/SquashFunction_2/add_1/y:output:0*
T0*'
_output_shapes
:�
�
)DynamicRouting/SquashFunction_2/truediv_1RealDiv'DynamicRouting/SquashFunction_2/mul:z:0)DynamicRouting/SquashFunction_2/add_1:z:0*
T0*'
_output_shapes
:�
j
DynamicRouting/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_4
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_4/dim:output:0*
T0*,
_output_shapes
:��	
j
DynamicRouting/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_5
ExpandDims-DynamicRouting/SquashFunction_2/truediv_1:z:0(DynamicRouting/ExpandDims_5/dim:output:0*
T0*+
_output_shapes
:�
�
DynamicRouting/MatMul_2BatchMatMulV2$DynamicRouting/ExpandDims_4:output:0$DynamicRouting/ExpandDims_5:output:0*
T0*,
_output_shapes
:��	
*
adj_x(�
DynamicRouting/Squeeze_2Squeeze DynamicRouting/MatMul_2:output:0*
T0*(
_output_shapes
:��	
*
squeeze_dims
�
DynamicRouting/add_11AddV2DynamicRouting/add_7:z:0!DynamicRouting/Squeeze_2:output:0*
T0*(
_output_shapes
:��	
|
IdentityIdentity-DynamicRouting/SquashFunction_2/truediv_1:z:0^NoOp*
T0*'
_output_shapes
:�
�
NoOpNoOp'^CapsuleFormation/MatMul/ReadVariableOp(^ConvolutionLayer/BiasAdd/ReadVariableOp'^ConvolutionLayer/Conv2D/ReadVariableOp&^PrimaryCapsule/BiasAdd/ReadVariableOp%^PrimaryCapsule/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�: : : : : 2P
&CapsuleFormation/MatMul/ReadVariableOp&CapsuleFormation/MatMul/ReadVariableOp2R
'ConvolutionLayer/BiasAdd/ReadVariableOp'ConvolutionLayer/BiasAdd/ReadVariableOp2P
&ConvolutionLayer/Conv2D/ReadVariableOp&ConvolutionLayer/Conv2D/ReadVariableOp2N
%PrimaryCapsule/BiasAdd/ReadVariableOp%PrimaryCapsule/BiasAdd/ReadVariableOp2L
$PrimaryCapsule/Conv2D/ReadVariableOp$PrimaryCapsule/Conv2D/ReadVariableOp:O K
'
_output_shapes
:�
 
_user_specified_nameinputs
��
�

__inference_call_177264
inputs_0
inputs_1J
/convolutionlayer_conv2d_readvariableop_resource:		�?
0convolutionlayer_biasadd_readvariableop_resource:	�I
-primarycapsule_conv2d_readvariableop_resource:		��=
.primarycapsule_biasadd_readvariableop_resource:	�N
/capsuleformation_matmul_readvariableop_resource:�	
I
5reconstruction_dense_2_matmul_readvariableop_resource:
��E
6reconstruction_dense_2_biasadd_readvariableop_resource:	�I
5reconstruction_dense_3_matmul_readvariableop_resource:
��E
6reconstruction_dense_3_biasadd_readvariableop_resource:	�G
3reconstruction_dense_matmul_readvariableop_resource:
��C
4reconstruction_dense_biasadd_readvariableop_resource:	�
identity

identity_1��&CapsuleFormation/MatMul/ReadVariableOp�'ConvolutionLayer/BiasAdd/ReadVariableOp�&ConvolutionLayer/Conv2D/ReadVariableOp�%PrimaryCapsule/BiasAdd/ReadVariableOp�$PrimaryCapsule/Conv2D/ReadVariableOp�+Reconstruction/dense/BiasAdd/ReadVariableOp�*Reconstruction/dense/MatMul/ReadVariableOp�-Reconstruction/dense_2/BiasAdd/ReadVariableOp�,Reconstruction/dense_2/MatMul/ReadVariableOp�-Reconstruction/dense_3/BiasAdd/ReadVariableOp�,Reconstruction/dense_3/MatMul/ReadVariableOp�
&ConvolutionLayer/Conv2D/ReadVariableOpReadVariableOp/convolutionlayer_conv2d_readvariableop_resource*'
_output_shapes
:		�*
dtype0�
ConvolutionLayer/Conv2DConv2Dinputs_0.ConvolutionLayer/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:(�*
paddingVALID*
strides
�
'ConvolutionLayer/BiasAdd/ReadVariableOpReadVariableOp0convolutionlayer_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ConvolutionLayer/BiasAddBiasAdd ConvolutionLayer/Conv2D:output:0/ConvolutionLayer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:(�r
ConvolutionLayer/ReluRelu!ConvolutionLayer/BiasAdd:output:0*
T0*'
_output_shapes
:(��
$PrimaryCapsule/Conv2D/ReadVariableOpReadVariableOp-primarycapsule_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype0�
PrimaryCapsule/Conv2DConv2D#ConvolutionLayer/Relu:activations:0,PrimaryCapsule/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:(�*
paddingVALID*
strides
�
%PrimaryCapsule/BiasAdd/ReadVariableOpReadVariableOp.primarycapsule_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
PrimaryCapsule/BiasAddBiasAddPrimaryCapsule/Conv2D:output:0-PrimaryCapsule/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:(�s
CapsuleFormation/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"�����     �
CapsuleFormation/ReshapeReshapePrimaryCapsule/BiasAdd:output:0'CapsuleFormation/Reshape/shape:output:0*
T0*#
_output_shapes
:(�	j
CapsuleFormation/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims
ExpandDims!CapsuleFormation/Reshape:output:0(CapsuleFormation/ExpandDims/dim:output:0*
T0*'
_output_shapes
:(�	l
!CapsuleFormation/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims_1
ExpandDims$CapsuleFormation/ExpandDims:output:0*CapsuleFormation/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:(�	�
&CapsuleFormation/MatMul/ReadVariableOpReadVariableOp/capsuleformation_matmul_readvariableop_resource*+
_output_shapes
:�	
*
dtype0�
CapsuleFormation/MatMulBatchMatMulV2.CapsuleFormation/MatMul/ReadVariableOp:value:0&CapsuleFormation/ExpandDims_1:output:0*
T0*+
_output_shapes
:(�	
�
CapsuleFormation/SqueezeSqueeze CapsuleFormation/MatMul:output:0*
T0*'
_output_shapes
:(�	
*
squeeze_dims
}
$DynamicRouting/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"(   �  
      _
DynamicRouting/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
DynamicRouting/zerosFill-DynamicRouting/zeros/shape_as_tensor:output:0#DynamicRouting/zeros/Const:output:0*
T0*'
_output_shapes
:(�	
U
DynamicRouting/RankConst*
_output_shapes
: *
dtype0*
value	B :_
DynamicRouting/add/xConst*
_output_shapes
: *
dtype0*
valueB :
���������y
DynamicRouting/addAddV2DynamicRouting/add/x:output:0DynamicRouting/Rank:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :V
DynamicRouting/mod/yConst*
_output_shapes
: *
dtype0*
value	B :v
DynamicRouting/modFloorModDynamicRouting/add:z:0DynamicRouting/mod/y:output:0*
T0*
_output_shapes
: V
DynamicRouting/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/SubSubDynamicRouting/Rank_1:output:0DynamicRouting/Sub/y:output:0*
T0*
_output_shapes
: \
DynamicRouting/range/startConst*
_output_shapes
: *
dtype0*
value	B : \
DynamicRouting/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/rangeRange#DynamicRouting/range/start:output:0DynamicRouting/mod:z:0#DynamicRouting/range/delta:output:0*
_output_shapes
:X
DynamicRouting/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_1AddV2DynamicRouting/mod:z:0DynamicRouting/add_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_1RangeDynamicRouting/add_1:z:0DynamicRouting/Sub:z:0%DynamicRouting/range_1/delta:output:0*
_output_shapes
: l
DynamicRouting/concat/values_1PackDynamicRouting/Sub:z:0*
N*
T0*
_output_shapes
:l
DynamicRouting/concat/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:\
DynamicRouting/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concatConcatV2DynamicRouting/range:output:0'DynamicRouting/concat/values_1:output:0DynamicRouting/range_1:output:0'DynamicRouting/concat/values_3:output:0#DynamicRouting/concat/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose	TransposeDynamicRouting/zeros:output:0DynamicRouting/concat:output:0*
T0*'
_output_shapes
:(�	
q
DynamicRouting/SoftmaxSoftmaxDynamicRouting/transpose:y:0*
T0*'
_output_shapes
:(�	
X
DynamicRouting/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_1SubDynamicRouting/Rank_1:output:0DynamicRouting/Sub_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_2Range%DynamicRouting/range_2/start:output:0DynamicRouting/mod:z:0%DynamicRouting/range_2/delta:output:0*
_output_shapes
:X
DynamicRouting/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_2AddV2DynamicRouting/mod:z:0DynamicRouting/add_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_3RangeDynamicRouting/add_2:z:0DynamicRouting/Sub_1:z:0%DynamicRouting/range_3/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_1/values_1PackDynamicRouting/Sub_1:z:0*
N*
T0*
_output_shapes
:n
 DynamicRouting/concat_1/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_1ConcatV2DynamicRouting/range_2:output:0)DynamicRouting/concat_1/values_1:output:0DynamicRouting/range_3:output:0)DynamicRouting/concat_1/values_3:output:0%DynamicRouting/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_1	Transpose DynamicRouting/Softmax:softmax:0 DynamicRouting/concat_1:output:0*
T0*'
_output_shapes
:(�	
�
DynamicRouting/MulMulDynamicRouting/transpose_1:y:0!CapsuleFormation/Squeeze:output:0*
T0*'
_output_shapes
:(�	
f
$DynamicRouting/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/SumSumDynamicRouting/Mul:z:0-DynamicRouting/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:(
*
	keep_dims(�
&DynamicRouting/SquashFunction/norm/mulMulDynamicRouting/Sum:output:0DynamicRouting/Sum:output:0*
T0*&
_output_shapes
:(
�
8DynamicRouting/SquashFunction/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
&DynamicRouting/SquashFunction/norm/SumSum*DynamicRouting/SquashFunction/norm/mul:z:0ADynamicRouting/SquashFunction/norm/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:(
*
	keep_dims(�
'DynamicRouting/SquashFunction/norm/SqrtSqrt/DynamicRouting/SquashFunction/norm/Sum:output:0*
T0*&
_output_shapes
:(
�
$DynamicRouting/SquashFunction/SquareSquare+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*&
_output_shapes
:(
�
&DynamicRouting/SquashFunction/Square_1Square+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*&
_output_shapes
:(
h
#DynamicRouting/SquashFunction/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!DynamicRouting/SquashFunction/addAddV2,DynamicRouting/SquashFunction/add/x:output:0*DynamicRouting/SquashFunction/Square_1:y:0*
T0*&
_output_shapes
:(
�
%DynamicRouting/SquashFunction/truedivRealDiv(DynamicRouting/SquashFunction/Square:y:0%DynamicRouting/SquashFunction/add:z:0*
T0*&
_output_shapes
:(
�
!DynamicRouting/SquashFunction/mulMul)DynamicRouting/SquashFunction/truediv:z:0DynamicRouting/Sum:output:0*
T0*&
_output_shapes
:(
j
%DynamicRouting/SquashFunction/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
#DynamicRouting/SquashFunction/add_1AddV2+DynamicRouting/SquashFunction/norm/Sqrt:y:0.DynamicRouting/SquashFunction/add_1/y:output:0*
T0*&
_output_shapes
:(
�
'DynamicRouting/SquashFunction/truediv_1RealDiv%DynamicRouting/SquashFunction/mul:z:0'DynamicRouting/SquashFunction/add_1:z:0*
T0*&
_output_shapes
:(
h
DynamicRouting/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims
ExpandDims!CapsuleFormation/Squeeze:output:0&DynamicRouting/ExpandDims/dim:output:0*
T0*+
_output_shapes
:(�	
j
DynamicRouting/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_1
ExpandDims+DynamicRouting/SquashFunction/truediv_1:z:0(DynamicRouting/ExpandDims_1/dim:output:0*
T0**
_output_shapes
:(
�
DynamicRouting/MatMulBatchMatMulV2"DynamicRouting/ExpandDims:output:0$DynamicRouting/ExpandDims_1:output:0*
T0*+
_output_shapes
:(�	
*
adj_x(�
DynamicRouting/SqueezeSqueezeDynamicRouting/MatMul:output:0*
T0*'
_output_shapes
:(�	
*
squeeze_dims
�
DynamicRouting/add_3AddV2DynamicRouting/zeros:output:0DynamicRouting/Squeeze:output:0*
T0*'
_output_shapes
:(�	
W
DynamicRouting/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_4/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_4AddV2DynamicRouting/add_4/x:output:0DynamicRouting/Rank_2:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_3Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_1/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_1FloorModDynamicRouting/add_4:z:0DynamicRouting/mod_1/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_2SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_4/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_4/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_4Range%DynamicRouting/range_4/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_4/delta:output:0*
_output_shapes
:X
DynamicRouting/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_5AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_5/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_5/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_5RangeDynamicRouting/add_5:z:0DynamicRouting/Sub_2:z:0%DynamicRouting/range_5/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_2/values_1PackDynamicRouting/Sub_2:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_2/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_2ConcatV2DynamicRouting/range_4:output:0)DynamicRouting/concat_2/values_1:output:0DynamicRouting/range_5:output:0)DynamicRouting/concat_2/values_3:output:0%DynamicRouting/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_2	TransposeDynamicRouting/add_3:z:0 DynamicRouting/concat_2:output:0*
T0*'
_output_shapes
:(�	
u
DynamicRouting/Softmax_1SoftmaxDynamicRouting/transpose_2:y:0*
T0*'
_output_shapes
:(�	
X
DynamicRouting/Sub_3/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_3SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_3/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_6/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_6/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_6Range%DynamicRouting/range_6/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_6/delta:output:0*
_output_shapes
:X
DynamicRouting/add_6/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_6AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_6/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_7/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_7RangeDynamicRouting/add_6:z:0DynamicRouting/Sub_3:z:0%DynamicRouting/range_7/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_3/values_1PackDynamicRouting/Sub_3:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_3/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_3ConcatV2DynamicRouting/range_6:output:0)DynamicRouting/concat_3/values_1:output:0DynamicRouting/range_7:output:0)DynamicRouting/concat_3/values_3:output:0%DynamicRouting/concat_3/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_3	Transpose"DynamicRouting/Softmax_1:softmax:0 DynamicRouting/concat_3:output:0*
T0*'
_output_shapes
:(�	
�
DynamicRouting/Mul_1MulDynamicRouting/transpose_3:y:0!CapsuleFormation/Squeeze:output:0*
T0*'
_output_shapes
:(�	
h
&DynamicRouting/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_1SumDynamicRouting/Mul_1:z:0/DynamicRouting/Sum_1/reduction_indices:output:0*
T0*&
_output_shapes
:(
*
	keep_dims(�
(DynamicRouting/SquashFunction_1/norm/mulMulDynamicRouting/Sum_1:output:0DynamicRouting/Sum_1:output:0*
T0*&
_output_shapes
:(
�
:DynamicRouting/SquashFunction_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_1/norm/SumSum,DynamicRouting/SquashFunction_1/norm/mul:z:0CDynamicRouting/SquashFunction_1/norm/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:(
*
	keep_dims(�
)DynamicRouting/SquashFunction_1/norm/SqrtSqrt1DynamicRouting/SquashFunction_1/norm/Sum:output:0*
T0*&
_output_shapes
:(
�
&DynamicRouting/SquashFunction_1/SquareSquare-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*&
_output_shapes
:(
�
(DynamicRouting/SquashFunction_1/Square_1Square-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*&
_output_shapes
:(
j
%DynamicRouting/SquashFunction_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_1/addAddV2.DynamicRouting/SquashFunction_1/add/x:output:0,DynamicRouting/SquashFunction_1/Square_1:y:0*
T0*&
_output_shapes
:(
�
'DynamicRouting/SquashFunction_1/truedivRealDiv*DynamicRouting/SquashFunction_1/Square:y:0'DynamicRouting/SquashFunction_1/add:z:0*
T0*&
_output_shapes
:(
�
#DynamicRouting/SquashFunction_1/mulMul+DynamicRouting/SquashFunction_1/truediv:z:0DynamicRouting/Sum_1:output:0*
T0*&
_output_shapes
:(
l
'DynamicRouting/SquashFunction_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_1/add_1AddV2-DynamicRouting/SquashFunction_1/norm/Sqrt:y:00DynamicRouting/SquashFunction_1/add_1/y:output:0*
T0*&
_output_shapes
:(
�
)DynamicRouting/SquashFunction_1/truediv_1RealDiv'DynamicRouting/SquashFunction_1/mul:z:0)DynamicRouting/SquashFunction_1/add_1:z:0*
T0*&
_output_shapes
:(
j
DynamicRouting/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_2
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:(�	
j
DynamicRouting/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_3
ExpandDims-DynamicRouting/SquashFunction_1/truediv_1:z:0(DynamicRouting/ExpandDims_3/dim:output:0*
T0**
_output_shapes
:(
�
DynamicRouting/MatMul_1BatchMatMulV2$DynamicRouting/ExpandDims_2:output:0$DynamicRouting/ExpandDims_3:output:0*
T0*+
_output_shapes
:(�	
*
adj_x(�
DynamicRouting/Squeeze_1Squeeze DynamicRouting/MatMul_1:output:0*
T0*'
_output_shapes
:(�	
*
squeeze_dims
�
DynamicRouting/add_7AddV2DynamicRouting/add_3:z:0!DynamicRouting/Squeeze_1:output:0*
T0*'
_output_shapes
:(�	
W
DynamicRouting/Rank_4Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_8/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_8AddV2DynamicRouting/add_8/x:output:0DynamicRouting/Rank_4:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_5Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_2/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_2FloorModDynamicRouting/add_8:z:0DynamicRouting/mod_2/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_4SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_4/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_8/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_8/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_8Range%DynamicRouting/range_8/start:output:0DynamicRouting/mod_2:z:0%DynamicRouting/range_8/delta:output:0*
_output_shapes
:X
DynamicRouting/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_9AddV2DynamicRouting/mod_2:z:0DynamicRouting/add_9/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_9/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_9RangeDynamicRouting/add_9:z:0DynamicRouting/Sub_4:z:0%DynamicRouting/range_9/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_4/values_1PackDynamicRouting/Sub_4:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_4/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_4ConcatV2DynamicRouting/range_8:output:0)DynamicRouting/concat_4/values_1:output:0DynamicRouting/range_9:output:0)DynamicRouting/concat_4/values_3:output:0%DynamicRouting/concat_4/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_4	TransposeDynamicRouting/add_7:z:0 DynamicRouting/concat_4:output:0*
T0*'
_output_shapes
:(�	
u
DynamicRouting/Softmax_2SoftmaxDynamicRouting/transpose_4:y:0*
T0*'
_output_shapes
:(�	
X
DynamicRouting/Sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_5SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_5/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_10/startConst*
_output_shapes
: *
dtype0*
value	B : _
DynamicRouting/range_10/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_10Range&DynamicRouting/range_10/start:output:0DynamicRouting/mod_2:z:0&DynamicRouting/range_10/delta:output:0*
_output_shapes
:Y
DynamicRouting/add_10/yConst*
_output_shapes
: *
dtype0*
value	B :{
DynamicRouting/add_10AddV2DynamicRouting/mod_2:z:0 DynamicRouting/add_10/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_11/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_11RangeDynamicRouting/add_10:z:0DynamicRouting/Sub_5:z:0&DynamicRouting/range_11/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_5/values_1PackDynamicRouting/Sub_5:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_5/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_5ConcatV2 DynamicRouting/range_10:output:0)DynamicRouting/concat_5/values_1:output:0 DynamicRouting/range_11:output:0)DynamicRouting/concat_5/values_3:output:0%DynamicRouting/concat_5/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_5	Transpose"DynamicRouting/Softmax_2:softmax:0 DynamicRouting/concat_5:output:0*
T0*'
_output_shapes
:(�	
�
DynamicRouting/Mul_2MulDynamicRouting/transpose_5:y:0!CapsuleFormation/Squeeze:output:0*
T0*'
_output_shapes
:(�	
h
&DynamicRouting/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_2SumDynamicRouting/Mul_2:z:0/DynamicRouting/Sum_2/reduction_indices:output:0*
T0*&
_output_shapes
:(
*
	keep_dims(�
(DynamicRouting/SquashFunction_2/norm/mulMulDynamicRouting/Sum_2:output:0DynamicRouting/Sum_2:output:0*
T0*&
_output_shapes
:(
�
:DynamicRouting/SquashFunction_2/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_2/norm/SumSum,DynamicRouting/SquashFunction_2/norm/mul:z:0CDynamicRouting/SquashFunction_2/norm/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:(
*
	keep_dims(�
)DynamicRouting/SquashFunction_2/norm/SqrtSqrt1DynamicRouting/SquashFunction_2/norm/Sum:output:0*
T0*&
_output_shapes
:(
�
&DynamicRouting/SquashFunction_2/SquareSquare-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*&
_output_shapes
:(
�
(DynamicRouting/SquashFunction_2/Square_1Square-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*&
_output_shapes
:(
j
%DynamicRouting/SquashFunction_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_2/addAddV2.DynamicRouting/SquashFunction_2/add/x:output:0,DynamicRouting/SquashFunction_2/Square_1:y:0*
T0*&
_output_shapes
:(
�
'DynamicRouting/SquashFunction_2/truedivRealDiv*DynamicRouting/SquashFunction_2/Square:y:0'DynamicRouting/SquashFunction_2/add:z:0*
T0*&
_output_shapes
:(
�
#DynamicRouting/SquashFunction_2/mulMul+DynamicRouting/SquashFunction_2/truediv:z:0DynamicRouting/Sum_2:output:0*
T0*&
_output_shapes
:(
l
'DynamicRouting/SquashFunction_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_2/add_1AddV2-DynamicRouting/SquashFunction_2/norm/Sqrt:y:00DynamicRouting/SquashFunction_2/add_1/y:output:0*
T0*&
_output_shapes
:(
�
)DynamicRouting/SquashFunction_2/truediv_1RealDiv'DynamicRouting/SquashFunction_2/mul:z:0)DynamicRouting/SquashFunction_2/add_1:z:0*
T0*&
_output_shapes
:(
j
DynamicRouting/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_4
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_4/dim:output:0*
T0*+
_output_shapes
:(�	
j
DynamicRouting/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_5
ExpandDims-DynamicRouting/SquashFunction_2/truediv_1:z:0(DynamicRouting/ExpandDims_5/dim:output:0*
T0**
_output_shapes
:(
�
DynamicRouting/MatMul_2BatchMatMulV2$DynamicRouting/ExpandDims_4:output:0$DynamicRouting/ExpandDims_5:output:0*
T0*+
_output_shapes
:(�	
*
adj_x(�
DynamicRouting/Squeeze_2Squeeze DynamicRouting/MatMul_2:output:0*
T0*'
_output_shapes
:(�	
*
squeeze_dims
�
DynamicRouting/add_11AddV2DynamicRouting/add_7:z:0!DynamicRouting/Squeeze_2:output:0*
T0*'
_output_shapes
:(�	
a
Masking/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������x
Masking/ExpandDims
ExpandDimsinputs_1Masking/ExpandDims/dim:output:0*
T0*"
_output_shapes
:(
Z
Masking/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
Masking/ExpandDims_1
ExpandDimsMasking/ExpandDims:output:0!Masking/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:(
�
Masking/MulMulMasking/ExpandDims_1:output:0-DynamicRouting/SquashFunction_2/truediv_1:z:0*
T0*&
_output_shapes
:(
m
Reconstruction/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
Reconstruction/ReshapeReshapeMasking/Mul:z:0%Reconstruction/Reshape/shape:output:0*
T0*
_output_shapes
:	(��
,Reconstruction/dense_2/MatMul/ReadVariableOpReadVariableOp5reconstruction_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense_2/MatMulMatMulReconstruction/Reshape:output:04Reconstruction/dense_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	(��
-Reconstruction/dense_2/BiasAdd/ReadVariableOpReadVariableOp6reconstruction_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense_2/BiasAddBiasAdd'Reconstruction/dense_2/MatMul:product:05Reconstruction/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	(�v
Reconstruction/dense_2/ReluRelu'Reconstruction/dense_2/BiasAdd:output:0*
T0*
_output_shapes
:	(��
,Reconstruction/dense_3/MatMul/ReadVariableOpReadVariableOp5reconstruction_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense_3/MatMulMatMul)Reconstruction/dense_2/Relu:activations:04Reconstruction/dense_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	(��
-Reconstruction/dense_3/BiasAdd/ReadVariableOpReadVariableOp6reconstruction_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense_3/BiasAddBiasAdd'Reconstruction/dense_3/MatMul:product:05Reconstruction/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	(�v
Reconstruction/dense_3/ReluRelu'Reconstruction/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:	(��
*Reconstruction/dense/MatMul/ReadVariableOpReadVariableOp3reconstruction_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense/MatMulMatMul)Reconstruction/dense_3/Relu:activations:02Reconstruction/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	(��
+Reconstruction/dense/BiasAdd/ReadVariableOpReadVariableOp4reconstruction_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense/BiasAddBiasAdd%Reconstruction/dense/MatMul:product:03Reconstruction/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	(�x
Reconstruction/dense/SigmoidSigmoid%Reconstruction/dense/BiasAdd:output:0*
T0*
_output_shapes
:	(�{
IdentityIdentity-DynamicRouting/SquashFunction_2/truediv_1:z:0^NoOp*
T0*&
_output_shapes
:(
i

Identity_1Identity Reconstruction/dense/Sigmoid:y:0^NoOp*
T0*
_output_shapes
:	(��
NoOpNoOp'^CapsuleFormation/MatMul/ReadVariableOp(^ConvolutionLayer/BiasAdd/ReadVariableOp'^ConvolutionLayer/Conv2D/ReadVariableOp&^PrimaryCapsule/BiasAdd/ReadVariableOp%^PrimaryCapsule/Conv2D/ReadVariableOp,^Reconstruction/dense/BiasAdd/ReadVariableOp+^Reconstruction/dense/MatMul/ReadVariableOp.^Reconstruction/dense_2/BiasAdd/ReadVariableOp-^Reconstruction/dense_2/MatMul/ReadVariableOp.^Reconstruction/dense_3/BiasAdd/ReadVariableOp-^Reconstruction/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:(:(
: : : : : : : : : : : 2P
&CapsuleFormation/MatMul/ReadVariableOp&CapsuleFormation/MatMul/ReadVariableOp2R
'ConvolutionLayer/BiasAdd/ReadVariableOp'ConvolutionLayer/BiasAdd/ReadVariableOp2P
&ConvolutionLayer/Conv2D/ReadVariableOp&ConvolutionLayer/Conv2D/ReadVariableOp2N
%PrimaryCapsule/BiasAdd/ReadVariableOp%PrimaryCapsule/BiasAdd/ReadVariableOp2L
$PrimaryCapsule/Conv2D/ReadVariableOp$PrimaryCapsule/Conv2D/ReadVariableOp2Z
+Reconstruction/dense/BiasAdd/ReadVariableOp+Reconstruction/dense/BiasAdd/ReadVariableOp2X
*Reconstruction/dense/MatMul/ReadVariableOp*Reconstruction/dense/MatMul/ReadVariableOp2^
-Reconstruction/dense_2/BiasAdd/ReadVariableOp-Reconstruction/dense_2/BiasAdd/ReadVariableOp2\
,Reconstruction/dense_2/MatMul/ReadVariableOp,Reconstruction/dense_2/MatMul/ReadVariableOp2^
-Reconstruction/dense_3/BiasAdd/ReadVariableOp-Reconstruction/dense_3/BiasAdd/ReadVariableOp2\
,Reconstruction/dense_3/MatMul/ReadVariableOp,Reconstruction/dense_3/MatMul/ReadVariableOp:HD

_output_shapes

:(

"
_user_specified_name
inputs_1:P L
&
_output_shapes
:(
"
_user_specified_name
inputs_0
�]
�
__inference__traced_save_178392
file_prefixN
/read_disablecopyonread_variables_poseestimation:�	
K
0read_1_disablecopyonread_convolutionlayer_kernel:		�=
.read_2_disablecopyonread_convolutionlayer_bias:	�J
.read_3_disablecopyonread_primarycapsule_kernel:		��;
,read_4_disablecopyonread_primarycapsule_bias:	�J
6read_5_disablecopyonread_reconstruction_dense_2_kernel:
��C
4read_6_disablecopyonread_reconstruction_dense_2_bias:	�J
6read_7_disablecopyonread_reconstruction_dense_3_kernel:
��C
4read_8_disablecopyonread_reconstruction_dense_3_bias:	�H
4read_9_disablecopyonread_reconstruction_dense_kernel:
��B
3read_10_disablecopyonread_reconstruction_dense_bias:	�
savev2_const
identity_23��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
Read/DisableCopyOnReadDisableCopyOnRead/read_disablecopyonread_variables_poseestimation"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp/read_disablecopyonread_variables_poseestimation^Read/DisableCopyOnRead"/device:CPU:0*+
_output_shapes
:�	
*
dtype0v
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*+
_output_shapes
:�	
n

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*+
_output_shapes
:�	
�
Read_1/DisableCopyOnReadDisableCopyOnRead0read_1_disablecopyonread_convolutionlayer_kernel"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp0read_1_disablecopyonread_convolutionlayer_kernel^Read_1/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:		�*
dtype0v

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:		�l

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*'
_output_shapes
:		��
Read_2/DisableCopyOnReadDisableCopyOnRead.read_2_disablecopyonread_convolutionlayer_bias"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp.read_2_disablecopyonread_convolutionlayer_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_3/DisableCopyOnReadDisableCopyOnRead.read_3_disablecopyonread_primarycapsule_kernel"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp.read_3_disablecopyonread_primarycapsule_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:		��*
dtype0w

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:		��m

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*(
_output_shapes
:		���
Read_4/DisableCopyOnReadDisableCopyOnRead,read_4_disablecopyonread_primarycapsule_bias"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp,read_4_disablecopyonread_primarycapsule_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_5/DisableCopyOnReadDisableCopyOnRead6read_5_disablecopyonread_reconstruction_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp6read_5_disablecopyonread_reconstruction_dense_2_kernel^Read_5/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0p
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_6/DisableCopyOnReadDisableCopyOnRead4read_6_disablecopyonread_reconstruction_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp4read_6_disablecopyonread_reconstruction_dense_2_bias^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_7/DisableCopyOnReadDisableCopyOnRead6read_7_disablecopyonread_reconstruction_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp6read_7_disablecopyonread_reconstruction_dense_3_kernel^Read_7/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0p
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_8/DisableCopyOnReadDisableCopyOnRead4read_8_disablecopyonread_reconstruction_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp4read_8_disablecopyonread_reconstruction_dense_3_bias^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_reconstruction_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_reconstruction_dense_kernel^Read_9/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0p
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_10/DisableCopyOnReadDisableCopyOnRead3read_10_disablecopyonread_reconstruction_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp3read_10_disablecopyonread_reconstruction_dense_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�Bw/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_22Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_23IdentityIdentity_22:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*-
_input_shapes
: : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�
L__inference_baseline_capsnet_layer_call_and_return_conditional_losses_176226
input_1
input_22
convolutionlayer_175958:		�&
convolutionlayer_175960:	�1
primarycapsule_175974:		��$
primarycapsule_175976:	�N
/capsuleformation_matmul_readvariableop_resource:�	
1
reconstruction_dense_2_176185:
��,
reconstruction_dense_2_176187:	�1
reconstruction_dense_3_176202:
��,
reconstruction_dense_3_176204:	�/
reconstruction_dense_176219:
��*
reconstruction_dense_176221:	�
identity

identity_1��&CapsuleFormation/MatMul/ReadVariableOp�(ConvolutionLayer/StatefulPartitionedCall�&PrimaryCapsule/StatefulPartitionedCall�,Reconstruction/dense/StatefulPartitionedCall�.Reconstruction/dense_2/StatefulPartitionedCall�.Reconstruction/dense_3/StatefulPartitionedCall�
(ConvolutionLayer/StatefulPartitionedCallStatefulPartitionedCallinput_1convolutionlayer_175958convolutionlayer_175960*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_ConvolutionLayer_layer_call_and_return_conditional_losses_175957�
&PrimaryCapsule/StatefulPartitionedCallStatefulPartitionedCall1ConvolutionLayer/StatefulPartitionedCall:output:0primarycapsule_175974primarycapsule_175976*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_PrimaryCapsule_layer_call_and_return_conditional_losses_175973s
CapsuleFormation/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"�����     �
CapsuleFormation/ReshapeReshape/PrimaryCapsule/StatefulPartitionedCall:output:0'CapsuleFormation/Reshape/shape:output:0*
T0*,
_output_shapes
:����������	j
CapsuleFormation/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims
ExpandDims!CapsuleFormation/Reshape:output:0(CapsuleFormation/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������	l
!CapsuleFormation/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims_1
ExpandDims$CapsuleFormation/ExpandDims:output:0*CapsuleFormation/ExpandDims_1/dim:output:0*
T0*4
_output_shapes"
 :����������	�
&CapsuleFormation/MatMul/ReadVariableOpReadVariableOp/capsuleformation_matmul_readvariableop_resource*+
_output_shapes
:�	
*
dtype0�
CapsuleFormation/MatMulBatchMatMulV2.CapsuleFormation/MatMul/ReadVariableOp:value:0&CapsuleFormation/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :����������	
�
CapsuleFormation/SqueezeSqueeze CapsuleFormation/MatMul:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
}
$DynamicRouting/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   �  
      _
DynamicRouting/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
DynamicRouting/zerosFill-DynamicRouting/zeros/shape_as_tensor:output:0#DynamicRouting/zeros/Const:output:0*
T0*'
_output_shapes
:�	
U
DynamicRouting/RankConst*
_output_shapes
: *
dtype0*
value	B :_
DynamicRouting/add/xConst*
_output_shapes
: *
dtype0*
valueB :
���������y
DynamicRouting/addAddV2DynamicRouting/add/x:output:0DynamicRouting/Rank:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :V
DynamicRouting/mod/yConst*
_output_shapes
: *
dtype0*
value	B :v
DynamicRouting/modFloorModDynamicRouting/add:z:0DynamicRouting/mod/y:output:0*
T0*
_output_shapes
: V
DynamicRouting/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/SubSubDynamicRouting/Rank_1:output:0DynamicRouting/Sub/y:output:0*
T0*
_output_shapes
: \
DynamicRouting/range/startConst*
_output_shapes
: *
dtype0*
value	B : \
DynamicRouting/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/rangeRange#DynamicRouting/range/start:output:0DynamicRouting/mod:z:0#DynamicRouting/range/delta:output:0*
_output_shapes
:X
DynamicRouting/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_1AddV2DynamicRouting/mod:z:0DynamicRouting/add_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_1RangeDynamicRouting/add_1:z:0DynamicRouting/Sub:z:0%DynamicRouting/range_1/delta:output:0*
_output_shapes
: l
DynamicRouting/concat/values_1PackDynamicRouting/Sub:z:0*
N*
T0*
_output_shapes
:l
DynamicRouting/concat/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:\
DynamicRouting/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concatConcatV2DynamicRouting/range:output:0'DynamicRouting/concat/values_1:output:0DynamicRouting/range_1:output:0'DynamicRouting/concat/values_3:output:0#DynamicRouting/concat/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose	TransposeDynamicRouting/zeros:output:0DynamicRouting/concat:output:0*
T0*'
_output_shapes
:�	
q
DynamicRouting/SoftmaxSoftmaxDynamicRouting/transpose:y:0*
T0*'
_output_shapes
:�	
X
DynamicRouting/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_1SubDynamicRouting/Rank_1:output:0DynamicRouting/Sub_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_2Range%DynamicRouting/range_2/start:output:0DynamicRouting/mod:z:0%DynamicRouting/range_2/delta:output:0*
_output_shapes
:X
DynamicRouting/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_2AddV2DynamicRouting/mod:z:0DynamicRouting/add_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_3RangeDynamicRouting/add_2:z:0DynamicRouting/Sub_1:z:0%DynamicRouting/range_3/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_1/values_1PackDynamicRouting/Sub_1:z:0*
N*
T0*
_output_shapes
:n
 DynamicRouting/concat_1/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_1ConcatV2DynamicRouting/range_2:output:0)DynamicRouting/concat_1/values_1:output:0DynamicRouting/range_3:output:0)DynamicRouting/concat_1/values_3:output:0%DynamicRouting/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_1	Transpose DynamicRouting/Softmax:softmax:0 DynamicRouting/concat_1:output:0*
T0*'
_output_shapes
:�	
�
DynamicRouting/MulMulDynamicRouting/transpose_1:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
f
$DynamicRouting/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/SumSumDynamicRouting/Mul:z:0-DynamicRouting/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
&DynamicRouting/SquashFunction/norm/mulMulDynamicRouting/Sum:output:0DynamicRouting/Sum:output:0*
T0*/
_output_shapes
:���������
�
8DynamicRouting/SquashFunction/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
&DynamicRouting/SquashFunction/norm/SumSum*DynamicRouting/SquashFunction/norm/mul:z:0ADynamicRouting/SquashFunction/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
'DynamicRouting/SquashFunction/norm/SqrtSqrt/DynamicRouting/SquashFunction/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
$DynamicRouting/SquashFunction/SquareSquare+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction/Square_1Square+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
h
#DynamicRouting/SquashFunction/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!DynamicRouting/SquashFunction/addAddV2,DynamicRouting/SquashFunction/add/x:output:0*DynamicRouting/SquashFunction/Square_1:y:0*
T0*/
_output_shapes
:���������
�
%DynamicRouting/SquashFunction/truedivRealDiv(DynamicRouting/SquashFunction/Square:y:0%DynamicRouting/SquashFunction/add:z:0*
T0*/
_output_shapes
:���������
�
!DynamicRouting/SquashFunction/mulMul)DynamicRouting/SquashFunction/truediv:z:0DynamicRouting/Sum:output:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
#DynamicRouting/SquashFunction/add_1AddV2+DynamicRouting/SquashFunction/norm/Sqrt:y:0.DynamicRouting/SquashFunction/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction/truediv_1RealDiv%DynamicRouting/SquashFunction/mul:z:0'DynamicRouting/SquashFunction/add_1:z:0*
T0*/
_output_shapes
:���������
h
DynamicRouting/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims
ExpandDims!CapsuleFormation/Squeeze:output:0&DynamicRouting/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_1
ExpandDims+DynamicRouting/SquashFunction/truediv_1:z:0(DynamicRouting/ExpandDims_1/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMulBatchMatMulV2"DynamicRouting/ExpandDims:output:0$DynamicRouting/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/SqueezeSqueezeDynamicRouting/MatMul:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_3AddV2DynamicRouting/zeros:output:0DynamicRouting/Squeeze:output:0*
T0*0
_output_shapes
:����������	
W
DynamicRouting/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_4/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_4AddV2DynamicRouting/add_4/x:output:0DynamicRouting/Rank_2:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_3Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_1/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_1FloorModDynamicRouting/add_4:z:0DynamicRouting/mod_1/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_2SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_4/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_4/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_4Range%DynamicRouting/range_4/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_4/delta:output:0*
_output_shapes
:X
DynamicRouting/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_5AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_5/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_5/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_5RangeDynamicRouting/add_5:z:0DynamicRouting/Sub_2:z:0%DynamicRouting/range_5/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_2/values_1PackDynamicRouting/Sub_2:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_2/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_2ConcatV2DynamicRouting/range_4:output:0)DynamicRouting/concat_2/values_1:output:0DynamicRouting/range_5:output:0)DynamicRouting/concat_2/values_3:output:0%DynamicRouting/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_2	TransposeDynamicRouting/add_3:z:0 DynamicRouting/concat_2:output:0*
T0*0
_output_shapes
:����������	
~
DynamicRouting/Softmax_1SoftmaxDynamicRouting/transpose_2:y:0*
T0*0
_output_shapes
:����������	
X
DynamicRouting/Sub_3/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_3SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_3/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_6/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_6/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_6Range%DynamicRouting/range_6/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_6/delta:output:0*
_output_shapes
:X
DynamicRouting/add_6/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_6AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_6/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_7/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_7RangeDynamicRouting/add_6:z:0DynamicRouting/Sub_3:z:0%DynamicRouting/range_7/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_3/values_1PackDynamicRouting/Sub_3:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_3/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_3ConcatV2DynamicRouting/range_6:output:0)DynamicRouting/concat_3/values_1:output:0DynamicRouting/range_7:output:0)DynamicRouting/concat_3/values_3:output:0%DynamicRouting/concat_3/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_3	Transpose"DynamicRouting/Softmax_1:softmax:0 DynamicRouting/concat_3:output:0*
T0*0
_output_shapes
:����������	
�
DynamicRouting/Mul_1MulDynamicRouting/transpose_3:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
h
&DynamicRouting/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_1SumDynamicRouting/Mul_1:z:0/DynamicRouting/Sum_1/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
(DynamicRouting/SquashFunction_1/norm/mulMulDynamicRouting/Sum_1:output:0DynamicRouting/Sum_1:output:0*
T0*/
_output_shapes
:���������
�
:DynamicRouting/SquashFunction_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_1/norm/SumSum,DynamicRouting/SquashFunction_1/norm/mul:z:0CDynamicRouting/SquashFunction_1/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
)DynamicRouting/SquashFunction_1/norm/SqrtSqrt1DynamicRouting/SquashFunction_1/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction_1/SquareSquare-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
(DynamicRouting/SquashFunction_1/Square_1Square-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_1/addAddV2.DynamicRouting/SquashFunction_1/add/x:output:0,DynamicRouting/SquashFunction_1/Square_1:y:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction_1/truedivRealDiv*DynamicRouting/SquashFunction_1/Square:y:0'DynamicRouting/SquashFunction_1/add:z:0*
T0*/
_output_shapes
:���������
�
#DynamicRouting/SquashFunction_1/mulMul+DynamicRouting/SquashFunction_1/truediv:z:0DynamicRouting/Sum_1:output:0*
T0*/
_output_shapes
:���������
l
'DynamicRouting/SquashFunction_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_1/add_1AddV2-DynamicRouting/SquashFunction_1/norm/Sqrt:y:00DynamicRouting/SquashFunction_1/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
)DynamicRouting/SquashFunction_1/truediv_1RealDiv'DynamicRouting/SquashFunction_1/mul:z:0)DynamicRouting/SquashFunction_1/add_1:z:0*
T0*/
_output_shapes
:���������
j
DynamicRouting/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_2
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_2/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_3
ExpandDims-DynamicRouting/SquashFunction_1/truediv_1:z:0(DynamicRouting/ExpandDims_3/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMul_1BatchMatMulV2$DynamicRouting/ExpandDims_2:output:0$DynamicRouting/ExpandDims_3:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/Squeeze_1Squeeze DynamicRouting/MatMul_1:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_7AddV2DynamicRouting/add_3:z:0!DynamicRouting/Squeeze_1:output:0*
T0*0
_output_shapes
:����������	
W
DynamicRouting/Rank_4Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_8/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_8AddV2DynamicRouting/add_8/x:output:0DynamicRouting/Rank_4:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_5Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_2/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_2FloorModDynamicRouting/add_8:z:0DynamicRouting/mod_2/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_4SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_4/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_8/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_8/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_8Range%DynamicRouting/range_8/start:output:0DynamicRouting/mod_2:z:0%DynamicRouting/range_8/delta:output:0*
_output_shapes
:X
DynamicRouting/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_9AddV2DynamicRouting/mod_2:z:0DynamicRouting/add_9/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_9/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_9RangeDynamicRouting/add_9:z:0DynamicRouting/Sub_4:z:0%DynamicRouting/range_9/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_4/values_1PackDynamicRouting/Sub_4:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_4/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_4ConcatV2DynamicRouting/range_8:output:0)DynamicRouting/concat_4/values_1:output:0DynamicRouting/range_9:output:0)DynamicRouting/concat_4/values_3:output:0%DynamicRouting/concat_4/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_4	TransposeDynamicRouting/add_7:z:0 DynamicRouting/concat_4:output:0*
T0*0
_output_shapes
:����������	
~
DynamicRouting/Softmax_2SoftmaxDynamicRouting/transpose_4:y:0*
T0*0
_output_shapes
:����������	
X
DynamicRouting/Sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_5SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_5/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_10/startConst*
_output_shapes
: *
dtype0*
value	B : _
DynamicRouting/range_10/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_10Range&DynamicRouting/range_10/start:output:0DynamicRouting/mod_2:z:0&DynamicRouting/range_10/delta:output:0*
_output_shapes
:Y
DynamicRouting/add_10/yConst*
_output_shapes
: *
dtype0*
value	B :{
DynamicRouting/add_10AddV2DynamicRouting/mod_2:z:0 DynamicRouting/add_10/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_11/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_11RangeDynamicRouting/add_10:z:0DynamicRouting/Sub_5:z:0&DynamicRouting/range_11/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_5/values_1PackDynamicRouting/Sub_5:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_5/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_5ConcatV2 DynamicRouting/range_10:output:0)DynamicRouting/concat_5/values_1:output:0 DynamicRouting/range_11:output:0)DynamicRouting/concat_5/values_3:output:0%DynamicRouting/concat_5/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_5	Transpose"DynamicRouting/Softmax_2:softmax:0 DynamicRouting/concat_5:output:0*
T0*0
_output_shapes
:����������	
�
DynamicRouting/Mul_2MulDynamicRouting/transpose_5:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
h
&DynamicRouting/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_2SumDynamicRouting/Mul_2:z:0/DynamicRouting/Sum_2/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
(DynamicRouting/SquashFunction_2/norm/mulMulDynamicRouting/Sum_2:output:0DynamicRouting/Sum_2:output:0*
T0*/
_output_shapes
:���������
�
:DynamicRouting/SquashFunction_2/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_2/norm/SumSum,DynamicRouting/SquashFunction_2/norm/mul:z:0CDynamicRouting/SquashFunction_2/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
)DynamicRouting/SquashFunction_2/norm/SqrtSqrt1DynamicRouting/SquashFunction_2/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction_2/SquareSquare-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
(DynamicRouting/SquashFunction_2/Square_1Square-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_2/addAddV2.DynamicRouting/SquashFunction_2/add/x:output:0,DynamicRouting/SquashFunction_2/Square_1:y:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction_2/truedivRealDiv*DynamicRouting/SquashFunction_2/Square:y:0'DynamicRouting/SquashFunction_2/add:z:0*
T0*/
_output_shapes
:���������
�
#DynamicRouting/SquashFunction_2/mulMul+DynamicRouting/SquashFunction_2/truediv:z:0DynamicRouting/Sum_2:output:0*
T0*/
_output_shapes
:���������
l
'DynamicRouting/SquashFunction_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_2/add_1AddV2-DynamicRouting/SquashFunction_2/norm/Sqrt:y:00DynamicRouting/SquashFunction_2/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
)DynamicRouting/SquashFunction_2/truediv_1RealDiv'DynamicRouting/SquashFunction_2/mul:z:0)DynamicRouting/SquashFunction_2/add_1:z:0*
T0*/
_output_shapes
:���������
j
DynamicRouting/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_4
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_4/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_5
ExpandDims-DynamicRouting/SquashFunction_2/truediv_1:z:0(DynamicRouting/ExpandDims_5/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMul_2BatchMatMulV2$DynamicRouting/ExpandDims_4:output:0$DynamicRouting/ExpandDims_5:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/Squeeze_2Squeeze DynamicRouting/MatMul_2:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_11AddV2DynamicRouting/add_7:z:0!DynamicRouting/Squeeze_2:output:0*
T0*0
_output_shapes
:����������	
a
Masking/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Masking/ExpandDims
ExpandDimsinput_2Masking/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������
Z
Masking/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
Masking/ExpandDims_1
ExpandDimsMasking/ExpandDims:output:0!Masking/ExpandDims_1/dim:output:0*
T0*/
_output_shapes
:���������
�
Masking/MulMulMasking/ExpandDims_1:output:0-DynamicRouting/SquashFunction_2/truediv_1:z:0*
T0*/
_output_shapes
:���������
m
Reconstruction/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
Reconstruction/ReshapeReshapeMasking/Mul:z:0%Reconstruction/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
.Reconstruction/dense_2/StatefulPartitionedCallStatefulPartitionedCallReconstruction/Reshape:output:0reconstruction_dense_2_176185reconstruction_dense_2_176187*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_176184�
.Reconstruction/dense_3/StatefulPartitionedCallStatefulPartitionedCall7Reconstruction/dense_2/StatefulPartitionedCall:output:0reconstruction_dense_3_176202reconstruction_dense_3_176204*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_176201�
,Reconstruction/dense/StatefulPartitionedCallStatefulPartitionedCall7Reconstruction/dense_3/StatefulPartitionedCall:output:0reconstruction_dense_176219reconstruction_dense_176221*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_176218�
IdentityIdentity-DynamicRouting/SquashFunction_2/truediv_1:z:0^NoOp*
T0*/
_output_shapes
:���������
�

Identity_1Identity5Reconstruction/dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp'^CapsuleFormation/MatMul/ReadVariableOp)^ConvolutionLayer/StatefulPartitionedCall'^PrimaryCapsule/StatefulPartitionedCall-^Reconstruction/dense/StatefulPartitionedCall/^Reconstruction/dense_2/StatefulPartitionedCall/^Reconstruction/dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������:���������
: : : : : : : : : : : 2P
&CapsuleFormation/MatMul/ReadVariableOp&CapsuleFormation/MatMul/ReadVariableOp2T
(ConvolutionLayer/StatefulPartitionedCall(ConvolutionLayer/StatefulPartitionedCall2P
&PrimaryCapsule/StatefulPartitionedCall&PrimaryCapsule/StatefulPartitionedCall2\
,Reconstruction/dense/StatefulPartitionedCall,Reconstruction/dense/StatefulPartitionedCall2`
.Reconstruction/dense_2/StatefulPartitionedCall.Reconstruction/dense_2/StatefulPartitionedCall2`
.Reconstruction/dense_3/StatefulPartitionedCall.Reconstruction/dense_3/StatefulPartitionedCall:PL
'
_output_shapes
:���������

!
_user_specified_name	input_2:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�

�
C__inference_dense_2_layer_call_and_return_conditional_losses_176184

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�

__inference_call_176796
inputs_0
inputs_1J
/convolutionlayer_conv2d_readvariableop_resource:		�?
0convolutionlayer_biasadd_readvariableop_resource:	�I
-primarycapsule_conv2d_readvariableop_resource:		��=
.primarycapsule_biasadd_readvariableop_resource:	�N
/capsuleformation_matmul_readvariableop_resource:�	
I
5reconstruction_dense_2_matmul_readvariableop_resource:
��E
6reconstruction_dense_2_biasadd_readvariableop_resource:	�I
5reconstruction_dense_3_matmul_readvariableop_resource:
��E
6reconstruction_dense_3_biasadd_readvariableop_resource:	�G
3reconstruction_dense_matmul_readvariableop_resource:
��C
4reconstruction_dense_biasadd_readvariableop_resource:	�
identity

identity_1��&CapsuleFormation/MatMul/ReadVariableOp�'ConvolutionLayer/BiasAdd/ReadVariableOp�&ConvolutionLayer/Conv2D/ReadVariableOp�%PrimaryCapsule/BiasAdd/ReadVariableOp�$PrimaryCapsule/Conv2D/ReadVariableOp�+Reconstruction/dense/BiasAdd/ReadVariableOp�*Reconstruction/dense/MatMul/ReadVariableOp�-Reconstruction/dense_2/BiasAdd/ReadVariableOp�,Reconstruction/dense_2/MatMul/ReadVariableOp�-Reconstruction/dense_3/BiasAdd/ReadVariableOp�,Reconstruction/dense_3/MatMul/ReadVariableOp�
&ConvolutionLayer/Conv2D/ReadVariableOpReadVariableOp/convolutionlayer_conv2d_readvariableop_resource*'
_output_shapes
:		�*
dtype0�
ConvolutionLayer/Conv2DConv2Dinputs_0.ConvolutionLayer/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�*
paddingVALID*
strides
�
'ConvolutionLayer/BiasAdd/ReadVariableOpReadVariableOp0convolutionlayer_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ConvolutionLayer/BiasAddBiasAdd ConvolutionLayer/Conv2D:output:0/ConvolutionLayer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�r
ConvolutionLayer/ReluRelu!ConvolutionLayer/BiasAdd:output:0*
T0*'
_output_shapes
:@��
$PrimaryCapsule/Conv2D/ReadVariableOpReadVariableOp-primarycapsule_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype0�
PrimaryCapsule/Conv2DConv2D#ConvolutionLayer/Relu:activations:0,PrimaryCapsule/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�*
paddingVALID*
strides
�
%PrimaryCapsule/BiasAdd/ReadVariableOpReadVariableOp.primarycapsule_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
PrimaryCapsule/BiasAddBiasAddPrimaryCapsule/Conv2D:output:0-PrimaryCapsule/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�s
CapsuleFormation/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"�����     �
CapsuleFormation/ReshapeReshapePrimaryCapsule/BiasAdd:output:0'CapsuleFormation/Reshape/shape:output:0*
T0*#
_output_shapes
:@�	j
CapsuleFormation/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims
ExpandDims!CapsuleFormation/Reshape:output:0(CapsuleFormation/ExpandDims/dim:output:0*
T0*'
_output_shapes
:@�	l
!CapsuleFormation/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims_1
ExpandDims$CapsuleFormation/ExpandDims:output:0*CapsuleFormation/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:@�	�
&CapsuleFormation/MatMul/ReadVariableOpReadVariableOp/capsuleformation_matmul_readvariableop_resource*+
_output_shapes
:�	
*
dtype0�
CapsuleFormation/MatMulBatchMatMulV2.CapsuleFormation/MatMul/ReadVariableOp:value:0&CapsuleFormation/ExpandDims_1:output:0*
T0*+
_output_shapes
:@�	
�
CapsuleFormation/SqueezeSqueeze CapsuleFormation/MatMul:output:0*
T0*'
_output_shapes
:@�	
*
squeeze_dims
}
$DynamicRouting/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"@   �  
      _
DynamicRouting/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
DynamicRouting/zerosFill-DynamicRouting/zeros/shape_as_tensor:output:0#DynamicRouting/zeros/Const:output:0*
T0*'
_output_shapes
:@�	
U
DynamicRouting/RankConst*
_output_shapes
: *
dtype0*
value	B :_
DynamicRouting/add/xConst*
_output_shapes
: *
dtype0*
valueB :
���������y
DynamicRouting/addAddV2DynamicRouting/add/x:output:0DynamicRouting/Rank:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :V
DynamicRouting/mod/yConst*
_output_shapes
: *
dtype0*
value	B :v
DynamicRouting/modFloorModDynamicRouting/add:z:0DynamicRouting/mod/y:output:0*
T0*
_output_shapes
: V
DynamicRouting/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/SubSubDynamicRouting/Rank_1:output:0DynamicRouting/Sub/y:output:0*
T0*
_output_shapes
: \
DynamicRouting/range/startConst*
_output_shapes
: *
dtype0*
value	B : \
DynamicRouting/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/rangeRange#DynamicRouting/range/start:output:0DynamicRouting/mod:z:0#DynamicRouting/range/delta:output:0*
_output_shapes
:X
DynamicRouting/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_1AddV2DynamicRouting/mod:z:0DynamicRouting/add_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_1RangeDynamicRouting/add_1:z:0DynamicRouting/Sub:z:0%DynamicRouting/range_1/delta:output:0*
_output_shapes
: l
DynamicRouting/concat/values_1PackDynamicRouting/Sub:z:0*
N*
T0*
_output_shapes
:l
DynamicRouting/concat/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:\
DynamicRouting/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concatConcatV2DynamicRouting/range:output:0'DynamicRouting/concat/values_1:output:0DynamicRouting/range_1:output:0'DynamicRouting/concat/values_3:output:0#DynamicRouting/concat/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose	TransposeDynamicRouting/zeros:output:0DynamicRouting/concat:output:0*
T0*'
_output_shapes
:@�	
q
DynamicRouting/SoftmaxSoftmaxDynamicRouting/transpose:y:0*
T0*'
_output_shapes
:@�	
X
DynamicRouting/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_1SubDynamicRouting/Rank_1:output:0DynamicRouting/Sub_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_2Range%DynamicRouting/range_2/start:output:0DynamicRouting/mod:z:0%DynamicRouting/range_2/delta:output:0*
_output_shapes
:X
DynamicRouting/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_2AddV2DynamicRouting/mod:z:0DynamicRouting/add_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_3RangeDynamicRouting/add_2:z:0DynamicRouting/Sub_1:z:0%DynamicRouting/range_3/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_1/values_1PackDynamicRouting/Sub_1:z:0*
N*
T0*
_output_shapes
:n
 DynamicRouting/concat_1/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_1ConcatV2DynamicRouting/range_2:output:0)DynamicRouting/concat_1/values_1:output:0DynamicRouting/range_3:output:0)DynamicRouting/concat_1/values_3:output:0%DynamicRouting/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_1	Transpose DynamicRouting/Softmax:softmax:0 DynamicRouting/concat_1:output:0*
T0*'
_output_shapes
:@�	
�
DynamicRouting/MulMulDynamicRouting/transpose_1:y:0!CapsuleFormation/Squeeze:output:0*
T0*'
_output_shapes
:@�	
f
$DynamicRouting/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/SumSumDynamicRouting/Mul:z:0-DynamicRouting/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:@
*
	keep_dims(�
&DynamicRouting/SquashFunction/norm/mulMulDynamicRouting/Sum:output:0DynamicRouting/Sum:output:0*
T0*&
_output_shapes
:@
�
8DynamicRouting/SquashFunction/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
&DynamicRouting/SquashFunction/norm/SumSum*DynamicRouting/SquashFunction/norm/mul:z:0ADynamicRouting/SquashFunction/norm/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:@
*
	keep_dims(�
'DynamicRouting/SquashFunction/norm/SqrtSqrt/DynamicRouting/SquashFunction/norm/Sum:output:0*
T0*&
_output_shapes
:@
�
$DynamicRouting/SquashFunction/SquareSquare+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*&
_output_shapes
:@
�
&DynamicRouting/SquashFunction/Square_1Square+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*&
_output_shapes
:@
h
#DynamicRouting/SquashFunction/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!DynamicRouting/SquashFunction/addAddV2,DynamicRouting/SquashFunction/add/x:output:0*DynamicRouting/SquashFunction/Square_1:y:0*
T0*&
_output_shapes
:@
�
%DynamicRouting/SquashFunction/truedivRealDiv(DynamicRouting/SquashFunction/Square:y:0%DynamicRouting/SquashFunction/add:z:0*
T0*&
_output_shapes
:@
�
!DynamicRouting/SquashFunction/mulMul)DynamicRouting/SquashFunction/truediv:z:0DynamicRouting/Sum:output:0*
T0*&
_output_shapes
:@
j
%DynamicRouting/SquashFunction/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
#DynamicRouting/SquashFunction/add_1AddV2+DynamicRouting/SquashFunction/norm/Sqrt:y:0.DynamicRouting/SquashFunction/add_1/y:output:0*
T0*&
_output_shapes
:@
�
'DynamicRouting/SquashFunction/truediv_1RealDiv%DynamicRouting/SquashFunction/mul:z:0'DynamicRouting/SquashFunction/add_1:z:0*
T0*&
_output_shapes
:@
h
DynamicRouting/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims
ExpandDims!CapsuleFormation/Squeeze:output:0&DynamicRouting/ExpandDims/dim:output:0*
T0*+
_output_shapes
:@�	
j
DynamicRouting/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_1
ExpandDims+DynamicRouting/SquashFunction/truediv_1:z:0(DynamicRouting/ExpandDims_1/dim:output:0*
T0**
_output_shapes
:@
�
DynamicRouting/MatMulBatchMatMulV2"DynamicRouting/ExpandDims:output:0$DynamicRouting/ExpandDims_1:output:0*
T0*+
_output_shapes
:@�	
*
adj_x(�
DynamicRouting/SqueezeSqueezeDynamicRouting/MatMul:output:0*
T0*'
_output_shapes
:@�	
*
squeeze_dims
�
DynamicRouting/add_3AddV2DynamicRouting/zeros:output:0DynamicRouting/Squeeze:output:0*
T0*'
_output_shapes
:@�	
W
DynamicRouting/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_4/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_4AddV2DynamicRouting/add_4/x:output:0DynamicRouting/Rank_2:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_3Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_1/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_1FloorModDynamicRouting/add_4:z:0DynamicRouting/mod_1/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_2SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_4/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_4/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_4Range%DynamicRouting/range_4/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_4/delta:output:0*
_output_shapes
:X
DynamicRouting/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_5AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_5/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_5/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_5RangeDynamicRouting/add_5:z:0DynamicRouting/Sub_2:z:0%DynamicRouting/range_5/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_2/values_1PackDynamicRouting/Sub_2:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_2/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_2ConcatV2DynamicRouting/range_4:output:0)DynamicRouting/concat_2/values_1:output:0DynamicRouting/range_5:output:0)DynamicRouting/concat_2/values_3:output:0%DynamicRouting/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_2	TransposeDynamicRouting/add_3:z:0 DynamicRouting/concat_2:output:0*
T0*'
_output_shapes
:@�	
u
DynamicRouting/Softmax_1SoftmaxDynamicRouting/transpose_2:y:0*
T0*'
_output_shapes
:@�	
X
DynamicRouting/Sub_3/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_3SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_3/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_6/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_6/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_6Range%DynamicRouting/range_6/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_6/delta:output:0*
_output_shapes
:X
DynamicRouting/add_6/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_6AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_6/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_7/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_7RangeDynamicRouting/add_6:z:0DynamicRouting/Sub_3:z:0%DynamicRouting/range_7/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_3/values_1PackDynamicRouting/Sub_3:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_3/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_3ConcatV2DynamicRouting/range_6:output:0)DynamicRouting/concat_3/values_1:output:0DynamicRouting/range_7:output:0)DynamicRouting/concat_3/values_3:output:0%DynamicRouting/concat_3/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_3	Transpose"DynamicRouting/Softmax_1:softmax:0 DynamicRouting/concat_3:output:0*
T0*'
_output_shapes
:@�	
�
DynamicRouting/Mul_1MulDynamicRouting/transpose_3:y:0!CapsuleFormation/Squeeze:output:0*
T0*'
_output_shapes
:@�	
h
&DynamicRouting/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_1SumDynamicRouting/Mul_1:z:0/DynamicRouting/Sum_1/reduction_indices:output:0*
T0*&
_output_shapes
:@
*
	keep_dims(�
(DynamicRouting/SquashFunction_1/norm/mulMulDynamicRouting/Sum_1:output:0DynamicRouting/Sum_1:output:0*
T0*&
_output_shapes
:@
�
:DynamicRouting/SquashFunction_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_1/norm/SumSum,DynamicRouting/SquashFunction_1/norm/mul:z:0CDynamicRouting/SquashFunction_1/norm/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:@
*
	keep_dims(�
)DynamicRouting/SquashFunction_1/norm/SqrtSqrt1DynamicRouting/SquashFunction_1/norm/Sum:output:0*
T0*&
_output_shapes
:@
�
&DynamicRouting/SquashFunction_1/SquareSquare-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*&
_output_shapes
:@
�
(DynamicRouting/SquashFunction_1/Square_1Square-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*&
_output_shapes
:@
j
%DynamicRouting/SquashFunction_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_1/addAddV2.DynamicRouting/SquashFunction_1/add/x:output:0,DynamicRouting/SquashFunction_1/Square_1:y:0*
T0*&
_output_shapes
:@
�
'DynamicRouting/SquashFunction_1/truedivRealDiv*DynamicRouting/SquashFunction_1/Square:y:0'DynamicRouting/SquashFunction_1/add:z:0*
T0*&
_output_shapes
:@
�
#DynamicRouting/SquashFunction_1/mulMul+DynamicRouting/SquashFunction_1/truediv:z:0DynamicRouting/Sum_1:output:0*
T0*&
_output_shapes
:@
l
'DynamicRouting/SquashFunction_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_1/add_1AddV2-DynamicRouting/SquashFunction_1/norm/Sqrt:y:00DynamicRouting/SquashFunction_1/add_1/y:output:0*
T0*&
_output_shapes
:@
�
)DynamicRouting/SquashFunction_1/truediv_1RealDiv'DynamicRouting/SquashFunction_1/mul:z:0)DynamicRouting/SquashFunction_1/add_1:z:0*
T0*&
_output_shapes
:@
j
DynamicRouting/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_2
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:@�	
j
DynamicRouting/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_3
ExpandDims-DynamicRouting/SquashFunction_1/truediv_1:z:0(DynamicRouting/ExpandDims_3/dim:output:0*
T0**
_output_shapes
:@
�
DynamicRouting/MatMul_1BatchMatMulV2$DynamicRouting/ExpandDims_2:output:0$DynamicRouting/ExpandDims_3:output:0*
T0*+
_output_shapes
:@�	
*
adj_x(�
DynamicRouting/Squeeze_1Squeeze DynamicRouting/MatMul_1:output:0*
T0*'
_output_shapes
:@�	
*
squeeze_dims
�
DynamicRouting/add_7AddV2DynamicRouting/add_3:z:0!DynamicRouting/Squeeze_1:output:0*
T0*'
_output_shapes
:@�	
W
DynamicRouting/Rank_4Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_8/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_8AddV2DynamicRouting/add_8/x:output:0DynamicRouting/Rank_4:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_5Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_2/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_2FloorModDynamicRouting/add_8:z:0DynamicRouting/mod_2/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_4SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_4/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_8/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_8/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_8Range%DynamicRouting/range_8/start:output:0DynamicRouting/mod_2:z:0%DynamicRouting/range_8/delta:output:0*
_output_shapes
:X
DynamicRouting/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_9AddV2DynamicRouting/mod_2:z:0DynamicRouting/add_9/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_9/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_9RangeDynamicRouting/add_9:z:0DynamicRouting/Sub_4:z:0%DynamicRouting/range_9/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_4/values_1PackDynamicRouting/Sub_4:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_4/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_4ConcatV2DynamicRouting/range_8:output:0)DynamicRouting/concat_4/values_1:output:0DynamicRouting/range_9:output:0)DynamicRouting/concat_4/values_3:output:0%DynamicRouting/concat_4/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_4	TransposeDynamicRouting/add_7:z:0 DynamicRouting/concat_4:output:0*
T0*'
_output_shapes
:@�	
u
DynamicRouting/Softmax_2SoftmaxDynamicRouting/transpose_4:y:0*
T0*'
_output_shapes
:@�	
X
DynamicRouting/Sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_5SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_5/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_10/startConst*
_output_shapes
: *
dtype0*
value	B : _
DynamicRouting/range_10/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_10Range&DynamicRouting/range_10/start:output:0DynamicRouting/mod_2:z:0&DynamicRouting/range_10/delta:output:0*
_output_shapes
:Y
DynamicRouting/add_10/yConst*
_output_shapes
: *
dtype0*
value	B :{
DynamicRouting/add_10AddV2DynamicRouting/mod_2:z:0 DynamicRouting/add_10/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_11/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_11RangeDynamicRouting/add_10:z:0DynamicRouting/Sub_5:z:0&DynamicRouting/range_11/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_5/values_1PackDynamicRouting/Sub_5:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_5/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_5ConcatV2 DynamicRouting/range_10:output:0)DynamicRouting/concat_5/values_1:output:0 DynamicRouting/range_11:output:0)DynamicRouting/concat_5/values_3:output:0%DynamicRouting/concat_5/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_5	Transpose"DynamicRouting/Softmax_2:softmax:0 DynamicRouting/concat_5:output:0*
T0*'
_output_shapes
:@�	
�
DynamicRouting/Mul_2MulDynamicRouting/transpose_5:y:0!CapsuleFormation/Squeeze:output:0*
T0*'
_output_shapes
:@�	
h
&DynamicRouting/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_2SumDynamicRouting/Mul_2:z:0/DynamicRouting/Sum_2/reduction_indices:output:0*
T0*&
_output_shapes
:@
*
	keep_dims(�
(DynamicRouting/SquashFunction_2/norm/mulMulDynamicRouting/Sum_2:output:0DynamicRouting/Sum_2:output:0*
T0*&
_output_shapes
:@
�
:DynamicRouting/SquashFunction_2/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_2/norm/SumSum,DynamicRouting/SquashFunction_2/norm/mul:z:0CDynamicRouting/SquashFunction_2/norm/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:@
*
	keep_dims(�
)DynamicRouting/SquashFunction_2/norm/SqrtSqrt1DynamicRouting/SquashFunction_2/norm/Sum:output:0*
T0*&
_output_shapes
:@
�
&DynamicRouting/SquashFunction_2/SquareSquare-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*&
_output_shapes
:@
�
(DynamicRouting/SquashFunction_2/Square_1Square-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*&
_output_shapes
:@
j
%DynamicRouting/SquashFunction_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_2/addAddV2.DynamicRouting/SquashFunction_2/add/x:output:0,DynamicRouting/SquashFunction_2/Square_1:y:0*
T0*&
_output_shapes
:@
�
'DynamicRouting/SquashFunction_2/truedivRealDiv*DynamicRouting/SquashFunction_2/Square:y:0'DynamicRouting/SquashFunction_2/add:z:0*
T0*&
_output_shapes
:@
�
#DynamicRouting/SquashFunction_2/mulMul+DynamicRouting/SquashFunction_2/truediv:z:0DynamicRouting/Sum_2:output:0*
T0*&
_output_shapes
:@
l
'DynamicRouting/SquashFunction_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_2/add_1AddV2-DynamicRouting/SquashFunction_2/norm/Sqrt:y:00DynamicRouting/SquashFunction_2/add_1/y:output:0*
T0*&
_output_shapes
:@
�
)DynamicRouting/SquashFunction_2/truediv_1RealDiv'DynamicRouting/SquashFunction_2/mul:z:0)DynamicRouting/SquashFunction_2/add_1:z:0*
T0*&
_output_shapes
:@
j
DynamicRouting/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_4
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_4/dim:output:0*
T0*+
_output_shapes
:@�	
j
DynamicRouting/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_5
ExpandDims-DynamicRouting/SquashFunction_2/truediv_1:z:0(DynamicRouting/ExpandDims_5/dim:output:0*
T0**
_output_shapes
:@
�
DynamicRouting/MatMul_2BatchMatMulV2$DynamicRouting/ExpandDims_4:output:0$DynamicRouting/ExpandDims_5:output:0*
T0*+
_output_shapes
:@�	
*
adj_x(�
DynamicRouting/Squeeze_2Squeeze DynamicRouting/MatMul_2:output:0*
T0*'
_output_shapes
:@�	
*
squeeze_dims
�
DynamicRouting/add_11AddV2DynamicRouting/add_7:z:0!DynamicRouting/Squeeze_2:output:0*
T0*'
_output_shapes
:@�	
a
Masking/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������x
Masking/ExpandDims
ExpandDimsinputs_1Masking/ExpandDims/dim:output:0*
T0*"
_output_shapes
:@
Z
Masking/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
Masking/ExpandDims_1
ExpandDimsMasking/ExpandDims:output:0!Masking/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@
�
Masking/MulMulMasking/ExpandDims_1:output:0-DynamicRouting/SquashFunction_2/truediv_1:z:0*
T0*&
_output_shapes
:@
m
Reconstruction/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
Reconstruction/ReshapeReshapeMasking/Mul:z:0%Reconstruction/Reshape/shape:output:0*
T0*
_output_shapes
:	@��
,Reconstruction/dense_2/MatMul/ReadVariableOpReadVariableOp5reconstruction_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense_2/MatMulMatMulReconstruction/Reshape:output:04Reconstruction/dense_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@��
-Reconstruction/dense_2/BiasAdd/ReadVariableOpReadVariableOp6reconstruction_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense_2/BiasAddBiasAdd'Reconstruction/dense_2/MatMul:product:05Reconstruction/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�v
Reconstruction/dense_2/ReluRelu'Reconstruction/dense_2/BiasAdd:output:0*
T0*
_output_shapes
:	@��
,Reconstruction/dense_3/MatMul/ReadVariableOpReadVariableOp5reconstruction_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense_3/MatMulMatMul)Reconstruction/dense_2/Relu:activations:04Reconstruction/dense_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@��
-Reconstruction/dense_3/BiasAdd/ReadVariableOpReadVariableOp6reconstruction_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense_3/BiasAddBiasAdd'Reconstruction/dense_3/MatMul:product:05Reconstruction/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�v
Reconstruction/dense_3/ReluRelu'Reconstruction/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:	@��
*Reconstruction/dense/MatMul/ReadVariableOpReadVariableOp3reconstruction_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense/MatMulMatMul)Reconstruction/dense_3/Relu:activations:02Reconstruction/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@��
+Reconstruction/dense/BiasAdd/ReadVariableOpReadVariableOp4reconstruction_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense/BiasAddBiasAdd%Reconstruction/dense/MatMul:product:03Reconstruction/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�x
Reconstruction/dense/SigmoidSigmoid%Reconstruction/dense/BiasAdd:output:0*
T0*
_output_shapes
:	@�{
IdentityIdentity-DynamicRouting/SquashFunction_2/truediv_1:z:0^NoOp*
T0*&
_output_shapes
:@
i

Identity_1Identity Reconstruction/dense/Sigmoid:y:0^NoOp*
T0*
_output_shapes
:	@��
NoOpNoOp'^CapsuleFormation/MatMul/ReadVariableOp(^ConvolutionLayer/BiasAdd/ReadVariableOp'^ConvolutionLayer/Conv2D/ReadVariableOp&^PrimaryCapsule/BiasAdd/ReadVariableOp%^PrimaryCapsule/Conv2D/ReadVariableOp,^Reconstruction/dense/BiasAdd/ReadVariableOp+^Reconstruction/dense/MatMul/ReadVariableOp.^Reconstruction/dense_2/BiasAdd/ReadVariableOp-^Reconstruction/dense_2/MatMul/ReadVariableOp.^Reconstruction/dense_3/BiasAdd/ReadVariableOp-^Reconstruction/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:@:@
: : : : : : : : : : : 2P
&CapsuleFormation/MatMul/ReadVariableOp&CapsuleFormation/MatMul/ReadVariableOp2R
'ConvolutionLayer/BiasAdd/ReadVariableOp'ConvolutionLayer/BiasAdd/ReadVariableOp2P
&ConvolutionLayer/Conv2D/ReadVariableOp&ConvolutionLayer/Conv2D/ReadVariableOp2N
%PrimaryCapsule/BiasAdd/ReadVariableOp%PrimaryCapsule/BiasAdd/ReadVariableOp2L
$PrimaryCapsule/Conv2D/ReadVariableOp$PrimaryCapsule/Conv2D/ReadVariableOp2Z
+Reconstruction/dense/BiasAdd/ReadVariableOp+Reconstruction/dense/BiasAdd/ReadVariableOp2X
*Reconstruction/dense/MatMul/ReadVariableOp*Reconstruction/dense/MatMul/ReadVariableOp2^
-Reconstruction/dense_2/BiasAdd/ReadVariableOp-Reconstruction/dense_2/BiasAdd/ReadVariableOp2\
,Reconstruction/dense_2/MatMul/ReadVariableOp,Reconstruction/dense_2/MatMul/ReadVariableOp2^
-Reconstruction/dense_3/BiasAdd/ReadVariableOp-Reconstruction/dense_3/BiasAdd/ReadVariableOp2\
,Reconstruction/dense_3/MatMul/ReadVariableOp,Reconstruction/dense_3/MatMul/ReadVariableOp:HD

_output_shapes

:@

"
_user_specified_name
inputs_1:P L
&
_output_shapes
:@
"
_user_specified_name
inputs_0
��
�
L__inference_baseline_capsnet_layer_call_and_return_conditional_losses_176455

inputs
inputs_12
convolutionlayer_176234:		�&
convolutionlayer_176236:	�1
primarycapsule_176239:		��$
primarycapsule_176241:	�N
/capsuleformation_matmul_readvariableop_resource:�	
1
reconstruction_dense_2_176438:
��,
reconstruction_dense_2_176440:	�1
reconstruction_dense_3_176443:
��,
reconstruction_dense_3_176445:	�/
reconstruction_dense_176448:
��*
reconstruction_dense_176450:	�
identity

identity_1��&CapsuleFormation/MatMul/ReadVariableOp�(ConvolutionLayer/StatefulPartitionedCall�&PrimaryCapsule/StatefulPartitionedCall�,Reconstruction/dense/StatefulPartitionedCall�.Reconstruction/dense_2/StatefulPartitionedCall�.Reconstruction/dense_3/StatefulPartitionedCall�
(ConvolutionLayer/StatefulPartitionedCallStatefulPartitionedCallinputsconvolutionlayer_176234convolutionlayer_176236*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_ConvolutionLayer_layer_call_and_return_conditional_losses_175957�
&PrimaryCapsule/StatefulPartitionedCallStatefulPartitionedCall1ConvolutionLayer/StatefulPartitionedCall:output:0primarycapsule_176239primarycapsule_176241*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_PrimaryCapsule_layer_call_and_return_conditional_losses_175973s
CapsuleFormation/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"�����     �
CapsuleFormation/ReshapeReshape/PrimaryCapsule/StatefulPartitionedCall:output:0'CapsuleFormation/Reshape/shape:output:0*
T0*,
_output_shapes
:����������	j
CapsuleFormation/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims
ExpandDims!CapsuleFormation/Reshape:output:0(CapsuleFormation/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������	l
!CapsuleFormation/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims_1
ExpandDims$CapsuleFormation/ExpandDims:output:0*CapsuleFormation/ExpandDims_1/dim:output:0*
T0*4
_output_shapes"
 :����������	�
&CapsuleFormation/MatMul/ReadVariableOpReadVariableOp/capsuleformation_matmul_readvariableop_resource*+
_output_shapes
:�	
*
dtype0�
CapsuleFormation/MatMulBatchMatMulV2.CapsuleFormation/MatMul/ReadVariableOp:value:0&CapsuleFormation/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :����������	
�
CapsuleFormation/SqueezeSqueeze CapsuleFormation/MatMul:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
}
$DynamicRouting/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   �  
      _
DynamicRouting/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
DynamicRouting/zerosFill-DynamicRouting/zeros/shape_as_tensor:output:0#DynamicRouting/zeros/Const:output:0*
T0*'
_output_shapes
:�	
U
DynamicRouting/RankConst*
_output_shapes
: *
dtype0*
value	B :_
DynamicRouting/add/xConst*
_output_shapes
: *
dtype0*
valueB :
���������y
DynamicRouting/addAddV2DynamicRouting/add/x:output:0DynamicRouting/Rank:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :V
DynamicRouting/mod/yConst*
_output_shapes
: *
dtype0*
value	B :v
DynamicRouting/modFloorModDynamicRouting/add:z:0DynamicRouting/mod/y:output:0*
T0*
_output_shapes
: V
DynamicRouting/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/SubSubDynamicRouting/Rank_1:output:0DynamicRouting/Sub/y:output:0*
T0*
_output_shapes
: \
DynamicRouting/range/startConst*
_output_shapes
: *
dtype0*
value	B : \
DynamicRouting/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/rangeRange#DynamicRouting/range/start:output:0DynamicRouting/mod:z:0#DynamicRouting/range/delta:output:0*
_output_shapes
:X
DynamicRouting/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_1AddV2DynamicRouting/mod:z:0DynamicRouting/add_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_1RangeDynamicRouting/add_1:z:0DynamicRouting/Sub:z:0%DynamicRouting/range_1/delta:output:0*
_output_shapes
: l
DynamicRouting/concat/values_1PackDynamicRouting/Sub:z:0*
N*
T0*
_output_shapes
:l
DynamicRouting/concat/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:\
DynamicRouting/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concatConcatV2DynamicRouting/range:output:0'DynamicRouting/concat/values_1:output:0DynamicRouting/range_1:output:0'DynamicRouting/concat/values_3:output:0#DynamicRouting/concat/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose	TransposeDynamicRouting/zeros:output:0DynamicRouting/concat:output:0*
T0*'
_output_shapes
:�	
q
DynamicRouting/SoftmaxSoftmaxDynamicRouting/transpose:y:0*
T0*'
_output_shapes
:�	
X
DynamicRouting/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_1SubDynamicRouting/Rank_1:output:0DynamicRouting/Sub_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_2Range%DynamicRouting/range_2/start:output:0DynamicRouting/mod:z:0%DynamicRouting/range_2/delta:output:0*
_output_shapes
:X
DynamicRouting/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_2AddV2DynamicRouting/mod:z:0DynamicRouting/add_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_3RangeDynamicRouting/add_2:z:0DynamicRouting/Sub_1:z:0%DynamicRouting/range_3/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_1/values_1PackDynamicRouting/Sub_1:z:0*
N*
T0*
_output_shapes
:n
 DynamicRouting/concat_1/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_1ConcatV2DynamicRouting/range_2:output:0)DynamicRouting/concat_1/values_1:output:0DynamicRouting/range_3:output:0)DynamicRouting/concat_1/values_3:output:0%DynamicRouting/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_1	Transpose DynamicRouting/Softmax:softmax:0 DynamicRouting/concat_1:output:0*
T0*'
_output_shapes
:�	
�
DynamicRouting/MulMulDynamicRouting/transpose_1:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
f
$DynamicRouting/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/SumSumDynamicRouting/Mul:z:0-DynamicRouting/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
&DynamicRouting/SquashFunction/norm/mulMulDynamicRouting/Sum:output:0DynamicRouting/Sum:output:0*
T0*/
_output_shapes
:���������
�
8DynamicRouting/SquashFunction/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
&DynamicRouting/SquashFunction/norm/SumSum*DynamicRouting/SquashFunction/norm/mul:z:0ADynamicRouting/SquashFunction/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
'DynamicRouting/SquashFunction/norm/SqrtSqrt/DynamicRouting/SquashFunction/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
$DynamicRouting/SquashFunction/SquareSquare+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction/Square_1Square+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
h
#DynamicRouting/SquashFunction/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!DynamicRouting/SquashFunction/addAddV2,DynamicRouting/SquashFunction/add/x:output:0*DynamicRouting/SquashFunction/Square_1:y:0*
T0*/
_output_shapes
:���������
�
%DynamicRouting/SquashFunction/truedivRealDiv(DynamicRouting/SquashFunction/Square:y:0%DynamicRouting/SquashFunction/add:z:0*
T0*/
_output_shapes
:���������
�
!DynamicRouting/SquashFunction/mulMul)DynamicRouting/SquashFunction/truediv:z:0DynamicRouting/Sum:output:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
#DynamicRouting/SquashFunction/add_1AddV2+DynamicRouting/SquashFunction/norm/Sqrt:y:0.DynamicRouting/SquashFunction/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction/truediv_1RealDiv%DynamicRouting/SquashFunction/mul:z:0'DynamicRouting/SquashFunction/add_1:z:0*
T0*/
_output_shapes
:���������
h
DynamicRouting/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims
ExpandDims!CapsuleFormation/Squeeze:output:0&DynamicRouting/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_1
ExpandDims+DynamicRouting/SquashFunction/truediv_1:z:0(DynamicRouting/ExpandDims_1/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMulBatchMatMulV2"DynamicRouting/ExpandDims:output:0$DynamicRouting/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/SqueezeSqueezeDynamicRouting/MatMul:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_3AddV2DynamicRouting/zeros:output:0DynamicRouting/Squeeze:output:0*
T0*0
_output_shapes
:����������	
W
DynamicRouting/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_4/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_4AddV2DynamicRouting/add_4/x:output:0DynamicRouting/Rank_2:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_3Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_1/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_1FloorModDynamicRouting/add_4:z:0DynamicRouting/mod_1/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_2SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_4/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_4/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_4Range%DynamicRouting/range_4/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_4/delta:output:0*
_output_shapes
:X
DynamicRouting/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_5AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_5/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_5/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_5RangeDynamicRouting/add_5:z:0DynamicRouting/Sub_2:z:0%DynamicRouting/range_5/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_2/values_1PackDynamicRouting/Sub_2:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_2/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_2ConcatV2DynamicRouting/range_4:output:0)DynamicRouting/concat_2/values_1:output:0DynamicRouting/range_5:output:0)DynamicRouting/concat_2/values_3:output:0%DynamicRouting/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_2	TransposeDynamicRouting/add_3:z:0 DynamicRouting/concat_2:output:0*
T0*0
_output_shapes
:����������	
~
DynamicRouting/Softmax_1SoftmaxDynamicRouting/transpose_2:y:0*
T0*0
_output_shapes
:����������	
X
DynamicRouting/Sub_3/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_3SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_3/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_6/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_6/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_6Range%DynamicRouting/range_6/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_6/delta:output:0*
_output_shapes
:X
DynamicRouting/add_6/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_6AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_6/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_7/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_7RangeDynamicRouting/add_6:z:0DynamicRouting/Sub_3:z:0%DynamicRouting/range_7/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_3/values_1PackDynamicRouting/Sub_3:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_3/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_3ConcatV2DynamicRouting/range_6:output:0)DynamicRouting/concat_3/values_1:output:0DynamicRouting/range_7:output:0)DynamicRouting/concat_3/values_3:output:0%DynamicRouting/concat_3/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_3	Transpose"DynamicRouting/Softmax_1:softmax:0 DynamicRouting/concat_3:output:0*
T0*0
_output_shapes
:����������	
�
DynamicRouting/Mul_1MulDynamicRouting/transpose_3:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
h
&DynamicRouting/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_1SumDynamicRouting/Mul_1:z:0/DynamicRouting/Sum_1/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
(DynamicRouting/SquashFunction_1/norm/mulMulDynamicRouting/Sum_1:output:0DynamicRouting/Sum_1:output:0*
T0*/
_output_shapes
:���������
�
:DynamicRouting/SquashFunction_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_1/norm/SumSum,DynamicRouting/SquashFunction_1/norm/mul:z:0CDynamicRouting/SquashFunction_1/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
)DynamicRouting/SquashFunction_1/norm/SqrtSqrt1DynamicRouting/SquashFunction_1/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction_1/SquareSquare-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
(DynamicRouting/SquashFunction_1/Square_1Square-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_1/addAddV2.DynamicRouting/SquashFunction_1/add/x:output:0,DynamicRouting/SquashFunction_1/Square_1:y:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction_1/truedivRealDiv*DynamicRouting/SquashFunction_1/Square:y:0'DynamicRouting/SquashFunction_1/add:z:0*
T0*/
_output_shapes
:���������
�
#DynamicRouting/SquashFunction_1/mulMul+DynamicRouting/SquashFunction_1/truediv:z:0DynamicRouting/Sum_1:output:0*
T0*/
_output_shapes
:���������
l
'DynamicRouting/SquashFunction_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_1/add_1AddV2-DynamicRouting/SquashFunction_1/norm/Sqrt:y:00DynamicRouting/SquashFunction_1/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
)DynamicRouting/SquashFunction_1/truediv_1RealDiv'DynamicRouting/SquashFunction_1/mul:z:0)DynamicRouting/SquashFunction_1/add_1:z:0*
T0*/
_output_shapes
:���������
j
DynamicRouting/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_2
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_2/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_3
ExpandDims-DynamicRouting/SquashFunction_1/truediv_1:z:0(DynamicRouting/ExpandDims_3/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMul_1BatchMatMulV2$DynamicRouting/ExpandDims_2:output:0$DynamicRouting/ExpandDims_3:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/Squeeze_1Squeeze DynamicRouting/MatMul_1:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_7AddV2DynamicRouting/add_3:z:0!DynamicRouting/Squeeze_1:output:0*
T0*0
_output_shapes
:����������	
W
DynamicRouting/Rank_4Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_8/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_8AddV2DynamicRouting/add_8/x:output:0DynamicRouting/Rank_4:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_5Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_2/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_2FloorModDynamicRouting/add_8:z:0DynamicRouting/mod_2/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_4SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_4/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_8/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_8/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_8Range%DynamicRouting/range_8/start:output:0DynamicRouting/mod_2:z:0%DynamicRouting/range_8/delta:output:0*
_output_shapes
:X
DynamicRouting/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_9AddV2DynamicRouting/mod_2:z:0DynamicRouting/add_9/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_9/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_9RangeDynamicRouting/add_9:z:0DynamicRouting/Sub_4:z:0%DynamicRouting/range_9/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_4/values_1PackDynamicRouting/Sub_4:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_4/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_4ConcatV2DynamicRouting/range_8:output:0)DynamicRouting/concat_4/values_1:output:0DynamicRouting/range_9:output:0)DynamicRouting/concat_4/values_3:output:0%DynamicRouting/concat_4/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_4	TransposeDynamicRouting/add_7:z:0 DynamicRouting/concat_4:output:0*
T0*0
_output_shapes
:����������	
~
DynamicRouting/Softmax_2SoftmaxDynamicRouting/transpose_4:y:0*
T0*0
_output_shapes
:����������	
X
DynamicRouting/Sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_5SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_5/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_10/startConst*
_output_shapes
: *
dtype0*
value	B : _
DynamicRouting/range_10/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_10Range&DynamicRouting/range_10/start:output:0DynamicRouting/mod_2:z:0&DynamicRouting/range_10/delta:output:0*
_output_shapes
:Y
DynamicRouting/add_10/yConst*
_output_shapes
: *
dtype0*
value	B :{
DynamicRouting/add_10AddV2DynamicRouting/mod_2:z:0 DynamicRouting/add_10/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_11/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_11RangeDynamicRouting/add_10:z:0DynamicRouting/Sub_5:z:0&DynamicRouting/range_11/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_5/values_1PackDynamicRouting/Sub_5:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_5/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_5ConcatV2 DynamicRouting/range_10:output:0)DynamicRouting/concat_5/values_1:output:0 DynamicRouting/range_11:output:0)DynamicRouting/concat_5/values_3:output:0%DynamicRouting/concat_5/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_5	Transpose"DynamicRouting/Softmax_2:softmax:0 DynamicRouting/concat_5:output:0*
T0*0
_output_shapes
:����������	
�
DynamicRouting/Mul_2MulDynamicRouting/transpose_5:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
h
&DynamicRouting/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_2SumDynamicRouting/Mul_2:z:0/DynamicRouting/Sum_2/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
(DynamicRouting/SquashFunction_2/norm/mulMulDynamicRouting/Sum_2:output:0DynamicRouting/Sum_2:output:0*
T0*/
_output_shapes
:���������
�
:DynamicRouting/SquashFunction_2/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_2/norm/SumSum,DynamicRouting/SquashFunction_2/norm/mul:z:0CDynamicRouting/SquashFunction_2/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
)DynamicRouting/SquashFunction_2/norm/SqrtSqrt1DynamicRouting/SquashFunction_2/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction_2/SquareSquare-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
(DynamicRouting/SquashFunction_2/Square_1Square-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_2/addAddV2.DynamicRouting/SquashFunction_2/add/x:output:0,DynamicRouting/SquashFunction_2/Square_1:y:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction_2/truedivRealDiv*DynamicRouting/SquashFunction_2/Square:y:0'DynamicRouting/SquashFunction_2/add:z:0*
T0*/
_output_shapes
:���������
�
#DynamicRouting/SquashFunction_2/mulMul+DynamicRouting/SquashFunction_2/truediv:z:0DynamicRouting/Sum_2:output:0*
T0*/
_output_shapes
:���������
l
'DynamicRouting/SquashFunction_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_2/add_1AddV2-DynamicRouting/SquashFunction_2/norm/Sqrt:y:00DynamicRouting/SquashFunction_2/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
)DynamicRouting/SquashFunction_2/truediv_1RealDiv'DynamicRouting/SquashFunction_2/mul:z:0)DynamicRouting/SquashFunction_2/add_1:z:0*
T0*/
_output_shapes
:���������
j
DynamicRouting/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_4
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_4/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_5
ExpandDims-DynamicRouting/SquashFunction_2/truediv_1:z:0(DynamicRouting/ExpandDims_5/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMul_2BatchMatMulV2$DynamicRouting/ExpandDims_4:output:0$DynamicRouting/ExpandDims_5:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/Squeeze_2Squeeze DynamicRouting/MatMul_2:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_11AddV2DynamicRouting/add_7:z:0!DynamicRouting/Squeeze_2:output:0*
T0*0
_output_shapes
:����������	
a
Masking/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Masking/ExpandDims
ExpandDimsinputs_1Masking/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������
Z
Masking/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
Masking/ExpandDims_1
ExpandDimsMasking/ExpandDims:output:0!Masking/ExpandDims_1/dim:output:0*
T0*/
_output_shapes
:���������
�
Masking/MulMulMasking/ExpandDims_1:output:0-DynamicRouting/SquashFunction_2/truediv_1:z:0*
T0*/
_output_shapes
:���������
m
Reconstruction/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
Reconstruction/ReshapeReshapeMasking/Mul:z:0%Reconstruction/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
.Reconstruction/dense_2/StatefulPartitionedCallStatefulPartitionedCallReconstruction/Reshape:output:0reconstruction_dense_2_176438reconstruction_dense_2_176440*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_176184�
.Reconstruction/dense_3/StatefulPartitionedCallStatefulPartitionedCall7Reconstruction/dense_2/StatefulPartitionedCall:output:0reconstruction_dense_3_176443reconstruction_dense_3_176445*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_176201�
,Reconstruction/dense/StatefulPartitionedCallStatefulPartitionedCall7Reconstruction/dense_3/StatefulPartitionedCall:output:0reconstruction_dense_176448reconstruction_dense_176450*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_176218�
IdentityIdentity-DynamicRouting/SquashFunction_2/truediv_1:z:0^NoOp*
T0*/
_output_shapes
:���������
�

Identity_1Identity5Reconstruction/dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp'^CapsuleFormation/MatMul/ReadVariableOp)^ConvolutionLayer/StatefulPartitionedCall'^PrimaryCapsule/StatefulPartitionedCall-^Reconstruction/dense/StatefulPartitionedCall/^Reconstruction/dense_2/StatefulPartitionedCall/^Reconstruction/dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������:���������
: : : : : : : : : : : 2P
&CapsuleFormation/MatMul/ReadVariableOp&CapsuleFormation/MatMul/ReadVariableOp2T
(ConvolutionLayer/StatefulPartitionedCall(ConvolutionLayer/StatefulPartitionedCall2P
&PrimaryCapsule/StatefulPartitionedCall&PrimaryCapsule/StatefulPartitionedCall2\
,Reconstruction/dense/StatefulPartitionedCall,Reconstruction/dense/StatefulPartitionedCall2`
.Reconstruction/dense_2/StatefulPartitionedCall.Reconstruction/dense_2/StatefulPartitionedCall2`
.Reconstruction/dense_3/StatefulPartitionedCall.Reconstruction/dense_3/StatefulPartitionedCall:OK
'
_output_shapes
:���������

 
_user_specified_nameinputs:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_PrimaryCapsule_layer_call_fn_178231

inputs#
unknown:		��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_PrimaryCapsule_layer_call_and_return_conditional_losses_175973x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
L__inference_ConvolutionLayer_layer_call_and_return_conditional_losses_178222

inputs9
conv2d_readvariableop_resource:		�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:		�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
1__inference_ConvolutionLayer_layer_call_fn_178211

inputs"
unknown:		�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_ConvolutionLayer_layer_call_and_return_conditional_losses_175957x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_dense_layer_call_fn_178290

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_176218p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_dense_2_layer_call_and_return_conditional_losses_178261

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�3
�
"__inference__traced_restore_178435
file_prefixH
)assignvariableop_variables_poseestimation:�	
E
*assignvariableop_1_convolutionlayer_kernel:		�7
(assignvariableop_2_convolutionlayer_bias:	�D
(assignvariableop_3_primarycapsule_kernel:		��5
&assignvariableop_4_primarycapsule_bias:	�D
0assignvariableop_5_reconstruction_dense_2_kernel:
��=
.assignvariableop_6_reconstruction_dense_2_bias:	�D
0assignvariableop_7_reconstruction_dense_3_kernel:
��=
.assignvariableop_8_reconstruction_dense_3_bias:	�B
.assignvariableop_9_reconstruction_dense_kernel:
��<
-assignvariableop_10_reconstruction_dense_bias:	�
identity_12��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�Bw/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp)assignvariableop_variables_poseestimationIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp*assignvariableop_1_convolutionlayer_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp(assignvariableop_2_convolutionlayer_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp(assignvariableop_3_primarycapsule_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp&assignvariableop_4_primarycapsule_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp0assignvariableop_5_reconstruction_dense_2_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp.assignvariableop_6_reconstruction_dense_2_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp0assignvariableop_7_reconstruction_dense_3_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp.assignvariableop_8_reconstruction_dense_3_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_reconstruction_dense_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp-assignvariableop_10_reconstruction_dense_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_11Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_12IdentityIdentity_11:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_12Identity_12:output:0*+
_input_shapes
: : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
1__inference_baseline_capsnet_layer_call_fn_177968
inputs_0
inputs_1"
unknown:		�
	unknown_0:	�%
	unknown_1:		��
	unknown_2:	�(
	unknown_3:�	

	unknown_4:
��
	unknown_5:	�
	unknown_6:
��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:���������
:����������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_baseline_capsnet_layer_call_and_return_conditional_losses_176455w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������
r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������:���������
: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:���������

"
_user_specified_name
inputs_1:Y U
/
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
�
!__inference__wrapped_model_175941
input_1
input_22
baseline_capsnet_175915:		�&
baseline_capsnet_175917:	�3
baseline_capsnet_175919:		��&
baseline_capsnet_175921:	�6
baseline_capsnet_175923:�	
+
baseline_capsnet_175925:
��&
baseline_capsnet_175927:	�+
baseline_capsnet_175929:
��&
baseline_capsnet_175931:	�+
baseline_capsnet_175933:
��&
baseline_capsnet_175935:	�
identity

identity_1��(baseline_capsnet/StatefulPartitionedCall�
(baseline_capsnet/StatefulPartitionedCallStatefulPartitionedCallinput_1input_2baseline_capsnet_175915baseline_capsnet_175917baseline_capsnet_175919baseline_capsnet_175921baseline_capsnet_175923baseline_capsnet_175925baseline_capsnet_175927baseline_capsnet_175929baseline_capsnet_175931baseline_capsnet_175933baseline_capsnet_175935*
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:���������
:����������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� * 
fR
__inference_call_175914�
IdentityIdentity1baseline_capsnet/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������
�

Identity_1Identity1baseline_capsnet/StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������q
NoOpNoOp)^baseline_capsnet/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������:���������
: : : : : : : : : : : 2T
(baseline_capsnet/StatefulPartitionedCall(baseline_capsnet/StatefulPartitionedCall:PL
'
_output_shapes
:���������

!
_user_specified_name	input_2:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
��
�

__inference_call_177498
inputs_0
inputs_1J
/convolutionlayer_conv2d_readvariableop_resource:		�?
0convolutionlayer_biasadd_readvariableop_resource:	�I
-primarycapsule_conv2d_readvariableop_resource:		��=
.primarycapsule_biasadd_readvariableop_resource:	�N
/capsuleformation_matmul_readvariableop_resource:�	
I
5reconstruction_dense_2_matmul_readvariableop_resource:
��E
6reconstruction_dense_2_biasadd_readvariableop_resource:	�I
5reconstruction_dense_3_matmul_readvariableop_resource:
��E
6reconstruction_dense_3_biasadd_readvariableop_resource:	�G
3reconstruction_dense_matmul_readvariableop_resource:
��C
4reconstruction_dense_biasadd_readvariableop_resource:	�
identity

identity_1��&CapsuleFormation/MatMul/ReadVariableOp�'ConvolutionLayer/BiasAdd/ReadVariableOp�&ConvolutionLayer/Conv2D/ReadVariableOp�%PrimaryCapsule/BiasAdd/ReadVariableOp�$PrimaryCapsule/Conv2D/ReadVariableOp�+Reconstruction/dense/BiasAdd/ReadVariableOp�*Reconstruction/dense/MatMul/ReadVariableOp�-Reconstruction/dense_2/BiasAdd/ReadVariableOp�,Reconstruction/dense_2/MatMul/ReadVariableOp�-Reconstruction/dense_3/BiasAdd/ReadVariableOp�,Reconstruction/dense_3/MatMul/ReadVariableOp�
&ConvolutionLayer/Conv2D/ReadVariableOpReadVariableOp/convolutionlayer_conv2d_readvariableop_resource*'
_output_shapes
:		�*
dtype0�
ConvolutionLayer/Conv2DConv2Dinputs_0.ConvolutionLayer/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
'ConvolutionLayer/BiasAdd/ReadVariableOpReadVariableOp0convolutionlayer_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ConvolutionLayer/BiasAddBiasAdd ConvolutionLayer/Conv2D:output:0/ConvolutionLayer/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������{
ConvolutionLayer/ReluRelu!ConvolutionLayer/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
$PrimaryCapsule/Conv2D/ReadVariableOpReadVariableOp-primarycapsule_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype0�
PrimaryCapsule/Conv2DConv2D#ConvolutionLayer/Relu:activations:0,PrimaryCapsule/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
%PrimaryCapsule/BiasAdd/ReadVariableOpReadVariableOp.primarycapsule_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
PrimaryCapsule/BiasAddBiasAddPrimaryCapsule/Conv2D:output:0-PrimaryCapsule/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������s
CapsuleFormation/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"�����     �
CapsuleFormation/ReshapeReshapePrimaryCapsule/BiasAdd:output:0'CapsuleFormation/Reshape/shape:output:0*
T0*,
_output_shapes
:����������	j
CapsuleFormation/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims
ExpandDims!CapsuleFormation/Reshape:output:0(CapsuleFormation/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������	l
!CapsuleFormation/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims_1
ExpandDims$CapsuleFormation/ExpandDims:output:0*CapsuleFormation/ExpandDims_1/dim:output:0*
T0*4
_output_shapes"
 :����������	�
&CapsuleFormation/MatMul/ReadVariableOpReadVariableOp/capsuleformation_matmul_readvariableop_resource*+
_output_shapes
:�	
*
dtype0�
CapsuleFormation/MatMulBatchMatMulV2.CapsuleFormation/MatMul/ReadVariableOp:value:0&CapsuleFormation/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :����������	
�
CapsuleFormation/SqueezeSqueeze CapsuleFormation/MatMul:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
}
$DynamicRouting/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   �  
      _
DynamicRouting/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
DynamicRouting/zerosFill-DynamicRouting/zeros/shape_as_tensor:output:0#DynamicRouting/zeros/Const:output:0*
T0*'
_output_shapes
:�	
U
DynamicRouting/RankConst*
_output_shapes
: *
dtype0*
value	B :_
DynamicRouting/add/xConst*
_output_shapes
: *
dtype0*
valueB :
���������y
DynamicRouting/addAddV2DynamicRouting/add/x:output:0DynamicRouting/Rank:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :V
DynamicRouting/mod/yConst*
_output_shapes
: *
dtype0*
value	B :v
DynamicRouting/modFloorModDynamicRouting/add:z:0DynamicRouting/mod/y:output:0*
T0*
_output_shapes
: V
DynamicRouting/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/SubSubDynamicRouting/Rank_1:output:0DynamicRouting/Sub/y:output:0*
T0*
_output_shapes
: \
DynamicRouting/range/startConst*
_output_shapes
: *
dtype0*
value	B : \
DynamicRouting/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/rangeRange#DynamicRouting/range/start:output:0DynamicRouting/mod:z:0#DynamicRouting/range/delta:output:0*
_output_shapes
:X
DynamicRouting/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_1AddV2DynamicRouting/mod:z:0DynamicRouting/add_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_1RangeDynamicRouting/add_1:z:0DynamicRouting/Sub:z:0%DynamicRouting/range_1/delta:output:0*
_output_shapes
: l
DynamicRouting/concat/values_1PackDynamicRouting/Sub:z:0*
N*
T0*
_output_shapes
:l
DynamicRouting/concat/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:\
DynamicRouting/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concatConcatV2DynamicRouting/range:output:0'DynamicRouting/concat/values_1:output:0DynamicRouting/range_1:output:0'DynamicRouting/concat/values_3:output:0#DynamicRouting/concat/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose	TransposeDynamicRouting/zeros:output:0DynamicRouting/concat:output:0*
T0*'
_output_shapes
:�	
q
DynamicRouting/SoftmaxSoftmaxDynamicRouting/transpose:y:0*
T0*'
_output_shapes
:�	
X
DynamicRouting/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_1SubDynamicRouting/Rank_1:output:0DynamicRouting/Sub_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_2Range%DynamicRouting/range_2/start:output:0DynamicRouting/mod:z:0%DynamicRouting/range_2/delta:output:0*
_output_shapes
:X
DynamicRouting/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_2AddV2DynamicRouting/mod:z:0DynamicRouting/add_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_3RangeDynamicRouting/add_2:z:0DynamicRouting/Sub_1:z:0%DynamicRouting/range_3/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_1/values_1PackDynamicRouting/Sub_1:z:0*
N*
T0*
_output_shapes
:n
 DynamicRouting/concat_1/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_1ConcatV2DynamicRouting/range_2:output:0)DynamicRouting/concat_1/values_1:output:0DynamicRouting/range_3:output:0)DynamicRouting/concat_1/values_3:output:0%DynamicRouting/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_1	Transpose DynamicRouting/Softmax:softmax:0 DynamicRouting/concat_1:output:0*
T0*'
_output_shapes
:�	
�
DynamicRouting/MulMulDynamicRouting/transpose_1:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
f
$DynamicRouting/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/SumSumDynamicRouting/Mul:z:0-DynamicRouting/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
&DynamicRouting/SquashFunction/norm/mulMulDynamicRouting/Sum:output:0DynamicRouting/Sum:output:0*
T0*/
_output_shapes
:���������
�
8DynamicRouting/SquashFunction/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
&DynamicRouting/SquashFunction/norm/SumSum*DynamicRouting/SquashFunction/norm/mul:z:0ADynamicRouting/SquashFunction/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
'DynamicRouting/SquashFunction/norm/SqrtSqrt/DynamicRouting/SquashFunction/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
$DynamicRouting/SquashFunction/SquareSquare+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction/Square_1Square+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
h
#DynamicRouting/SquashFunction/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!DynamicRouting/SquashFunction/addAddV2,DynamicRouting/SquashFunction/add/x:output:0*DynamicRouting/SquashFunction/Square_1:y:0*
T0*/
_output_shapes
:���������
�
%DynamicRouting/SquashFunction/truedivRealDiv(DynamicRouting/SquashFunction/Square:y:0%DynamicRouting/SquashFunction/add:z:0*
T0*/
_output_shapes
:���������
�
!DynamicRouting/SquashFunction/mulMul)DynamicRouting/SquashFunction/truediv:z:0DynamicRouting/Sum:output:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
#DynamicRouting/SquashFunction/add_1AddV2+DynamicRouting/SquashFunction/norm/Sqrt:y:0.DynamicRouting/SquashFunction/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction/truediv_1RealDiv%DynamicRouting/SquashFunction/mul:z:0'DynamicRouting/SquashFunction/add_1:z:0*
T0*/
_output_shapes
:���������
h
DynamicRouting/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims
ExpandDims!CapsuleFormation/Squeeze:output:0&DynamicRouting/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_1
ExpandDims+DynamicRouting/SquashFunction/truediv_1:z:0(DynamicRouting/ExpandDims_1/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMulBatchMatMulV2"DynamicRouting/ExpandDims:output:0$DynamicRouting/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/SqueezeSqueezeDynamicRouting/MatMul:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_3AddV2DynamicRouting/zeros:output:0DynamicRouting/Squeeze:output:0*
T0*0
_output_shapes
:����������	
W
DynamicRouting/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_4/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_4AddV2DynamicRouting/add_4/x:output:0DynamicRouting/Rank_2:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_3Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_1/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_1FloorModDynamicRouting/add_4:z:0DynamicRouting/mod_1/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_2SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_4/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_4/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_4Range%DynamicRouting/range_4/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_4/delta:output:0*
_output_shapes
:X
DynamicRouting/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_5AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_5/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_5/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_5RangeDynamicRouting/add_5:z:0DynamicRouting/Sub_2:z:0%DynamicRouting/range_5/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_2/values_1PackDynamicRouting/Sub_2:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_2/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_2ConcatV2DynamicRouting/range_4:output:0)DynamicRouting/concat_2/values_1:output:0DynamicRouting/range_5:output:0)DynamicRouting/concat_2/values_3:output:0%DynamicRouting/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_2	TransposeDynamicRouting/add_3:z:0 DynamicRouting/concat_2:output:0*
T0*0
_output_shapes
:����������	
~
DynamicRouting/Softmax_1SoftmaxDynamicRouting/transpose_2:y:0*
T0*0
_output_shapes
:����������	
X
DynamicRouting/Sub_3/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_3SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_3/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_6/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_6/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_6Range%DynamicRouting/range_6/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_6/delta:output:0*
_output_shapes
:X
DynamicRouting/add_6/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_6AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_6/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_7/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_7RangeDynamicRouting/add_6:z:0DynamicRouting/Sub_3:z:0%DynamicRouting/range_7/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_3/values_1PackDynamicRouting/Sub_3:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_3/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_3ConcatV2DynamicRouting/range_6:output:0)DynamicRouting/concat_3/values_1:output:0DynamicRouting/range_7:output:0)DynamicRouting/concat_3/values_3:output:0%DynamicRouting/concat_3/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_3	Transpose"DynamicRouting/Softmax_1:softmax:0 DynamicRouting/concat_3:output:0*
T0*0
_output_shapes
:����������	
�
DynamicRouting/Mul_1MulDynamicRouting/transpose_3:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
h
&DynamicRouting/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_1SumDynamicRouting/Mul_1:z:0/DynamicRouting/Sum_1/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
(DynamicRouting/SquashFunction_1/norm/mulMulDynamicRouting/Sum_1:output:0DynamicRouting/Sum_1:output:0*
T0*/
_output_shapes
:���������
�
:DynamicRouting/SquashFunction_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_1/norm/SumSum,DynamicRouting/SquashFunction_1/norm/mul:z:0CDynamicRouting/SquashFunction_1/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
)DynamicRouting/SquashFunction_1/norm/SqrtSqrt1DynamicRouting/SquashFunction_1/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction_1/SquareSquare-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
(DynamicRouting/SquashFunction_1/Square_1Square-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_1/addAddV2.DynamicRouting/SquashFunction_1/add/x:output:0,DynamicRouting/SquashFunction_1/Square_1:y:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction_1/truedivRealDiv*DynamicRouting/SquashFunction_1/Square:y:0'DynamicRouting/SquashFunction_1/add:z:0*
T0*/
_output_shapes
:���������
�
#DynamicRouting/SquashFunction_1/mulMul+DynamicRouting/SquashFunction_1/truediv:z:0DynamicRouting/Sum_1:output:0*
T0*/
_output_shapes
:���������
l
'DynamicRouting/SquashFunction_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_1/add_1AddV2-DynamicRouting/SquashFunction_1/norm/Sqrt:y:00DynamicRouting/SquashFunction_1/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
)DynamicRouting/SquashFunction_1/truediv_1RealDiv'DynamicRouting/SquashFunction_1/mul:z:0)DynamicRouting/SquashFunction_1/add_1:z:0*
T0*/
_output_shapes
:���������
j
DynamicRouting/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_2
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_2/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_3
ExpandDims-DynamicRouting/SquashFunction_1/truediv_1:z:0(DynamicRouting/ExpandDims_3/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMul_1BatchMatMulV2$DynamicRouting/ExpandDims_2:output:0$DynamicRouting/ExpandDims_3:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/Squeeze_1Squeeze DynamicRouting/MatMul_1:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_7AddV2DynamicRouting/add_3:z:0!DynamicRouting/Squeeze_1:output:0*
T0*0
_output_shapes
:����������	
W
DynamicRouting/Rank_4Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_8/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_8AddV2DynamicRouting/add_8/x:output:0DynamicRouting/Rank_4:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_5Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_2/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_2FloorModDynamicRouting/add_8:z:0DynamicRouting/mod_2/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_4SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_4/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_8/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_8/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_8Range%DynamicRouting/range_8/start:output:0DynamicRouting/mod_2:z:0%DynamicRouting/range_8/delta:output:0*
_output_shapes
:X
DynamicRouting/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_9AddV2DynamicRouting/mod_2:z:0DynamicRouting/add_9/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_9/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_9RangeDynamicRouting/add_9:z:0DynamicRouting/Sub_4:z:0%DynamicRouting/range_9/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_4/values_1PackDynamicRouting/Sub_4:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_4/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_4ConcatV2DynamicRouting/range_8:output:0)DynamicRouting/concat_4/values_1:output:0DynamicRouting/range_9:output:0)DynamicRouting/concat_4/values_3:output:0%DynamicRouting/concat_4/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_4	TransposeDynamicRouting/add_7:z:0 DynamicRouting/concat_4:output:0*
T0*0
_output_shapes
:����������	
~
DynamicRouting/Softmax_2SoftmaxDynamicRouting/transpose_4:y:0*
T0*0
_output_shapes
:����������	
X
DynamicRouting/Sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_5SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_5/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_10/startConst*
_output_shapes
: *
dtype0*
value	B : _
DynamicRouting/range_10/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_10Range&DynamicRouting/range_10/start:output:0DynamicRouting/mod_2:z:0&DynamicRouting/range_10/delta:output:0*
_output_shapes
:Y
DynamicRouting/add_10/yConst*
_output_shapes
: *
dtype0*
value	B :{
DynamicRouting/add_10AddV2DynamicRouting/mod_2:z:0 DynamicRouting/add_10/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_11/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_11RangeDynamicRouting/add_10:z:0DynamicRouting/Sub_5:z:0&DynamicRouting/range_11/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_5/values_1PackDynamicRouting/Sub_5:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_5/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_5ConcatV2 DynamicRouting/range_10:output:0)DynamicRouting/concat_5/values_1:output:0 DynamicRouting/range_11:output:0)DynamicRouting/concat_5/values_3:output:0%DynamicRouting/concat_5/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_5	Transpose"DynamicRouting/Softmax_2:softmax:0 DynamicRouting/concat_5:output:0*
T0*0
_output_shapes
:����������	
�
DynamicRouting/Mul_2MulDynamicRouting/transpose_5:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
h
&DynamicRouting/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_2SumDynamicRouting/Mul_2:z:0/DynamicRouting/Sum_2/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
(DynamicRouting/SquashFunction_2/norm/mulMulDynamicRouting/Sum_2:output:0DynamicRouting/Sum_2:output:0*
T0*/
_output_shapes
:���������
�
:DynamicRouting/SquashFunction_2/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_2/norm/SumSum,DynamicRouting/SquashFunction_2/norm/mul:z:0CDynamicRouting/SquashFunction_2/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
)DynamicRouting/SquashFunction_2/norm/SqrtSqrt1DynamicRouting/SquashFunction_2/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction_2/SquareSquare-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
(DynamicRouting/SquashFunction_2/Square_1Square-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_2/addAddV2.DynamicRouting/SquashFunction_2/add/x:output:0,DynamicRouting/SquashFunction_2/Square_1:y:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction_2/truedivRealDiv*DynamicRouting/SquashFunction_2/Square:y:0'DynamicRouting/SquashFunction_2/add:z:0*
T0*/
_output_shapes
:���������
�
#DynamicRouting/SquashFunction_2/mulMul+DynamicRouting/SquashFunction_2/truediv:z:0DynamicRouting/Sum_2:output:0*
T0*/
_output_shapes
:���������
l
'DynamicRouting/SquashFunction_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_2/add_1AddV2-DynamicRouting/SquashFunction_2/norm/Sqrt:y:00DynamicRouting/SquashFunction_2/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
)DynamicRouting/SquashFunction_2/truediv_1RealDiv'DynamicRouting/SquashFunction_2/mul:z:0)DynamicRouting/SquashFunction_2/add_1:z:0*
T0*/
_output_shapes
:���������
j
DynamicRouting/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_4
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_4/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_5
ExpandDims-DynamicRouting/SquashFunction_2/truediv_1:z:0(DynamicRouting/ExpandDims_5/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMul_2BatchMatMulV2$DynamicRouting/ExpandDims_4:output:0$DynamicRouting/ExpandDims_5:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/Squeeze_2Squeeze DynamicRouting/MatMul_2:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_11AddV2DynamicRouting/add_7:z:0!DynamicRouting/Squeeze_2:output:0*
T0*0
_output_shapes
:����������	
a
Masking/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Masking/ExpandDims
ExpandDimsinputs_1Masking/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������
Z
Masking/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
Masking/ExpandDims_1
ExpandDimsMasking/ExpandDims:output:0!Masking/ExpandDims_1/dim:output:0*
T0*/
_output_shapes
:���������
�
Masking/MulMulMasking/ExpandDims_1:output:0-DynamicRouting/SquashFunction_2/truediv_1:z:0*
T0*/
_output_shapes
:���������
m
Reconstruction/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
Reconstruction/ReshapeReshapeMasking/Mul:z:0%Reconstruction/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
,Reconstruction/dense_2/MatMul/ReadVariableOpReadVariableOp5reconstruction_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense_2/MatMulMatMulReconstruction/Reshape:output:04Reconstruction/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-Reconstruction/dense_2/BiasAdd/ReadVariableOpReadVariableOp6reconstruction_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense_2/BiasAddBiasAdd'Reconstruction/dense_2/MatMul:product:05Reconstruction/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
Reconstruction/dense_2/ReluRelu'Reconstruction/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
,Reconstruction/dense_3/MatMul/ReadVariableOpReadVariableOp5reconstruction_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense_3/MatMulMatMul)Reconstruction/dense_2/Relu:activations:04Reconstruction/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-Reconstruction/dense_3/BiasAdd/ReadVariableOpReadVariableOp6reconstruction_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense_3/BiasAddBiasAdd'Reconstruction/dense_3/MatMul:product:05Reconstruction/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
Reconstruction/dense_3/ReluRelu'Reconstruction/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*Reconstruction/dense/MatMul/ReadVariableOpReadVariableOp3reconstruction_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense/MatMulMatMul)Reconstruction/dense_3/Relu:activations:02Reconstruction/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+Reconstruction/dense/BiasAdd/ReadVariableOpReadVariableOp4reconstruction_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense/BiasAddBiasAdd%Reconstruction/dense/MatMul:product:03Reconstruction/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Reconstruction/dense/SigmoidSigmoid%Reconstruction/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
IdentityIdentity-DynamicRouting/SquashFunction_2/truediv_1:z:0^NoOp*
T0*/
_output_shapes
:���������
r

Identity_1Identity Reconstruction/dense/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp'^CapsuleFormation/MatMul/ReadVariableOp(^ConvolutionLayer/BiasAdd/ReadVariableOp'^ConvolutionLayer/Conv2D/ReadVariableOp&^PrimaryCapsule/BiasAdd/ReadVariableOp%^PrimaryCapsule/Conv2D/ReadVariableOp,^Reconstruction/dense/BiasAdd/ReadVariableOp+^Reconstruction/dense/MatMul/ReadVariableOp.^Reconstruction/dense_2/BiasAdd/ReadVariableOp-^Reconstruction/dense_2/MatMul/ReadVariableOp.^Reconstruction/dense_3/BiasAdd/ReadVariableOp-^Reconstruction/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������:���������
: : : : : : : : : : : 2P
&CapsuleFormation/MatMul/ReadVariableOp&CapsuleFormation/MatMul/ReadVariableOp2R
'ConvolutionLayer/BiasAdd/ReadVariableOp'ConvolutionLayer/BiasAdd/ReadVariableOp2P
&ConvolutionLayer/Conv2D/ReadVariableOp&ConvolutionLayer/Conv2D/ReadVariableOp2N
%PrimaryCapsule/BiasAdd/ReadVariableOp%PrimaryCapsule/BiasAdd/ReadVariableOp2L
$PrimaryCapsule/Conv2D/ReadVariableOp$PrimaryCapsule/Conv2D/ReadVariableOp2Z
+Reconstruction/dense/BiasAdd/ReadVariableOp+Reconstruction/dense/BiasAdd/ReadVariableOp2X
*Reconstruction/dense/MatMul/ReadVariableOp*Reconstruction/dense/MatMul/ReadVariableOp2^
-Reconstruction/dense_2/BiasAdd/ReadVariableOp-Reconstruction/dense_2/BiasAdd/ReadVariableOp2\
,Reconstruction/dense_2/MatMul/ReadVariableOp,Reconstruction/dense_2/MatMul/ReadVariableOp2^
-Reconstruction/dense_3/BiasAdd/ReadVariableOp-Reconstruction/dense_3/BiasAdd/ReadVariableOp2\
,Reconstruction/dense_3/MatMul/ReadVariableOp,Reconstruction/dense_3/MatMul/ReadVariableOp:QM
'
_output_shapes
:���������

"
_user_specified_name
inputs_1:Y U
/
_output_shapes
:���������
"
_user_specified_name
inputs_0
��
�

__inference_call_177030
inputs_0
inputs_1J
/convolutionlayer_conv2d_readvariableop_resource:		�?
0convolutionlayer_biasadd_readvariableop_resource:	�I
-primarycapsule_conv2d_readvariableop_resource:		��=
.primarycapsule_biasadd_readvariableop_resource:	�N
/capsuleformation_matmul_readvariableop_resource:�	
I
5reconstruction_dense_2_matmul_readvariableop_resource:
��E
6reconstruction_dense_2_biasadd_readvariableop_resource:	�I
5reconstruction_dense_3_matmul_readvariableop_resource:
��E
6reconstruction_dense_3_biasadd_readvariableop_resource:	�G
3reconstruction_dense_matmul_readvariableop_resource:
��C
4reconstruction_dense_biasadd_readvariableop_resource:	�
identity

identity_1��&CapsuleFormation/MatMul/ReadVariableOp�'ConvolutionLayer/BiasAdd/ReadVariableOp�&ConvolutionLayer/Conv2D/ReadVariableOp�%PrimaryCapsule/BiasAdd/ReadVariableOp�$PrimaryCapsule/Conv2D/ReadVariableOp�+Reconstruction/dense/BiasAdd/ReadVariableOp�*Reconstruction/dense/MatMul/ReadVariableOp�-Reconstruction/dense_2/BiasAdd/ReadVariableOp�,Reconstruction/dense_2/MatMul/ReadVariableOp�-Reconstruction/dense_3/BiasAdd/ReadVariableOp�,Reconstruction/dense_3/MatMul/ReadVariableOp�
&ConvolutionLayer/Conv2D/ReadVariableOpReadVariableOp/convolutionlayer_conv2d_readvariableop_resource*'
_output_shapes
:		�*
dtype0�
ConvolutionLayer/Conv2DConv2Dinputs_0.ConvolutionLayer/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:8�*
paddingVALID*
strides
�
'ConvolutionLayer/BiasAdd/ReadVariableOpReadVariableOp0convolutionlayer_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ConvolutionLayer/BiasAddBiasAdd ConvolutionLayer/Conv2D:output:0/ConvolutionLayer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:8�r
ConvolutionLayer/ReluRelu!ConvolutionLayer/BiasAdd:output:0*
T0*'
_output_shapes
:8��
$PrimaryCapsule/Conv2D/ReadVariableOpReadVariableOp-primarycapsule_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype0�
PrimaryCapsule/Conv2DConv2D#ConvolutionLayer/Relu:activations:0,PrimaryCapsule/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:8�*
paddingVALID*
strides
�
%PrimaryCapsule/BiasAdd/ReadVariableOpReadVariableOp.primarycapsule_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
PrimaryCapsule/BiasAddBiasAddPrimaryCapsule/Conv2D:output:0-PrimaryCapsule/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:8�s
CapsuleFormation/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"�����     �
CapsuleFormation/ReshapeReshapePrimaryCapsule/BiasAdd:output:0'CapsuleFormation/Reshape/shape:output:0*
T0*#
_output_shapes
:8�	j
CapsuleFormation/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims
ExpandDims!CapsuleFormation/Reshape:output:0(CapsuleFormation/ExpandDims/dim:output:0*
T0*'
_output_shapes
:8�	l
!CapsuleFormation/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims_1
ExpandDims$CapsuleFormation/ExpandDims:output:0*CapsuleFormation/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:8�	�
&CapsuleFormation/MatMul/ReadVariableOpReadVariableOp/capsuleformation_matmul_readvariableop_resource*+
_output_shapes
:�	
*
dtype0�
CapsuleFormation/MatMulBatchMatMulV2.CapsuleFormation/MatMul/ReadVariableOp:value:0&CapsuleFormation/ExpandDims_1:output:0*
T0*+
_output_shapes
:8�	
�
CapsuleFormation/SqueezeSqueeze CapsuleFormation/MatMul:output:0*
T0*'
_output_shapes
:8�	
*
squeeze_dims
}
$DynamicRouting/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"8   �  
      _
DynamicRouting/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
DynamicRouting/zerosFill-DynamicRouting/zeros/shape_as_tensor:output:0#DynamicRouting/zeros/Const:output:0*
T0*'
_output_shapes
:8�	
U
DynamicRouting/RankConst*
_output_shapes
: *
dtype0*
value	B :_
DynamicRouting/add/xConst*
_output_shapes
: *
dtype0*
valueB :
���������y
DynamicRouting/addAddV2DynamicRouting/add/x:output:0DynamicRouting/Rank:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :V
DynamicRouting/mod/yConst*
_output_shapes
: *
dtype0*
value	B :v
DynamicRouting/modFloorModDynamicRouting/add:z:0DynamicRouting/mod/y:output:0*
T0*
_output_shapes
: V
DynamicRouting/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/SubSubDynamicRouting/Rank_1:output:0DynamicRouting/Sub/y:output:0*
T0*
_output_shapes
: \
DynamicRouting/range/startConst*
_output_shapes
: *
dtype0*
value	B : \
DynamicRouting/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/rangeRange#DynamicRouting/range/start:output:0DynamicRouting/mod:z:0#DynamicRouting/range/delta:output:0*
_output_shapes
:X
DynamicRouting/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_1AddV2DynamicRouting/mod:z:0DynamicRouting/add_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_1RangeDynamicRouting/add_1:z:0DynamicRouting/Sub:z:0%DynamicRouting/range_1/delta:output:0*
_output_shapes
: l
DynamicRouting/concat/values_1PackDynamicRouting/Sub:z:0*
N*
T0*
_output_shapes
:l
DynamicRouting/concat/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:\
DynamicRouting/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concatConcatV2DynamicRouting/range:output:0'DynamicRouting/concat/values_1:output:0DynamicRouting/range_1:output:0'DynamicRouting/concat/values_3:output:0#DynamicRouting/concat/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose	TransposeDynamicRouting/zeros:output:0DynamicRouting/concat:output:0*
T0*'
_output_shapes
:8�	
q
DynamicRouting/SoftmaxSoftmaxDynamicRouting/transpose:y:0*
T0*'
_output_shapes
:8�	
X
DynamicRouting/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_1SubDynamicRouting/Rank_1:output:0DynamicRouting/Sub_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_2Range%DynamicRouting/range_2/start:output:0DynamicRouting/mod:z:0%DynamicRouting/range_2/delta:output:0*
_output_shapes
:X
DynamicRouting/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_2AddV2DynamicRouting/mod:z:0DynamicRouting/add_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_3RangeDynamicRouting/add_2:z:0DynamicRouting/Sub_1:z:0%DynamicRouting/range_3/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_1/values_1PackDynamicRouting/Sub_1:z:0*
N*
T0*
_output_shapes
:n
 DynamicRouting/concat_1/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_1ConcatV2DynamicRouting/range_2:output:0)DynamicRouting/concat_1/values_1:output:0DynamicRouting/range_3:output:0)DynamicRouting/concat_1/values_3:output:0%DynamicRouting/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_1	Transpose DynamicRouting/Softmax:softmax:0 DynamicRouting/concat_1:output:0*
T0*'
_output_shapes
:8�	
�
DynamicRouting/MulMulDynamicRouting/transpose_1:y:0!CapsuleFormation/Squeeze:output:0*
T0*'
_output_shapes
:8�	
f
$DynamicRouting/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/SumSumDynamicRouting/Mul:z:0-DynamicRouting/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:8
*
	keep_dims(�
&DynamicRouting/SquashFunction/norm/mulMulDynamicRouting/Sum:output:0DynamicRouting/Sum:output:0*
T0*&
_output_shapes
:8
�
8DynamicRouting/SquashFunction/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
&DynamicRouting/SquashFunction/norm/SumSum*DynamicRouting/SquashFunction/norm/mul:z:0ADynamicRouting/SquashFunction/norm/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:8
*
	keep_dims(�
'DynamicRouting/SquashFunction/norm/SqrtSqrt/DynamicRouting/SquashFunction/norm/Sum:output:0*
T0*&
_output_shapes
:8
�
$DynamicRouting/SquashFunction/SquareSquare+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*&
_output_shapes
:8
�
&DynamicRouting/SquashFunction/Square_1Square+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*&
_output_shapes
:8
h
#DynamicRouting/SquashFunction/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!DynamicRouting/SquashFunction/addAddV2,DynamicRouting/SquashFunction/add/x:output:0*DynamicRouting/SquashFunction/Square_1:y:0*
T0*&
_output_shapes
:8
�
%DynamicRouting/SquashFunction/truedivRealDiv(DynamicRouting/SquashFunction/Square:y:0%DynamicRouting/SquashFunction/add:z:0*
T0*&
_output_shapes
:8
�
!DynamicRouting/SquashFunction/mulMul)DynamicRouting/SquashFunction/truediv:z:0DynamicRouting/Sum:output:0*
T0*&
_output_shapes
:8
j
%DynamicRouting/SquashFunction/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
#DynamicRouting/SquashFunction/add_1AddV2+DynamicRouting/SquashFunction/norm/Sqrt:y:0.DynamicRouting/SquashFunction/add_1/y:output:0*
T0*&
_output_shapes
:8
�
'DynamicRouting/SquashFunction/truediv_1RealDiv%DynamicRouting/SquashFunction/mul:z:0'DynamicRouting/SquashFunction/add_1:z:0*
T0*&
_output_shapes
:8
h
DynamicRouting/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims
ExpandDims!CapsuleFormation/Squeeze:output:0&DynamicRouting/ExpandDims/dim:output:0*
T0*+
_output_shapes
:8�	
j
DynamicRouting/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_1
ExpandDims+DynamicRouting/SquashFunction/truediv_1:z:0(DynamicRouting/ExpandDims_1/dim:output:0*
T0**
_output_shapes
:8
�
DynamicRouting/MatMulBatchMatMulV2"DynamicRouting/ExpandDims:output:0$DynamicRouting/ExpandDims_1:output:0*
T0*+
_output_shapes
:8�	
*
adj_x(�
DynamicRouting/SqueezeSqueezeDynamicRouting/MatMul:output:0*
T0*'
_output_shapes
:8�	
*
squeeze_dims
�
DynamicRouting/add_3AddV2DynamicRouting/zeros:output:0DynamicRouting/Squeeze:output:0*
T0*'
_output_shapes
:8�	
W
DynamicRouting/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_4/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_4AddV2DynamicRouting/add_4/x:output:0DynamicRouting/Rank_2:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_3Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_1/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_1FloorModDynamicRouting/add_4:z:0DynamicRouting/mod_1/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_2SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_4/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_4/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_4Range%DynamicRouting/range_4/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_4/delta:output:0*
_output_shapes
:X
DynamicRouting/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_5AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_5/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_5/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_5RangeDynamicRouting/add_5:z:0DynamicRouting/Sub_2:z:0%DynamicRouting/range_5/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_2/values_1PackDynamicRouting/Sub_2:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_2/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_2ConcatV2DynamicRouting/range_4:output:0)DynamicRouting/concat_2/values_1:output:0DynamicRouting/range_5:output:0)DynamicRouting/concat_2/values_3:output:0%DynamicRouting/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_2	TransposeDynamicRouting/add_3:z:0 DynamicRouting/concat_2:output:0*
T0*'
_output_shapes
:8�	
u
DynamicRouting/Softmax_1SoftmaxDynamicRouting/transpose_2:y:0*
T0*'
_output_shapes
:8�	
X
DynamicRouting/Sub_3/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_3SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_3/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_6/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_6/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_6Range%DynamicRouting/range_6/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_6/delta:output:0*
_output_shapes
:X
DynamicRouting/add_6/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_6AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_6/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_7/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_7RangeDynamicRouting/add_6:z:0DynamicRouting/Sub_3:z:0%DynamicRouting/range_7/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_3/values_1PackDynamicRouting/Sub_3:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_3/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_3ConcatV2DynamicRouting/range_6:output:0)DynamicRouting/concat_3/values_1:output:0DynamicRouting/range_7:output:0)DynamicRouting/concat_3/values_3:output:0%DynamicRouting/concat_3/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_3	Transpose"DynamicRouting/Softmax_1:softmax:0 DynamicRouting/concat_3:output:0*
T0*'
_output_shapes
:8�	
�
DynamicRouting/Mul_1MulDynamicRouting/transpose_3:y:0!CapsuleFormation/Squeeze:output:0*
T0*'
_output_shapes
:8�	
h
&DynamicRouting/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_1SumDynamicRouting/Mul_1:z:0/DynamicRouting/Sum_1/reduction_indices:output:0*
T0*&
_output_shapes
:8
*
	keep_dims(�
(DynamicRouting/SquashFunction_1/norm/mulMulDynamicRouting/Sum_1:output:0DynamicRouting/Sum_1:output:0*
T0*&
_output_shapes
:8
�
:DynamicRouting/SquashFunction_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_1/norm/SumSum,DynamicRouting/SquashFunction_1/norm/mul:z:0CDynamicRouting/SquashFunction_1/norm/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:8
*
	keep_dims(�
)DynamicRouting/SquashFunction_1/norm/SqrtSqrt1DynamicRouting/SquashFunction_1/norm/Sum:output:0*
T0*&
_output_shapes
:8
�
&DynamicRouting/SquashFunction_1/SquareSquare-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*&
_output_shapes
:8
�
(DynamicRouting/SquashFunction_1/Square_1Square-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*&
_output_shapes
:8
j
%DynamicRouting/SquashFunction_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_1/addAddV2.DynamicRouting/SquashFunction_1/add/x:output:0,DynamicRouting/SquashFunction_1/Square_1:y:0*
T0*&
_output_shapes
:8
�
'DynamicRouting/SquashFunction_1/truedivRealDiv*DynamicRouting/SquashFunction_1/Square:y:0'DynamicRouting/SquashFunction_1/add:z:0*
T0*&
_output_shapes
:8
�
#DynamicRouting/SquashFunction_1/mulMul+DynamicRouting/SquashFunction_1/truediv:z:0DynamicRouting/Sum_1:output:0*
T0*&
_output_shapes
:8
l
'DynamicRouting/SquashFunction_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_1/add_1AddV2-DynamicRouting/SquashFunction_1/norm/Sqrt:y:00DynamicRouting/SquashFunction_1/add_1/y:output:0*
T0*&
_output_shapes
:8
�
)DynamicRouting/SquashFunction_1/truediv_1RealDiv'DynamicRouting/SquashFunction_1/mul:z:0)DynamicRouting/SquashFunction_1/add_1:z:0*
T0*&
_output_shapes
:8
j
DynamicRouting/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_2
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:8�	
j
DynamicRouting/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_3
ExpandDims-DynamicRouting/SquashFunction_1/truediv_1:z:0(DynamicRouting/ExpandDims_3/dim:output:0*
T0**
_output_shapes
:8
�
DynamicRouting/MatMul_1BatchMatMulV2$DynamicRouting/ExpandDims_2:output:0$DynamicRouting/ExpandDims_3:output:0*
T0*+
_output_shapes
:8�	
*
adj_x(�
DynamicRouting/Squeeze_1Squeeze DynamicRouting/MatMul_1:output:0*
T0*'
_output_shapes
:8�	
*
squeeze_dims
�
DynamicRouting/add_7AddV2DynamicRouting/add_3:z:0!DynamicRouting/Squeeze_1:output:0*
T0*'
_output_shapes
:8�	
W
DynamicRouting/Rank_4Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_8/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_8AddV2DynamicRouting/add_8/x:output:0DynamicRouting/Rank_4:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_5Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_2/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_2FloorModDynamicRouting/add_8:z:0DynamicRouting/mod_2/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_4SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_4/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_8/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_8/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_8Range%DynamicRouting/range_8/start:output:0DynamicRouting/mod_2:z:0%DynamicRouting/range_8/delta:output:0*
_output_shapes
:X
DynamicRouting/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_9AddV2DynamicRouting/mod_2:z:0DynamicRouting/add_9/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_9/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_9RangeDynamicRouting/add_9:z:0DynamicRouting/Sub_4:z:0%DynamicRouting/range_9/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_4/values_1PackDynamicRouting/Sub_4:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_4/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_4ConcatV2DynamicRouting/range_8:output:0)DynamicRouting/concat_4/values_1:output:0DynamicRouting/range_9:output:0)DynamicRouting/concat_4/values_3:output:0%DynamicRouting/concat_4/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_4	TransposeDynamicRouting/add_7:z:0 DynamicRouting/concat_4:output:0*
T0*'
_output_shapes
:8�	
u
DynamicRouting/Softmax_2SoftmaxDynamicRouting/transpose_4:y:0*
T0*'
_output_shapes
:8�	
X
DynamicRouting/Sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_5SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_5/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_10/startConst*
_output_shapes
: *
dtype0*
value	B : _
DynamicRouting/range_10/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_10Range&DynamicRouting/range_10/start:output:0DynamicRouting/mod_2:z:0&DynamicRouting/range_10/delta:output:0*
_output_shapes
:Y
DynamicRouting/add_10/yConst*
_output_shapes
: *
dtype0*
value	B :{
DynamicRouting/add_10AddV2DynamicRouting/mod_2:z:0 DynamicRouting/add_10/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_11/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_11RangeDynamicRouting/add_10:z:0DynamicRouting/Sub_5:z:0&DynamicRouting/range_11/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_5/values_1PackDynamicRouting/Sub_5:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_5/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_5ConcatV2 DynamicRouting/range_10:output:0)DynamicRouting/concat_5/values_1:output:0 DynamicRouting/range_11:output:0)DynamicRouting/concat_5/values_3:output:0%DynamicRouting/concat_5/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_5	Transpose"DynamicRouting/Softmax_2:softmax:0 DynamicRouting/concat_5:output:0*
T0*'
_output_shapes
:8�	
�
DynamicRouting/Mul_2MulDynamicRouting/transpose_5:y:0!CapsuleFormation/Squeeze:output:0*
T0*'
_output_shapes
:8�	
h
&DynamicRouting/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_2SumDynamicRouting/Mul_2:z:0/DynamicRouting/Sum_2/reduction_indices:output:0*
T0*&
_output_shapes
:8
*
	keep_dims(�
(DynamicRouting/SquashFunction_2/norm/mulMulDynamicRouting/Sum_2:output:0DynamicRouting/Sum_2:output:0*
T0*&
_output_shapes
:8
�
:DynamicRouting/SquashFunction_2/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_2/norm/SumSum,DynamicRouting/SquashFunction_2/norm/mul:z:0CDynamicRouting/SquashFunction_2/norm/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:8
*
	keep_dims(�
)DynamicRouting/SquashFunction_2/norm/SqrtSqrt1DynamicRouting/SquashFunction_2/norm/Sum:output:0*
T0*&
_output_shapes
:8
�
&DynamicRouting/SquashFunction_2/SquareSquare-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*&
_output_shapes
:8
�
(DynamicRouting/SquashFunction_2/Square_1Square-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*&
_output_shapes
:8
j
%DynamicRouting/SquashFunction_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_2/addAddV2.DynamicRouting/SquashFunction_2/add/x:output:0,DynamicRouting/SquashFunction_2/Square_1:y:0*
T0*&
_output_shapes
:8
�
'DynamicRouting/SquashFunction_2/truedivRealDiv*DynamicRouting/SquashFunction_2/Square:y:0'DynamicRouting/SquashFunction_2/add:z:0*
T0*&
_output_shapes
:8
�
#DynamicRouting/SquashFunction_2/mulMul+DynamicRouting/SquashFunction_2/truediv:z:0DynamicRouting/Sum_2:output:0*
T0*&
_output_shapes
:8
l
'DynamicRouting/SquashFunction_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_2/add_1AddV2-DynamicRouting/SquashFunction_2/norm/Sqrt:y:00DynamicRouting/SquashFunction_2/add_1/y:output:0*
T0*&
_output_shapes
:8
�
)DynamicRouting/SquashFunction_2/truediv_1RealDiv'DynamicRouting/SquashFunction_2/mul:z:0)DynamicRouting/SquashFunction_2/add_1:z:0*
T0*&
_output_shapes
:8
j
DynamicRouting/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_4
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_4/dim:output:0*
T0*+
_output_shapes
:8�	
j
DynamicRouting/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_5
ExpandDims-DynamicRouting/SquashFunction_2/truediv_1:z:0(DynamicRouting/ExpandDims_5/dim:output:0*
T0**
_output_shapes
:8
�
DynamicRouting/MatMul_2BatchMatMulV2$DynamicRouting/ExpandDims_4:output:0$DynamicRouting/ExpandDims_5:output:0*
T0*+
_output_shapes
:8�	
*
adj_x(�
DynamicRouting/Squeeze_2Squeeze DynamicRouting/MatMul_2:output:0*
T0*'
_output_shapes
:8�	
*
squeeze_dims
�
DynamicRouting/add_11AddV2DynamicRouting/add_7:z:0!DynamicRouting/Squeeze_2:output:0*
T0*'
_output_shapes
:8�	
a
Masking/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������x
Masking/ExpandDims
ExpandDimsinputs_1Masking/ExpandDims/dim:output:0*
T0*"
_output_shapes
:8
Z
Masking/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
Masking/ExpandDims_1
ExpandDimsMasking/ExpandDims:output:0!Masking/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:8
�
Masking/MulMulMasking/ExpandDims_1:output:0-DynamicRouting/SquashFunction_2/truediv_1:z:0*
T0*&
_output_shapes
:8
m
Reconstruction/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
Reconstruction/ReshapeReshapeMasking/Mul:z:0%Reconstruction/Reshape/shape:output:0*
T0*
_output_shapes
:	8��
,Reconstruction/dense_2/MatMul/ReadVariableOpReadVariableOp5reconstruction_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense_2/MatMulMatMulReconstruction/Reshape:output:04Reconstruction/dense_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	8��
-Reconstruction/dense_2/BiasAdd/ReadVariableOpReadVariableOp6reconstruction_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense_2/BiasAddBiasAdd'Reconstruction/dense_2/MatMul:product:05Reconstruction/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	8�v
Reconstruction/dense_2/ReluRelu'Reconstruction/dense_2/BiasAdd:output:0*
T0*
_output_shapes
:	8��
,Reconstruction/dense_3/MatMul/ReadVariableOpReadVariableOp5reconstruction_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense_3/MatMulMatMul)Reconstruction/dense_2/Relu:activations:04Reconstruction/dense_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	8��
-Reconstruction/dense_3/BiasAdd/ReadVariableOpReadVariableOp6reconstruction_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense_3/BiasAddBiasAdd'Reconstruction/dense_3/MatMul:product:05Reconstruction/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	8�v
Reconstruction/dense_3/ReluRelu'Reconstruction/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:	8��
*Reconstruction/dense/MatMul/ReadVariableOpReadVariableOp3reconstruction_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense/MatMulMatMul)Reconstruction/dense_3/Relu:activations:02Reconstruction/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	8��
+Reconstruction/dense/BiasAdd/ReadVariableOpReadVariableOp4reconstruction_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense/BiasAddBiasAdd%Reconstruction/dense/MatMul:product:03Reconstruction/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	8�x
Reconstruction/dense/SigmoidSigmoid%Reconstruction/dense/BiasAdd:output:0*
T0*
_output_shapes
:	8�{
IdentityIdentity-DynamicRouting/SquashFunction_2/truediv_1:z:0^NoOp*
T0*&
_output_shapes
:8
i

Identity_1Identity Reconstruction/dense/Sigmoid:y:0^NoOp*
T0*
_output_shapes
:	8��
NoOpNoOp'^CapsuleFormation/MatMul/ReadVariableOp(^ConvolutionLayer/BiasAdd/ReadVariableOp'^ConvolutionLayer/Conv2D/ReadVariableOp&^PrimaryCapsule/BiasAdd/ReadVariableOp%^PrimaryCapsule/Conv2D/ReadVariableOp,^Reconstruction/dense/BiasAdd/ReadVariableOp+^Reconstruction/dense/MatMul/ReadVariableOp.^Reconstruction/dense_2/BiasAdd/ReadVariableOp-^Reconstruction/dense_2/MatMul/ReadVariableOp.^Reconstruction/dense_3/BiasAdd/ReadVariableOp-^Reconstruction/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:8:8
: : : : : : : : : : : 2P
&CapsuleFormation/MatMul/ReadVariableOp&CapsuleFormation/MatMul/ReadVariableOp2R
'ConvolutionLayer/BiasAdd/ReadVariableOp'ConvolutionLayer/BiasAdd/ReadVariableOp2P
&ConvolutionLayer/Conv2D/ReadVariableOp&ConvolutionLayer/Conv2D/ReadVariableOp2N
%PrimaryCapsule/BiasAdd/ReadVariableOp%PrimaryCapsule/BiasAdd/ReadVariableOp2L
$PrimaryCapsule/Conv2D/ReadVariableOp$PrimaryCapsule/Conv2D/ReadVariableOp2Z
+Reconstruction/dense/BiasAdd/ReadVariableOp+Reconstruction/dense/BiasAdd/ReadVariableOp2X
*Reconstruction/dense/MatMul/ReadVariableOp*Reconstruction/dense/MatMul/ReadVariableOp2^
-Reconstruction/dense_2/BiasAdd/ReadVariableOp-Reconstruction/dense_2/BiasAdd/ReadVariableOp2\
,Reconstruction/dense_2/MatMul/ReadVariableOp,Reconstruction/dense_2/MatMul/ReadVariableOp2^
-Reconstruction/dense_3/BiasAdd/ReadVariableOp-Reconstruction/dense_3/BiasAdd/ReadVariableOp2\
,Reconstruction/dense_3/MatMul/ReadVariableOp,Reconstruction/dense_3/MatMul/ReadVariableOp:HD

_output_shapes

:8

"
_user_specified_name
inputs_1:P L
&
_output_shapes
:8
"
_user_specified_name
inputs_0
��
�

__inference_call_175914

inputs
inputs_1J
/convolutionlayer_conv2d_readvariableop_resource:		�?
0convolutionlayer_biasadd_readvariableop_resource:	�I
-primarycapsule_conv2d_readvariableop_resource:		��=
.primarycapsule_biasadd_readvariableop_resource:	�N
/capsuleformation_matmul_readvariableop_resource:�	
I
5reconstruction_dense_2_matmul_readvariableop_resource:
��E
6reconstruction_dense_2_biasadd_readvariableop_resource:	�I
5reconstruction_dense_3_matmul_readvariableop_resource:
��E
6reconstruction_dense_3_biasadd_readvariableop_resource:	�G
3reconstruction_dense_matmul_readvariableop_resource:
��C
4reconstruction_dense_biasadd_readvariableop_resource:	�
identity

identity_1��&CapsuleFormation/MatMul/ReadVariableOp�'ConvolutionLayer/BiasAdd/ReadVariableOp�&ConvolutionLayer/Conv2D/ReadVariableOp�%PrimaryCapsule/BiasAdd/ReadVariableOp�$PrimaryCapsule/Conv2D/ReadVariableOp�+Reconstruction/dense/BiasAdd/ReadVariableOp�*Reconstruction/dense/MatMul/ReadVariableOp�-Reconstruction/dense_2/BiasAdd/ReadVariableOp�,Reconstruction/dense_2/MatMul/ReadVariableOp�-Reconstruction/dense_3/BiasAdd/ReadVariableOp�,Reconstruction/dense_3/MatMul/ReadVariableOp�
&ConvolutionLayer/Conv2D/ReadVariableOpReadVariableOp/convolutionlayer_conv2d_readvariableop_resource*'
_output_shapes
:		�*
dtype0�
ConvolutionLayer/Conv2DConv2Dinputs.ConvolutionLayer/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
'ConvolutionLayer/BiasAdd/ReadVariableOpReadVariableOp0convolutionlayer_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ConvolutionLayer/BiasAddBiasAdd ConvolutionLayer/Conv2D:output:0/ConvolutionLayer/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������{
ConvolutionLayer/ReluRelu!ConvolutionLayer/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
$PrimaryCapsule/Conv2D/ReadVariableOpReadVariableOp-primarycapsule_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype0�
PrimaryCapsule/Conv2DConv2D#ConvolutionLayer/Relu:activations:0,PrimaryCapsule/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
%PrimaryCapsule/BiasAdd/ReadVariableOpReadVariableOp.primarycapsule_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
PrimaryCapsule/BiasAddBiasAddPrimaryCapsule/Conv2D:output:0-PrimaryCapsule/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������s
CapsuleFormation/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"�����     �
CapsuleFormation/ReshapeReshapePrimaryCapsule/BiasAdd:output:0'CapsuleFormation/Reshape/shape:output:0*
T0*,
_output_shapes
:����������	j
CapsuleFormation/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims
ExpandDims!CapsuleFormation/Reshape:output:0(CapsuleFormation/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������	l
!CapsuleFormation/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims_1
ExpandDims$CapsuleFormation/ExpandDims:output:0*CapsuleFormation/ExpandDims_1/dim:output:0*
T0*4
_output_shapes"
 :����������	�
&CapsuleFormation/MatMul/ReadVariableOpReadVariableOp/capsuleformation_matmul_readvariableop_resource*+
_output_shapes
:�	
*
dtype0�
CapsuleFormation/MatMulBatchMatMulV2.CapsuleFormation/MatMul/ReadVariableOp:value:0&CapsuleFormation/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :����������	
�
CapsuleFormation/SqueezeSqueeze CapsuleFormation/MatMul:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
}
$DynamicRouting/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   �  
      _
DynamicRouting/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
DynamicRouting/zerosFill-DynamicRouting/zeros/shape_as_tensor:output:0#DynamicRouting/zeros/Const:output:0*
T0*'
_output_shapes
:�	
U
DynamicRouting/RankConst*
_output_shapes
: *
dtype0*
value	B :_
DynamicRouting/add/xConst*
_output_shapes
: *
dtype0*
valueB :
���������y
DynamicRouting/addAddV2DynamicRouting/add/x:output:0DynamicRouting/Rank:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :V
DynamicRouting/mod/yConst*
_output_shapes
: *
dtype0*
value	B :v
DynamicRouting/modFloorModDynamicRouting/add:z:0DynamicRouting/mod/y:output:0*
T0*
_output_shapes
: V
DynamicRouting/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/SubSubDynamicRouting/Rank_1:output:0DynamicRouting/Sub/y:output:0*
T0*
_output_shapes
: \
DynamicRouting/range/startConst*
_output_shapes
: *
dtype0*
value	B : \
DynamicRouting/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/rangeRange#DynamicRouting/range/start:output:0DynamicRouting/mod:z:0#DynamicRouting/range/delta:output:0*
_output_shapes
:X
DynamicRouting/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_1AddV2DynamicRouting/mod:z:0DynamicRouting/add_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_1RangeDynamicRouting/add_1:z:0DynamicRouting/Sub:z:0%DynamicRouting/range_1/delta:output:0*
_output_shapes
: l
DynamicRouting/concat/values_1PackDynamicRouting/Sub:z:0*
N*
T0*
_output_shapes
:l
DynamicRouting/concat/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:\
DynamicRouting/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concatConcatV2DynamicRouting/range:output:0'DynamicRouting/concat/values_1:output:0DynamicRouting/range_1:output:0'DynamicRouting/concat/values_3:output:0#DynamicRouting/concat/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose	TransposeDynamicRouting/zeros:output:0DynamicRouting/concat:output:0*
T0*'
_output_shapes
:�	
q
DynamicRouting/SoftmaxSoftmaxDynamicRouting/transpose:y:0*
T0*'
_output_shapes
:�	
X
DynamicRouting/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_1SubDynamicRouting/Rank_1:output:0DynamicRouting/Sub_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_2Range%DynamicRouting/range_2/start:output:0DynamicRouting/mod:z:0%DynamicRouting/range_2/delta:output:0*
_output_shapes
:X
DynamicRouting/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_2AddV2DynamicRouting/mod:z:0DynamicRouting/add_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_3RangeDynamicRouting/add_2:z:0DynamicRouting/Sub_1:z:0%DynamicRouting/range_3/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_1/values_1PackDynamicRouting/Sub_1:z:0*
N*
T0*
_output_shapes
:n
 DynamicRouting/concat_1/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_1ConcatV2DynamicRouting/range_2:output:0)DynamicRouting/concat_1/values_1:output:0DynamicRouting/range_3:output:0)DynamicRouting/concat_1/values_3:output:0%DynamicRouting/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_1	Transpose DynamicRouting/Softmax:softmax:0 DynamicRouting/concat_1:output:0*
T0*'
_output_shapes
:�	
�
DynamicRouting/MulMulDynamicRouting/transpose_1:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
f
$DynamicRouting/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/SumSumDynamicRouting/Mul:z:0-DynamicRouting/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
&DynamicRouting/SquashFunction/norm/mulMulDynamicRouting/Sum:output:0DynamicRouting/Sum:output:0*
T0*/
_output_shapes
:���������
�
8DynamicRouting/SquashFunction/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
&DynamicRouting/SquashFunction/norm/SumSum*DynamicRouting/SquashFunction/norm/mul:z:0ADynamicRouting/SquashFunction/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
'DynamicRouting/SquashFunction/norm/SqrtSqrt/DynamicRouting/SquashFunction/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
$DynamicRouting/SquashFunction/SquareSquare+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction/Square_1Square+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
h
#DynamicRouting/SquashFunction/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!DynamicRouting/SquashFunction/addAddV2,DynamicRouting/SquashFunction/add/x:output:0*DynamicRouting/SquashFunction/Square_1:y:0*
T0*/
_output_shapes
:���������
�
%DynamicRouting/SquashFunction/truedivRealDiv(DynamicRouting/SquashFunction/Square:y:0%DynamicRouting/SquashFunction/add:z:0*
T0*/
_output_shapes
:���������
�
!DynamicRouting/SquashFunction/mulMul)DynamicRouting/SquashFunction/truediv:z:0DynamicRouting/Sum:output:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
#DynamicRouting/SquashFunction/add_1AddV2+DynamicRouting/SquashFunction/norm/Sqrt:y:0.DynamicRouting/SquashFunction/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction/truediv_1RealDiv%DynamicRouting/SquashFunction/mul:z:0'DynamicRouting/SquashFunction/add_1:z:0*
T0*/
_output_shapes
:���������
h
DynamicRouting/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims
ExpandDims!CapsuleFormation/Squeeze:output:0&DynamicRouting/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_1
ExpandDims+DynamicRouting/SquashFunction/truediv_1:z:0(DynamicRouting/ExpandDims_1/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMulBatchMatMulV2"DynamicRouting/ExpandDims:output:0$DynamicRouting/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/SqueezeSqueezeDynamicRouting/MatMul:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_3AddV2DynamicRouting/zeros:output:0DynamicRouting/Squeeze:output:0*
T0*0
_output_shapes
:����������	
W
DynamicRouting/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_4/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_4AddV2DynamicRouting/add_4/x:output:0DynamicRouting/Rank_2:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_3Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_1/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_1FloorModDynamicRouting/add_4:z:0DynamicRouting/mod_1/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_2SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_4/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_4/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_4Range%DynamicRouting/range_4/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_4/delta:output:0*
_output_shapes
:X
DynamicRouting/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_5AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_5/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_5/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_5RangeDynamicRouting/add_5:z:0DynamicRouting/Sub_2:z:0%DynamicRouting/range_5/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_2/values_1PackDynamicRouting/Sub_2:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_2/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_2ConcatV2DynamicRouting/range_4:output:0)DynamicRouting/concat_2/values_1:output:0DynamicRouting/range_5:output:0)DynamicRouting/concat_2/values_3:output:0%DynamicRouting/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_2	TransposeDynamicRouting/add_3:z:0 DynamicRouting/concat_2:output:0*
T0*0
_output_shapes
:����������	
~
DynamicRouting/Softmax_1SoftmaxDynamicRouting/transpose_2:y:0*
T0*0
_output_shapes
:����������	
X
DynamicRouting/Sub_3/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_3SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_3/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_6/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_6/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_6Range%DynamicRouting/range_6/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_6/delta:output:0*
_output_shapes
:X
DynamicRouting/add_6/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_6AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_6/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_7/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_7RangeDynamicRouting/add_6:z:0DynamicRouting/Sub_3:z:0%DynamicRouting/range_7/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_3/values_1PackDynamicRouting/Sub_3:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_3/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_3ConcatV2DynamicRouting/range_6:output:0)DynamicRouting/concat_3/values_1:output:0DynamicRouting/range_7:output:0)DynamicRouting/concat_3/values_3:output:0%DynamicRouting/concat_3/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_3	Transpose"DynamicRouting/Softmax_1:softmax:0 DynamicRouting/concat_3:output:0*
T0*0
_output_shapes
:����������	
�
DynamicRouting/Mul_1MulDynamicRouting/transpose_3:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
h
&DynamicRouting/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_1SumDynamicRouting/Mul_1:z:0/DynamicRouting/Sum_1/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
(DynamicRouting/SquashFunction_1/norm/mulMulDynamicRouting/Sum_1:output:0DynamicRouting/Sum_1:output:0*
T0*/
_output_shapes
:���������
�
:DynamicRouting/SquashFunction_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_1/norm/SumSum,DynamicRouting/SquashFunction_1/norm/mul:z:0CDynamicRouting/SquashFunction_1/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
)DynamicRouting/SquashFunction_1/norm/SqrtSqrt1DynamicRouting/SquashFunction_1/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction_1/SquareSquare-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
(DynamicRouting/SquashFunction_1/Square_1Square-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_1/addAddV2.DynamicRouting/SquashFunction_1/add/x:output:0,DynamicRouting/SquashFunction_1/Square_1:y:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction_1/truedivRealDiv*DynamicRouting/SquashFunction_1/Square:y:0'DynamicRouting/SquashFunction_1/add:z:0*
T0*/
_output_shapes
:���������
�
#DynamicRouting/SquashFunction_1/mulMul+DynamicRouting/SquashFunction_1/truediv:z:0DynamicRouting/Sum_1:output:0*
T0*/
_output_shapes
:���������
l
'DynamicRouting/SquashFunction_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_1/add_1AddV2-DynamicRouting/SquashFunction_1/norm/Sqrt:y:00DynamicRouting/SquashFunction_1/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
)DynamicRouting/SquashFunction_1/truediv_1RealDiv'DynamicRouting/SquashFunction_1/mul:z:0)DynamicRouting/SquashFunction_1/add_1:z:0*
T0*/
_output_shapes
:���������
j
DynamicRouting/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_2
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_2/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_3
ExpandDims-DynamicRouting/SquashFunction_1/truediv_1:z:0(DynamicRouting/ExpandDims_3/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMul_1BatchMatMulV2$DynamicRouting/ExpandDims_2:output:0$DynamicRouting/ExpandDims_3:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/Squeeze_1Squeeze DynamicRouting/MatMul_1:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_7AddV2DynamicRouting/add_3:z:0!DynamicRouting/Squeeze_1:output:0*
T0*0
_output_shapes
:����������	
W
DynamicRouting/Rank_4Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_8/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_8AddV2DynamicRouting/add_8/x:output:0DynamicRouting/Rank_4:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_5Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_2/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_2FloorModDynamicRouting/add_8:z:0DynamicRouting/mod_2/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_4SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_4/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_8/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_8/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_8Range%DynamicRouting/range_8/start:output:0DynamicRouting/mod_2:z:0%DynamicRouting/range_8/delta:output:0*
_output_shapes
:X
DynamicRouting/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_9AddV2DynamicRouting/mod_2:z:0DynamicRouting/add_9/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_9/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_9RangeDynamicRouting/add_9:z:0DynamicRouting/Sub_4:z:0%DynamicRouting/range_9/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_4/values_1PackDynamicRouting/Sub_4:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_4/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_4ConcatV2DynamicRouting/range_8:output:0)DynamicRouting/concat_4/values_1:output:0DynamicRouting/range_9:output:0)DynamicRouting/concat_4/values_3:output:0%DynamicRouting/concat_4/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_4	TransposeDynamicRouting/add_7:z:0 DynamicRouting/concat_4:output:0*
T0*0
_output_shapes
:����������	
~
DynamicRouting/Softmax_2SoftmaxDynamicRouting/transpose_4:y:0*
T0*0
_output_shapes
:����������	
X
DynamicRouting/Sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_5SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_5/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_10/startConst*
_output_shapes
: *
dtype0*
value	B : _
DynamicRouting/range_10/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_10Range&DynamicRouting/range_10/start:output:0DynamicRouting/mod_2:z:0&DynamicRouting/range_10/delta:output:0*
_output_shapes
:Y
DynamicRouting/add_10/yConst*
_output_shapes
: *
dtype0*
value	B :{
DynamicRouting/add_10AddV2DynamicRouting/mod_2:z:0 DynamicRouting/add_10/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_11/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_11RangeDynamicRouting/add_10:z:0DynamicRouting/Sub_5:z:0&DynamicRouting/range_11/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_5/values_1PackDynamicRouting/Sub_5:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_5/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_5ConcatV2 DynamicRouting/range_10:output:0)DynamicRouting/concat_5/values_1:output:0 DynamicRouting/range_11:output:0)DynamicRouting/concat_5/values_3:output:0%DynamicRouting/concat_5/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_5	Transpose"DynamicRouting/Softmax_2:softmax:0 DynamicRouting/concat_5:output:0*
T0*0
_output_shapes
:����������	
�
DynamicRouting/Mul_2MulDynamicRouting/transpose_5:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
h
&DynamicRouting/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_2SumDynamicRouting/Mul_2:z:0/DynamicRouting/Sum_2/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
(DynamicRouting/SquashFunction_2/norm/mulMulDynamicRouting/Sum_2:output:0DynamicRouting/Sum_2:output:0*
T0*/
_output_shapes
:���������
�
:DynamicRouting/SquashFunction_2/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_2/norm/SumSum,DynamicRouting/SquashFunction_2/norm/mul:z:0CDynamicRouting/SquashFunction_2/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
)DynamicRouting/SquashFunction_2/norm/SqrtSqrt1DynamicRouting/SquashFunction_2/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction_2/SquareSquare-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
(DynamicRouting/SquashFunction_2/Square_1Square-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_2/addAddV2.DynamicRouting/SquashFunction_2/add/x:output:0,DynamicRouting/SquashFunction_2/Square_1:y:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction_2/truedivRealDiv*DynamicRouting/SquashFunction_2/Square:y:0'DynamicRouting/SquashFunction_2/add:z:0*
T0*/
_output_shapes
:���������
�
#DynamicRouting/SquashFunction_2/mulMul+DynamicRouting/SquashFunction_2/truediv:z:0DynamicRouting/Sum_2:output:0*
T0*/
_output_shapes
:���������
l
'DynamicRouting/SquashFunction_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_2/add_1AddV2-DynamicRouting/SquashFunction_2/norm/Sqrt:y:00DynamicRouting/SquashFunction_2/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
)DynamicRouting/SquashFunction_2/truediv_1RealDiv'DynamicRouting/SquashFunction_2/mul:z:0)DynamicRouting/SquashFunction_2/add_1:z:0*
T0*/
_output_shapes
:���������
j
DynamicRouting/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_4
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_4/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_5
ExpandDims-DynamicRouting/SquashFunction_2/truediv_1:z:0(DynamicRouting/ExpandDims_5/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMul_2BatchMatMulV2$DynamicRouting/ExpandDims_4:output:0$DynamicRouting/ExpandDims_5:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/Squeeze_2Squeeze DynamicRouting/MatMul_2:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_11AddV2DynamicRouting/add_7:z:0!DynamicRouting/Squeeze_2:output:0*
T0*0
_output_shapes
:����������	
a
Masking/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Masking/ExpandDims
ExpandDimsinputs_1Masking/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������
Z
Masking/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
Masking/ExpandDims_1
ExpandDimsMasking/ExpandDims:output:0!Masking/ExpandDims_1/dim:output:0*
T0*/
_output_shapes
:���������
�
Masking/MulMulMasking/ExpandDims_1:output:0-DynamicRouting/SquashFunction_2/truediv_1:z:0*
T0*/
_output_shapes
:���������
m
Reconstruction/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
Reconstruction/ReshapeReshapeMasking/Mul:z:0%Reconstruction/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
,Reconstruction/dense_2/MatMul/ReadVariableOpReadVariableOp5reconstruction_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense_2/MatMulMatMulReconstruction/Reshape:output:04Reconstruction/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-Reconstruction/dense_2/BiasAdd/ReadVariableOpReadVariableOp6reconstruction_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense_2/BiasAddBiasAdd'Reconstruction/dense_2/MatMul:product:05Reconstruction/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
Reconstruction/dense_2/ReluRelu'Reconstruction/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
,Reconstruction/dense_3/MatMul/ReadVariableOpReadVariableOp5reconstruction_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense_3/MatMulMatMul)Reconstruction/dense_2/Relu:activations:04Reconstruction/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-Reconstruction/dense_3/BiasAdd/ReadVariableOpReadVariableOp6reconstruction_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense_3/BiasAddBiasAdd'Reconstruction/dense_3/MatMul:product:05Reconstruction/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
Reconstruction/dense_3/ReluRelu'Reconstruction/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*Reconstruction/dense/MatMul/ReadVariableOpReadVariableOp3reconstruction_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense/MatMulMatMul)Reconstruction/dense_3/Relu:activations:02Reconstruction/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+Reconstruction/dense/BiasAdd/ReadVariableOpReadVariableOp4reconstruction_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense/BiasAddBiasAdd%Reconstruction/dense/MatMul:product:03Reconstruction/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Reconstruction/dense/SigmoidSigmoid%Reconstruction/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
IdentityIdentity-DynamicRouting/SquashFunction_2/truediv_1:z:0^NoOp*
T0*/
_output_shapes
:���������
r

Identity_1Identity Reconstruction/dense/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp'^CapsuleFormation/MatMul/ReadVariableOp(^ConvolutionLayer/BiasAdd/ReadVariableOp'^ConvolutionLayer/Conv2D/ReadVariableOp&^PrimaryCapsule/BiasAdd/ReadVariableOp%^PrimaryCapsule/Conv2D/ReadVariableOp,^Reconstruction/dense/BiasAdd/ReadVariableOp+^Reconstruction/dense/MatMul/ReadVariableOp.^Reconstruction/dense_2/BiasAdd/ReadVariableOp-^Reconstruction/dense_2/MatMul/ReadVariableOp.^Reconstruction/dense_3/BiasAdd/ReadVariableOp-^Reconstruction/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������:���������
: : : : : : : : : : : 2P
&CapsuleFormation/MatMul/ReadVariableOp&CapsuleFormation/MatMul/ReadVariableOp2R
'ConvolutionLayer/BiasAdd/ReadVariableOp'ConvolutionLayer/BiasAdd/ReadVariableOp2P
&ConvolutionLayer/Conv2D/ReadVariableOp&ConvolutionLayer/Conv2D/ReadVariableOp2N
%PrimaryCapsule/BiasAdd/ReadVariableOp%PrimaryCapsule/BiasAdd/ReadVariableOp2L
$PrimaryCapsule/Conv2D/ReadVariableOp$PrimaryCapsule/Conv2D/ReadVariableOp2Z
+Reconstruction/dense/BiasAdd/ReadVariableOp+Reconstruction/dense/BiasAdd/ReadVariableOp2X
*Reconstruction/dense/MatMul/ReadVariableOp*Reconstruction/dense/MatMul/ReadVariableOp2^
-Reconstruction/dense_2/BiasAdd/ReadVariableOp-Reconstruction/dense_2/BiasAdd/ReadVariableOp2\
,Reconstruction/dense_2/MatMul/ReadVariableOp,Reconstruction/dense_2/MatMul/ReadVariableOp2^
-Reconstruction/dense_3/BiasAdd/ReadVariableOp-Reconstruction/dense_3/BiasAdd/ReadVariableOp2\
,Reconstruction/dense_3/MatMul/ReadVariableOp,Reconstruction/dense_3/MatMul/ReadVariableOp:OK
'
_output_shapes
:���������

 
_user_specified_nameinputs:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_dense_3_layer_call_fn_178270

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_176201p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_dense_3_layer_call_and_return_conditional_losses_176201

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
L__inference_baseline_capsnet_layer_call_and_return_conditional_losses_178202
inputs_0
inputs_1J
/convolutionlayer_conv2d_readvariableop_resource:		�?
0convolutionlayer_biasadd_readvariableop_resource:	�I
-primarycapsule_conv2d_readvariableop_resource:		��=
.primarycapsule_biasadd_readvariableop_resource:	�N
/capsuleformation_matmul_readvariableop_resource:�	
I
5reconstruction_dense_2_matmul_readvariableop_resource:
��E
6reconstruction_dense_2_biasadd_readvariableop_resource:	�I
5reconstruction_dense_3_matmul_readvariableop_resource:
��E
6reconstruction_dense_3_biasadd_readvariableop_resource:	�G
3reconstruction_dense_matmul_readvariableop_resource:
��C
4reconstruction_dense_biasadd_readvariableop_resource:	�
identity

identity_1��&CapsuleFormation/MatMul/ReadVariableOp�'ConvolutionLayer/BiasAdd/ReadVariableOp�&ConvolutionLayer/Conv2D/ReadVariableOp�%PrimaryCapsule/BiasAdd/ReadVariableOp�$PrimaryCapsule/Conv2D/ReadVariableOp�+Reconstruction/dense/BiasAdd/ReadVariableOp�*Reconstruction/dense/MatMul/ReadVariableOp�-Reconstruction/dense_2/BiasAdd/ReadVariableOp�,Reconstruction/dense_2/MatMul/ReadVariableOp�-Reconstruction/dense_3/BiasAdd/ReadVariableOp�,Reconstruction/dense_3/MatMul/ReadVariableOp�
&ConvolutionLayer/Conv2D/ReadVariableOpReadVariableOp/convolutionlayer_conv2d_readvariableop_resource*'
_output_shapes
:		�*
dtype0�
ConvolutionLayer/Conv2DConv2Dinputs_0.ConvolutionLayer/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
'ConvolutionLayer/BiasAdd/ReadVariableOpReadVariableOp0convolutionlayer_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ConvolutionLayer/BiasAddBiasAdd ConvolutionLayer/Conv2D:output:0/ConvolutionLayer/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������{
ConvolutionLayer/ReluRelu!ConvolutionLayer/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
$PrimaryCapsule/Conv2D/ReadVariableOpReadVariableOp-primarycapsule_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype0�
PrimaryCapsule/Conv2DConv2D#ConvolutionLayer/Relu:activations:0,PrimaryCapsule/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
%PrimaryCapsule/BiasAdd/ReadVariableOpReadVariableOp.primarycapsule_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
PrimaryCapsule/BiasAddBiasAddPrimaryCapsule/Conv2D:output:0-PrimaryCapsule/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������s
CapsuleFormation/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"�����     �
CapsuleFormation/ReshapeReshapePrimaryCapsule/BiasAdd:output:0'CapsuleFormation/Reshape/shape:output:0*
T0*,
_output_shapes
:����������	j
CapsuleFormation/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims
ExpandDims!CapsuleFormation/Reshape:output:0(CapsuleFormation/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������	l
!CapsuleFormation/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims_1
ExpandDims$CapsuleFormation/ExpandDims:output:0*CapsuleFormation/ExpandDims_1/dim:output:0*
T0*4
_output_shapes"
 :����������	�
&CapsuleFormation/MatMul/ReadVariableOpReadVariableOp/capsuleformation_matmul_readvariableop_resource*+
_output_shapes
:�	
*
dtype0�
CapsuleFormation/MatMulBatchMatMulV2.CapsuleFormation/MatMul/ReadVariableOp:value:0&CapsuleFormation/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :����������	
�
CapsuleFormation/SqueezeSqueeze CapsuleFormation/MatMul:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
}
$DynamicRouting/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   �  
      _
DynamicRouting/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
DynamicRouting/zerosFill-DynamicRouting/zeros/shape_as_tensor:output:0#DynamicRouting/zeros/Const:output:0*
T0*'
_output_shapes
:�	
U
DynamicRouting/RankConst*
_output_shapes
: *
dtype0*
value	B :_
DynamicRouting/add/xConst*
_output_shapes
: *
dtype0*
valueB :
���������y
DynamicRouting/addAddV2DynamicRouting/add/x:output:0DynamicRouting/Rank:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :V
DynamicRouting/mod/yConst*
_output_shapes
: *
dtype0*
value	B :v
DynamicRouting/modFloorModDynamicRouting/add:z:0DynamicRouting/mod/y:output:0*
T0*
_output_shapes
: V
DynamicRouting/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/SubSubDynamicRouting/Rank_1:output:0DynamicRouting/Sub/y:output:0*
T0*
_output_shapes
: \
DynamicRouting/range/startConst*
_output_shapes
: *
dtype0*
value	B : \
DynamicRouting/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/rangeRange#DynamicRouting/range/start:output:0DynamicRouting/mod:z:0#DynamicRouting/range/delta:output:0*
_output_shapes
:X
DynamicRouting/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_1AddV2DynamicRouting/mod:z:0DynamicRouting/add_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_1RangeDynamicRouting/add_1:z:0DynamicRouting/Sub:z:0%DynamicRouting/range_1/delta:output:0*
_output_shapes
: l
DynamicRouting/concat/values_1PackDynamicRouting/Sub:z:0*
N*
T0*
_output_shapes
:l
DynamicRouting/concat/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:\
DynamicRouting/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concatConcatV2DynamicRouting/range:output:0'DynamicRouting/concat/values_1:output:0DynamicRouting/range_1:output:0'DynamicRouting/concat/values_3:output:0#DynamicRouting/concat/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose	TransposeDynamicRouting/zeros:output:0DynamicRouting/concat:output:0*
T0*'
_output_shapes
:�	
q
DynamicRouting/SoftmaxSoftmaxDynamicRouting/transpose:y:0*
T0*'
_output_shapes
:�	
X
DynamicRouting/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_1SubDynamicRouting/Rank_1:output:0DynamicRouting/Sub_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_2Range%DynamicRouting/range_2/start:output:0DynamicRouting/mod:z:0%DynamicRouting/range_2/delta:output:0*
_output_shapes
:X
DynamicRouting/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_2AddV2DynamicRouting/mod:z:0DynamicRouting/add_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_3RangeDynamicRouting/add_2:z:0DynamicRouting/Sub_1:z:0%DynamicRouting/range_3/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_1/values_1PackDynamicRouting/Sub_1:z:0*
N*
T0*
_output_shapes
:n
 DynamicRouting/concat_1/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_1ConcatV2DynamicRouting/range_2:output:0)DynamicRouting/concat_1/values_1:output:0DynamicRouting/range_3:output:0)DynamicRouting/concat_1/values_3:output:0%DynamicRouting/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_1	Transpose DynamicRouting/Softmax:softmax:0 DynamicRouting/concat_1:output:0*
T0*'
_output_shapes
:�	
�
DynamicRouting/MulMulDynamicRouting/transpose_1:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
f
$DynamicRouting/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/SumSumDynamicRouting/Mul:z:0-DynamicRouting/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
&DynamicRouting/SquashFunction/norm/mulMulDynamicRouting/Sum:output:0DynamicRouting/Sum:output:0*
T0*/
_output_shapes
:���������
�
8DynamicRouting/SquashFunction/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
&DynamicRouting/SquashFunction/norm/SumSum*DynamicRouting/SquashFunction/norm/mul:z:0ADynamicRouting/SquashFunction/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
'DynamicRouting/SquashFunction/norm/SqrtSqrt/DynamicRouting/SquashFunction/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
$DynamicRouting/SquashFunction/SquareSquare+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction/Square_1Square+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
h
#DynamicRouting/SquashFunction/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!DynamicRouting/SquashFunction/addAddV2,DynamicRouting/SquashFunction/add/x:output:0*DynamicRouting/SquashFunction/Square_1:y:0*
T0*/
_output_shapes
:���������
�
%DynamicRouting/SquashFunction/truedivRealDiv(DynamicRouting/SquashFunction/Square:y:0%DynamicRouting/SquashFunction/add:z:0*
T0*/
_output_shapes
:���������
�
!DynamicRouting/SquashFunction/mulMul)DynamicRouting/SquashFunction/truediv:z:0DynamicRouting/Sum:output:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
#DynamicRouting/SquashFunction/add_1AddV2+DynamicRouting/SquashFunction/norm/Sqrt:y:0.DynamicRouting/SquashFunction/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction/truediv_1RealDiv%DynamicRouting/SquashFunction/mul:z:0'DynamicRouting/SquashFunction/add_1:z:0*
T0*/
_output_shapes
:���������
h
DynamicRouting/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims
ExpandDims!CapsuleFormation/Squeeze:output:0&DynamicRouting/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_1
ExpandDims+DynamicRouting/SquashFunction/truediv_1:z:0(DynamicRouting/ExpandDims_1/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMulBatchMatMulV2"DynamicRouting/ExpandDims:output:0$DynamicRouting/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/SqueezeSqueezeDynamicRouting/MatMul:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_3AddV2DynamicRouting/zeros:output:0DynamicRouting/Squeeze:output:0*
T0*0
_output_shapes
:����������	
W
DynamicRouting/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_4/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_4AddV2DynamicRouting/add_4/x:output:0DynamicRouting/Rank_2:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_3Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_1/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_1FloorModDynamicRouting/add_4:z:0DynamicRouting/mod_1/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_2SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_4/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_4/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_4Range%DynamicRouting/range_4/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_4/delta:output:0*
_output_shapes
:X
DynamicRouting/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_5AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_5/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_5/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_5RangeDynamicRouting/add_5:z:0DynamicRouting/Sub_2:z:0%DynamicRouting/range_5/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_2/values_1PackDynamicRouting/Sub_2:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_2/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_2ConcatV2DynamicRouting/range_4:output:0)DynamicRouting/concat_2/values_1:output:0DynamicRouting/range_5:output:0)DynamicRouting/concat_2/values_3:output:0%DynamicRouting/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_2	TransposeDynamicRouting/add_3:z:0 DynamicRouting/concat_2:output:0*
T0*0
_output_shapes
:����������	
~
DynamicRouting/Softmax_1SoftmaxDynamicRouting/transpose_2:y:0*
T0*0
_output_shapes
:����������	
X
DynamicRouting/Sub_3/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_3SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_3/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_6/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_6/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_6Range%DynamicRouting/range_6/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_6/delta:output:0*
_output_shapes
:X
DynamicRouting/add_6/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_6AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_6/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_7/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_7RangeDynamicRouting/add_6:z:0DynamicRouting/Sub_3:z:0%DynamicRouting/range_7/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_3/values_1PackDynamicRouting/Sub_3:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_3/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_3ConcatV2DynamicRouting/range_6:output:0)DynamicRouting/concat_3/values_1:output:0DynamicRouting/range_7:output:0)DynamicRouting/concat_3/values_3:output:0%DynamicRouting/concat_3/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_3	Transpose"DynamicRouting/Softmax_1:softmax:0 DynamicRouting/concat_3:output:0*
T0*0
_output_shapes
:����������	
�
DynamicRouting/Mul_1MulDynamicRouting/transpose_3:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
h
&DynamicRouting/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_1SumDynamicRouting/Mul_1:z:0/DynamicRouting/Sum_1/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
(DynamicRouting/SquashFunction_1/norm/mulMulDynamicRouting/Sum_1:output:0DynamicRouting/Sum_1:output:0*
T0*/
_output_shapes
:���������
�
:DynamicRouting/SquashFunction_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_1/norm/SumSum,DynamicRouting/SquashFunction_1/norm/mul:z:0CDynamicRouting/SquashFunction_1/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
)DynamicRouting/SquashFunction_1/norm/SqrtSqrt1DynamicRouting/SquashFunction_1/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction_1/SquareSquare-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
(DynamicRouting/SquashFunction_1/Square_1Square-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_1/addAddV2.DynamicRouting/SquashFunction_1/add/x:output:0,DynamicRouting/SquashFunction_1/Square_1:y:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction_1/truedivRealDiv*DynamicRouting/SquashFunction_1/Square:y:0'DynamicRouting/SquashFunction_1/add:z:0*
T0*/
_output_shapes
:���������
�
#DynamicRouting/SquashFunction_1/mulMul+DynamicRouting/SquashFunction_1/truediv:z:0DynamicRouting/Sum_1:output:0*
T0*/
_output_shapes
:���������
l
'DynamicRouting/SquashFunction_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_1/add_1AddV2-DynamicRouting/SquashFunction_1/norm/Sqrt:y:00DynamicRouting/SquashFunction_1/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
)DynamicRouting/SquashFunction_1/truediv_1RealDiv'DynamicRouting/SquashFunction_1/mul:z:0)DynamicRouting/SquashFunction_1/add_1:z:0*
T0*/
_output_shapes
:���������
j
DynamicRouting/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_2
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_2/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_3
ExpandDims-DynamicRouting/SquashFunction_1/truediv_1:z:0(DynamicRouting/ExpandDims_3/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMul_1BatchMatMulV2$DynamicRouting/ExpandDims_2:output:0$DynamicRouting/ExpandDims_3:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/Squeeze_1Squeeze DynamicRouting/MatMul_1:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_7AddV2DynamicRouting/add_3:z:0!DynamicRouting/Squeeze_1:output:0*
T0*0
_output_shapes
:����������	
W
DynamicRouting/Rank_4Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_8/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_8AddV2DynamicRouting/add_8/x:output:0DynamicRouting/Rank_4:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_5Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_2/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_2FloorModDynamicRouting/add_8:z:0DynamicRouting/mod_2/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_4SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_4/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_8/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_8/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_8Range%DynamicRouting/range_8/start:output:0DynamicRouting/mod_2:z:0%DynamicRouting/range_8/delta:output:0*
_output_shapes
:X
DynamicRouting/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_9AddV2DynamicRouting/mod_2:z:0DynamicRouting/add_9/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_9/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_9RangeDynamicRouting/add_9:z:0DynamicRouting/Sub_4:z:0%DynamicRouting/range_9/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_4/values_1PackDynamicRouting/Sub_4:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_4/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_4ConcatV2DynamicRouting/range_8:output:0)DynamicRouting/concat_4/values_1:output:0DynamicRouting/range_9:output:0)DynamicRouting/concat_4/values_3:output:0%DynamicRouting/concat_4/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_4	TransposeDynamicRouting/add_7:z:0 DynamicRouting/concat_4:output:0*
T0*0
_output_shapes
:����������	
~
DynamicRouting/Softmax_2SoftmaxDynamicRouting/transpose_4:y:0*
T0*0
_output_shapes
:����������	
X
DynamicRouting/Sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_5SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_5/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_10/startConst*
_output_shapes
: *
dtype0*
value	B : _
DynamicRouting/range_10/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_10Range&DynamicRouting/range_10/start:output:0DynamicRouting/mod_2:z:0&DynamicRouting/range_10/delta:output:0*
_output_shapes
:Y
DynamicRouting/add_10/yConst*
_output_shapes
: *
dtype0*
value	B :{
DynamicRouting/add_10AddV2DynamicRouting/mod_2:z:0 DynamicRouting/add_10/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_11/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_11RangeDynamicRouting/add_10:z:0DynamicRouting/Sub_5:z:0&DynamicRouting/range_11/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_5/values_1PackDynamicRouting/Sub_5:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_5/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_5ConcatV2 DynamicRouting/range_10:output:0)DynamicRouting/concat_5/values_1:output:0 DynamicRouting/range_11:output:0)DynamicRouting/concat_5/values_3:output:0%DynamicRouting/concat_5/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_5	Transpose"DynamicRouting/Softmax_2:softmax:0 DynamicRouting/concat_5:output:0*
T0*0
_output_shapes
:����������	
�
DynamicRouting/Mul_2MulDynamicRouting/transpose_5:y:0!CapsuleFormation/Squeeze:output:0*
T0*0
_output_shapes
:����������	
h
&DynamicRouting/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_2SumDynamicRouting/Mul_2:z:0/DynamicRouting/Sum_2/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
(DynamicRouting/SquashFunction_2/norm/mulMulDynamicRouting/Sum_2:output:0DynamicRouting/Sum_2:output:0*
T0*/
_output_shapes
:���������
�
:DynamicRouting/SquashFunction_2/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_2/norm/SumSum,DynamicRouting/SquashFunction_2/norm/mul:z:0CDynamicRouting/SquashFunction_2/norm/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������
*
	keep_dims(�
)DynamicRouting/SquashFunction_2/norm/SqrtSqrt1DynamicRouting/SquashFunction_2/norm/Sum:output:0*
T0*/
_output_shapes
:���������
�
&DynamicRouting/SquashFunction_2/SquareSquare-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
�
(DynamicRouting/SquashFunction_2/Square_1Square-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*/
_output_shapes
:���������
j
%DynamicRouting/SquashFunction_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_2/addAddV2.DynamicRouting/SquashFunction_2/add/x:output:0,DynamicRouting/SquashFunction_2/Square_1:y:0*
T0*/
_output_shapes
:���������
�
'DynamicRouting/SquashFunction_2/truedivRealDiv*DynamicRouting/SquashFunction_2/Square:y:0'DynamicRouting/SquashFunction_2/add:z:0*
T0*/
_output_shapes
:���������
�
#DynamicRouting/SquashFunction_2/mulMul+DynamicRouting/SquashFunction_2/truediv:z:0DynamicRouting/Sum_2:output:0*
T0*/
_output_shapes
:���������
l
'DynamicRouting/SquashFunction_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_2/add_1AddV2-DynamicRouting/SquashFunction_2/norm/Sqrt:y:00DynamicRouting/SquashFunction_2/add_1/y:output:0*
T0*/
_output_shapes
:���������
�
)DynamicRouting/SquashFunction_2/truediv_1RealDiv'DynamicRouting/SquashFunction_2/mul:z:0)DynamicRouting/SquashFunction_2/add_1:z:0*
T0*/
_output_shapes
:���������
j
DynamicRouting/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_4
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_4/dim:output:0*
T0*4
_output_shapes"
 :����������	
j
DynamicRouting/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_5
ExpandDims-DynamicRouting/SquashFunction_2/truediv_1:z:0(DynamicRouting/ExpandDims_5/dim:output:0*
T0*3
_output_shapes!
:���������
�
DynamicRouting/MatMul_2BatchMatMulV2$DynamicRouting/ExpandDims_4:output:0$DynamicRouting/ExpandDims_5:output:0*
T0*4
_output_shapes"
 :����������	
*
adj_x(�
DynamicRouting/Squeeze_2Squeeze DynamicRouting/MatMul_2:output:0*
T0*0
_output_shapes
:����������	
*
squeeze_dims
�
DynamicRouting/add_11AddV2DynamicRouting/add_7:z:0!DynamicRouting/Squeeze_2:output:0*
T0*0
_output_shapes
:����������	
a
Masking/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Masking/ExpandDims
ExpandDimsinputs_1Masking/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������
Z
Masking/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
Masking/ExpandDims_1
ExpandDimsMasking/ExpandDims:output:0!Masking/ExpandDims_1/dim:output:0*
T0*/
_output_shapes
:���������
�
Masking/MulMulMasking/ExpandDims_1:output:0-DynamicRouting/SquashFunction_2/truediv_1:z:0*
T0*/
_output_shapes
:���������
m
Reconstruction/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
Reconstruction/ReshapeReshapeMasking/Mul:z:0%Reconstruction/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
,Reconstruction/dense_2/MatMul/ReadVariableOpReadVariableOp5reconstruction_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense_2/MatMulMatMulReconstruction/Reshape:output:04Reconstruction/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-Reconstruction/dense_2/BiasAdd/ReadVariableOpReadVariableOp6reconstruction_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense_2/BiasAddBiasAdd'Reconstruction/dense_2/MatMul:product:05Reconstruction/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
Reconstruction/dense_2/ReluRelu'Reconstruction/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
,Reconstruction/dense_3/MatMul/ReadVariableOpReadVariableOp5reconstruction_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense_3/MatMulMatMul)Reconstruction/dense_2/Relu:activations:04Reconstruction/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-Reconstruction/dense_3/BiasAdd/ReadVariableOpReadVariableOp6reconstruction_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense_3/BiasAddBiasAdd'Reconstruction/dense_3/MatMul:product:05Reconstruction/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
Reconstruction/dense_3/ReluRelu'Reconstruction/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*Reconstruction/dense/MatMul/ReadVariableOpReadVariableOp3reconstruction_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Reconstruction/dense/MatMulMatMul)Reconstruction/dense_3/Relu:activations:02Reconstruction/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+Reconstruction/dense/BiasAdd/ReadVariableOpReadVariableOp4reconstruction_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Reconstruction/dense/BiasAddBiasAdd%Reconstruction/dense/MatMul:product:03Reconstruction/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Reconstruction/dense/SigmoidSigmoid%Reconstruction/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
IdentityIdentity-DynamicRouting/SquashFunction_2/truediv_1:z:0^NoOp*
T0*/
_output_shapes
:���������
r

Identity_1Identity Reconstruction/dense/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp'^CapsuleFormation/MatMul/ReadVariableOp(^ConvolutionLayer/BiasAdd/ReadVariableOp'^ConvolutionLayer/Conv2D/ReadVariableOp&^PrimaryCapsule/BiasAdd/ReadVariableOp%^PrimaryCapsule/Conv2D/ReadVariableOp,^Reconstruction/dense/BiasAdd/ReadVariableOp+^Reconstruction/dense/MatMul/ReadVariableOp.^Reconstruction/dense_2/BiasAdd/ReadVariableOp-^Reconstruction/dense_2/MatMul/ReadVariableOp.^Reconstruction/dense_3/BiasAdd/ReadVariableOp-^Reconstruction/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������:���������
: : : : : : : : : : : 2P
&CapsuleFormation/MatMul/ReadVariableOp&CapsuleFormation/MatMul/ReadVariableOp2R
'ConvolutionLayer/BiasAdd/ReadVariableOp'ConvolutionLayer/BiasAdd/ReadVariableOp2P
&ConvolutionLayer/Conv2D/ReadVariableOp&ConvolutionLayer/Conv2D/ReadVariableOp2N
%PrimaryCapsule/BiasAdd/ReadVariableOp%PrimaryCapsule/BiasAdd/ReadVariableOp2L
$PrimaryCapsule/Conv2D/ReadVariableOp$PrimaryCapsule/Conv2D/ReadVariableOp2Z
+Reconstruction/dense/BiasAdd/ReadVariableOp+Reconstruction/dense/BiasAdd/ReadVariableOp2X
*Reconstruction/dense/MatMul/ReadVariableOp*Reconstruction/dense/MatMul/ReadVariableOp2^
-Reconstruction/dense_2/BiasAdd/ReadVariableOp-Reconstruction/dense_2/BiasAdd/ReadVariableOp2\
,Reconstruction/dense_2/MatMul/ReadVariableOp,Reconstruction/dense_2/MatMul/ReadVariableOp2^
-Reconstruction/dense_3/BiasAdd/ReadVariableOp-Reconstruction/dense_3/BiasAdd/ReadVariableOp2\
,Reconstruction/dense_3/MatMul/ReadVariableOp,Reconstruction/dense_3/MatMul/ReadVariableOp:QM
'
_output_shapes
:���������

"
_user_specified_name
inputs_1:Y U
/
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
�
(__inference_dense_2_layer_call_fn_178250

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_176184p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
L__inference_ConvolutionLayer_layer_call_and_return_conditional_losses_175957

inputs9
conv2d_readvariableop_resource:		�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:		�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_177938
input_1
input_2"
unknown:		�
	unknown_0:	�%
	unknown_1:		��
	unknown_2:	�(
	unknown_3:�	

	unknown_4:
��
	unknown_5:	�
	unknown_6:
��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:���������
:����������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_175941w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������
r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������:���������
: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:PL
'
_output_shapes
:���������

!
_user_specified_name	input_2:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�

�
A__inference_dense_layer_call_and_return_conditional_losses_178301

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:����������[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
J__inference_PrimaryCapsule_layer_call_and_return_conditional_losses_178241

inputs:
conv2d_readvariableop_resource:		��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
)__inference_predict_capsule_output_177906

inputsJ
/convolutionlayer_conv2d_readvariableop_resource:		�?
0convolutionlayer_biasadd_readvariableop_resource:	�I
-primarycapsule_conv2d_readvariableop_resource:		��=
.primarycapsule_biasadd_readvariableop_resource:	�N
/capsuleformation_matmul_readvariableop_resource:�	

identity��&CapsuleFormation/MatMul/ReadVariableOp�'ConvolutionLayer/BiasAdd/ReadVariableOp�&ConvolutionLayer/Conv2D/ReadVariableOp�%PrimaryCapsule/BiasAdd/ReadVariableOp�$PrimaryCapsule/Conv2D/ReadVariableOp�
&ConvolutionLayer/Conv2D/ReadVariableOpReadVariableOp/convolutionlayer_conv2d_readvariableop_resource*'
_output_shapes
:		�*
dtype0�
ConvolutionLayer/Conv2DConv2Dinputs.ConvolutionLayer/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:��*
paddingVALID*
strides
�
'ConvolutionLayer/BiasAdd/ReadVariableOpReadVariableOp0convolutionlayer_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ConvolutionLayer/BiasAddBiasAdd ConvolutionLayer/Conv2D:output:0/ConvolutionLayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:��s
ConvolutionLayer/ReluRelu!ConvolutionLayer/BiasAdd:output:0*
T0*(
_output_shapes
:���
$PrimaryCapsule/Conv2D/ReadVariableOpReadVariableOp-primarycapsule_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype0�
PrimaryCapsule/Conv2DConv2D#ConvolutionLayer/Relu:activations:0,PrimaryCapsule/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:��*
paddingVALID*
strides
�
%PrimaryCapsule/BiasAdd/ReadVariableOpReadVariableOp.primarycapsule_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
PrimaryCapsule/BiasAddBiasAddPrimaryCapsule/Conv2D:output:0-PrimaryCapsule/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:��s
CapsuleFormation/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"�����     �
CapsuleFormation/ReshapeReshapePrimaryCapsule/BiasAdd:output:0'CapsuleFormation/Reshape/shape:output:0*
T0*$
_output_shapes
:��	j
CapsuleFormation/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims
ExpandDims!CapsuleFormation/Reshape:output:0(CapsuleFormation/ExpandDims/dim:output:0*
T0*(
_output_shapes
:��	l
!CapsuleFormation/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
CapsuleFormation/ExpandDims_1
ExpandDims$CapsuleFormation/ExpandDims:output:0*CapsuleFormation/ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:��	�
&CapsuleFormation/MatMul/ReadVariableOpReadVariableOp/capsuleformation_matmul_readvariableop_resource*+
_output_shapes
:�	
*
dtype0�
CapsuleFormation/MatMulBatchMatMulV2.CapsuleFormation/MatMul/ReadVariableOp:value:0&CapsuleFormation/ExpandDims_1:output:0*
T0*,
_output_shapes
:��	
�
CapsuleFormation/SqueezeSqueeze CapsuleFormation/MatMul:output:0*
T0*(
_output_shapes
:��	
*
squeeze_dims
}
$DynamicRouting/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"�  �  
      _
DynamicRouting/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
DynamicRouting/zerosFill-DynamicRouting/zeros/shape_as_tensor:output:0#DynamicRouting/zeros/Const:output:0*
T0*(
_output_shapes
:��	
U
DynamicRouting/RankConst*
_output_shapes
: *
dtype0*
value	B :_
DynamicRouting/add/xConst*
_output_shapes
: *
dtype0*
valueB :
���������y
DynamicRouting/addAddV2DynamicRouting/add/x:output:0DynamicRouting/Rank:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :V
DynamicRouting/mod/yConst*
_output_shapes
: *
dtype0*
value	B :v
DynamicRouting/modFloorModDynamicRouting/add:z:0DynamicRouting/mod/y:output:0*
T0*
_output_shapes
: V
DynamicRouting/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/SubSubDynamicRouting/Rank_1:output:0DynamicRouting/Sub/y:output:0*
T0*
_output_shapes
: \
DynamicRouting/range/startConst*
_output_shapes
: *
dtype0*
value	B : \
DynamicRouting/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/rangeRange#DynamicRouting/range/start:output:0DynamicRouting/mod:z:0#DynamicRouting/range/delta:output:0*
_output_shapes
:X
DynamicRouting/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_1AddV2DynamicRouting/mod:z:0DynamicRouting/add_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_1RangeDynamicRouting/add_1:z:0DynamicRouting/Sub:z:0%DynamicRouting/range_1/delta:output:0*
_output_shapes
: l
DynamicRouting/concat/values_1PackDynamicRouting/Sub:z:0*
N*
T0*
_output_shapes
:l
DynamicRouting/concat/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:\
DynamicRouting/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concatConcatV2DynamicRouting/range:output:0'DynamicRouting/concat/values_1:output:0DynamicRouting/range_1:output:0'DynamicRouting/concat/values_3:output:0#DynamicRouting/concat/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose	TransposeDynamicRouting/zeros:output:0DynamicRouting/concat:output:0*
T0*(
_output_shapes
:��	
r
DynamicRouting/SoftmaxSoftmaxDynamicRouting/transpose:y:0*
T0*(
_output_shapes
:��	
X
DynamicRouting/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_1SubDynamicRouting/Rank_1:output:0DynamicRouting/Sub_1/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_2Range%DynamicRouting/range_2/start:output:0DynamicRouting/mod:z:0%DynamicRouting/range_2/delta:output:0*
_output_shapes
:X
DynamicRouting/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :w
DynamicRouting/add_2AddV2DynamicRouting/mod:z:0DynamicRouting/add_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_3RangeDynamicRouting/add_2:z:0DynamicRouting/Sub_1:z:0%DynamicRouting/range_3/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_1/values_1PackDynamicRouting/Sub_1:z:0*
N*
T0*
_output_shapes
:n
 DynamicRouting/concat_1/values_3PackDynamicRouting/mod:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_1ConcatV2DynamicRouting/range_2:output:0)DynamicRouting/concat_1/values_1:output:0DynamicRouting/range_3:output:0)DynamicRouting/concat_1/values_3:output:0%DynamicRouting/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_1	Transpose DynamicRouting/Softmax:softmax:0 DynamicRouting/concat_1:output:0*
T0*(
_output_shapes
:��	
�
DynamicRouting/MulMulDynamicRouting/transpose_1:y:0!CapsuleFormation/Squeeze:output:0*
T0*(
_output_shapes
:��	
f
$DynamicRouting/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/SumSumDynamicRouting/Mul:z:0-DynamicRouting/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:�
*
	keep_dims(�
&DynamicRouting/SquashFunction/norm/mulMulDynamicRouting/Sum:output:0DynamicRouting/Sum:output:0*
T0*'
_output_shapes
:�
�
8DynamicRouting/SquashFunction/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
&DynamicRouting/SquashFunction/norm/SumSum*DynamicRouting/SquashFunction/norm/mul:z:0ADynamicRouting/SquashFunction/norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:�
*
	keep_dims(�
'DynamicRouting/SquashFunction/norm/SqrtSqrt/DynamicRouting/SquashFunction/norm/Sum:output:0*
T0*'
_output_shapes
:�
�
$DynamicRouting/SquashFunction/SquareSquare+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*'
_output_shapes
:�
�
&DynamicRouting/SquashFunction/Square_1Square+DynamicRouting/SquashFunction/norm/Sqrt:y:0*
T0*'
_output_shapes
:�
h
#DynamicRouting/SquashFunction/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!DynamicRouting/SquashFunction/addAddV2,DynamicRouting/SquashFunction/add/x:output:0*DynamicRouting/SquashFunction/Square_1:y:0*
T0*'
_output_shapes
:�
�
%DynamicRouting/SquashFunction/truedivRealDiv(DynamicRouting/SquashFunction/Square:y:0%DynamicRouting/SquashFunction/add:z:0*
T0*'
_output_shapes
:�
�
!DynamicRouting/SquashFunction/mulMul)DynamicRouting/SquashFunction/truediv:z:0DynamicRouting/Sum:output:0*
T0*'
_output_shapes
:�
j
%DynamicRouting/SquashFunction/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
#DynamicRouting/SquashFunction/add_1AddV2+DynamicRouting/SquashFunction/norm/Sqrt:y:0.DynamicRouting/SquashFunction/add_1/y:output:0*
T0*'
_output_shapes
:�
�
'DynamicRouting/SquashFunction/truediv_1RealDiv%DynamicRouting/SquashFunction/mul:z:0'DynamicRouting/SquashFunction/add_1:z:0*
T0*'
_output_shapes
:�
h
DynamicRouting/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims
ExpandDims!CapsuleFormation/Squeeze:output:0&DynamicRouting/ExpandDims/dim:output:0*
T0*,
_output_shapes
:��	
j
DynamicRouting/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_1
ExpandDims+DynamicRouting/SquashFunction/truediv_1:z:0(DynamicRouting/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:�
�
DynamicRouting/MatMulBatchMatMulV2"DynamicRouting/ExpandDims:output:0$DynamicRouting/ExpandDims_1:output:0*
T0*,
_output_shapes
:��	
*
adj_x(�
DynamicRouting/SqueezeSqueezeDynamicRouting/MatMul:output:0*
T0*(
_output_shapes
:��	
*
squeeze_dims
�
DynamicRouting/add_3AddV2DynamicRouting/zeros:output:0DynamicRouting/Squeeze:output:0*
T0*(
_output_shapes
:��	
W
DynamicRouting/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_4/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_4AddV2DynamicRouting/add_4/x:output:0DynamicRouting/Rank_2:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_3Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_1/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_1FloorModDynamicRouting/add_4:z:0DynamicRouting/mod_1/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_2SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_2/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_4/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_4/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_4Range%DynamicRouting/range_4/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_4/delta:output:0*
_output_shapes
:X
DynamicRouting/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_5AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_5/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_5/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_5RangeDynamicRouting/add_5:z:0DynamicRouting/Sub_2:z:0%DynamicRouting/range_5/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_2/values_1PackDynamicRouting/Sub_2:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_2/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_2ConcatV2DynamicRouting/range_4:output:0)DynamicRouting/concat_2/values_1:output:0DynamicRouting/range_5:output:0)DynamicRouting/concat_2/values_3:output:0%DynamicRouting/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_2	TransposeDynamicRouting/add_3:z:0 DynamicRouting/concat_2:output:0*
T0*(
_output_shapes
:��	
v
DynamicRouting/Softmax_1SoftmaxDynamicRouting/transpose_2:y:0*
T0*(
_output_shapes
:��	
X
DynamicRouting/Sub_3/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_3SubDynamicRouting/Rank_3:output:0DynamicRouting/Sub_3/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_6/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_6/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_6Range%DynamicRouting/range_6/start:output:0DynamicRouting/mod_1:z:0%DynamicRouting/range_6/delta:output:0*
_output_shapes
:X
DynamicRouting/add_6/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_6AddV2DynamicRouting/mod_1:z:0DynamicRouting/add_6/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_7/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_7RangeDynamicRouting/add_6:z:0DynamicRouting/Sub_3:z:0%DynamicRouting/range_7/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_3/values_1PackDynamicRouting/Sub_3:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_3/values_3PackDynamicRouting/mod_1:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_3ConcatV2DynamicRouting/range_6:output:0)DynamicRouting/concat_3/values_1:output:0DynamicRouting/range_7:output:0)DynamicRouting/concat_3/values_3:output:0%DynamicRouting/concat_3/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_3	Transpose"DynamicRouting/Softmax_1:softmax:0 DynamicRouting/concat_3:output:0*
T0*(
_output_shapes
:��	
�
DynamicRouting/Mul_1MulDynamicRouting/transpose_3:y:0!CapsuleFormation/Squeeze:output:0*
T0*(
_output_shapes
:��	
h
&DynamicRouting/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_1SumDynamicRouting/Mul_1:z:0/DynamicRouting/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:�
*
	keep_dims(�
(DynamicRouting/SquashFunction_1/norm/mulMulDynamicRouting/Sum_1:output:0DynamicRouting/Sum_1:output:0*
T0*'
_output_shapes
:�
�
:DynamicRouting/SquashFunction_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_1/norm/SumSum,DynamicRouting/SquashFunction_1/norm/mul:z:0CDynamicRouting/SquashFunction_1/norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:�
*
	keep_dims(�
)DynamicRouting/SquashFunction_1/norm/SqrtSqrt1DynamicRouting/SquashFunction_1/norm/Sum:output:0*
T0*'
_output_shapes
:�
�
&DynamicRouting/SquashFunction_1/SquareSquare-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*'
_output_shapes
:�
�
(DynamicRouting/SquashFunction_1/Square_1Square-DynamicRouting/SquashFunction_1/norm/Sqrt:y:0*
T0*'
_output_shapes
:�
j
%DynamicRouting/SquashFunction_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_1/addAddV2.DynamicRouting/SquashFunction_1/add/x:output:0,DynamicRouting/SquashFunction_1/Square_1:y:0*
T0*'
_output_shapes
:�
�
'DynamicRouting/SquashFunction_1/truedivRealDiv*DynamicRouting/SquashFunction_1/Square:y:0'DynamicRouting/SquashFunction_1/add:z:0*
T0*'
_output_shapes
:�
�
#DynamicRouting/SquashFunction_1/mulMul+DynamicRouting/SquashFunction_1/truediv:z:0DynamicRouting/Sum_1:output:0*
T0*'
_output_shapes
:�
l
'DynamicRouting/SquashFunction_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_1/add_1AddV2-DynamicRouting/SquashFunction_1/norm/Sqrt:y:00DynamicRouting/SquashFunction_1/add_1/y:output:0*
T0*'
_output_shapes
:�
�
)DynamicRouting/SquashFunction_1/truediv_1RealDiv'DynamicRouting/SquashFunction_1/mul:z:0)DynamicRouting/SquashFunction_1/add_1:z:0*
T0*'
_output_shapes
:�
j
DynamicRouting/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_2
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:��	
j
DynamicRouting/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_3
ExpandDims-DynamicRouting/SquashFunction_1/truediv_1:z:0(DynamicRouting/ExpandDims_3/dim:output:0*
T0*+
_output_shapes
:�
�
DynamicRouting/MatMul_1BatchMatMulV2$DynamicRouting/ExpandDims_2:output:0$DynamicRouting/ExpandDims_3:output:0*
T0*,
_output_shapes
:��	
*
adj_x(�
DynamicRouting/Squeeze_1Squeeze DynamicRouting/MatMul_1:output:0*
T0*(
_output_shapes
:��	
*
squeeze_dims
�
DynamicRouting/add_7AddV2DynamicRouting/add_3:z:0!DynamicRouting/Squeeze_1:output:0*
T0*(
_output_shapes
:��	
W
DynamicRouting/Rank_4Const*
_output_shapes
: *
dtype0*
value	B :a
DynamicRouting/add_8/xConst*
_output_shapes
: *
dtype0*
valueB :
���������
DynamicRouting/add_8AddV2DynamicRouting/add_8/x:output:0DynamicRouting/Rank_4:output:0*
T0*
_output_shapes
: W
DynamicRouting/Rank_5Const*
_output_shapes
: *
dtype0*
value	B :X
DynamicRouting/mod_2/yConst*
_output_shapes
: *
dtype0*
value	B :|
DynamicRouting/mod_2FloorModDynamicRouting/add_8:z:0DynamicRouting/mod_2/y:output:0*
T0*
_output_shapes
: X
DynamicRouting/Sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_4SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_4/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_8/startConst*
_output_shapes
: *
dtype0*
value	B : ^
DynamicRouting/range_8/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_8Range%DynamicRouting/range_8/start:output:0DynamicRouting/mod_2:z:0%DynamicRouting/range_8/delta:output:0*
_output_shapes
:X
DynamicRouting/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :y
DynamicRouting/add_9AddV2DynamicRouting/mod_2:z:0DynamicRouting/add_9/y:output:0*
T0*
_output_shapes
: ^
DynamicRouting/range_9/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_9RangeDynamicRouting/add_9:z:0DynamicRouting/Sub_4:z:0%DynamicRouting/range_9/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_4/values_1PackDynamicRouting/Sub_4:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_4/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_4ConcatV2DynamicRouting/range_8:output:0)DynamicRouting/concat_4/values_1:output:0DynamicRouting/range_9:output:0)DynamicRouting/concat_4/values_3:output:0%DynamicRouting/concat_4/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_4	TransposeDynamicRouting/add_7:z:0 DynamicRouting/concat_4:output:0*
T0*(
_output_shapes
:��	
v
DynamicRouting/Softmax_2SoftmaxDynamicRouting/transpose_4:y:0*
T0*(
_output_shapes
:��	
X
DynamicRouting/Sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :}
DynamicRouting/Sub_5SubDynamicRouting/Rank_5:output:0DynamicRouting/Sub_5/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_10/startConst*
_output_shapes
: *
dtype0*
value	B : _
DynamicRouting/range_10/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_10Range&DynamicRouting/range_10/start:output:0DynamicRouting/mod_2:z:0&DynamicRouting/range_10/delta:output:0*
_output_shapes
:Y
DynamicRouting/add_10/yConst*
_output_shapes
: *
dtype0*
value	B :{
DynamicRouting/add_10AddV2DynamicRouting/mod_2:z:0 DynamicRouting/add_10/y:output:0*
T0*
_output_shapes
: _
DynamicRouting/range_11/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/range_11RangeDynamicRouting/add_10:z:0DynamicRouting/Sub_5:z:0&DynamicRouting/range_11/delta:output:0*
_output_shapes
: p
 DynamicRouting/concat_5/values_1PackDynamicRouting/Sub_5:z:0*
N*
T0*
_output_shapes
:p
 DynamicRouting/concat_5/values_3PackDynamicRouting/mod_2:z:0*
N*
T0*
_output_shapes
:^
DynamicRouting/concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DynamicRouting/concat_5ConcatV2 DynamicRouting/range_10:output:0)DynamicRouting/concat_5/values_1:output:0 DynamicRouting/range_11:output:0)DynamicRouting/concat_5/values_3:output:0%DynamicRouting/concat_5/axis:output:0*
N*
T0*
_output_shapes
:�
DynamicRouting/transpose_5	Transpose"DynamicRouting/Softmax_2:softmax:0 DynamicRouting/concat_5:output:0*
T0*(
_output_shapes
:��	
�
DynamicRouting/Mul_2MulDynamicRouting/transpose_5:y:0!CapsuleFormation/Squeeze:output:0*
T0*(
_output_shapes
:��	
h
&DynamicRouting/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DynamicRouting/Sum_2SumDynamicRouting/Mul_2:z:0/DynamicRouting/Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:�
*
	keep_dims(�
(DynamicRouting/SquashFunction_2/norm/mulMulDynamicRouting/Sum_2:output:0DynamicRouting/Sum_2:output:0*
T0*'
_output_shapes
:�
�
:DynamicRouting/SquashFunction_2/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
(DynamicRouting/SquashFunction_2/norm/SumSum,DynamicRouting/SquashFunction_2/norm/mul:z:0CDynamicRouting/SquashFunction_2/norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:�
*
	keep_dims(�
)DynamicRouting/SquashFunction_2/norm/SqrtSqrt1DynamicRouting/SquashFunction_2/norm/Sum:output:0*
T0*'
_output_shapes
:�
�
&DynamicRouting/SquashFunction_2/SquareSquare-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*'
_output_shapes
:�
�
(DynamicRouting/SquashFunction_2/Square_1Square-DynamicRouting/SquashFunction_2/norm/Sqrt:y:0*
T0*'
_output_shapes
:�
j
%DynamicRouting/SquashFunction_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#DynamicRouting/SquashFunction_2/addAddV2.DynamicRouting/SquashFunction_2/add/x:output:0,DynamicRouting/SquashFunction_2/Square_1:y:0*
T0*'
_output_shapes
:�
�
'DynamicRouting/SquashFunction_2/truedivRealDiv*DynamicRouting/SquashFunction_2/Square:y:0'DynamicRouting/SquashFunction_2/add:z:0*
T0*'
_output_shapes
:�
�
#DynamicRouting/SquashFunction_2/mulMul+DynamicRouting/SquashFunction_2/truediv:z:0DynamicRouting/Sum_2:output:0*
T0*'
_output_shapes
:�
l
'DynamicRouting/SquashFunction_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%DynamicRouting/SquashFunction_2/add_1AddV2-DynamicRouting/SquashFunction_2/norm/Sqrt:y:00DynamicRouting/SquashFunction_2/add_1/y:output:0*
T0*'
_output_shapes
:�
�
)DynamicRouting/SquashFunction_2/truediv_1RealDiv'DynamicRouting/SquashFunction_2/mul:z:0)DynamicRouting/SquashFunction_2/add_1:z:0*
T0*'
_output_shapes
:�
j
DynamicRouting/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_4
ExpandDims!CapsuleFormation/Squeeze:output:0(DynamicRouting/ExpandDims_4/dim:output:0*
T0*,
_output_shapes
:��	
j
DynamicRouting/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DynamicRouting/ExpandDims_5
ExpandDims-DynamicRouting/SquashFunction_2/truediv_1:z:0(DynamicRouting/ExpandDims_5/dim:output:0*
T0*+
_output_shapes
:�
�
DynamicRouting/MatMul_2BatchMatMulV2$DynamicRouting/ExpandDims_4:output:0$DynamicRouting/ExpandDims_5:output:0*
T0*,
_output_shapes
:��	
*
adj_x(�
DynamicRouting/Squeeze_2Squeeze DynamicRouting/MatMul_2:output:0*
T0*(
_output_shapes
:��	
*
squeeze_dims
�
DynamicRouting/add_11AddV2DynamicRouting/add_7:z:0!DynamicRouting/Squeeze_2:output:0*
T0*(
_output_shapes
:��	
|
IdentityIdentity-DynamicRouting/SquashFunction_2/truediv_1:z:0^NoOp*
T0*'
_output_shapes
:�
�
NoOpNoOp'^CapsuleFormation/MatMul/ReadVariableOp(^ConvolutionLayer/BiasAdd/ReadVariableOp'^ConvolutionLayer/Conv2D/ReadVariableOp&^PrimaryCapsule/BiasAdd/ReadVariableOp%^PrimaryCapsule/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�: : : : : 2P
&CapsuleFormation/MatMul/ReadVariableOp&CapsuleFormation/MatMul/ReadVariableOp2R
'ConvolutionLayer/BiasAdd/ReadVariableOp'ConvolutionLayer/BiasAdd/ReadVariableOp2P
&ConvolutionLayer/Conv2D/ReadVariableOp&ConvolutionLayer/Conv2D/ReadVariableOp2N
%PrimaryCapsule/BiasAdd/ReadVariableOp%PrimaryCapsule/BiasAdd/ReadVariableOp2L
$PrimaryCapsule/Conv2D/ReadVariableOp$PrimaryCapsule/Conv2D/ReadVariableOp:O K
'
_output_shapes
:�
 
_user_specified_nameinputs
�

�
J__inference_PrimaryCapsule_layer_call_and_return_conditional_losses_175973

inputs:
conv2d_readvariableop_resource:		��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_dense_3_layer_call_and_return_conditional_losses_178281

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0���������
;
input_20
serving_default_input_2:0���������
D
output_18
StatefulPartitionedCall:0���������
=
output_21
StatefulPartitionedCall:1����������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
convolution
	primary_capsule

w
dense_1
dense_2
	optimizer
loss
dense_3
training_metrics
call
predict_capsule_output
regenerate_image

signatures"
_tf_keras_model
n
0
1
2
3
4
5
6
7
8
9

10"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
8
9

10"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
$trace_0
%trace_12�
1__inference_baseline_capsnet_layer_call_fn_176482
1__inference_baseline_capsnet_layer_call_fn_177968�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z$trace_0z%trace_1
�
&trace_0
'trace_12�
L__inference_baseline_capsnet_layer_call_and_return_conditional_losses_176226
L__inference_baseline_capsnet_layer_call_and_return_conditional_losses_178202�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z&trace_0z'trace_1
�B�
!__inference__wrapped_model_175941input_1input_2"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

kernel
bias
 ._jit_compiled_convolution_op"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

kernel
bias
 5_jit_compiled_convolution_op"
_tf_keras_layer
7:5�	
2Variables/PoseEstimation
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
"
	optimizer
 "
trackable_dict_wrapper
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
X
Haccuracy
Iloss
Jval_accuracy
Kval_loss"
trackable_dict_wrapper
�
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32�
__inference_call_176796
__inference_call_177030
__inference_call_177264
__inference_call_177498�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
�
Ptrace_0
Qtrace_12�
)__inference_predict_capsule_output_177702
)__inference_predict_capsule_output_177906�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zPtrace_0zQtrace_1
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
Rserving_default"
signature_map
2:0		�2ConvolutionLayer/kernel
$:"�2ConvolutionLayer/bias
1:/		��2PrimaryCapsule/kernel
": �2PrimaryCapsule/bias
1:/
��2Reconstruction/dense_2/kernel
*:(�2Reconstruction/dense_2/bias
1:/
��2Reconstruction/dense_3/kernel
*:(�2Reconstruction/dense_3/bias
/:-
��2Reconstruction/dense/kernel
(:&�2Reconstruction/dense/bias
 "
trackable_list_wrapper
C
0
	1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_baseline_capsnet_layer_call_fn_176482input_1input_2"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_baseline_capsnet_layer_call_fn_177968inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_baseline_capsnet_layer_call_and_return_conditional_losses_176226input_1input_2"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_baseline_capsnet_layer_call_and_return_conditional_losses_178202inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
�
Xtrace_02�
1__inference_ConvolutionLayer_layer_call_fn_178211�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zXtrace_0
�
Ytrace_02�
L__inference_ConvolutionLayer_layer_call_and_return_conditional_losses_178222�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zYtrace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
_trace_02�
/__inference_PrimaryCapsule_layer_call_fn_178231�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z_trace_0
�
`trace_02�
J__inference_PrimaryCapsule_layer_call_and_return_conditional_losses_178241�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z`trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
ftrace_02�
(__inference_dense_2_layer_call_fn_178250�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zftrace_0
�
gtrace_02�
C__inference_dense_2_layer_call_and_return_conditional_losses_178261�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zgtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
mtrace_02�
(__inference_dense_3_layer_call_fn_178270�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zmtrace_0
�
ntrace_02�
C__inference_dense_3_layer_call_and_return_conditional_losses_178281�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zntrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
ttrace_02�
&__inference_dense_layer_call_fn_178290�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zttrace_0
�
utrace_02�
A__inference_dense_layer_call_and_return_conditional_losses_178301�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zutrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�B�
__inference_call_176796inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_call_177030inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_call_177264inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_call_177498inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_predict_capsule_output_177702inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_predict_capsule_output_177906inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_177938input_1input_2"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_ConvolutionLayer_layer_call_fn_178211inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_ConvolutionLayer_layer_call_and_return_conditional_losses_178222inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_PrimaryCapsule_layer_call_fn_178231inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_PrimaryCapsule_layer_call_and_return_conditional_losses_178241inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_2_layer_call_fn_178250inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_2_layer_call_and_return_conditional_losses_178261inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_3_layer_call_fn_178270inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_3_layer_call_and_return_conditional_losses_178281inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_dense_layer_call_fn_178290inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_dense_layer_call_and_return_conditional_losses_178301inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
L__inference_ConvolutionLayer_layer_call_and_return_conditional_losses_178222t7�4
-�*
(�%
inputs���������
� "5�2
+�(
tensor_0����������
� �
1__inference_ConvolutionLayer_layer_call_fn_178211i7�4
-�*
(�%
inputs���������
� "*�'
unknown�����������
J__inference_PrimaryCapsule_layer_call_and_return_conditional_losses_178241u8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
/__inference_PrimaryCapsule_layer_call_fn_178231j8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
!__inference__wrapped_model_175941�
`�]
V�S
Q�N
)�&
input_1���������
!�
input_2���������

� "l�i
6
output_1*�'
output_1���������

/
output_2#� 
output_2�����������
L__inference_baseline_capsnet_layer_call_and_return_conditional_losses_176226�
`�]
V�S
Q�N
)�&
input_1���������
!�
input_2���������

� "b�_
X�U
,�)

tensor_0_0���������

%�"

tensor_0_1����������
� �
L__inference_baseline_capsnet_layer_call_and_return_conditional_losses_178202�
b�_
X�U
S�P
*�'
inputs_0���������
"�
inputs_1���������

� "b�_
X�U
,�)

tensor_0_0���������

%�"

tensor_0_1����������
� �
1__inference_baseline_capsnet_layer_call_fn_176482�
`�]
V�S
Q�N
)�&
input_1���������
!�
input_2���������

� "T�Q
*�'
tensor_0���������

#� 
tensor_1�����������
1__inference_baseline_capsnet_layer_call_fn_177968�
b�_
X�U
S�P
*�'
inputs_0���������
"�
inputs_1���������

� "T�Q
*�'
tensor_0���������

#� 
tensor_1�����������
__inference_call_176796�
P�M
F�C
A�>
!�
inputs_0@
�
inputs_1@

� "B�?
!�
tensor_0@

�
tensor_1	@��
__inference_call_177030�
P�M
F�C
A�>
!�
inputs_08
�
inputs_18

� "B�?
!�
tensor_08

�
tensor_1	8��
__inference_call_177264�
P�M
F�C
A�>
!�
inputs_0(
�
inputs_1(

� "B�?
!�
tensor_0(

�
tensor_1	(��
__inference_call_177498�
b�_
X�U
S�P
*�'
inputs_0���������
"�
inputs_1���������

� "T�Q
*�'
tensor_0���������

#� 
tensor_1�����������
C__inference_dense_2_layer_call_and_return_conditional_losses_178261e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
(__inference_dense_2_layer_call_fn_178250Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
C__inference_dense_3_layer_call_and_return_conditional_losses_178281e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
(__inference_dense_3_layer_call_fn_178270Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
A__inference_dense_layer_call_and_return_conditional_losses_178301e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
&__inference_dense_layer_call_fn_178290Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
)__inference_predict_capsule_output_177702[
/�,
%�"
 �
inputs�
� "!�
unknown�
�
)__inference_predict_capsule_output_177906[
/�,
%�"
 �
inputs�
� "!�
unknown�
�
$__inference_signature_wrapper_177938�
q�n
� 
g�d
4
input_1)�&
input_1���������
,
input_2!�
input_2���������
"l�i
6
output_1*�'
output_1���������

/
output_2#� 
output_2����������