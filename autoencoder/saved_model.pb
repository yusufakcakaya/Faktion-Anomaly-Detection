ЗС#
ќу
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
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
Џ
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
└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
Щ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%иЛ8"&
exponential_avg_factorfloat%  ђ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%═╠L>"
Ttype0:
2
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
Ў
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28ьО
v
	c1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	c1/kernel
o
c1/kernel/Read/ReadVariableOpReadVariableOp	c1/kernel*&
_output_shapes
: *
dtype0
f
c1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	c1/bias
_
c1/bias/Read/ReadVariableOpReadVariableOpc1/bias*
_output_shapes
: *
dtype0
j
	bn1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	bn1/gamma
c
bn1/gamma/Read/ReadVariableOpReadVariableOp	bn1/gamma*
_output_shapes
: *
dtype0
h
bn1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
bn1/beta
a
bn1/beta/Read/ReadVariableOpReadVariableOpbn1/beta*
_output_shapes
: *
dtype0
v
bn1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namebn1/moving_mean
o
#bn1/moving_mean/Read/ReadVariableOpReadVariableOpbn1/moving_mean*
_output_shapes
: *
dtype0
~
bn1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_namebn1/moving_variance
w
'bn1/moving_variance/Read/ReadVariableOpReadVariableOpbn1/moving_variance*
_output_shapes
: *
dtype0
v
	c2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	c2/kernel
o
c2/kernel/Read/ReadVariableOpReadVariableOp	c2/kernel*&
_output_shapes
: *
dtype0
f
c2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	c2/bias
_
c2/bias/Read/ReadVariableOpReadVariableOpc2/bias*
_output_shapes
:*
dtype0
j
	bn2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	bn2/gamma
c
bn2/gamma/Read/ReadVariableOpReadVariableOp	bn2/gamma*
_output_shapes
:*
dtype0
h
bn2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
bn2/beta
a
bn2/beta/Read/ReadVariableOpReadVariableOpbn2/beta*
_output_shapes
:*
dtype0
v
bn2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namebn2/moving_mean
o
#bn2/moving_mean/Read/ReadVariableOpReadVariableOpbn2/moving_mean*
_output_shapes
:*
dtype0
~
bn2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namebn2/moving_variance
w
'bn2/moving_variance/Read/ReadVariableOpReadVariableOpbn2/moving_variance*
_output_shapes
:*
dtype0
v
	c3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	c3/kernel
o
c3/kernel/Read/ReadVariableOpReadVariableOp	c3/kernel*&
_output_shapes
:*
dtype0
f
c3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	c3/bias
_
c3/bias/Read/ReadVariableOpReadVariableOpc3/bias*
_output_shapes
:*
dtype0
j
	bn3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	bn3/gamma
c
bn3/gamma/Read/ReadVariableOpReadVariableOp	bn3/gamma*
_output_shapes
:*
dtype0
h
bn3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
bn3/beta
a
bn3/beta/Read/ReadVariableOpReadVariableOpbn3/beta*
_output_shapes
:*
dtype0
v
bn3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namebn3/moving_mean
o
#bn3/moving_mean/Read/ReadVariableOpReadVariableOpbn3/moving_mean*
_output_shapes
:*
dtype0
~
bn3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namebn3/moving_variance
w
'bn3/moving_variance/Read/ReadVariableOpReadVariableOpbn3/moving_variance*
_output_shapes
:*
dtype0
x

ct1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
ct1/kernel
q
ct1/kernel/Read/ReadVariableOpReadVariableOp
ct1/kernel*&
_output_shapes
:*
dtype0
h
ct1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
ct1/bias
a
ct1/bias/Read/ReadVariableOpReadVariableOpct1/bias*
_output_shapes
:*
dtype0
j
	bn4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	bn4/gamma
c
bn4/gamma/Read/ReadVariableOpReadVariableOp	bn4/gamma*
_output_shapes
:*
dtype0
h
bn4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
bn4/beta
a
bn4/beta/Read/ReadVariableOpReadVariableOpbn4/beta*
_output_shapes
:*
dtype0
v
bn4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namebn4/moving_mean
o
#bn4/moving_mean/Read/ReadVariableOpReadVariableOpbn4/moving_mean*
_output_shapes
:*
dtype0
~
bn4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namebn4/moving_variance
w
'bn4/moving_variance/Read/ReadVariableOpReadVariableOpbn4/moving_variance*
_output_shapes
:*
dtype0
x

ct2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
ct2/kernel
q
ct2/kernel/Read/ReadVariableOpReadVariableOp
ct2/kernel*&
_output_shapes
:*
dtype0
h
ct2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
ct2/bias
a
ct2/bias/Read/ReadVariableOpReadVariableOpct2/bias*
_output_shapes
:*
dtype0
j
	bn5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	bn5/gamma
c
bn5/gamma/Read/ReadVariableOpReadVariableOp	bn5/gamma*
_output_shapes
:*
dtype0
h
bn5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
bn5/beta
a
bn5/beta/Read/ReadVariableOpReadVariableOpbn5/beta*
_output_shapes
:*
dtype0
v
bn5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namebn5/moving_mean
o
#bn5/moving_mean/Read/ReadVariableOpReadVariableOpbn5/moving_mean*
_output_shapes
:*
dtype0
~
bn5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namebn5/moving_variance
w
'bn5/moving_variance/Read/ReadVariableOpReadVariableOpbn5/moving_variance*
_output_shapes
:*
dtype0
x

ct3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
ct3/kernel
q
ct3/kernel/Read/ReadVariableOpReadVariableOp
ct3/kernel*&
_output_shapes
: *
dtype0
h
ct3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
ct3/bias
a
ct3/bias/Read/ReadVariableOpReadVariableOpct3/bias*
_output_shapes
: *
dtype0
j
	bn6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	bn6/gamma
c
bn6/gamma/Read/ReadVariableOpReadVariableOp	bn6/gamma*
_output_shapes
: *
dtype0
h
bn6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
bn6/beta
a
bn6/beta/Read/ReadVariableOpReadVariableOpbn6/beta*
_output_shapes
: *
dtype0
v
bn6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namebn6/moving_mean
o
#bn6/moving_mean/Read/ReadVariableOpReadVariableOpbn6/moving_mean*
_output_shapes
: *
dtype0
~
bn6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_namebn6/moving_variance
w
'bn6/moving_variance/Read/ReadVariableOpReadVariableOpbn6/moving_variance*
_output_shapes
: *
dtype0
x

ct4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
ct4/kernel
q
ct4/kernel/Read/ReadVariableOpReadVariableOp
ct4/kernel*&
_output_shapes
: *
dtype0
h
ct4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
ct4/bias
a
ct4/bias/Read/ReadVariableOpReadVariableOpct4/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
ё
Adam/c1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/c1/kernel/m
}
$Adam/c1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/c1/kernel/m*&
_output_shapes
: *
dtype0
t
Adam/c1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/c1/bias/m
m
"Adam/c1/bias/m/Read/ReadVariableOpReadVariableOpAdam/c1/bias/m*
_output_shapes
: *
dtype0
x
Adam/bn1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/bn1/gamma/m
q
$Adam/bn1/gamma/m/Read/ReadVariableOpReadVariableOpAdam/bn1/gamma/m*
_output_shapes
: *
dtype0
v
Adam/bn1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/bn1/beta/m
o
#Adam/bn1/beta/m/Read/ReadVariableOpReadVariableOpAdam/bn1/beta/m*
_output_shapes
: *
dtype0
ё
Adam/c2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/c2/kernel/m
}
$Adam/c2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/c2/kernel/m*&
_output_shapes
: *
dtype0
t
Adam/c2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/c2/bias/m
m
"Adam/c2/bias/m/Read/ReadVariableOpReadVariableOpAdam/c2/bias/m*
_output_shapes
:*
dtype0
x
Adam/bn2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/bn2/gamma/m
q
$Adam/bn2/gamma/m/Read/ReadVariableOpReadVariableOpAdam/bn2/gamma/m*
_output_shapes
:*
dtype0
v
Adam/bn2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/bn2/beta/m
o
#Adam/bn2/beta/m/Read/ReadVariableOpReadVariableOpAdam/bn2/beta/m*
_output_shapes
:*
dtype0
ё
Adam/c3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/c3/kernel/m
}
$Adam/c3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/c3/kernel/m*&
_output_shapes
:*
dtype0
t
Adam/c3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/c3/bias/m
m
"Adam/c3/bias/m/Read/ReadVariableOpReadVariableOpAdam/c3/bias/m*
_output_shapes
:*
dtype0
x
Adam/bn3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/bn3/gamma/m
q
$Adam/bn3/gamma/m/Read/ReadVariableOpReadVariableOpAdam/bn3/gamma/m*
_output_shapes
:*
dtype0
v
Adam/bn3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/bn3/beta/m
o
#Adam/bn3/beta/m/Read/ReadVariableOpReadVariableOpAdam/bn3/beta/m*
_output_shapes
:*
dtype0
є
Adam/ct1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/ct1/kernel/m

%Adam/ct1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ct1/kernel/m*&
_output_shapes
:*
dtype0
v
Adam/ct1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/ct1/bias/m
o
#Adam/ct1/bias/m/Read/ReadVariableOpReadVariableOpAdam/ct1/bias/m*
_output_shapes
:*
dtype0
x
Adam/bn4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/bn4/gamma/m
q
$Adam/bn4/gamma/m/Read/ReadVariableOpReadVariableOpAdam/bn4/gamma/m*
_output_shapes
:*
dtype0
v
Adam/bn4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/bn4/beta/m
o
#Adam/bn4/beta/m/Read/ReadVariableOpReadVariableOpAdam/bn4/beta/m*
_output_shapes
:*
dtype0
є
Adam/ct2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/ct2/kernel/m

%Adam/ct2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ct2/kernel/m*&
_output_shapes
:*
dtype0
v
Adam/ct2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/ct2/bias/m
o
#Adam/ct2/bias/m/Read/ReadVariableOpReadVariableOpAdam/ct2/bias/m*
_output_shapes
:*
dtype0
x
Adam/bn5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/bn5/gamma/m
q
$Adam/bn5/gamma/m/Read/ReadVariableOpReadVariableOpAdam/bn5/gamma/m*
_output_shapes
:*
dtype0
v
Adam/bn5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/bn5/beta/m
o
#Adam/bn5/beta/m/Read/ReadVariableOpReadVariableOpAdam/bn5/beta/m*
_output_shapes
:*
dtype0
є
Adam/ct3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/ct3/kernel/m

%Adam/ct3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ct3/kernel/m*&
_output_shapes
: *
dtype0
v
Adam/ct3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/ct3/bias/m
o
#Adam/ct3/bias/m/Read/ReadVariableOpReadVariableOpAdam/ct3/bias/m*
_output_shapes
: *
dtype0
x
Adam/bn6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/bn6/gamma/m
q
$Adam/bn6/gamma/m/Read/ReadVariableOpReadVariableOpAdam/bn6/gamma/m*
_output_shapes
: *
dtype0
v
Adam/bn6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/bn6/beta/m
o
#Adam/bn6/beta/m/Read/ReadVariableOpReadVariableOpAdam/bn6/beta/m*
_output_shapes
: *
dtype0
є
Adam/ct4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/ct4/kernel/m

%Adam/ct4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ct4/kernel/m*&
_output_shapes
: *
dtype0
v
Adam/ct4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/ct4/bias/m
o
#Adam/ct4/bias/m/Read/ReadVariableOpReadVariableOpAdam/ct4/bias/m*
_output_shapes
:*
dtype0
ё
Adam/c1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/c1/kernel/v
}
$Adam/c1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/c1/kernel/v*&
_output_shapes
: *
dtype0
t
Adam/c1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/c1/bias/v
m
"Adam/c1/bias/v/Read/ReadVariableOpReadVariableOpAdam/c1/bias/v*
_output_shapes
: *
dtype0
x
Adam/bn1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/bn1/gamma/v
q
$Adam/bn1/gamma/v/Read/ReadVariableOpReadVariableOpAdam/bn1/gamma/v*
_output_shapes
: *
dtype0
v
Adam/bn1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/bn1/beta/v
o
#Adam/bn1/beta/v/Read/ReadVariableOpReadVariableOpAdam/bn1/beta/v*
_output_shapes
: *
dtype0
ё
Adam/c2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/c2/kernel/v
}
$Adam/c2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/c2/kernel/v*&
_output_shapes
: *
dtype0
t
Adam/c2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/c2/bias/v
m
"Adam/c2/bias/v/Read/ReadVariableOpReadVariableOpAdam/c2/bias/v*
_output_shapes
:*
dtype0
x
Adam/bn2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/bn2/gamma/v
q
$Adam/bn2/gamma/v/Read/ReadVariableOpReadVariableOpAdam/bn2/gamma/v*
_output_shapes
:*
dtype0
v
Adam/bn2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/bn2/beta/v
o
#Adam/bn2/beta/v/Read/ReadVariableOpReadVariableOpAdam/bn2/beta/v*
_output_shapes
:*
dtype0
ё
Adam/c3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/c3/kernel/v
}
$Adam/c3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/c3/kernel/v*&
_output_shapes
:*
dtype0
t
Adam/c3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/c3/bias/v
m
"Adam/c3/bias/v/Read/ReadVariableOpReadVariableOpAdam/c3/bias/v*
_output_shapes
:*
dtype0
x
Adam/bn3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/bn3/gamma/v
q
$Adam/bn3/gamma/v/Read/ReadVariableOpReadVariableOpAdam/bn3/gamma/v*
_output_shapes
:*
dtype0
v
Adam/bn3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/bn3/beta/v
o
#Adam/bn3/beta/v/Read/ReadVariableOpReadVariableOpAdam/bn3/beta/v*
_output_shapes
:*
dtype0
є
Adam/ct1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/ct1/kernel/v

%Adam/ct1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ct1/kernel/v*&
_output_shapes
:*
dtype0
v
Adam/ct1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/ct1/bias/v
o
#Adam/ct1/bias/v/Read/ReadVariableOpReadVariableOpAdam/ct1/bias/v*
_output_shapes
:*
dtype0
x
Adam/bn4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/bn4/gamma/v
q
$Adam/bn4/gamma/v/Read/ReadVariableOpReadVariableOpAdam/bn4/gamma/v*
_output_shapes
:*
dtype0
v
Adam/bn4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/bn4/beta/v
o
#Adam/bn4/beta/v/Read/ReadVariableOpReadVariableOpAdam/bn4/beta/v*
_output_shapes
:*
dtype0
є
Adam/ct2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/ct2/kernel/v

%Adam/ct2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ct2/kernel/v*&
_output_shapes
:*
dtype0
v
Adam/ct2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/ct2/bias/v
o
#Adam/ct2/bias/v/Read/ReadVariableOpReadVariableOpAdam/ct2/bias/v*
_output_shapes
:*
dtype0
x
Adam/bn5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/bn5/gamma/v
q
$Adam/bn5/gamma/v/Read/ReadVariableOpReadVariableOpAdam/bn5/gamma/v*
_output_shapes
:*
dtype0
v
Adam/bn5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/bn5/beta/v
o
#Adam/bn5/beta/v/Read/ReadVariableOpReadVariableOpAdam/bn5/beta/v*
_output_shapes
:*
dtype0
є
Adam/ct3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/ct3/kernel/v

%Adam/ct3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ct3/kernel/v*&
_output_shapes
: *
dtype0
v
Adam/ct3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/ct3/bias/v
o
#Adam/ct3/bias/v/Read/ReadVariableOpReadVariableOpAdam/ct3/bias/v*
_output_shapes
: *
dtype0
x
Adam/bn6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/bn6/gamma/v
q
$Adam/bn6/gamma/v/Read/ReadVariableOpReadVariableOpAdam/bn6/gamma/v*
_output_shapes
: *
dtype0
v
Adam/bn6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/bn6/beta/v
o
#Adam/bn6/beta/v/Read/ReadVariableOpReadVariableOpAdam/bn6/beta/v*
_output_shapes
: *
dtype0
є
Adam/ct4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/ct4/kernel/v

%Adam/ct4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ct4/kernel/v*&
_output_shapes
: *
dtype0
v
Adam/ct4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/ct4/bias/v
o
#Adam/ct4/bias/v/Read/ReadVariableOpReadVariableOpAdam/ct4/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
њЦ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╠ц
value┴цBйц Bхц
е
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
layer-22
layer_with_weights-11
layer-23
layer-24
layer_with_weights-12
layer-25
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
 
signatures
 
h

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
R
'	variables
(trainable_variables
)regularization_losses
*	keras_api
Ќ
+axis
	,gamma
-beta
.moving_mean
/moving_variance
0	variables
1trainable_variables
2regularization_losses
3	keras_api
R
4	variables
5trainable_variables
6regularization_losses
7	keras_api
h

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
R
>	variables
?trainable_variables
@regularization_losses
A	keras_api
Ќ
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
R
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
h

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
R
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Ќ
Yaxis
	Zgamma
[beta
\moving_mean
]moving_variance
^	variables
_trainable_variables
`regularization_losses
a	keras_api
R
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
h

fkernel
gbias
h	variables
itrainable_variables
jregularization_losses
k	keras_api
R
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
Ќ
paxis
	qgamma
rbeta
smoving_mean
tmoving_variance
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
R
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
k

}kernel
~bias
	variables
ђtrainable_variables
Ђregularization_losses
ѓ	keras_api
V
Ѓ	variables
ёtrainable_variables
Ёregularization_losses
є	keras_api
а
	Єaxis

ѕgamma
	Ѕbeta
іmoving_mean
Іmoving_variance
ї	variables
Їtrainable_variables
јregularization_losses
Ј	keras_api
V
љ	variables
Љtrainable_variables
њregularization_losses
Њ	keras_api
n
ћkernel
	Ћbias
ќ	variables
Ќtrainable_variables
ўregularization_losses
Ў	keras_api
V
џ	variables
Џtrainable_variables
юregularization_losses
Ю	keras_api
а
	ъaxis

Ъgamma
	аbeta
Аmoving_mean
бmoving_variance
Б	variables
цtrainable_variables
Цregularization_losses
д	keras_api
V
Д	variables
еtrainable_variables
Еregularization_losses
ф	keras_api
n
Фkernel
	гbias
Г	variables
«trainable_variables
»regularization_losses
░	keras_api
П
	▒iter
▓beta_1
│beta_2

┤decay
хlearning_rate!mй"mЙ,m┐-m└8m┴9m┬Cm├Dm─Om┼PmкZmК[m╚fm╔gm╩qm╦rm╠}m═~m╬	ѕm¤	Ѕmл	ћmЛ	Ћmм	ЪmМ	аmн	ФmН	гmо!vО"vп,v┘-v┌8v█9v▄CvПDvяOv▀PvЯZvр[vРfvсgvСqvтrvТ}vу~vУ	ѕvж	ЅvЖ	ћvв	ЋvВ	Ъvь	аvЬ	Фv№	гv­
▓
!0
"1
,2
-3
.4
/5
86
97
C8
D9
E10
F11
O12
P13
Z14
[15
\16
]17
f18
g19
q20
r21
s22
t23
}24
~25
ѕ26
Ѕ27
і28
І29
ћ30
Ћ31
Ъ32
а33
А34
б35
Ф36
г37
╬
!0
"1
,2
-3
84
95
C6
D7
O8
P9
Z10
[11
f12
g13
q14
r15
}16
~17
ѕ18
Ѕ19
ћ20
Ћ21
Ъ22
а23
Ф24
г25
 
▓
Хnon_trainable_variables
иlayers
Иmetrics
 ╣layer_regularization_losses
║layer_metrics
	variables
trainable_variables
regularization_losses
 
US
VARIABLE_VALUE	c1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEc1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1

!0
"1
 
▓
╗non_trainable_variables
╝layers
йmetrics
 Йlayer_regularization_losses
┐layer_metrics
#	variables
$trainable_variables
%regularization_losses
 
 
 
▓
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
'	variables
(trainable_variables
)regularization_losses
 
TR
VARIABLE_VALUE	bn1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEbn1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbn1/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEbn1/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

,0
-1
.2
/3

,0
-1
 
▓
┼non_trainable_variables
кlayers
Кmetrics
 ╚layer_regularization_losses
╔layer_metrics
0	variables
1trainable_variables
2regularization_losses
 
 
 
▓
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
4	variables
5trainable_variables
6regularization_losses
US
VARIABLE_VALUE	c2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEc2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91

80
91
 
▓
¤non_trainable_variables
лlayers
Лmetrics
 мlayer_regularization_losses
Мlayer_metrics
:	variables
;trainable_variables
<regularization_losses
 
 
 
▓
нnon_trainable_variables
Нlayers
оmetrics
 Оlayer_regularization_losses
пlayer_metrics
>	variables
?trainable_variables
@regularization_losses
 
TR
VARIABLE_VALUE	bn2/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEbn2/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbn2/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEbn2/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

C0
D1
E2
F3

C0
D1
 
▓
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
Пlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
 
 
 
▓
яnon_trainable_variables
▀layers
Яmetrics
 рlayer_regularization_losses
Рlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
US
VARIABLE_VALUE	c3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEc3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

O0
P1

O0
P1
 
▓
сnon_trainable_variables
Сlayers
тmetrics
 Тlayer_regularization_losses
уlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
 
 
 
▓
Уnon_trainable_variables
жlayers
Жmetrics
 вlayer_regularization_losses
Вlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
 
TR
VARIABLE_VALUE	bn3/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEbn3/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbn3/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEbn3/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1
\2
]3

Z0
[1
 
▓
ьnon_trainable_variables
Ьlayers
№metrics
 ­layer_regularization_losses
ыlayer_metrics
^	variables
_trainable_variables
`regularization_losses
 
 
 
▓
Ыnon_trainable_variables
зlayers
Зmetrics
 шlayer_regularization_losses
Шlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
VT
VARIABLE_VALUE
ct1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEct1/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

f0
g1

f0
g1
 
▓
эnon_trainable_variables
Эlayers
щmetrics
 Щlayer_regularization_losses
чlayer_metrics
h	variables
itrainable_variables
jregularization_losses
 
 
 
▓
Чnon_trainable_variables
§layers
■metrics
  layer_regularization_losses
ђlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
 
TR
VARIABLE_VALUE	bn4/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEbn4/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbn4/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEbn4/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

q0
r1
s2
t3

q0
r1
 
▓
Ђnon_trainable_variables
ѓlayers
Ѓmetrics
 ёlayer_regularization_losses
Ёlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
 
 
 
▓
єnon_trainable_variables
Єlayers
ѕmetrics
 Ѕlayer_regularization_losses
іlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
VT
VARIABLE_VALUE
ct2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEct2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

}0
~1

}0
~1
 
┤
Іnon_trainable_variables
їlayers
Їmetrics
 јlayer_regularization_losses
Јlayer_metrics
	variables
ђtrainable_variables
Ђregularization_losses
 
 
 
х
љnon_trainable_variables
Љlayers
њmetrics
 Њlayer_regularization_losses
ћlayer_metrics
Ѓ	variables
ёtrainable_variables
Ёregularization_losses
 
TR
VARIABLE_VALUE	bn5/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEbn5/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbn5/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEbn5/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
ѕ0
Ѕ1
і2
І3

ѕ0
Ѕ1
 
х
Ћnon_trainable_variables
ќlayers
Ќmetrics
 ўlayer_regularization_losses
Ўlayer_metrics
ї	variables
Їtrainable_variables
јregularization_losses
 
 
 
х
џnon_trainable_variables
Џlayers
юmetrics
 Юlayer_regularization_losses
ъlayer_metrics
љ	variables
Љtrainable_variables
њregularization_losses
WU
VARIABLE_VALUE
ct3/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEct3/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

ћ0
Ћ1

ћ0
Ћ1
 
х
Ъnon_trainable_variables
аlayers
Аmetrics
 бlayer_regularization_losses
Бlayer_metrics
ќ	variables
Ќtrainable_variables
ўregularization_losses
 
 
 
х
цnon_trainable_variables
Цlayers
дmetrics
 Дlayer_regularization_losses
еlayer_metrics
џ	variables
Џtrainable_variables
юregularization_losses
 
US
VARIABLE_VALUE	bn6/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEbn6/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbn6/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEbn6/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
Ъ0
а1
А2
б3

Ъ0
а1
 
х
Еnon_trainable_variables
фlayers
Фmetrics
 гlayer_regularization_losses
Гlayer_metrics
Б	variables
цtrainable_variables
Цregularization_losses
 
 
 
х
«non_trainable_variables
»layers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
Д	variables
еtrainable_variables
Еregularization_losses
WU
VARIABLE_VALUE
ct4/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEct4/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

Ф0
г1

Ф0
г1
 
х
│non_trainable_variables
┤layers
хmetrics
 Хlayer_regularization_losses
иlayer_metrics
Г	variables
«trainable_variables
»regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
Z
.0
/1
E2
F3
\4
]5
s6
t7
і8
І9
А10
б11
к
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25

И0
 
 
 
 
 
 
 
 
 
 
 
 

.0
/1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

E0
F1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

\0
]1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

s0
t1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

і0
І1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

А0
б1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

╣total

║count
╗	variables
╝	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

╣0
║1

╗	variables
xv
VARIABLE_VALUEAdam/c1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/c1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn1/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn1/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/c2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/c2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn2/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn2/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/c3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/c3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn3/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn3/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/ct1/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ct1/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn4/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn4/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/ct2/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ct2/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn5/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn5/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/ct3/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/ct3/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/bn6/gamma/mRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bn6/beta/mQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/ct4/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/ct4/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/c1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/c1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn1/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn1/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/c2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/c2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn2/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn2/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/c3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/c3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn3/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn3/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/ct1/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ct1/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn4/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn4/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/ct2/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ct2/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn5/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn5/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/ct3/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/ct3/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/bn6/gamma/vRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bn6/beta/vQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/ct4/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/ct4/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
і
serving_default_imgPlaceholder*1
_output_shapes
:         ђђ*
dtype0*&
shape:         ђђ
Ч
StatefulPartitionedCallStatefulPartitionedCallserving_default_img	c1/kernelc1/bias	bn1/gammabn1/betabn1/moving_meanbn1/moving_variance	c2/kernelc2/bias	bn2/gammabn2/betabn2/moving_meanbn2/moving_variance	c3/kernelc3/bias	bn3/gammabn3/betabn3/moving_meanbn3/moving_variance
ct1/kernelct1/bias	bn4/gammabn4/betabn4/moving_meanbn4/moving_variance
ct2/kernelct2/bias	bn5/gammabn5/betabn5/moving_meanbn5/moving_variance
ct3/kernelct3/bias	bn6/gammabn6/betabn6/moving_meanbn6/moving_variance
ct4/kernelct4/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8ѓ *,
f'R%
#__inference_signature_wrapper_11732
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
в
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamec1/kernel/Read/ReadVariableOpc1/bias/Read/ReadVariableOpbn1/gamma/Read/ReadVariableOpbn1/beta/Read/ReadVariableOp#bn1/moving_mean/Read/ReadVariableOp'bn1/moving_variance/Read/ReadVariableOpc2/kernel/Read/ReadVariableOpc2/bias/Read/ReadVariableOpbn2/gamma/Read/ReadVariableOpbn2/beta/Read/ReadVariableOp#bn2/moving_mean/Read/ReadVariableOp'bn2/moving_variance/Read/ReadVariableOpc3/kernel/Read/ReadVariableOpc3/bias/Read/ReadVariableOpbn3/gamma/Read/ReadVariableOpbn3/beta/Read/ReadVariableOp#bn3/moving_mean/Read/ReadVariableOp'bn3/moving_variance/Read/ReadVariableOpct1/kernel/Read/ReadVariableOpct1/bias/Read/ReadVariableOpbn4/gamma/Read/ReadVariableOpbn4/beta/Read/ReadVariableOp#bn4/moving_mean/Read/ReadVariableOp'bn4/moving_variance/Read/ReadVariableOpct2/kernel/Read/ReadVariableOpct2/bias/Read/ReadVariableOpbn5/gamma/Read/ReadVariableOpbn5/beta/Read/ReadVariableOp#bn5/moving_mean/Read/ReadVariableOp'bn5/moving_variance/Read/ReadVariableOpct3/kernel/Read/ReadVariableOpct3/bias/Read/ReadVariableOpbn6/gamma/Read/ReadVariableOpbn6/beta/Read/ReadVariableOp#bn6/moving_mean/Read/ReadVariableOp'bn6/moving_variance/Read/ReadVariableOpct4/kernel/Read/ReadVariableOpct4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp$Adam/c1/kernel/m/Read/ReadVariableOp"Adam/c1/bias/m/Read/ReadVariableOp$Adam/bn1/gamma/m/Read/ReadVariableOp#Adam/bn1/beta/m/Read/ReadVariableOp$Adam/c2/kernel/m/Read/ReadVariableOp"Adam/c2/bias/m/Read/ReadVariableOp$Adam/bn2/gamma/m/Read/ReadVariableOp#Adam/bn2/beta/m/Read/ReadVariableOp$Adam/c3/kernel/m/Read/ReadVariableOp"Adam/c3/bias/m/Read/ReadVariableOp$Adam/bn3/gamma/m/Read/ReadVariableOp#Adam/bn3/beta/m/Read/ReadVariableOp%Adam/ct1/kernel/m/Read/ReadVariableOp#Adam/ct1/bias/m/Read/ReadVariableOp$Adam/bn4/gamma/m/Read/ReadVariableOp#Adam/bn4/beta/m/Read/ReadVariableOp%Adam/ct2/kernel/m/Read/ReadVariableOp#Adam/ct2/bias/m/Read/ReadVariableOp$Adam/bn5/gamma/m/Read/ReadVariableOp#Adam/bn5/beta/m/Read/ReadVariableOp%Adam/ct3/kernel/m/Read/ReadVariableOp#Adam/ct3/bias/m/Read/ReadVariableOp$Adam/bn6/gamma/m/Read/ReadVariableOp#Adam/bn6/beta/m/Read/ReadVariableOp%Adam/ct4/kernel/m/Read/ReadVariableOp#Adam/ct4/bias/m/Read/ReadVariableOp$Adam/c1/kernel/v/Read/ReadVariableOp"Adam/c1/bias/v/Read/ReadVariableOp$Adam/bn1/gamma/v/Read/ReadVariableOp#Adam/bn1/beta/v/Read/ReadVariableOp$Adam/c2/kernel/v/Read/ReadVariableOp"Adam/c2/bias/v/Read/ReadVariableOp$Adam/bn2/gamma/v/Read/ReadVariableOp#Adam/bn2/beta/v/Read/ReadVariableOp$Adam/c3/kernel/v/Read/ReadVariableOp"Adam/c3/bias/v/Read/ReadVariableOp$Adam/bn3/gamma/v/Read/ReadVariableOp#Adam/bn3/beta/v/Read/ReadVariableOp%Adam/ct1/kernel/v/Read/ReadVariableOp#Adam/ct1/bias/v/Read/ReadVariableOp$Adam/bn4/gamma/v/Read/ReadVariableOp#Adam/bn4/beta/v/Read/ReadVariableOp%Adam/ct2/kernel/v/Read/ReadVariableOp#Adam/ct2/bias/v/Read/ReadVariableOp$Adam/bn5/gamma/v/Read/ReadVariableOp#Adam/bn5/beta/v/Read/ReadVariableOp%Adam/ct3/kernel/v/Read/ReadVariableOp#Adam/ct3/bias/v/Read/ReadVariableOp$Adam/bn6/gamma/v/Read/ReadVariableOp#Adam/bn6/beta/v/Read/ReadVariableOp%Adam/ct4/kernel/v/Read/ReadVariableOp#Adam/ct4/bias/v/Read/ReadVariableOpConst*n
Ting
e2c	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *'
f"R 
__inference__traced_save_13925
м
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	c1/kernelc1/bias	bn1/gammabn1/betabn1/moving_meanbn1/moving_variance	c2/kernelc2/bias	bn2/gammabn2/betabn2/moving_meanbn2/moving_variance	c3/kernelc3/bias	bn3/gammabn3/betabn3/moving_meanbn3/moving_variance
ct1/kernelct1/bias	bn4/gammabn4/betabn4/moving_meanbn4/moving_variance
ct2/kernelct2/bias	bn5/gammabn5/betabn5/moving_meanbn5/moving_variance
ct3/kernelct3/bias	bn6/gammabn6/betabn6/moving_meanbn6/moving_variance
ct4/kernelct4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/c1/kernel/mAdam/c1/bias/mAdam/bn1/gamma/mAdam/bn1/beta/mAdam/c2/kernel/mAdam/c2/bias/mAdam/bn2/gamma/mAdam/bn2/beta/mAdam/c3/kernel/mAdam/c3/bias/mAdam/bn3/gamma/mAdam/bn3/beta/mAdam/ct1/kernel/mAdam/ct1/bias/mAdam/bn4/gamma/mAdam/bn4/beta/mAdam/ct2/kernel/mAdam/ct2/bias/mAdam/bn5/gamma/mAdam/bn5/beta/mAdam/ct3/kernel/mAdam/ct3/bias/mAdam/bn6/gamma/mAdam/bn6/beta/mAdam/ct4/kernel/mAdam/ct4/bias/mAdam/c1/kernel/vAdam/c1/bias/vAdam/bn1/gamma/vAdam/bn1/beta/vAdam/c2/kernel/vAdam/c2/bias/vAdam/bn2/gamma/vAdam/bn2/beta/vAdam/c3/kernel/vAdam/c3/bias/vAdam/bn3/gamma/vAdam/bn3/beta/vAdam/ct1/kernel/vAdam/ct1/bias/vAdam/bn4/gamma/vAdam/bn4/beta/vAdam/ct2/kernel/vAdam/ct2/bias/vAdam/bn5/gamma/vAdam/bn5/beta/vAdam/ct3/kernel/vAdam/ct3/bias/vAdam/bn6/gamma/vAdam/bn6/beta/vAdam/ct4/kernel/vAdam/ct4/bias/v*m
Tinf
d2b*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__traced_restore_14226у═
╣
Ѕ
>__inference_bn3_layer_call_and_return_conditional_losses_12757

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
┤
?
#__inference_LR2_layer_call_fn_12643

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR2_layer_call_and_return_conditional_losses_10309h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ЕУ
Џ
B__inference_model_3_layer_call_and_return_conditional_losses_12302

inputs;
!c1_conv2d_readvariableop_resource: 0
"c1_biasadd_readvariableop_resource: )
bn1_readvariableop_resource: +
bn1_readvariableop_1_resource: :
,bn1_fusedbatchnormv3_readvariableop_resource: <
.bn1_fusedbatchnormv3_readvariableop_1_resource: ;
!c2_conv2d_readvariableop_resource: 0
"c2_biasadd_readvariableop_resource:)
bn2_readvariableop_resource:+
bn2_readvariableop_1_resource::
,bn2_fusedbatchnormv3_readvariableop_resource:<
.bn2_fusedbatchnormv3_readvariableop_1_resource:;
!c3_conv2d_readvariableop_resource:0
"c3_biasadd_readvariableop_resource:)
bn3_readvariableop_resource:+
bn3_readvariableop_1_resource::
,bn3_fusedbatchnormv3_readvariableop_resource:<
.bn3_fusedbatchnormv3_readvariableop_1_resource:F
,ct1_conv2d_transpose_readvariableop_resource:1
#ct1_biasadd_readvariableop_resource:)
bn4_readvariableop_resource:+
bn4_readvariableop_1_resource::
,bn4_fusedbatchnormv3_readvariableop_resource:<
.bn4_fusedbatchnormv3_readvariableop_1_resource:F
,ct2_conv2d_transpose_readvariableop_resource:1
#ct2_biasadd_readvariableop_resource:)
bn5_readvariableop_resource:+
bn5_readvariableop_1_resource::
,bn5_fusedbatchnormv3_readvariableop_resource:<
.bn5_fusedbatchnormv3_readvariableop_1_resource:F
,ct3_conv2d_transpose_readvariableop_resource: 1
#ct3_biasadd_readvariableop_resource: )
bn6_readvariableop_resource: +
bn6_readvariableop_1_resource: :
,bn6_fusedbatchnormv3_readvariableop_resource: <
.bn6_fusedbatchnormv3_readvariableop_1_resource: F
,ct4_conv2d_transpose_readvariableop_resource: 1
#ct4_biasadd_readvariableop_resource:
identityѕбbn1/AssignNewValueбbn1/AssignNewValue_1б#bn1/FusedBatchNormV3/ReadVariableOpб%bn1/FusedBatchNormV3/ReadVariableOp_1бbn1/ReadVariableOpбbn1/ReadVariableOp_1бbn2/AssignNewValueбbn2/AssignNewValue_1б#bn2/FusedBatchNormV3/ReadVariableOpб%bn2/FusedBatchNormV3/ReadVariableOp_1бbn2/ReadVariableOpбbn2/ReadVariableOp_1бbn3/AssignNewValueбbn3/AssignNewValue_1б#bn3/FusedBatchNormV3/ReadVariableOpб%bn3/FusedBatchNormV3/ReadVariableOp_1бbn3/ReadVariableOpбbn3/ReadVariableOp_1бbn4/AssignNewValueбbn4/AssignNewValue_1б#bn4/FusedBatchNormV3/ReadVariableOpб%bn4/FusedBatchNormV3/ReadVariableOp_1бbn4/ReadVariableOpбbn4/ReadVariableOp_1бbn5/AssignNewValueбbn5/AssignNewValue_1б#bn5/FusedBatchNormV3/ReadVariableOpб%bn5/FusedBatchNormV3/ReadVariableOp_1бbn5/ReadVariableOpбbn5/ReadVariableOp_1бbn6/AssignNewValueбbn6/AssignNewValue_1б#bn6/FusedBatchNormV3/ReadVariableOpб%bn6/FusedBatchNormV3/ReadVariableOp_1бbn6/ReadVariableOpбbn6/ReadVariableOp_1бc1/BiasAdd/ReadVariableOpбc1/Conv2D/ReadVariableOpбc2/BiasAdd/ReadVariableOpбc2/Conv2D/ReadVariableOpбc3/BiasAdd/ReadVariableOpбc3/Conv2D/ReadVariableOpбct1/BiasAdd/ReadVariableOpб#ct1/conv2d_transpose/ReadVariableOpбct2/BiasAdd/ReadVariableOpб#ct2/conv2d_transpose/ReadVariableOpбct3/BiasAdd/ReadVariableOpб#ct3/conv2d_transpose/ReadVariableOpбct4/BiasAdd/ReadVariableOpб#ct4/conv2d_transpose/ReadVariableOpѓ
c1/Conv2D/ReadVariableOpReadVariableOp!c1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0А
	c1/Conv2DConv2Dinputs c1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђ *
paddingSAME*
strides
x
c1/BiasAdd/ReadVariableOpReadVariableOp"c1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ѕ

c1/BiasAddBiasAddc1/Conv2D:output:0!c1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђ ц
max_pooling2d_12/MaxPoolMaxPoolc1/BiasAdd:output:0*/
_output_shapes
:         @@ *
ksize
*
paddingSAME*
strides
j
bn1/ReadVariableOpReadVariableOpbn1_readvariableop_resource*
_output_shapes
: *
dtype0n
bn1/ReadVariableOp_1ReadVariableOpbn1_readvariableop_1_resource*
_output_shapes
: *
dtype0ї
#bn1/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0љ
%bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0з
bn1/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_12/MaxPool:output:0bn1/ReadVariableOp:value:0bn1/ReadVariableOp_1:value:0+bn1/FusedBatchNormV3/ReadVariableOp:value:0-bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@ : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<└
bn1/AssignNewValueAssignVariableOp,bn1_fusedbatchnormv3_readvariableop_resource!bn1/FusedBatchNormV3:batch_mean:0$^bn1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╩
bn1/AssignNewValue_1AssignVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource%bn1/FusedBatchNormV3:batch_variance:0&^bn1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0u
LR1/LeakyRelu	LeakyRelubn1/FusedBatchNormV3:y:0*/
_output_shapes
:         @@ *
alpha%џЎЎ>ѓ
c2/Conv2D/ReadVariableOpReadVariableOp!c2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0┤
	c2/Conv2DConv2DLR1/LeakyRelu:activations:0 c2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
x
c2/BiasAdd/ReadVariableOpReadVariableOp"c2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0є

c2/BiasAddBiasAddc2/Conv2D:output:0!c2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           ц
max_pooling2d_13/MaxPoolMaxPoolc2/BiasAdd:output:0*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
j
bn2/ReadVariableOpReadVariableOpbn2_readvariableop_resource*
_output_shapes
:*
dtype0n
bn2/ReadVariableOp_1ReadVariableOpbn2_readvariableop_1_resource*
_output_shapes
:*
dtype0ї
#bn2/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0љ
%bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0з
bn2/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_13/MaxPool:output:0bn2/ReadVariableOp:value:0bn2/ReadVariableOp_1:value:0+bn2/FusedBatchNormV3/ReadVariableOp:value:0-bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<└
bn2/AssignNewValueAssignVariableOp,bn2_fusedbatchnormv3_readvariableop_resource!bn2/FusedBatchNormV3:batch_mean:0$^bn2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╩
bn2/AssignNewValue_1AssignVariableOp.bn2_fusedbatchnormv3_readvariableop_1_resource%bn2/FusedBatchNormV3:batch_variance:0&^bn2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0u
LR2/LeakyRelu	LeakyRelubn2/FusedBatchNormV3:y:0*/
_output_shapes
:         *
alpha%џЎЎ>ѓ
c3/Conv2D/ReadVariableOpReadVariableOp!c3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┤
	c3/Conv2DConv2DLR2/LeakyRelu:activations:0 c3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
x
c3/BiasAdd/ReadVariableOpReadVariableOp"c3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0є

c3/BiasAddBiasAddc3/Conv2D:output:0!c3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ц
max_pooling2d_14/MaxPoolMaxPoolc3/BiasAdd:output:0*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
j
bn3/ReadVariableOpReadVariableOpbn3_readvariableop_resource*
_output_shapes
:*
dtype0n
bn3/ReadVariableOp_1ReadVariableOpbn3_readvariableop_1_resource*
_output_shapes
:*
dtype0ї
#bn3/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0љ
%bn3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0з
bn3/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_14/MaxPool:output:0bn3/ReadVariableOp:value:0bn3/ReadVariableOp_1:value:0+bn3/FusedBatchNormV3/ReadVariableOp:value:0-bn3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<└
bn3/AssignNewValueAssignVariableOp,bn3_fusedbatchnormv3_readvariableop_resource!bn3/FusedBatchNormV3:batch_mean:0$^bn3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╩
bn3/AssignNewValue_1AssignVariableOp.bn3_fusedbatchnormv3_readvariableop_1_resource%bn3/FusedBatchNormV3:batch_variance:0&^bn3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0u
LR3/LeakyRelu	LeakyRelubn3/FusedBatchNormV3:y:0*/
_output_shapes
:         *
alpha%џЎЎ>T
	ct1/ShapeShapeLR3/LeakyRelu:activations:0*
T0*
_output_shapes
:a
ct1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
ct1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
ct1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
ct1/strided_sliceStridedSlicect1/Shape:output:0 ct1/strided_slice/stack:output:0"ct1/strided_slice/stack_1:output:0"ct1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
ct1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :M
ct1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :M
ct1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ю
	ct1/stackPackct1/strided_slice:output:0ct1/stack/1:output:0ct1/stack/2:output:0ct1/stack/3:output:0*
N*
T0*
_output_shapes
:c
ct1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
ct1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
ct1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
ct1/strided_slice_1StridedSlicect1/stack:output:0"ct1/strided_slice_1/stack:output:0$ct1/strided_slice_1/stack_1:output:0$ct1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskў
#ct1/conv2d_transpose/ReadVariableOpReadVariableOp,ct1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0в
ct1/conv2d_transposeConv2DBackpropInputct1/stack:output:0+ct1/conv2d_transpose/ReadVariableOp:value:0LR3/LeakyRelu:activations:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
z
ct1/BiasAdd/ReadVariableOpReadVariableOp#ct1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Њ
ct1/BiasAddBiasAddct1/conv2d_transpose:output:0"ct1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         d
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      f
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      {
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:─
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborct1/BiasAdd:output:0up_sampling2d/mul:z:0*
T0*/
_output_shapes
:         *
half_pixel_centers(j
bn4/ReadVariableOpReadVariableOpbn4_readvariableop_resource*
_output_shapes
:*
dtype0n
bn4/ReadVariableOp_1ReadVariableOpbn4_readvariableop_1_resource*
_output_shapes
:*
dtype0ї
#bn4/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0љ
%bn4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ї
bn4/FusedBatchNormV3FusedBatchNormV3;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0bn4/ReadVariableOp:value:0bn4/ReadVariableOp_1:value:0+bn4/FusedBatchNormV3/ReadVariableOp:value:0-bn4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<└
bn4/AssignNewValueAssignVariableOp,bn4_fusedbatchnormv3_readvariableop_resource!bn4/FusedBatchNormV3:batch_mean:0$^bn4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╩
bn4/AssignNewValue_1AssignVariableOp.bn4_fusedbatchnormv3_readvariableop_1_resource%bn4/FusedBatchNormV3:batch_variance:0&^bn4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0u
LR4/LeakyRelu	LeakyRelubn4/FusedBatchNormV3:y:0*/
_output_shapes
:         *
alpha%џЎЎ>T
	ct2/ShapeShapeLR4/LeakyRelu:activations:0*
T0*
_output_shapes
:a
ct2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
ct2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
ct2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
ct2/strided_sliceStridedSlicect2/Shape:output:0 ct2/strided_slice/stack:output:0"ct2/strided_slice/stack_1:output:0"ct2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
ct2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : M
ct2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : M
ct2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ю
	ct2/stackPackct2/strided_slice:output:0ct2/stack/1:output:0ct2/stack/2:output:0ct2/stack/3:output:0*
N*
T0*
_output_shapes
:c
ct2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
ct2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
ct2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
ct2/strided_slice_1StridedSlicect2/stack:output:0"ct2/strided_slice_1/stack:output:0$ct2/strided_slice_1/stack_1:output:0$ct2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskў
#ct2/conv2d_transpose/ReadVariableOpReadVariableOp,ct2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0в
ct2/conv2d_transposeConv2DBackpropInputct2/stack:output:0+ct2/conv2d_transpose/ReadVariableOp:value:0LR4/LeakyRelu:activations:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
z
ct2/BiasAdd/ReadVariableOpReadVariableOp#ct2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Њ
ct2/BiasAddBiasAddct2/conv2d_transpose:output:0"ct2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           f
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ђ
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:╚
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborct2/BiasAdd:output:0up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:         @@*
half_pixel_centers(j
bn5/ReadVariableOpReadVariableOpbn5_readvariableop_resource*
_output_shapes
:*
dtype0n
bn5/ReadVariableOp_1ReadVariableOpbn5_readvariableop_1_resource*
_output_shapes
:*
dtype0ї
#bn5/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn5_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0љ
%bn5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ј
bn5/FusedBatchNormV3FusedBatchNormV3=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0bn5/ReadVariableOp:value:0bn5/ReadVariableOp_1:value:0+bn5/FusedBatchNormV3/ReadVariableOp:value:0-bn5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@:::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<└
bn5/AssignNewValueAssignVariableOp,bn5_fusedbatchnormv3_readvariableop_resource!bn5/FusedBatchNormV3:batch_mean:0$^bn5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╩
bn5/AssignNewValue_1AssignVariableOp.bn5_fusedbatchnormv3_readvariableop_1_resource%bn5/FusedBatchNormV3:batch_variance:0&^bn5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0u
LR5/LeakyRelu	LeakyRelubn5/FusedBatchNormV3:y:0*/
_output_shapes
:         @@*
alpha%џЎЎ>T
	ct3/ShapeShapeLR5/LeakyRelu:activations:0*
T0*
_output_shapes
:a
ct3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
ct3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
ct3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
ct3/strided_sliceStridedSlicect3/Shape:output:0 ct3/strided_slice/stack:output:0"ct3/strided_slice/stack_1:output:0"ct3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
ct3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@M
ct3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@M
ct3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Ю
	ct3/stackPackct3/strided_slice:output:0ct3/stack/1:output:0ct3/stack/2:output:0ct3/stack/3:output:0*
N*
T0*
_output_shapes
:c
ct3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
ct3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
ct3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
ct3/strided_slice_1StridedSlicect3/stack:output:0"ct3/strided_slice_1/stack:output:0$ct3/strided_slice_1/stack_1:output:0$ct3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskў
#ct3/conv2d_transpose/ReadVariableOpReadVariableOp,ct3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0в
ct3/conv2d_transposeConv2DBackpropInputct3/stack:output:0+ct3/conv2d_transpose/ReadVariableOp:value:0LR5/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
z
ct3/BiasAdd/ReadVariableOpReadVariableOp#ct3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
ct3/BiasAddBiasAddct3/conv2d_transpose:output:0"ct3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ f
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   h
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ђ
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:╩
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborct3/BiasAdd:output:0up_sampling2d_2/mul:z:0*
T0*1
_output_shapes
:         ђђ *
half_pixel_centers(j
bn6/ReadVariableOpReadVariableOpbn6_readvariableop_resource*
_output_shapes
: *
dtype0n
bn6/ReadVariableOp_1ReadVariableOpbn6_readvariableop_1_resource*
_output_shapes
: *
dtype0ї
#bn6/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0љ
%bn6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Љ
bn6/FusedBatchNormV3FusedBatchNormV3=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0bn6/ReadVariableOp:value:0bn6/ReadVariableOp_1:value:0+bn6/FusedBatchNormV3/ReadVariableOp:value:0-bn6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ђђ : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<└
bn6/AssignNewValueAssignVariableOp,bn6_fusedbatchnormv3_readvariableop_resource!bn6/FusedBatchNormV3:batch_mean:0$^bn6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╩
bn6/AssignNewValue_1AssignVariableOp.bn6_fusedbatchnormv3_readvariableop_1_resource%bn6/FusedBatchNormV3:batch_variance:0&^bn6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0w
LR6/LeakyRelu	LeakyRelubn6/FusedBatchNormV3:y:0*1
_output_shapes
:         ђђ *
alpha%џЎЎ>T
	ct4/ShapeShapeLR6/LeakyRelu:activations:0*
T0*
_output_shapes
:a
ct4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
ct4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
ct4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
ct4/strided_sliceStridedSlicect4/Shape:output:0 ct4/strided_slice/stack:output:0"ct4/strided_slice/stack_1:output:0"ct4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
ct4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :ђN
ct4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :ђM
ct4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ю
	ct4/stackPackct4/strided_slice:output:0ct4/stack/1:output:0ct4/stack/2:output:0ct4/stack/3:output:0*
N*
T0*
_output_shapes
:c
ct4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
ct4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
ct4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
ct4/strided_slice_1StridedSlicect4/stack:output:0"ct4/strided_slice_1/stack:output:0$ct4/strided_slice_1/stack_1:output:0$ct4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskў
#ct4/conv2d_transpose/ReadVariableOpReadVariableOp,ct4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0ь
ct4/conv2d_transposeConv2DBackpropInputct4/stack:output:0+ct4/conv2d_transpose/ReadVariableOp:value:0LR6/LeakyRelu:activations:0*
T0*1
_output_shapes
:         ђђ*
paddingSAME*
strides
z
ct4/BiasAdd/ReadVariableOpReadVariableOp#ct4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ћ
ct4/BiasAddBiasAddct4/conv2d_transpose:output:0"ct4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђh
ct4/SigmoidSigmoidct4/BiasAdd:output:0*
T0*1
_output_shapes
:         ђђh
IdentityIdentityct4/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:         ђђ█
NoOpNoOp^bn1/AssignNewValue^bn1/AssignNewValue_1$^bn1/FusedBatchNormV3/ReadVariableOp&^bn1/FusedBatchNormV3/ReadVariableOp_1^bn1/ReadVariableOp^bn1/ReadVariableOp_1^bn2/AssignNewValue^bn2/AssignNewValue_1$^bn2/FusedBatchNormV3/ReadVariableOp&^bn2/FusedBatchNormV3/ReadVariableOp_1^bn2/ReadVariableOp^bn2/ReadVariableOp_1^bn3/AssignNewValue^bn3/AssignNewValue_1$^bn3/FusedBatchNormV3/ReadVariableOp&^bn3/FusedBatchNormV3/ReadVariableOp_1^bn3/ReadVariableOp^bn3/ReadVariableOp_1^bn4/AssignNewValue^bn4/AssignNewValue_1$^bn4/FusedBatchNormV3/ReadVariableOp&^bn4/FusedBatchNormV3/ReadVariableOp_1^bn4/ReadVariableOp^bn4/ReadVariableOp_1^bn5/AssignNewValue^bn5/AssignNewValue_1$^bn5/FusedBatchNormV3/ReadVariableOp&^bn5/FusedBatchNormV3/ReadVariableOp_1^bn5/ReadVariableOp^bn5/ReadVariableOp_1^bn6/AssignNewValue^bn6/AssignNewValue_1$^bn6/FusedBatchNormV3/ReadVariableOp&^bn6/FusedBatchNormV3/ReadVariableOp_1^bn6/ReadVariableOp^bn6/ReadVariableOp_1^c1/BiasAdd/ReadVariableOp^c1/Conv2D/ReadVariableOp^c2/BiasAdd/ReadVariableOp^c2/Conv2D/ReadVariableOp^c3/BiasAdd/ReadVariableOp^c3/Conv2D/ReadVariableOp^ct1/BiasAdd/ReadVariableOp$^ct1/conv2d_transpose/ReadVariableOp^ct2/BiasAdd/ReadVariableOp$^ct2/conv2d_transpose/ReadVariableOp^ct3/BiasAdd/ReadVariableOp$^ct3/conv2d_transpose/ReadVariableOp^ct4/BiasAdd/ReadVariableOp$^ct4/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:         ђђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
bn1/AssignNewValuebn1/AssignNewValue2,
bn1/AssignNewValue_1bn1/AssignNewValue_12J
#bn1/FusedBatchNormV3/ReadVariableOp#bn1/FusedBatchNormV3/ReadVariableOp2N
%bn1/FusedBatchNormV3/ReadVariableOp_1%bn1/FusedBatchNormV3/ReadVariableOp_12(
bn1/ReadVariableOpbn1/ReadVariableOp2,
bn1/ReadVariableOp_1bn1/ReadVariableOp_12(
bn2/AssignNewValuebn2/AssignNewValue2,
bn2/AssignNewValue_1bn2/AssignNewValue_12J
#bn2/FusedBatchNormV3/ReadVariableOp#bn2/FusedBatchNormV3/ReadVariableOp2N
%bn2/FusedBatchNormV3/ReadVariableOp_1%bn2/FusedBatchNormV3/ReadVariableOp_12(
bn2/ReadVariableOpbn2/ReadVariableOp2,
bn2/ReadVariableOp_1bn2/ReadVariableOp_12(
bn3/AssignNewValuebn3/AssignNewValue2,
bn3/AssignNewValue_1bn3/AssignNewValue_12J
#bn3/FusedBatchNormV3/ReadVariableOp#bn3/FusedBatchNormV3/ReadVariableOp2N
%bn3/FusedBatchNormV3/ReadVariableOp_1%bn3/FusedBatchNormV3/ReadVariableOp_12(
bn3/ReadVariableOpbn3/ReadVariableOp2,
bn3/ReadVariableOp_1bn3/ReadVariableOp_12(
bn4/AssignNewValuebn4/AssignNewValue2,
bn4/AssignNewValue_1bn4/AssignNewValue_12J
#bn4/FusedBatchNormV3/ReadVariableOp#bn4/FusedBatchNormV3/ReadVariableOp2N
%bn4/FusedBatchNormV3/ReadVariableOp_1%bn4/FusedBatchNormV3/ReadVariableOp_12(
bn4/ReadVariableOpbn4/ReadVariableOp2,
bn4/ReadVariableOp_1bn4/ReadVariableOp_12(
bn5/AssignNewValuebn5/AssignNewValue2,
bn5/AssignNewValue_1bn5/AssignNewValue_12J
#bn5/FusedBatchNormV3/ReadVariableOp#bn5/FusedBatchNormV3/ReadVariableOp2N
%bn5/FusedBatchNormV3/ReadVariableOp_1%bn5/FusedBatchNormV3/ReadVariableOp_12(
bn5/ReadVariableOpbn5/ReadVariableOp2,
bn5/ReadVariableOp_1bn5/ReadVariableOp_12(
bn6/AssignNewValuebn6/AssignNewValue2,
bn6/AssignNewValue_1bn6/AssignNewValue_12J
#bn6/FusedBatchNormV3/ReadVariableOp#bn6/FusedBatchNormV3/ReadVariableOp2N
%bn6/FusedBatchNormV3/ReadVariableOp_1%bn6/FusedBatchNormV3/ReadVariableOp_12(
bn6/ReadVariableOpbn6/ReadVariableOp2,
bn6/ReadVariableOp_1bn6/ReadVariableOp_126
c1/BiasAdd/ReadVariableOpc1/BiasAdd/ReadVariableOp24
c1/Conv2D/ReadVariableOpc1/Conv2D/ReadVariableOp26
c2/BiasAdd/ReadVariableOpc2/BiasAdd/ReadVariableOp24
c2/Conv2D/ReadVariableOpc2/Conv2D/ReadVariableOp26
c3/BiasAdd/ReadVariableOpc3/BiasAdd/ReadVariableOp24
c3/Conv2D/ReadVariableOpc3/Conv2D/ReadVariableOp28
ct1/BiasAdd/ReadVariableOpct1/BiasAdd/ReadVariableOp2J
#ct1/conv2d_transpose/ReadVariableOp#ct1/conv2d_transpose/ReadVariableOp28
ct2/BiasAdd/ReadVariableOpct2/BiasAdd/ReadVariableOp2J
#ct2/conv2d_transpose/ReadVariableOp#ct2/conv2d_transpose/ReadVariableOp28
ct3/BiasAdd/ReadVariableOpct3/BiasAdd/ReadVariableOp2J
#ct3/conv2d_transpose/ReadVariableOp#ct3/conv2d_transpose/ReadVariableOp28
ct4/BiasAdd/ReadVariableOpct4/BiasAdd/ReadVariableOp2J
#ct4/conv2d_transpose/ReadVariableOp#ct4/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
Э
Z
>__inference_LR1_layer_call_and_return_conditional_losses_12475

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         @@ *
alpha%џЎЎ>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         @@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@ :W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
Є
Г
>__inference_bn6_layer_call_and_return_conditional_losses_10737

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ђђ : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0m
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*1
_output_shapes
:         ђђ н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         ђђ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
┤
I
-__inference_up_sampling2d_layer_call_fn_12900

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_9826Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ф
g
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_10219

inputs
identityє
MaxPoolMaxPoolinputs*/
_output_shapes
:         @@ *
ksize
*
paddingSAME*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         @@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ђђ :Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
а

Ш
=__inference_c2_layer_call_and_return_conditional_losses_10265

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:           w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
Ц
Й
#__inference_bn2_layer_call_fn_12553

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_10294w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
к
г
=__inference_bn1_layer_call_and_return_conditional_losses_9603

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Э
Z
>__inference_LR5_layer_call_and_return_conditional_losses_10507

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         @@*
alpha%џЎЎ>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         @@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
 
Г
>__inference_bn5_layer_call_and_return_conditional_losses_13287

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0─
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@:::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @@н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
И
ѕ
=__inference_bn4_layer_call_and_return_conditional_losses_9851

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
К
І
>__inference_ct3_layer_call_and_return_conditional_losses_10531

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :@I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :@I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : Ѕ
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0╩
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Є
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         @@ Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ы
Ѕ
>__inference_bn3_layer_call_and_return_conditional_losses_12793

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Х
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
в
Й
#__inference_bn4_layer_call_fn_12951

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_9882Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╠
K
/__inference_up_sampling2d_1_layer_call_fn_13143

inputs
identity└
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_10473h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           :W S
/
_output_shapes
:           
 
_user_specified_nameinputs
┤
?
#__inference_LR5_layer_call_fn_13292

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR5_layer_call_and_return_conditional_losses_10507h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
В
Й
#__inference_bn6_layer_call_fn_13427

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn6_layer_call_and_return_conditional_losses_10136Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
щ
Ѕ
>__inference_bn6_layer_call_and_return_conditional_losses_10563

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0И
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ђђ : : : : :*
epsilon%oЃ:*
is_training( m
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*1
_output_shapes
:         ђђ ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         ђђ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
р
ў
#__inference_ct3_layer_call_fn_13315

inputs!
unknown: 
	unknown_0: 
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct3_layer_call_and_return_conditional_losses_10531w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Ј
c
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_9826

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:х
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(ў
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
░
І
>__inference_ct4_layer_call_and_return_conditional_losses_10603

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskJ
stack/1Const*
_output_shapes
: *
dtype0*
value
B :ђJ
stack/2Const*
_output_shapes
: *
dtype0*
value
B :ђI
stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ѕ
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0╠
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:         ђђ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ѕ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђ`
SigmoidSigmoidBiasAdd:output:0*
T0*1
_output_shapes
:         ђђd
IdentityIdentitySigmoid:y:0^NoOp*
T0*1
_output_shapes
:         ђђЂ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
фb
т
B__inference_model_3_layer_call_and_return_conditional_losses_11643
img"
c1_11541: 
c1_11543: 
	bn1_11547: 
	bn1_11549: 
	bn1_11551: 
	bn1_11553: "
c2_11557: 
c2_11559:
	bn2_11563:
	bn2_11565:
	bn2_11567:
	bn2_11569:"
c3_11573:
c3_11575:
	bn3_11579:
	bn3_11581:
	bn3_11583:
	bn3_11585:#
	ct1_11589:
	ct1_11591:
	bn4_11595:
	bn4_11597:
	bn4_11599:
	bn4_11601:#
	ct2_11605:
	ct2_11607:
	bn5_11611:
	bn5_11613:
	bn5_11615:
	bn5_11617:#
	ct3_11621: 
	ct3_11623: 
	bn6_11627: 
	bn6_11629: 
	bn6_11631: 
	bn6_11633: #
	ct4_11637: 
	ct4_11639:
identityѕбbn1/StatefulPartitionedCallбbn2/StatefulPartitionedCallбbn3/StatefulPartitionedCallбbn4/StatefulPartitionedCallбbn5/StatefulPartitionedCallбbn6/StatefulPartitionedCallбc1/StatefulPartitionedCallбc2/StatefulPartitionedCallбc3/StatefulPartitionedCallбct1/StatefulPartitionedCallбct2/StatefulPartitionedCallбct3/StatefulPartitionedCallбct4/StatefulPartitionedCall▀
c1/StatefulPartitionedCallStatefulPartitionedCallimgc1_11541c1_11543*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c1_layer_call_and_return_conditional_losses_10209№
 max_pooling2d_12/PartitionedCallPartitionedCall#c1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_10219Ъ
bn1/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0	bn1_11547	bn1_11549	bn1_11551	bn1_11553*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_11059о
LR1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR1_layer_call_and_return_conditional_losses_10253Ш
c2/StatefulPartitionedCallStatefulPartitionedCallLR1/PartitionedCall:output:0c2_11557c2_11559*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c2_layer_call_and_return_conditional_losses_10265№
 max_pooling2d_13/PartitionedCallPartitionedCall#c2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_10275Ъ
bn2/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0	bn2_11563	bn2_11565	bn2_11567	bn2_11569*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_10994о
LR2/PartitionedCallPartitionedCall$bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR2_layer_call_and_return_conditional_losses_10309Ш
c3/StatefulPartitionedCallStatefulPartitionedCallLR2/PartitionedCall:output:0c3_11573c3_11575*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c3_layer_call_and_return_conditional_losses_10321№
 max_pooling2d_14/PartitionedCallPartitionedCall#c3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_10331Ъ
bn3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0	bn3_11579	bn3_11581	bn3_11583	bn3_11585*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_10929о
LR3/PartitionedCallPartitionedCall$bn3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR3_layer_call_and_return_conditional_losses_10365Щ
ct1/StatefulPartitionedCallStatefulPartitionedCallLR3/PartitionedCall:output:0	ct1_11589	ct1_11591*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct1_layer_call_and_return_conditional_losses_10389Ж
up_sampling2d/PartitionedCallPartitionedCall$ct1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_10402ю
bn4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0	bn4_11595	bn4_11597	bn4_11599	bn4_11601*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn4_layer_call_and_return_conditional_losses_10865о
LR4/PartitionedCallPartitionedCall$bn4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR4_layer_call_and_return_conditional_losses_10436Щ
ct2/StatefulPartitionedCallStatefulPartitionedCallLR4/PartitionedCall:output:0	ct2_11605	ct2_11607*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct2_layer_call_and_return_conditional_losses_10460Ь
up_sampling2d_1/PartitionedCallPartitionedCall$ct2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_10473ъ
bn5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0	bn5_11611	bn5_11613	bn5_11615	bn5_11617*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn5_layer_call_and_return_conditional_losses_10801о
LR5/PartitionedCallPartitionedCall$bn5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR5_layer_call_and_return_conditional_losses_10507Щ
ct3/StatefulPartitionedCallStatefulPartitionedCallLR5/PartitionedCall:output:0	ct3_11621	ct3_11623*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct3_layer_call_and_return_conditional_losses_10531­
up_sampling2d_2/PartitionedCallPartitionedCall$ct3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_10544а
bn6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0	bn6_11627	bn6_11629	bn6_11631	bn6_11633*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn6_layer_call_and_return_conditional_losses_10737п
LR6/PartitionedCallPartitionedCall$bn6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR6_layer_call_and_return_conditional_losses_10578Ч
ct4/StatefulPartitionedCallStatefulPartitionedCallLR6/PartitionedCall:output:0	ct4_11637	ct4_11639*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct4_layer_call_and_return_conditional_losses_10603}
IdentityIdentity$ct4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ╔
NoOpNoOp^bn1/StatefulPartitionedCall^bn2/StatefulPartitionedCall^bn3/StatefulPartitionedCall^bn4/StatefulPartitionedCall^bn5/StatefulPartitionedCall^bn6/StatefulPartitionedCall^c1/StatefulPartitionedCall^c2/StatefulPartitionedCall^c3/StatefulPartitionedCall^ct1/StatefulPartitionedCall^ct2/StatefulPartitionedCall^ct3/StatefulPartitionedCall^ct4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:         ђђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2:
bn2/StatefulPartitionedCallbn2/StatefulPartitionedCall2:
bn3/StatefulPartitionedCallbn3/StatefulPartitionedCall2:
bn4/StatefulPartitionedCallbn4/StatefulPartitionedCall2:
bn5/StatefulPartitionedCallbn5/StatefulPartitionedCall2:
bn6/StatefulPartitionedCallbn6/StatefulPartitionedCall28
c1/StatefulPartitionedCallc1/StatefulPartitionedCall28
c2/StatefulPartitionedCallc2/StatefulPartitionedCall28
c3/StatefulPartitionedCallc3/StatefulPartitionedCall2:
ct1/StatefulPartitionedCallct1/StatefulPartitionedCall2:
ct2/StatefulPartitionedCallct2/StatefulPartitionedCall2:
ct3/StatefulPartitionedCallct3/StatefulPartitionedCall2:
ct4/StatefulPartitionedCallct4/StatefulPartitionedCall:V R
1
_output_shapes
:         ђђ

_user_specified_nameimg
ь
Й
#__inference_bn1_layer_call_fn_12354

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_bn1_layer_call_and_return_conditional_losses_9572Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
л
K
/__inference_up_sampling2d_2_layer_call_fn_13381

inputs
identity┬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_10544j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ђђ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@ :W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
┼ 
і
=__inference_ct2_layer_call_and_return_conditional_losses_9930

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ў
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
у
Ќ
"__inference_c1_layer_call_fn_12311

inputs!
unknown: 
	unknown_0: 
identityѕбStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c1_layer_call_and_return_conditional_losses_10209y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
Б
Й
#__inference_bn1_layer_call_fn_12393

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_11059w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
┤
?
#__inference_LR1_layer_call_fn_12470

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR1_layer_call_and_return_conditional_losses_10253h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@ :W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
 
Г
>__inference_bn1_layer_call_and_return_conditional_losses_12465

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0─
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@ : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @@ н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
К
І
>__inference_ct3_layer_call_and_return_conditional_losses_13371

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :@I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :@I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : Ѕ
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0╩
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Є
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         @@ Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
 
Г
>__inference_bn5_layer_call_and_return_conditional_losses_10801

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0─
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@:::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @@н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
╬
L
0__inference_max_pooling2d_14_layer_call_fn_12677

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_10331h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Б
Й
#__inference_bn2_layer_call_fn_12566

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_10994w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ь
Й
#__inference_bn2_layer_call_fn_12527

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_bn2_layer_call_and_return_conditional_losses_9648Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
К
Г
>__inference_bn4_layer_call_and_return_conditional_losses_13013

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
љ
d
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_12917

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:х
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(ў
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Э
Z
>__inference_LR2_layer_call_and_return_conditional_losses_10309

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         *
alpha%џЎЎ>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
а

Ш
=__inference_c3_layer_call_and_return_conditional_losses_12667

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
њ
f
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_13155

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:х
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(ў
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
њ
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_12682

inputs
identityА
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
К
Г
>__inference_bn6_layer_call_and_return_conditional_losses_10136

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Г
Й
#__inference_bn6_layer_call_fn_13440

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn6_layer_call_and_return_conditional_losses_10563y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         ђђ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
╣
K
/__inference_up_sampling2d_2_layer_call_fn_13376

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_10080Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
Й
#__inference_bn6_layer_call_fn_13453

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn6_layer_call_and_return_conditional_losses_10737y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         ђђ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
К
Г
>__inference_bn6_layer_call_and_return_conditional_losses_13489

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
к 
І
>__inference_ct3_layer_call_and_return_conditional_losses_13348

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                            *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ў
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                            Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╝
?
#__inference_LR6_layer_call_fn_13530

inputs
identityХ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR6_layer_call_and_return_conditional_losses_10578j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ђђ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ђђ :Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
║
L
0__inference_max_pooling2d_14_layer_call_fn_12672

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_9699Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
К
І
>__inference_ct1_layer_call_and_return_conditional_losses_10389

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ѕ
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0╩
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:         *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ив
═
__inference__wrapped_model_9538
imgC
)model_3_c1_conv2d_readvariableop_resource: 8
*model_3_c1_biasadd_readvariableop_resource: 1
#model_3_bn1_readvariableop_resource: 3
%model_3_bn1_readvariableop_1_resource: B
4model_3_bn1_fusedbatchnormv3_readvariableop_resource: D
6model_3_bn1_fusedbatchnormv3_readvariableop_1_resource: C
)model_3_c2_conv2d_readvariableop_resource: 8
*model_3_c2_biasadd_readvariableop_resource:1
#model_3_bn2_readvariableop_resource:3
%model_3_bn2_readvariableop_1_resource:B
4model_3_bn2_fusedbatchnormv3_readvariableop_resource:D
6model_3_bn2_fusedbatchnormv3_readvariableop_1_resource:C
)model_3_c3_conv2d_readvariableop_resource:8
*model_3_c3_biasadd_readvariableop_resource:1
#model_3_bn3_readvariableop_resource:3
%model_3_bn3_readvariableop_1_resource:B
4model_3_bn3_fusedbatchnormv3_readvariableop_resource:D
6model_3_bn3_fusedbatchnormv3_readvariableop_1_resource:N
4model_3_ct1_conv2d_transpose_readvariableop_resource:9
+model_3_ct1_biasadd_readvariableop_resource:1
#model_3_bn4_readvariableop_resource:3
%model_3_bn4_readvariableop_1_resource:B
4model_3_bn4_fusedbatchnormv3_readvariableop_resource:D
6model_3_bn4_fusedbatchnormv3_readvariableop_1_resource:N
4model_3_ct2_conv2d_transpose_readvariableop_resource:9
+model_3_ct2_biasadd_readvariableop_resource:1
#model_3_bn5_readvariableop_resource:3
%model_3_bn5_readvariableop_1_resource:B
4model_3_bn5_fusedbatchnormv3_readvariableop_resource:D
6model_3_bn5_fusedbatchnormv3_readvariableop_1_resource:N
4model_3_ct3_conv2d_transpose_readvariableop_resource: 9
+model_3_ct3_biasadd_readvariableop_resource: 1
#model_3_bn6_readvariableop_resource: 3
%model_3_bn6_readvariableop_1_resource: B
4model_3_bn6_fusedbatchnormv3_readvariableop_resource: D
6model_3_bn6_fusedbatchnormv3_readvariableop_1_resource: N
4model_3_ct4_conv2d_transpose_readvariableop_resource: 9
+model_3_ct4_biasadd_readvariableop_resource:
identityѕб+model_3/bn1/FusedBatchNormV3/ReadVariableOpб-model_3/bn1/FusedBatchNormV3/ReadVariableOp_1бmodel_3/bn1/ReadVariableOpбmodel_3/bn1/ReadVariableOp_1б+model_3/bn2/FusedBatchNormV3/ReadVariableOpб-model_3/bn2/FusedBatchNormV3/ReadVariableOp_1бmodel_3/bn2/ReadVariableOpбmodel_3/bn2/ReadVariableOp_1б+model_3/bn3/FusedBatchNormV3/ReadVariableOpб-model_3/bn3/FusedBatchNormV3/ReadVariableOp_1бmodel_3/bn3/ReadVariableOpбmodel_3/bn3/ReadVariableOp_1б+model_3/bn4/FusedBatchNormV3/ReadVariableOpб-model_3/bn4/FusedBatchNormV3/ReadVariableOp_1бmodel_3/bn4/ReadVariableOpбmodel_3/bn4/ReadVariableOp_1б+model_3/bn5/FusedBatchNormV3/ReadVariableOpб-model_3/bn5/FusedBatchNormV3/ReadVariableOp_1бmodel_3/bn5/ReadVariableOpбmodel_3/bn5/ReadVariableOp_1б+model_3/bn6/FusedBatchNormV3/ReadVariableOpб-model_3/bn6/FusedBatchNormV3/ReadVariableOp_1бmodel_3/bn6/ReadVariableOpбmodel_3/bn6/ReadVariableOp_1б!model_3/c1/BiasAdd/ReadVariableOpб model_3/c1/Conv2D/ReadVariableOpб!model_3/c2/BiasAdd/ReadVariableOpб model_3/c2/Conv2D/ReadVariableOpб!model_3/c3/BiasAdd/ReadVariableOpб model_3/c3/Conv2D/ReadVariableOpб"model_3/ct1/BiasAdd/ReadVariableOpб+model_3/ct1/conv2d_transpose/ReadVariableOpб"model_3/ct2/BiasAdd/ReadVariableOpб+model_3/ct2/conv2d_transpose/ReadVariableOpб"model_3/ct3/BiasAdd/ReadVariableOpб+model_3/ct3/conv2d_transpose/ReadVariableOpб"model_3/ct4/BiasAdd/ReadVariableOpб+model_3/ct4/conv2d_transpose/ReadVariableOpњ
 model_3/c1/Conv2D/ReadVariableOpReadVariableOp)model_3_c1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0«
model_3/c1/Conv2DConv2Dimg(model_3/c1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђ *
paddingSAME*
strides
ѕ
!model_3/c1/BiasAdd/ReadVariableOpReadVariableOp*model_3_c1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0а
model_3/c1/BiasAddBiasAddmodel_3/c1/Conv2D:output:0)model_3/c1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђ ┤
 model_3/max_pooling2d_12/MaxPoolMaxPoolmodel_3/c1/BiasAdd:output:0*/
_output_shapes
:         @@ *
ksize
*
paddingSAME*
strides
z
model_3/bn1/ReadVariableOpReadVariableOp#model_3_bn1_readvariableop_resource*
_output_shapes
: *
dtype0~
model_3/bn1/ReadVariableOp_1ReadVariableOp%model_3_bn1_readvariableop_1_resource*
_output_shapes
: *
dtype0ю
+model_3/bn1/FusedBatchNormV3/ReadVariableOpReadVariableOp4model_3_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0а
-model_3/bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6model_3_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ћ
model_3/bn1/FusedBatchNormV3FusedBatchNormV3)model_3/max_pooling2d_12/MaxPool:output:0"model_3/bn1/ReadVariableOp:value:0$model_3/bn1/ReadVariableOp_1:value:03model_3/bn1/FusedBatchNormV3/ReadVariableOp:value:05model_3/bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@ : : : : :*
epsilon%oЃ:*
is_training( Ё
model_3/LR1/LeakyRelu	LeakyRelu model_3/bn1/FusedBatchNormV3:y:0*/
_output_shapes
:         @@ *
alpha%џЎЎ>њ
 model_3/c2/Conv2D/ReadVariableOpReadVariableOp)model_3_c2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╠
model_3/c2/Conv2DConv2D#model_3/LR1/LeakyRelu:activations:0(model_3/c2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
ѕ
!model_3/c2/BiasAdd/ReadVariableOpReadVariableOp*model_3_c2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ъ
model_3/c2/BiasAddBiasAddmodel_3/c2/Conv2D:output:0)model_3/c2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           ┤
 model_3/max_pooling2d_13/MaxPoolMaxPoolmodel_3/c2/BiasAdd:output:0*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
z
model_3/bn2/ReadVariableOpReadVariableOp#model_3_bn2_readvariableop_resource*
_output_shapes
:*
dtype0~
model_3/bn2/ReadVariableOp_1ReadVariableOp%model_3_bn2_readvariableop_1_resource*
_output_shapes
:*
dtype0ю
+model_3/bn2/FusedBatchNormV3/ReadVariableOpReadVariableOp4model_3_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0а
-model_3/bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6model_3_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ћ
model_3/bn2/FusedBatchNormV3FusedBatchNormV3)model_3/max_pooling2d_13/MaxPool:output:0"model_3/bn2/ReadVariableOp:value:0$model_3/bn2/ReadVariableOp_1:value:03model_3/bn2/FusedBatchNormV3/ReadVariableOp:value:05model_3/bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( Ё
model_3/LR2/LeakyRelu	LeakyRelu model_3/bn2/FusedBatchNormV3:y:0*/
_output_shapes
:         *
alpha%џЎЎ>њ
 model_3/c3/Conv2D/ReadVariableOpReadVariableOp)model_3_c3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╠
model_3/c3/Conv2DConv2D#model_3/LR2/LeakyRelu:activations:0(model_3/c3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
ѕ
!model_3/c3/BiasAdd/ReadVariableOpReadVariableOp*model_3_c3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ъ
model_3/c3/BiasAddBiasAddmodel_3/c3/Conv2D:output:0)model_3/c3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ┤
 model_3/max_pooling2d_14/MaxPoolMaxPoolmodel_3/c3/BiasAdd:output:0*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
z
model_3/bn3/ReadVariableOpReadVariableOp#model_3_bn3_readvariableop_resource*
_output_shapes
:*
dtype0~
model_3/bn3/ReadVariableOp_1ReadVariableOp%model_3_bn3_readvariableop_1_resource*
_output_shapes
:*
dtype0ю
+model_3/bn3/FusedBatchNormV3/ReadVariableOpReadVariableOp4model_3_bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0а
-model_3/bn3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6model_3_bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ћ
model_3/bn3/FusedBatchNormV3FusedBatchNormV3)model_3/max_pooling2d_14/MaxPool:output:0"model_3/bn3/ReadVariableOp:value:0$model_3/bn3/ReadVariableOp_1:value:03model_3/bn3/FusedBatchNormV3/ReadVariableOp:value:05model_3/bn3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( Ё
model_3/LR3/LeakyRelu	LeakyRelu model_3/bn3/FusedBatchNormV3:y:0*/
_output_shapes
:         *
alpha%џЎЎ>d
model_3/ct1/ShapeShape#model_3/LR3/LeakyRelu:activations:0*
T0*
_output_shapes
:i
model_3/ct1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model_3/ct1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model_3/ct1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
model_3/ct1/strided_sliceStridedSlicemodel_3/ct1/Shape:output:0(model_3/ct1/strided_slice/stack:output:0*model_3/ct1/strided_slice/stack_1:output:0*model_3/ct1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
model_3/ct1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :U
model_3/ct1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :U
model_3/ct1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :┼
model_3/ct1/stackPack"model_3/ct1/strided_slice:output:0model_3/ct1/stack/1:output:0model_3/ct1/stack/2:output:0model_3/ct1/stack/3:output:0*
N*
T0*
_output_shapes
:k
!model_3/ct1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model_3/ct1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model_3/ct1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
model_3/ct1/strided_slice_1StridedSlicemodel_3/ct1/stack:output:0*model_3/ct1/strided_slice_1/stack:output:0,model_3/ct1/strided_slice_1/stack_1:output:0,model_3/ct1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskе
+model_3/ct1/conv2d_transpose/ReadVariableOpReadVariableOp4model_3_ct1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0І
model_3/ct1/conv2d_transposeConv2DBackpropInputmodel_3/ct1/stack:output:03model_3/ct1/conv2d_transpose/ReadVariableOp:value:0#model_3/LR3/LeakyRelu:activations:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
і
"model_3/ct1/BiasAdd/ReadVariableOpReadVariableOp+model_3_ct1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
model_3/ct1/BiasAddBiasAdd%model_3/ct1/conv2d_transpose:output:0*model_3/ct1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         l
model_3/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      n
model_3/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Њ
model_3/up_sampling2d/mulMul$model_3/up_sampling2d/Const:output:0&model_3/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:▄
2model_3/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbormodel_3/ct1/BiasAdd:output:0model_3/up_sampling2d/mul:z:0*
T0*/
_output_shapes
:         *
half_pixel_centers(z
model_3/bn4/ReadVariableOpReadVariableOp#model_3_bn4_readvariableop_resource*
_output_shapes
:*
dtype0~
model_3/bn4/ReadVariableOp_1ReadVariableOp%model_3_bn4_readvariableop_1_resource*
_output_shapes
:*
dtype0ю
+model_3/bn4/FusedBatchNormV3/ReadVariableOpReadVariableOp4model_3_bn4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0а
-model_3/bn4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6model_3_bn4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0»
model_3/bn4/FusedBatchNormV3FusedBatchNormV3Cmodel_3/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0"model_3/bn4/ReadVariableOp:value:0$model_3/bn4/ReadVariableOp_1:value:03model_3/bn4/FusedBatchNormV3/ReadVariableOp:value:05model_3/bn4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( Ё
model_3/LR4/LeakyRelu	LeakyRelu model_3/bn4/FusedBatchNormV3:y:0*/
_output_shapes
:         *
alpha%џЎЎ>d
model_3/ct2/ShapeShape#model_3/LR4/LeakyRelu:activations:0*
T0*
_output_shapes
:i
model_3/ct2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model_3/ct2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model_3/ct2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
model_3/ct2/strided_sliceStridedSlicemodel_3/ct2/Shape:output:0(model_3/ct2/strided_slice/stack:output:0*model_3/ct2/strided_slice/stack_1:output:0*model_3/ct2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
model_3/ct2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : U
model_3/ct2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : U
model_3/ct2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :┼
model_3/ct2/stackPack"model_3/ct2/strided_slice:output:0model_3/ct2/stack/1:output:0model_3/ct2/stack/2:output:0model_3/ct2/stack/3:output:0*
N*
T0*
_output_shapes
:k
!model_3/ct2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model_3/ct2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model_3/ct2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
model_3/ct2/strided_slice_1StridedSlicemodel_3/ct2/stack:output:0*model_3/ct2/strided_slice_1/stack:output:0,model_3/ct2/strided_slice_1/stack_1:output:0,model_3/ct2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskе
+model_3/ct2/conv2d_transpose/ReadVariableOpReadVariableOp4model_3_ct2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0І
model_3/ct2/conv2d_transposeConv2DBackpropInputmodel_3/ct2/stack:output:03model_3/ct2/conv2d_transpose/ReadVariableOp:value:0#model_3/LR4/LeakyRelu:activations:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
і
"model_3/ct2/BiasAdd/ReadVariableOpReadVariableOp+model_3_ct2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
model_3/ct2/BiasAddBiasAdd%model_3/ct2/conv2d_transpose:output:0*model_3/ct2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           n
model_3/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"        p
model_3/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ў
model_3/up_sampling2d_1/mulMul&model_3/up_sampling2d_1/Const:output:0(model_3/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:Я
4model_3/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbormodel_3/ct2/BiasAdd:output:0model_3/up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:         @@*
half_pixel_centers(z
model_3/bn5/ReadVariableOpReadVariableOp#model_3_bn5_readvariableop_resource*
_output_shapes
:*
dtype0~
model_3/bn5/ReadVariableOp_1ReadVariableOp%model_3_bn5_readvariableop_1_resource*
_output_shapes
:*
dtype0ю
+model_3/bn5/FusedBatchNormV3/ReadVariableOpReadVariableOp4model_3_bn5_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0а
-model_3/bn5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6model_3_bn5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0▒
model_3/bn5/FusedBatchNormV3FusedBatchNormV3Emodel_3/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0"model_3/bn5/ReadVariableOp:value:0$model_3/bn5/ReadVariableOp_1:value:03model_3/bn5/FusedBatchNormV3/ReadVariableOp:value:05model_3/bn5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@:::::*
epsilon%oЃ:*
is_training( Ё
model_3/LR5/LeakyRelu	LeakyRelu model_3/bn5/FusedBatchNormV3:y:0*/
_output_shapes
:         @@*
alpha%џЎЎ>d
model_3/ct3/ShapeShape#model_3/LR5/LeakyRelu:activations:0*
T0*
_output_shapes
:i
model_3/ct3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model_3/ct3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model_3/ct3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
model_3/ct3/strided_sliceStridedSlicemodel_3/ct3/Shape:output:0(model_3/ct3/strided_slice/stack:output:0*model_3/ct3/strided_slice/stack_1:output:0*model_3/ct3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
model_3/ct3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@U
model_3/ct3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@U
model_3/ct3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ┼
model_3/ct3/stackPack"model_3/ct3/strided_slice:output:0model_3/ct3/stack/1:output:0model_3/ct3/stack/2:output:0model_3/ct3/stack/3:output:0*
N*
T0*
_output_shapes
:k
!model_3/ct3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model_3/ct3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model_3/ct3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
model_3/ct3/strided_slice_1StridedSlicemodel_3/ct3/stack:output:0*model_3/ct3/strided_slice_1/stack:output:0,model_3/ct3/strided_slice_1/stack_1:output:0,model_3/ct3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskе
+model_3/ct3/conv2d_transpose/ReadVariableOpReadVariableOp4model_3_ct3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0І
model_3/ct3/conv2d_transposeConv2DBackpropInputmodel_3/ct3/stack:output:03model_3/ct3/conv2d_transpose/ReadVariableOp:value:0#model_3/LR5/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
і
"model_3/ct3/BiasAdd/ReadVariableOpReadVariableOp+model_3_ct3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ф
model_3/ct3/BiasAddBiasAdd%model_3/ct3/conv2d_transpose:output:0*model_3/ct3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ n
model_3/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   p
model_3/up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ў
model_3/up_sampling2d_2/mulMul&model_3/up_sampling2d_2/Const:output:0(model_3/up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:Р
4model_3/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighbormodel_3/ct3/BiasAdd:output:0model_3/up_sampling2d_2/mul:z:0*
T0*1
_output_shapes
:         ђђ *
half_pixel_centers(z
model_3/bn6/ReadVariableOpReadVariableOp#model_3_bn6_readvariableop_resource*
_output_shapes
: *
dtype0~
model_3/bn6/ReadVariableOp_1ReadVariableOp%model_3_bn6_readvariableop_1_resource*
_output_shapes
: *
dtype0ю
+model_3/bn6/FusedBatchNormV3/ReadVariableOpReadVariableOp4model_3_bn6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0а
-model_3/bn6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6model_3_bn6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0│
model_3/bn6/FusedBatchNormV3FusedBatchNormV3Emodel_3/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0"model_3/bn6/ReadVariableOp:value:0$model_3/bn6/ReadVariableOp_1:value:03model_3/bn6/FusedBatchNormV3/ReadVariableOp:value:05model_3/bn6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ђђ : : : : :*
epsilon%oЃ:*
is_training( Є
model_3/LR6/LeakyRelu	LeakyRelu model_3/bn6/FusedBatchNormV3:y:0*1
_output_shapes
:         ђђ *
alpha%џЎЎ>d
model_3/ct4/ShapeShape#model_3/LR6/LeakyRelu:activations:0*
T0*
_output_shapes
:i
model_3/ct4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model_3/ct4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model_3/ct4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
model_3/ct4/strided_sliceStridedSlicemodel_3/ct4/Shape:output:0(model_3/ct4/strided_slice/stack:output:0*model_3/ct4/strided_slice/stack_1:output:0*model_3/ct4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
model_3/ct4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :ђV
model_3/ct4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :ђU
model_3/ct4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :┼
model_3/ct4/stackPack"model_3/ct4/strided_slice:output:0model_3/ct4/stack/1:output:0model_3/ct4/stack/2:output:0model_3/ct4/stack/3:output:0*
N*
T0*
_output_shapes
:k
!model_3/ct4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model_3/ct4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model_3/ct4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
model_3/ct4/strided_slice_1StridedSlicemodel_3/ct4/stack:output:0*model_3/ct4/strided_slice_1/stack:output:0,model_3/ct4/strided_slice_1/stack_1:output:0,model_3/ct4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskе
+model_3/ct4/conv2d_transpose/ReadVariableOpReadVariableOp4model_3_ct4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0Ї
model_3/ct4/conv2d_transposeConv2DBackpropInputmodel_3/ct4/stack:output:03model_3/ct4/conv2d_transpose/ReadVariableOp:value:0#model_3/LR6/LeakyRelu:activations:0*
T0*1
_output_shapes
:         ђђ*
paddingSAME*
strides
і
"model_3/ct4/BiasAdd/ReadVariableOpReadVariableOp+model_3_ct4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Г
model_3/ct4/BiasAddBiasAdd%model_3/ct4/conv2d_transpose:output:0*model_3/ct4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђx
model_3/ct4/SigmoidSigmoidmodel_3/ct4/BiasAdd:output:0*
T0*1
_output_shapes
:         ђђp
IdentityIdentitymodel_3/ct4/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:         ђђЃ
NoOpNoOp,^model_3/bn1/FusedBatchNormV3/ReadVariableOp.^model_3/bn1/FusedBatchNormV3/ReadVariableOp_1^model_3/bn1/ReadVariableOp^model_3/bn1/ReadVariableOp_1,^model_3/bn2/FusedBatchNormV3/ReadVariableOp.^model_3/bn2/FusedBatchNormV3/ReadVariableOp_1^model_3/bn2/ReadVariableOp^model_3/bn2/ReadVariableOp_1,^model_3/bn3/FusedBatchNormV3/ReadVariableOp.^model_3/bn3/FusedBatchNormV3/ReadVariableOp_1^model_3/bn3/ReadVariableOp^model_3/bn3/ReadVariableOp_1,^model_3/bn4/FusedBatchNormV3/ReadVariableOp.^model_3/bn4/FusedBatchNormV3/ReadVariableOp_1^model_3/bn4/ReadVariableOp^model_3/bn4/ReadVariableOp_1,^model_3/bn5/FusedBatchNormV3/ReadVariableOp.^model_3/bn5/FusedBatchNormV3/ReadVariableOp_1^model_3/bn5/ReadVariableOp^model_3/bn5/ReadVariableOp_1,^model_3/bn6/FusedBatchNormV3/ReadVariableOp.^model_3/bn6/FusedBatchNormV3/ReadVariableOp_1^model_3/bn6/ReadVariableOp^model_3/bn6/ReadVariableOp_1"^model_3/c1/BiasAdd/ReadVariableOp!^model_3/c1/Conv2D/ReadVariableOp"^model_3/c2/BiasAdd/ReadVariableOp!^model_3/c2/Conv2D/ReadVariableOp"^model_3/c3/BiasAdd/ReadVariableOp!^model_3/c3/Conv2D/ReadVariableOp#^model_3/ct1/BiasAdd/ReadVariableOp,^model_3/ct1/conv2d_transpose/ReadVariableOp#^model_3/ct2/BiasAdd/ReadVariableOp,^model_3/ct2/conv2d_transpose/ReadVariableOp#^model_3/ct3/BiasAdd/ReadVariableOp,^model_3/ct3/conv2d_transpose/ReadVariableOp#^model_3/ct4/BiasAdd/ReadVariableOp,^model_3/ct4/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:         ђђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+model_3/bn1/FusedBatchNormV3/ReadVariableOp+model_3/bn1/FusedBatchNormV3/ReadVariableOp2^
-model_3/bn1/FusedBatchNormV3/ReadVariableOp_1-model_3/bn1/FusedBatchNormV3/ReadVariableOp_128
model_3/bn1/ReadVariableOpmodel_3/bn1/ReadVariableOp2<
model_3/bn1/ReadVariableOp_1model_3/bn1/ReadVariableOp_12Z
+model_3/bn2/FusedBatchNormV3/ReadVariableOp+model_3/bn2/FusedBatchNormV3/ReadVariableOp2^
-model_3/bn2/FusedBatchNormV3/ReadVariableOp_1-model_3/bn2/FusedBatchNormV3/ReadVariableOp_128
model_3/bn2/ReadVariableOpmodel_3/bn2/ReadVariableOp2<
model_3/bn2/ReadVariableOp_1model_3/bn2/ReadVariableOp_12Z
+model_3/bn3/FusedBatchNormV3/ReadVariableOp+model_3/bn3/FusedBatchNormV3/ReadVariableOp2^
-model_3/bn3/FusedBatchNormV3/ReadVariableOp_1-model_3/bn3/FusedBatchNormV3/ReadVariableOp_128
model_3/bn3/ReadVariableOpmodel_3/bn3/ReadVariableOp2<
model_3/bn3/ReadVariableOp_1model_3/bn3/ReadVariableOp_12Z
+model_3/bn4/FusedBatchNormV3/ReadVariableOp+model_3/bn4/FusedBatchNormV3/ReadVariableOp2^
-model_3/bn4/FusedBatchNormV3/ReadVariableOp_1-model_3/bn4/FusedBatchNormV3/ReadVariableOp_128
model_3/bn4/ReadVariableOpmodel_3/bn4/ReadVariableOp2<
model_3/bn4/ReadVariableOp_1model_3/bn4/ReadVariableOp_12Z
+model_3/bn5/FusedBatchNormV3/ReadVariableOp+model_3/bn5/FusedBatchNormV3/ReadVariableOp2^
-model_3/bn5/FusedBatchNormV3/ReadVariableOp_1-model_3/bn5/FusedBatchNormV3/ReadVariableOp_128
model_3/bn5/ReadVariableOpmodel_3/bn5/ReadVariableOp2<
model_3/bn5/ReadVariableOp_1model_3/bn5/ReadVariableOp_12Z
+model_3/bn6/FusedBatchNormV3/ReadVariableOp+model_3/bn6/FusedBatchNormV3/ReadVariableOp2^
-model_3/bn6/FusedBatchNormV3/ReadVariableOp_1-model_3/bn6/FusedBatchNormV3/ReadVariableOp_128
model_3/bn6/ReadVariableOpmodel_3/bn6/ReadVariableOp2<
model_3/bn6/ReadVariableOp_1model_3/bn6/ReadVariableOp_12F
!model_3/c1/BiasAdd/ReadVariableOp!model_3/c1/BiasAdd/ReadVariableOp2D
 model_3/c1/Conv2D/ReadVariableOp model_3/c1/Conv2D/ReadVariableOp2F
!model_3/c2/BiasAdd/ReadVariableOp!model_3/c2/BiasAdd/ReadVariableOp2D
 model_3/c2/Conv2D/ReadVariableOp model_3/c2/Conv2D/ReadVariableOp2F
!model_3/c3/BiasAdd/ReadVariableOp!model_3/c3/BiasAdd/ReadVariableOp2D
 model_3/c3/Conv2D/ReadVariableOp model_3/c3/Conv2D/ReadVariableOp2H
"model_3/ct1/BiasAdd/ReadVariableOp"model_3/ct1/BiasAdd/ReadVariableOp2Z
+model_3/ct1/conv2d_transpose/ReadVariableOp+model_3/ct1/conv2d_transpose/ReadVariableOp2H
"model_3/ct2/BiasAdd/ReadVariableOp"model_3/ct2/BiasAdd/ReadVariableOp2Z
+model_3/ct2/conv2d_transpose/ReadVariableOp+model_3/ct2/conv2d_transpose/ReadVariableOp2H
"model_3/ct3/BiasAdd/ReadVariableOp"model_3/ct3/BiasAdd/ReadVariableOp2Z
+model_3/ct3/conv2d_transpose/ReadVariableOp+model_3/ct3/conv2d_transpose/ReadVariableOp2H
"model_3/ct4/BiasAdd/ReadVariableOp"model_3/ct4/BiasAdd/ReadVariableOp2Z
+model_3/ct4/conv2d_transpose/ReadVariableOp+model_3/ct4/conv2d_transpose/ReadVariableOp:V R
1
_output_shapes
:         ђђ

_user_specified_nameimg
 
Г
>__inference_bn4_layer_call_and_return_conditional_losses_13049

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0─
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
К
Г
>__inference_bn5_layer_call_and_return_conditional_losses_13251

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
▀
Ч
#__inference_signature_wrapper_11732
img!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:$

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identityѕбStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallimgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8ѓ *(
f#R!
__inference__wrapped_model_9538y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:         ђђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
1
_output_shapes
:         ђђ

_user_specified_nameimg
њ
g
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_12336

inputs
identityА
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
 
Г
>__inference_bn2_layer_call_and_return_conditional_losses_12638

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0─
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
в
Й
#__inference_bn2_layer_call_fn_12540

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_bn2_layer_call_and_return_conditional_losses_9679Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Љ
f
J__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_9547

inputs
identityА
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Љ
e
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_9953

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:х
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(ў
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╚
I
-__inference_up_sampling2d_layer_call_fn_12905

inputs
identityЙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_10402h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
К
Г
>__inference_bn5_layer_call_and_return_conditional_losses_10009

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
к 
І
>__inference_ct3_layer_call_and_return_conditional_losses_10057

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                            *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ў
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                            Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Э
Z
>__inference_LR1_layer_call_and_return_conditional_losses_10253

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         @@ *
alpha%џЎЎ>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         @@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@ :W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
┘
d
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_10402

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"      X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:џ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*/
_output_shapes
:         *
half_pixel_centers(}
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
║
L
0__inference_max_pooling2d_13_layer_call_fn_12499

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_9623Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ф

Ш
=__inference_c1_layer_call_and_return_conditional_losses_10209

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђ i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ђђ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
ђ
Z
>__inference_LR6_layer_call_and_return_conditional_losses_10578

inputs
identitya
	LeakyRelu	LeakyReluinputs*1
_output_shapes
:         ђђ *
alpha%џЎЎ>i
IdentityIdentityLeakyRelu:activations:0*
T0*1
_output_shapes
:         ђђ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ђђ :Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
█
f
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_13163

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"        X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:џ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*/
_output_shapes
:         @@*
half_pixel_centers(}
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:         @@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           :W S
/
_output_shapes
:           
 
_user_specified_nameinputs
▀
f
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_10544

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:ю
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*1
_output_shapes
:         ђђ *
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         ђђ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@ :W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
к 
І
>__inference_ct1_layer_call_and_return_conditional_losses_12872

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ў
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Б
Й
#__inference_bn5_layer_call_fn_13215

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn5_layer_call_and_return_conditional_losses_10801w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
д
g
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_12514

inputs
identityє
MaxPoolMaxPoolinputs*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           :W S
/
_output_shapes
:           
 
_user_specified_nameinputs
д
g
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_10275

inputs
identityє
MaxPoolMaxPoolinputs*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           :W S
/
_output_shapes
:           
 
_user_specified_nameinputs
К
І
>__inference_ct2_layer_call_and_return_conditional_losses_13133

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B : I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ѕ
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0╩
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:           Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ы
Ѕ
>__inference_bn5_layer_call_and_return_conditional_losses_13269

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Х
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@:::::*
epsilon%oЃ:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @@░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Э
Z
>__inference_LR4_layer_call_and_return_conditional_losses_13059

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         *
alpha%џЎЎ>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╬
L
0__inference_max_pooling2d_13_layer_call_fn_12504

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_10275h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           :W S
/
_output_shapes
:           
 
_user_specified_nameinputs
њ
f
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_10080

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:х
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(ў
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ђ
Z
>__inference_LR6_layer_call_and_return_conditional_losses_13535

inputs
identitya
	LeakyRelu	LeakyReluinputs*1
_output_shapes
:         ђђ *
alpha%џЎЎ>i
IdentityIdentityLeakyRelu:activations:0*
T0*1
_output_shapes
:         ђђ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ђђ :Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
Є
Г
>__inference_bn6_layer_call_and_return_conditional_losses_13525

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ђђ : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0m
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*1
_output_shapes
:         ђђ н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         ђђ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
К
Г
>__inference_bn3_layer_call_and_return_conditional_losses_12775

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Е
ў
#__inference_ct1_layer_call_fn_12830

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_ct1_layer_call_and_return_conditional_losses_9803Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
┤
?
#__inference_LR4_layer_call_fn_13054

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR4_layer_call_and_return_conditional_losses_10436h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ф
ў
#__inference_ct3_layer_call_fn_13306

inputs!
unknown: 
	unknown_0: 
identityѕбStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct3_layer_call_and_return_conditional_losses_10057Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╣
Ѕ
>__inference_bn2_layer_call_and_return_conditional_losses_12584

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
њ
g
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_12509

inputs
identityА
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Н╠
Њ
B__inference_model_3_layer_call_and_return_conditional_losses_12098

inputs;
!c1_conv2d_readvariableop_resource: 0
"c1_biasadd_readvariableop_resource: )
bn1_readvariableop_resource: +
bn1_readvariableop_1_resource: :
,bn1_fusedbatchnormv3_readvariableop_resource: <
.bn1_fusedbatchnormv3_readvariableop_1_resource: ;
!c2_conv2d_readvariableop_resource: 0
"c2_biasadd_readvariableop_resource:)
bn2_readvariableop_resource:+
bn2_readvariableop_1_resource::
,bn2_fusedbatchnormv3_readvariableop_resource:<
.bn2_fusedbatchnormv3_readvariableop_1_resource:;
!c3_conv2d_readvariableop_resource:0
"c3_biasadd_readvariableop_resource:)
bn3_readvariableop_resource:+
bn3_readvariableop_1_resource::
,bn3_fusedbatchnormv3_readvariableop_resource:<
.bn3_fusedbatchnormv3_readvariableop_1_resource:F
,ct1_conv2d_transpose_readvariableop_resource:1
#ct1_biasadd_readvariableop_resource:)
bn4_readvariableop_resource:+
bn4_readvariableop_1_resource::
,bn4_fusedbatchnormv3_readvariableop_resource:<
.bn4_fusedbatchnormv3_readvariableop_1_resource:F
,ct2_conv2d_transpose_readvariableop_resource:1
#ct2_biasadd_readvariableop_resource:)
bn5_readvariableop_resource:+
bn5_readvariableop_1_resource::
,bn5_fusedbatchnormv3_readvariableop_resource:<
.bn5_fusedbatchnormv3_readvariableop_1_resource:F
,ct3_conv2d_transpose_readvariableop_resource: 1
#ct3_biasadd_readvariableop_resource: )
bn6_readvariableop_resource: +
bn6_readvariableop_1_resource: :
,bn6_fusedbatchnormv3_readvariableop_resource: <
.bn6_fusedbatchnormv3_readvariableop_1_resource: F
,ct4_conv2d_transpose_readvariableop_resource: 1
#ct4_biasadd_readvariableop_resource:
identityѕб#bn1/FusedBatchNormV3/ReadVariableOpб%bn1/FusedBatchNormV3/ReadVariableOp_1бbn1/ReadVariableOpбbn1/ReadVariableOp_1б#bn2/FusedBatchNormV3/ReadVariableOpб%bn2/FusedBatchNormV3/ReadVariableOp_1бbn2/ReadVariableOpбbn2/ReadVariableOp_1б#bn3/FusedBatchNormV3/ReadVariableOpб%bn3/FusedBatchNormV3/ReadVariableOp_1бbn3/ReadVariableOpбbn3/ReadVariableOp_1б#bn4/FusedBatchNormV3/ReadVariableOpб%bn4/FusedBatchNormV3/ReadVariableOp_1бbn4/ReadVariableOpбbn4/ReadVariableOp_1б#bn5/FusedBatchNormV3/ReadVariableOpб%bn5/FusedBatchNormV3/ReadVariableOp_1бbn5/ReadVariableOpбbn5/ReadVariableOp_1б#bn6/FusedBatchNormV3/ReadVariableOpб%bn6/FusedBatchNormV3/ReadVariableOp_1бbn6/ReadVariableOpбbn6/ReadVariableOp_1бc1/BiasAdd/ReadVariableOpбc1/Conv2D/ReadVariableOpбc2/BiasAdd/ReadVariableOpбc2/Conv2D/ReadVariableOpбc3/BiasAdd/ReadVariableOpбc3/Conv2D/ReadVariableOpбct1/BiasAdd/ReadVariableOpб#ct1/conv2d_transpose/ReadVariableOpбct2/BiasAdd/ReadVariableOpб#ct2/conv2d_transpose/ReadVariableOpбct3/BiasAdd/ReadVariableOpб#ct3/conv2d_transpose/ReadVariableOpбct4/BiasAdd/ReadVariableOpб#ct4/conv2d_transpose/ReadVariableOpѓ
c1/Conv2D/ReadVariableOpReadVariableOp!c1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0А
	c1/Conv2DConv2Dinputs c1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђ *
paddingSAME*
strides
x
c1/BiasAdd/ReadVariableOpReadVariableOp"c1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ѕ

c1/BiasAddBiasAddc1/Conv2D:output:0!c1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђ ц
max_pooling2d_12/MaxPoolMaxPoolc1/BiasAdd:output:0*/
_output_shapes
:         @@ *
ksize
*
paddingSAME*
strides
j
bn1/ReadVariableOpReadVariableOpbn1_readvariableop_resource*
_output_shapes
: *
dtype0n
bn1/ReadVariableOp_1ReadVariableOpbn1_readvariableop_1_resource*
_output_shapes
: *
dtype0ї
#bn1/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0љ
%bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0т
bn1/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_12/MaxPool:output:0bn1/ReadVariableOp:value:0bn1/ReadVariableOp_1:value:0+bn1/FusedBatchNormV3/ReadVariableOp:value:0-bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@ : : : : :*
epsilon%oЃ:*
is_training( u
LR1/LeakyRelu	LeakyRelubn1/FusedBatchNormV3:y:0*/
_output_shapes
:         @@ *
alpha%џЎЎ>ѓ
c2/Conv2D/ReadVariableOpReadVariableOp!c2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0┤
	c2/Conv2DConv2DLR1/LeakyRelu:activations:0 c2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
x
c2/BiasAdd/ReadVariableOpReadVariableOp"c2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0є

c2/BiasAddBiasAddc2/Conv2D:output:0!c2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           ц
max_pooling2d_13/MaxPoolMaxPoolc2/BiasAdd:output:0*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
j
bn2/ReadVariableOpReadVariableOpbn2_readvariableop_resource*
_output_shapes
:*
dtype0n
bn2/ReadVariableOp_1ReadVariableOpbn2_readvariableop_1_resource*
_output_shapes
:*
dtype0ї
#bn2/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0љ
%bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0т
bn2/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_13/MaxPool:output:0bn2/ReadVariableOp:value:0bn2/ReadVariableOp_1:value:0+bn2/FusedBatchNormV3/ReadVariableOp:value:0-bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( u
LR2/LeakyRelu	LeakyRelubn2/FusedBatchNormV3:y:0*/
_output_shapes
:         *
alpha%џЎЎ>ѓ
c3/Conv2D/ReadVariableOpReadVariableOp!c3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┤
	c3/Conv2DConv2DLR2/LeakyRelu:activations:0 c3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
x
c3/BiasAdd/ReadVariableOpReadVariableOp"c3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0є

c3/BiasAddBiasAddc3/Conv2D:output:0!c3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ц
max_pooling2d_14/MaxPoolMaxPoolc3/BiasAdd:output:0*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
j
bn3/ReadVariableOpReadVariableOpbn3_readvariableop_resource*
_output_shapes
:*
dtype0n
bn3/ReadVariableOp_1ReadVariableOpbn3_readvariableop_1_resource*
_output_shapes
:*
dtype0ї
#bn3/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0љ
%bn3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0т
bn3/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_14/MaxPool:output:0bn3/ReadVariableOp:value:0bn3/ReadVariableOp_1:value:0+bn3/FusedBatchNormV3/ReadVariableOp:value:0-bn3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( u
LR3/LeakyRelu	LeakyRelubn3/FusedBatchNormV3:y:0*/
_output_shapes
:         *
alpha%џЎЎ>T
	ct1/ShapeShapeLR3/LeakyRelu:activations:0*
T0*
_output_shapes
:a
ct1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
ct1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
ct1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
ct1/strided_sliceStridedSlicect1/Shape:output:0 ct1/strided_slice/stack:output:0"ct1/strided_slice/stack_1:output:0"ct1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
ct1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :M
ct1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :M
ct1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ю
	ct1/stackPackct1/strided_slice:output:0ct1/stack/1:output:0ct1/stack/2:output:0ct1/stack/3:output:0*
N*
T0*
_output_shapes
:c
ct1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
ct1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
ct1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
ct1/strided_slice_1StridedSlicect1/stack:output:0"ct1/strided_slice_1/stack:output:0$ct1/strided_slice_1/stack_1:output:0$ct1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskў
#ct1/conv2d_transpose/ReadVariableOpReadVariableOp,ct1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0в
ct1/conv2d_transposeConv2DBackpropInputct1/stack:output:0+ct1/conv2d_transpose/ReadVariableOp:value:0LR3/LeakyRelu:activations:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
z
ct1/BiasAdd/ReadVariableOpReadVariableOp#ct1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Њ
ct1/BiasAddBiasAddct1/conv2d_transpose:output:0"ct1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         d
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      f
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      {
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:─
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborct1/BiasAdd:output:0up_sampling2d/mul:z:0*
T0*/
_output_shapes
:         *
half_pixel_centers(j
bn4/ReadVariableOpReadVariableOpbn4_readvariableop_resource*
_output_shapes
:*
dtype0n
bn4/ReadVariableOp_1ReadVariableOpbn4_readvariableop_1_resource*
_output_shapes
:*
dtype0ї
#bn4/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0љ
%bn4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0 
bn4/FusedBatchNormV3FusedBatchNormV3;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0bn4/ReadVariableOp:value:0bn4/ReadVariableOp_1:value:0+bn4/FusedBatchNormV3/ReadVariableOp:value:0-bn4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( u
LR4/LeakyRelu	LeakyRelubn4/FusedBatchNormV3:y:0*/
_output_shapes
:         *
alpha%џЎЎ>T
	ct2/ShapeShapeLR4/LeakyRelu:activations:0*
T0*
_output_shapes
:a
ct2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
ct2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
ct2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
ct2/strided_sliceStridedSlicect2/Shape:output:0 ct2/strided_slice/stack:output:0"ct2/strided_slice/stack_1:output:0"ct2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
ct2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : M
ct2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : M
ct2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ю
	ct2/stackPackct2/strided_slice:output:0ct2/stack/1:output:0ct2/stack/2:output:0ct2/stack/3:output:0*
N*
T0*
_output_shapes
:c
ct2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
ct2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
ct2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
ct2/strided_slice_1StridedSlicect2/stack:output:0"ct2/strided_slice_1/stack:output:0$ct2/strided_slice_1/stack_1:output:0$ct2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskў
#ct2/conv2d_transpose/ReadVariableOpReadVariableOp,ct2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0в
ct2/conv2d_transposeConv2DBackpropInputct2/stack:output:0+ct2/conv2d_transpose/ReadVariableOp:value:0LR4/LeakyRelu:activations:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
z
ct2/BiasAdd/ReadVariableOpReadVariableOp#ct2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Њ
ct2/BiasAddBiasAddct2/conv2d_transpose:output:0"ct2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           f
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ђ
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:╚
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborct2/BiasAdd:output:0up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:         @@*
half_pixel_centers(j
bn5/ReadVariableOpReadVariableOpbn5_readvariableop_resource*
_output_shapes
:*
dtype0n
bn5/ReadVariableOp_1ReadVariableOpbn5_readvariableop_1_resource*
_output_shapes
:*
dtype0ї
#bn5/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn5_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0љ
%bn5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ђ
bn5/FusedBatchNormV3FusedBatchNormV3=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0bn5/ReadVariableOp:value:0bn5/ReadVariableOp_1:value:0+bn5/FusedBatchNormV3/ReadVariableOp:value:0-bn5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@:::::*
epsilon%oЃ:*
is_training( u
LR5/LeakyRelu	LeakyRelubn5/FusedBatchNormV3:y:0*/
_output_shapes
:         @@*
alpha%џЎЎ>T
	ct3/ShapeShapeLR5/LeakyRelu:activations:0*
T0*
_output_shapes
:a
ct3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
ct3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
ct3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
ct3/strided_sliceStridedSlicect3/Shape:output:0 ct3/strided_slice/stack:output:0"ct3/strided_slice/stack_1:output:0"ct3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
ct3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@M
ct3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@M
ct3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Ю
	ct3/stackPackct3/strided_slice:output:0ct3/stack/1:output:0ct3/stack/2:output:0ct3/stack/3:output:0*
N*
T0*
_output_shapes
:c
ct3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
ct3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
ct3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
ct3/strided_slice_1StridedSlicect3/stack:output:0"ct3/strided_slice_1/stack:output:0$ct3/strided_slice_1/stack_1:output:0$ct3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskў
#ct3/conv2d_transpose/ReadVariableOpReadVariableOp,ct3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0в
ct3/conv2d_transposeConv2DBackpropInputct3/stack:output:0+ct3/conv2d_transpose/ReadVariableOp:value:0LR5/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
z
ct3/BiasAdd/ReadVariableOpReadVariableOp#ct3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
ct3/BiasAddBiasAddct3/conv2d_transpose:output:0"ct3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ f
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   h
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ђ
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:╩
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborct3/BiasAdd:output:0up_sampling2d_2/mul:z:0*
T0*1
_output_shapes
:         ђђ *
half_pixel_centers(j
bn6/ReadVariableOpReadVariableOpbn6_readvariableop_resource*
_output_shapes
: *
dtype0n
bn6/ReadVariableOp_1ReadVariableOpbn6_readvariableop_1_resource*
_output_shapes
: *
dtype0ї
#bn6/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0љ
%bn6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ѓ
bn6/FusedBatchNormV3FusedBatchNormV3=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0bn6/ReadVariableOp:value:0bn6/ReadVariableOp_1:value:0+bn6/FusedBatchNormV3/ReadVariableOp:value:0-bn6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ђђ : : : : :*
epsilon%oЃ:*
is_training( w
LR6/LeakyRelu	LeakyRelubn6/FusedBatchNormV3:y:0*1
_output_shapes
:         ђђ *
alpha%џЎЎ>T
	ct4/ShapeShapeLR6/LeakyRelu:activations:0*
T0*
_output_shapes
:a
ct4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
ct4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
ct4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
ct4/strided_sliceStridedSlicect4/Shape:output:0 ct4/strided_slice/stack:output:0"ct4/strided_slice/stack_1:output:0"ct4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
ct4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :ђN
ct4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :ђM
ct4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ю
	ct4/stackPackct4/strided_slice:output:0ct4/stack/1:output:0ct4/stack/2:output:0ct4/stack/3:output:0*
N*
T0*
_output_shapes
:c
ct4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
ct4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
ct4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
ct4/strided_slice_1StridedSlicect4/stack:output:0"ct4/strided_slice_1/stack:output:0$ct4/strided_slice_1/stack_1:output:0$ct4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskў
#ct4/conv2d_transpose/ReadVariableOpReadVariableOp,ct4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0ь
ct4/conv2d_transposeConv2DBackpropInputct4/stack:output:0+ct4/conv2d_transpose/ReadVariableOp:value:0LR6/LeakyRelu:activations:0*
T0*1
_output_shapes
:         ђђ*
paddingSAME*
strides
z
ct4/BiasAdd/ReadVariableOpReadVariableOp#ct4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ћ
ct4/BiasAddBiasAddct4/conv2d_transpose:output:0"ct4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђh
ct4/SigmoidSigmoidct4/BiasAdd:output:0*
T0*1
_output_shapes
:         ђђh
IdentityIdentityct4/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:         ђђМ	
NoOpNoOp$^bn1/FusedBatchNormV3/ReadVariableOp&^bn1/FusedBatchNormV3/ReadVariableOp_1^bn1/ReadVariableOp^bn1/ReadVariableOp_1$^bn2/FusedBatchNormV3/ReadVariableOp&^bn2/FusedBatchNormV3/ReadVariableOp_1^bn2/ReadVariableOp^bn2/ReadVariableOp_1$^bn3/FusedBatchNormV3/ReadVariableOp&^bn3/FusedBatchNormV3/ReadVariableOp_1^bn3/ReadVariableOp^bn3/ReadVariableOp_1$^bn4/FusedBatchNormV3/ReadVariableOp&^bn4/FusedBatchNormV3/ReadVariableOp_1^bn4/ReadVariableOp^bn4/ReadVariableOp_1$^bn5/FusedBatchNormV3/ReadVariableOp&^bn5/FusedBatchNormV3/ReadVariableOp_1^bn5/ReadVariableOp^bn5/ReadVariableOp_1$^bn6/FusedBatchNormV3/ReadVariableOp&^bn6/FusedBatchNormV3/ReadVariableOp_1^bn6/ReadVariableOp^bn6/ReadVariableOp_1^c1/BiasAdd/ReadVariableOp^c1/Conv2D/ReadVariableOp^c2/BiasAdd/ReadVariableOp^c2/Conv2D/ReadVariableOp^c3/BiasAdd/ReadVariableOp^c3/Conv2D/ReadVariableOp^ct1/BiasAdd/ReadVariableOp$^ct1/conv2d_transpose/ReadVariableOp^ct2/BiasAdd/ReadVariableOp$^ct2/conv2d_transpose/ReadVariableOp^ct3/BiasAdd/ReadVariableOp$^ct3/conv2d_transpose/ReadVariableOp^ct4/BiasAdd/ReadVariableOp$^ct4/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:         ђђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#bn1/FusedBatchNormV3/ReadVariableOp#bn1/FusedBatchNormV3/ReadVariableOp2N
%bn1/FusedBatchNormV3/ReadVariableOp_1%bn1/FusedBatchNormV3/ReadVariableOp_12(
bn1/ReadVariableOpbn1/ReadVariableOp2,
bn1/ReadVariableOp_1bn1/ReadVariableOp_12J
#bn2/FusedBatchNormV3/ReadVariableOp#bn2/FusedBatchNormV3/ReadVariableOp2N
%bn2/FusedBatchNormV3/ReadVariableOp_1%bn2/FusedBatchNormV3/ReadVariableOp_12(
bn2/ReadVariableOpbn2/ReadVariableOp2,
bn2/ReadVariableOp_1bn2/ReadVariableOp_12J
#bn3/FusedBatchNormV3/ReadVariableOp#bn3/FusedBatchNormV3/ReadVariableOp2N
%bn3/FusedBatchNormV3/ReadVariableOp_1%bn3/FusedBatchNormV3/ReadVariableOp_12(
bn3/ReadVariableOpbn3/ReadVariableOp2,
bn3/ReadVariableOp_1bn3/ReadVariableOp_12J
#bn4/FusedBatchNormV3/ReadVariableOp#bn4/FusedBatchNormV3/ReadVariableOp2N
%bn4/FusedBatchNormV3/ReadVariableOp_1%bn4/FusedBatchNormV3/ReadVariableOp_12(
bn4/ReadVariableOpbn4/ReadVariableOp2,
bn4/ReadVariableOp_1bn4/ReadVariableOp_12J
#bn5/FusedBatchNormV3/ReadVariableOp#bn5/FusedBatchNormV3/ReadVariableOp2N
%bn5/FusedBatchNormV3/ReadVariableOp_1%bn5/FusedBatchNormV3/ReadVariableOp_12(
bn5/ReadVariableOpbn5/ReadVariableOp2,
bn5/ReadVariableOp_1bn5/ReadVariableOp_12J
#bn6/FusedBatchNormV3/ReadVariableOp#bn6/FusedBatchNormV3/ReadVariableOp2N
%bn6/FusedBatchNormV3/ReadVariableOp_1%bn6/FusedBatchNormV3/ReadVariableOp_12(
bn6/ReadVariableOpbn6/ReadVariableOp2,
bn6/ReadVariableOp_1bn6/ReadVariableOp_126
c1/BiasAdd/ReadVariableOpc1/BiasAdd/ReadVariableOp24
c1/Conv2D/ReadVariableOpc1/Conv2D/ReadVariableOp26
c2/BiasAdd/ReadVariableOpc2/BiasAdd/ReadVariableOp24
c2/Conv2D/ReadVariableOpc2/Conv2D/ReadVariableOp26
c3/BiasAdd/ReadVariableOpc3/BiasAdd/ReadVariableOp24
c3/Conv2D/ReadVariableOpc3/Conv2D/ReadVariableOp28
ct1/BiasAdd/ReadVariableOpct1/BiasAdd/ReadVariableOp2J
#ct1/conv2d_transpose/ReadVariableOp#ct1/conv2d_transpose/ReadVariableOp28
ct2/BiasAdd/ReadVariableOpct2/BiasAdd/ReadVariableOp2J
#ct2/conv2d_transpose/ReadVariableOp#ct2/conv2d_transpose/ReadVariableOp28
ct3/BiasAdd/ReadVariableOpct3/BiasAdd/ReadVariableOp2J
#ct3/conv2d_transpose/ReadVariableOp#ct3/conv2d_transpose/ReadVariableOp28
ct4/BiasAdd/ReadVariableOpct4/BiasAdd/ReadVariableOp2J
#ct4/conv2d_transpose/ReadVariableOp#ct4/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
Ѓ
Ѓ	
'__inference_model_3_layer_call_fn_11894

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:$

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identityѕбStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ*<
_read_only_resource_inputs
	
 !"%&*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_11273y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:         ђђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
┤
?
#__inference_LR3_layer_call_fn_12816

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR3_layer_call_and_return_conditional_losses_10365h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
д
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_10331

inputs
identityє
MaxPoolMaxPoolinputs*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
И
ѕ
=__inference_bn2_layer_call_and_return_conditional_losses_9648

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ы
Ѕ
>__inference_bn3_layer_call_and_return_conditional_losses_10350

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Х
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
К
І
>__inference_ct1_layer_call_and_return_conditional_losses_12895

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ѕ
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0╩
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:         *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
▀
f
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_13401

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:ю
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*1
_output_shapes
:         ђђ *
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         ђђ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@ :W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
В
Й
#__inference_bn5_layer_call_fn_13189

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn5_layer_call_and_return_conditional_losses_10009Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Э
Z
>__inference_LR5_layer_call_and_return_conditional_losses_13297

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         @@*
alpha%џЎЎ>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         @@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ж
ў
#__inference_ct4_layer_call_fn_13553

inputs!
unknown: 
	unknown_0:
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct4_layer_call_and_return_conditional_losses_10603y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
Э
Z
>__inference_LR4_layer_call_and_return_conditional_losses_10436

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         *
alpha%џЎЎ>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
 
Г
>__inference_bn4_layer_call_and_return_conditional_losses_10865

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0─
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ь
Й
#__inference_bn5_layer_call_fn_13176

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_bn5_layer_call_and_return_conditional_losses_9978Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ь
Й
#__inference_bn3_layer_call_fn_12700

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_bn3_layer_call_and_return_conditional_losses_9724Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
к
г
=__inference_bn3_layer_call_and_return_conditional_losses_9755

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Хb
т
B__inference_model_3_layer_call_and_return_conditional_losses_11538
img"
c1_11436: 
c1_11438: 
	bn1_11442: 
	bn1_11444: 
	bn1_11446: 
	bn1_11448: "
c2_11452: 
c2_11454:
	bn2_11458:
	bn2_11460:
	bn2_11462:
	bn2_11464:"
c3_11468:
c3_11470:
	bn3_11474:
	bn3_11476:
	bn3_11478:
	bn3_11480:#
	ct1_11484:
	ct1_11486:
	bn4_11490:
	bn4_11492:
	bn4_11494:
	bn4_11496:#
	ct2_11500:
	ct2_11502:
	bn5_11506:
	bn5_11508:
	bn5_11510:
	bn5_11512:#
	ct3_11516: 
	ct3_11518: 
	bn6_11522: 
	bn6_11524: 
	bn6_11526: 
	bn6_11528: #
	ct4_11532: 
	ct4_11534:
identityѕбbn1/StatefulPartitionedCallбbn2/StatefulPartitionedCallбbn3/StatefulPartitionedCallбbn4/StatefulPartitionedCallбbn5/StatefulPartitionedCallбbn6/StatefulPartitionedCallбc1/StatefulPartitionedCallбc2/StatefulPartitionedCallбc3/StatefulPartitionedCallбct1/StatefulPartitionedCallбct2/StatefulPartitionedCallбct3/StatefulPartitionedCallбct4/StatefulPartitionedCall▀
c1/StatefulPartitionedCallStatefulPartitionedCallimgc1_11436c1_11438*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c1_layer_call_and_return_conditional_losses_10209№
 max_pooling2d_12/PartitionedCallPartitionedCall#c1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_10219А
bn1/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0	bn1_11442	bn1_11444	bn1_11446	bn1_11448*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_10238о
LR1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR1_layer_call_and_return_conditional_losses_10253Ш
c2/StatefulPartitionedCallStatefulPartitionedCallLR1/PartitionedCall:output:0c2_11452c2_11454*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c2_layer_call_and_return_conditional_losses_10265№
 max_pooling2d_13/PartitionedCallPartitionedCall#c2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_10275А
bn2/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0	bn2_11458	bn2_11460	bn2_11462	bn2_11464*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_10294о
LR2/PartitionedCallPartitionedCall$bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR2_layer_call_and_return_conditional_losses_10309Ш
c3/StatefulPartitionedCallStatefulPartitionedCallLR2/PartitionedCall:output:0c3_11468c3_11470*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c3_layer_call_and_return_conditional_losses_10321№
 max_pooling2d_14/PartitionedCallPartitionedCall#c3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_10331А
bn3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0	bn3_11474	bn3_11476	bn3_11478	bn3_11480*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_10350о
LR3/PartitionedCallPartitionedCall$bn3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR3_layer_call_and_return_conditional_losses_10365Щ
ct1/StatefulPartitionedCallStatefulPartitionedCallLR3/PartitionedCall:output:0	ct1_11484	ct1_11486*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct1_layer_call_and_return_conditional_losses_10389Ж
up_sampling2d/PartitionedCallPartitionedCall$ct1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_10402ъ
bn4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0	bn4_11490	bn4_11492	bn4_11494	bn4_11496*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn4_layer_call_and_return_conditional_losses_10421о
LR4/PartitionedCallPartitionedCall$bn4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR4_layer_call_and_return_conditional_losses_10436Щ
ct2/StatefulPartitionedCallStatefulPartitionedCallLR4/PartitionedCall:output:0	ct2_11500	ct2_11502*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct2_layer_call_and_return_conditional_losses_10460Ь
up_sampling2d_1/PartitionedCallPartitionedCall$ct2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_10473а
bn5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0	bn5_11506	bn5_11508	bn5_11510	bn5_11512*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn5_layer_call_and_return_conditional_losses_10492о
LR5/PartitionedCallPartitionedCall$bn5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR5_layer_call_and_return_conditional_losses_10507Щ
ct3/StatefulPartitionedCallStatefulPartitionedCallLR5/PartitionedCall:output:0	ct3_11516	ct3_11518*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct3_layer_call_and_return_conditional_losses_10531­
up_sampling2d_2/PartitionedCallPartitionedCall$ct3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_10544б
bn6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0	bn6_11522	bn6_11524	bn6_11526	bn6_11528*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn6_layer_call_and_return_conditional_losses_10563п
LR6/PartitionedCallPartitionedCall$bn6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR6_layer_call_and_return_conditional_losses_10578Ч
ct4/StatefulPartitionedCallStatefulPartitionedCallLR6/PartitionedCall:output:0	ct4_11532	ct4_11534*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct4_layer_call_and_return_conditional_losses_10603}
IdentityIdentity$ct4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ╔
NoOpNoOp^bn1/StatefulPartitionedCall^bn2/StatefulPartitionedCall^bn3/StatefulPartitionedCall^bn4/StatefulPartitionedCall^bn5/StatefulPartitionedCall^bn6/StatefulPartitionedCall^c1/StatefulPartitionedCall^c2/StatefulPartitionedCall^c3/StatefulPartitionedCall^ct1/StatefulPartitionedCall^ct2/StatefulPartitionedCall^ct3/StatefulPartitionedCall^ct4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:         ђђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2:
bn2/StatefulPartitionedCallbn2/StatefulPartitionedCall2:
bn3/StatefulPartitionedCallbn3/StatefulPartitionedCall2:
bn4/StatefulPartitionedCallbn4/StatefulPartitionedCall2:
bn5/StatefulPartitionedCallbn5/StatefulPartitionedCall2:
bn6/StatefulPartitionedCallbn6/StatefulPartitionedCall28
c1/StatefulPartitionedCallc1/StatefulPartitionedCall28
c2/StatefulPartitionedCallc2/StatefulPartitionedCall28
c3/StatefulPartitionedCallc3/StatefulPartitionedCall2:
ct1/StatefulPartitionedCallct1/StatefulPartitionedCall2:
ct2/StatefulPartitionedCallct2/StatefulPartitionedCall2:
ct3/StatefulPartitionedCallct3/StatefulPartitionedCall2:
ct4/StatefulPartitionedCallct4/StatefulPartitionedCall:V R
1
_output_shapes
:         ђђ

_user_specified_nameimg
К
І
>__inference_ct2_layer_call_and_return_conditional_losses_10460

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B : I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ѕ
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0╩
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:           Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
│b
У
B__inference_model_3_layer_call_and_return_conditional_losses_11273

inputs"
c1_11171: 
c1_11173: 
	bn1_11177: 
	bn1_11179: 
	bn1_11181: 
	bn1_11183: "
c2_11187: 
c2_11189:
	bn2_11193:
	bn2_11195:
	bn2_11197:
	bn2_11199:"
c3_11203:
c3_11205:
	bn3_11209:
	bn3_11211:
	bn3_11213:
	bn3_11215:#
	ct1_11219:
	ct1_11221:
	bn4_11225:
	bn4_11227:
	bn4_11229:
	bn4_11231:#
	ct2_11235:
	ct2_11237:
	bn5_11241:
	bn5_11243:
	bn5_11245:
	bn5_11247:#
	ct3_11251: 
	ct3_11253: 
	bn6_11257: 
	bn6_11259: 
	bn6_11261: 
	bn6_11263: #
	ct4_11267: 
	ct4_11269:
identityѕбbn1/StatefulPartitionedCallбbn2/StatefulPartitionedCallбbn3/StatefulPartitionedCallбbn4/StatefulPartitionedCallбbn5/StatefulPartitionedCallбbn6/StatefulPartitionedCallбc1/StatefulPartitionedCallбc2/StatefulPartitionedCallбc3/StatefulPartitionedCallбct1/StatefulPartitionedCallбct2/StatefulPartitionedCallбct3/StatefulPartitionedCallбct4/StatefulPartitionedCallР
c1/StatefulPartitionedCallStatefulPartitionedCallinputsc1_11171c1_11173*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c1_layer_call_and_return_conditional_losses_10209№
 max_pooling2d_12/PartitionedCallPartitionedCall#c1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_10219Ъ
bn1/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0	bn1_11177	bn1_11179	bn1_11181	bn1_11183*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_11059о
LR1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR1_layer_call_and_return_conditional_losses_10253Ш
c2/StatefulPartitionedCallStatefulPartitionedCallLR1/PartitionedCall:output:0c2_11187c2_11189*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c2_layer_call_and_return_conditional_losses_10265№
 max_pooling2d_13/PartitionedCallPartitionedCall#c2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_10275Ъ
bn2/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0	bn2_11193	bn2_11195	bn2_11197	bn2_11199*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_10994о
LR2/PartitionedCallPartitionedCall$bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR2_layer_call_and_return_conditional_losses_10309Ш
c3/StatefulPartitionedCallStatefulPartitionedCallLR2/PartitionedCall:output:0c3_11203c3_11205*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c3_layer_call_and_return_conditional_losses_10321№
 max_pooling2d_14/PartitionedCallPartitionedCall#c3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_10331Ъ
bn3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0	bn3_11209	bn3_11211	bn3_11213	bn3_11215*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_10929о
LR3/PartitionedCallPartitionedCall$bn3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR3_layer_call_and_return_conditional_losses_10365Щ
ct1/StatefulPartitionedCallStatefulPartitionedCallLR3/PartitionedCall:output:0	ct1_11219	ct1_11221*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct1_layer_call_and_return_conditional_losses_10389Ж
up_sampling2d/PartitionedCallPartitionedCall$ct1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_10402ю
bn4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0	bn4_11225	bn4_11227	bn4_11229	bn4_11231*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn4_layer_call_and_return_conditional_losses_10865о
LR4/PartitionedCallPartitionedCall$bn4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR4_layer_call_and_return_conditional_losses_10436Щ
ct2/StatefulPartitionedCallStatefulPartitionedCallLR4/PartitionedCall:output:0	ct2_11235	ct2_11237*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct2_layer_call_and_return_conditional_losses_10460Ь
up_sampling2d_1/PartitionedCallPartitionedCall$ct2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_10473ъ
bn5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0	bn5_11241	bn5_11243	bn5_11245	bn5_11247*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn5_layer_call_and_return_conditional_losses_10801о
LR5/PartitionedCallPartitionedCall$bn5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR5_layer_call_and_return_conditional_losses_10507Щ
ct3/StatefulPartitionedCallStatefulPartitionedCallLR5/PartitionedCall:output:0	ct3_11251	ct3_11253*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct3_layer_call_and_return_conditional_losses_10531­
up_sampling2d_2/PartitionedCallPartitionedCall$ct3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_10544а
bn6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0	bn6_11257	bn6_11259	bn6_11261	bn6_11263*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn6_layer_call_and_return_conditional_losses_10737п
LR6/PartitionedCallPartitionedCall$bn6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR6_layer_call_and_return_conditional_losses_10578Ч
ct4/StatefulPartitionedCallStatefulPartitionedCallLR6/PartitionedCall:output:0	ct4_11267	ct4_11269*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct4_layer_call_and_return_conditional_losses_10603}
IdentityIdentity$ct4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ╔
NoOpNoOp^bn1/StatefulPartitionedCall^bn2/StatefulPartitionedCall^bn3/StatefulPartitionedCall^bn4/StatefulPartitionedCall^bn5/StatefulPartitionedCall^bn6/StatefulPartitionedCall^c1/StatefulPartitionedCall^c2/StatefulPartitionedCall^c3/StatefulPartitionedCall^ct1/StatefulPartitionedCall^ct2/StatefulPartitionedCall^ct3/StatefulPartitionedCall^ct4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:         ђђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2:
bn2/StatefulPartitionedCallbn2/StatefulPartitionedCall2:
bn3/StatefulPartitionedCallbn3/StatefulPartitionedCall2:
bn4/StatefulPartitionedCallbn4/StatefulPartitionedCall2:
bn5/StatefulPartitionedCallbn5/StatefulPartitionedCall2:
bn6/StatefulPartitionedCallbn6/StatefulPartitionedCall28
c1/StatefulPartitionedCallc1/StatefulPartitionedCall28
c2/StatefulPartitionedCallc2/StatefulPartitionedCall28
c3/StatefulPartitionedCallc3/StatefulPartitionedCall2:
ct1/StatefulPartitionedCallct1/StatefulPartitionedCall2:
ct2/StatefulPartitionedCallct2/StatefulPartitionedCall2:
ct3/StatefulPartitionedCallct3/StatefulPartitionedCall2:
ct4/StatefulPartitionedCallct4/StatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
ы
Ѕ
>__inference_bn2_layer_call_and_return_conditional_losses_12620

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Х
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
а

Ш
=__inference_c3_layer_call_and_return_conditional_losses_10321

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Щ
ђ	
'__inference_model_3_layer_call_fn_11433
img!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:$

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identityѕбStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallimgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ*<
_read_only_resource_inputs
	
 !"%&*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_11273y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:         ђђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
1
_output_shapes
:         ђђ

_user_specified_nameimg
╣
Ѕ
>__inference_bn6_layer_call_and_return_conditional_losses_10105

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
 
Г
>__inference_bn1_layer_call_and_return_conditional_losses_11059

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0─
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@ : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @@ н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
ф

Ш
=__inference_c1_layer_call_and_return_conditional_losses_12321

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђ i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ђђ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
а

Ш
=__inference_c2_layer_call_and_return_conditional_losses_12494

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:           w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
Е
ў
#__inference_ct2_layer_call_fn_13068

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_ct2_layer_call_and_return_conditional_losses_9930Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ь
Й
#__inference_bn6_layer_call_fn_13414

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn6_layer_call_and_return_conditional_losses_10105Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
И
K
/__inference_up_sampling2d_1_layer_call_fn_13138

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_9953Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
њ
f
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_13393

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:х
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(ў
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
к 
І
>__inference_ct2_layer_call_and_return_conditional_losses_13110

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ў
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
 
Г
>__inference_bn3_layer_call_and_return_conditional_losses_10929

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0─
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
И
ѕ
=__inference_bn3_layer_call_and_return_conditional_losses_9724

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
щ
Ѕ
>__inference_bn6_layer_call_and_return_conditional_losses_13507

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0И
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ђђ : : : : :*
epsilon%oЃ:*
is_training( m
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*1
_output_shapes
:         ђђ ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         ђђ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
ѕ«
Ѓ$
__inference__traced_save_13925
file_prefix(
$savev2_c1_kernel_read_readvariableop&
"savev2_c1_bias_read_readvariableop(
$savev2_bn1_gamma_read_readvariableop'
#savev2_bn1_beta_read_readvariableop.
*savev2_bn1_moving_mean_read_readvariableop2
.savev2_bn1_moving_variance_read_readvariableop(
$savev2_c2_kernel_read_readvariableop&
"savev2_c2_bias_read_readvariableop(
$savev2_bn2_gamma_read_readvariableop'
#savev2_bn2_beta_read_readvariableop.
*savev2_bn2_moving_mean_read_readvariableop2
.savev2_bn2_moving_variance_read_readvariableop(
$savev2_c3_kernel_read_readvariableop&
"savev2_c3_bias_read_readvariableop(
$savev2_bn3_gamma_read_readvariableop'
#savev2_bn3_beta_read_readvariableop.
*savev2_bn3_moving_mean_read_readvariableop2
.savev2_bn3_moving_variance_read_readvariableop)
%savev2_ct1_kernel_read_readvariableop'
#savev2_ct1_bias_read_readvariableop(
$savev2_bn4_gamma_read_readvariableop'
#savev2_bn4_beta_read_readvariableop.
*savev2_bn4_moving_mean_read_readvariableop2
.savev2_bn4_moving_variance_read_readvariableop)
%savev2_ct2_kernel_read_readvariableop'
#savev2_ct2_bias_read_readvariableop(
$savev2_bn5_gamma_read_readvariableop'
#savev2_bn5_beta_read_readvariableop.
*savev2_bn5_moving_mean_read_readvariableop2
.savev2_bn5_moving_variance_read_readvariableop)
%savev2_ct3_kernel_read_readvariableop'
#savev2_ct3_bias_read_readvariableop(
$savev2_bn6_gamma_read_readvariableop'
#savev2_bn6_beta_read_readvariableop.
*savev2_bn6_moving_mean_read_readvariableop2
.savev2_bn6_moving_variance_read_readvariableop)
%savev2_ct4_kernel_read_readvariableop'
#savev2_ct4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop/
+savev2_adam_c1_kernel_m_read_readvariableop-
)savev2_adam_c1_bias_m_read_readvariableop/
+savev2_adam_bn1_gamma_m_read_readvariableop.
*savev2_adam_bn1_beta_m_read_readvariableop/
+savev2_adam_c2_kernel_m_read_readvariableop-
)savev2_adam_c2_bias_m_read_readvariableop/
+savev2_adam_bn2_gamma_m_read_readvariableop.
*savev2_adam_bn2_beta_m_read_readvariableop/
+savev2_adam_c3_kernel_m_read_readvariableop-
)savev2_adam_c3_bias_m_read_readvariableop/
+savev2_adam_bn3_gamma_m_read_readvariableop.
*savev2_adam_bn3_beta_m_read_readvariableop0
,savev2_adam_ct1_kernel_m_read_readvariableop.
*savev2_adam_ct1_bias_m_read_readvariableop/
+savev2_adam_bn4_gamma_m_read_readvariableop.
*savev2_adam_bn4_beta_m_read_readvariableop0
,savev2_adam_ct2_kernel_m_read_readvariableop.
*savev2_adam_ct2_bias_m_read_readvariableop/
+savev2_adam_bn5_gamma_m_read_readvariableop.
*savev2_adam_bn5_beta_m_read_readvariableop0
,savev2_adam_ct3_kernel_m_read_readvariableop.
*savev2_adam_ct3_bias_m_read_readvariableop/
+savev2_adam_bn6_gamma_m_read_readvariableop.
*savev2_adam_bn6_beta_m_read_readvariableop0
,savev2_adam_ct4_kernel_m_read_readvariableop.
*savev2_adam_ct4_bias_m_read_readvariableop/
+savev2_adam_c1_kernel_v_read_readvariableop-
)savev2_adam_c1_bias_v_read_readvariableop/
+savev2_adam_bn1_gamma_v_read_readvariableop.
*savev2_adam_bn1_beta_v_read_readvariableop/
+savev2_adam_c2_kernel_v_read_readvariableop-
)savev2_adam_c2_bias_v_read_readvariableop/
+savev2_adam_bn2_gamma_v_read_readvariableop.
*savev2_adam_bn2_beta_v_read_readvariableop/
+savev2_adam_c3_kernel_v_read_readvariableop-
)savev2_adam_c3_bias_v_read_readvariableop/
+savev2_adam_bn3_gamma_v_read_readvariableop.
*savev2_adam_bn3_beta_v_read_readvariableop0
,savev2_adam_ct1_kernel_v_read_readvariableop.
*savev2_adam_ct1_bias_v_read_readvariableop/
+savev2_adam_bn4_gamma_v_read_readvariableop.
*savev2_adam_bn4_beta_v_read_readvariableop0
,savev2_adam_ct2_kernel_v_read_readvariableop.
*savev2_adam_ct2_bias_v_read_readvariableop/
+savev2_adam_bn5_gamma_v_read_readvariableop.
*savev2_adam_bn5_beta_v_read_readvariableop0
,savev2_adam_ct3_kernel_v_read_readvariableop.
*savev2_adam_ct3_bias_v_read_readvariableop/
+savev2_adam_bn6_gamma_v_read_readvariableop.
*savev2_adam_bn6_beta_v_read_readvariableop0
,savev2_adam_ct4_kernel_v_read_readvariableop.
*savev2_adam_ct4_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ├6
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*В5
valueР5B▀5bB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┤
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*┘
value¤B╠bB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ц"
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_c1_kernel_read_readvariableop"savev2_c1_bias_read_readvariableop$savev2_bn1_gamma_read_readvariableop#savev2_bn1_beta_read_readvariableop*savev2_bn1_moving_mean_read_readvariableop.savev2_bn1_moving_variance_read_readvariableop$savev2_c2_kernel_read_readvariableop"savev2_c2_bias_read_readvariableop$savev2_bn2_gamma_read_readvariableop#savev2_bn2_beta_read_readvariableop*savev2_bn2_moving_mean_read_readvariableop.savev2_bn2_moving_variance_read_readvariableop$savev2_c3_kernel_read_readvariableop"savev2_c3_bias_read_readvariableop$savev2_bn3_gamma_read_readvariableop#savev2_bn3_beta_read_readvariableop*savev2_bn3_moving_mean_read_readvariableop.savev2_bn3_moving_variance_read_readvariableop%savev2_ct1_kernel_read_readvariableop#savev2_ct1_bias_read_readvariableop$savev2_bn4_gamma_read_readvariableop#savev2_bn4_beta_read_readvariableop*savev2_bn4_moving_mean_read_readvariableop.savev2_bn4_moving_variance_read_readvariableop%savev2_ct2_kernel_read_readvariableop#savev2_ct2_bias_read_readvariableop$savev2_bn5_gamma_read_readvariableop#savev2_bn5_beta_read_readvariableop*savev2_bn5_moving_mean_read_readvariableop.savev2_bn5_moving_variance_read_readvariableop%savev2_ct3_kernel_read_readvariableop#savev2_ct3_bias_read_readvariableop$savev2_bn6_gamma_read_readvariableop#savev2_bn6_beta_read_readvariableop*savev2_bn6_moving_mean_read_readvariableop.savev2_bn6_moving_variance_read_readvariableop%savev2_ct4_kernel_read_readvariableop#savev2_ct4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop+savev2_adam_c1_kernel_m_read_readvariableop)savev2_adam_c1_bias_m_read_readvariableop+savev2_adam_bn1_gamma_m_read_readvariableop*savev2_adam_bn1_beta_m_read_readvariableop+savev2_adam_c2_kernel_m_read_readvariableop)savev2_adam_c2_bias_m_read_readvariableop+savev2_adam_bn2_gamma_m_read_readvariableop*savev2_adam_bn2_beta_m_read_readvariableop+savev2_adam_c3_kernel_m_read_readvariableop)savev2_adam_c3_bias_m_read_readvariableop+savev2_adam_bn3_gamma_m_read_readvariableop*savev2_adam_bn3_beta_m_read_readvariableop,savev2_adam_ct1_kernel_m_read_readvariableop*savev2_adam_ct1_bias_m_read_readvariableop+savev2_adam_bn4_gamma_m_read_readvariableop*savev2_adam_bn4_beta_m_read_readvariableop,savev2_adam_ct2_kernel_m_read_readvariableop*savev2_adam_ct2_bias_m_read_readvariableop+savev2_adam_bn5_gamma_m_read_readvariableop*savev2_adam_bn5_beta_m_read_readvariableop,savev2_adam_ct3_kernel_m_read_readvariableop*savev2_adam_ct3_bias_m_read_readvariableop+savev2_adam_bn6_gamma_m_read_readvariableop*savev2_adam_bn6_beta_m_read_readvariableop,savev2_adam_ct4_kernel_m_read_readvariableop*savev2_adam_ct4_bias_m_read_readvariableop+savev2_adam_c1_kernel_v_read_readvariableop)savev2_adam_c1_bias_v_read_readvariableop+savev2_adam_bn1_gamma_v_read_readvariableop*savev2_adam_bn1_beta_v_read_readvariableop+savev2_adam_c2_kernel_v_read_readvariableop)savev2_adam_c2_bias_v_read_readvariableop+savev2_adam_bn2_gamma_v_read_readvariableop*savev2_adam_bn2_beta_v_read_readvariableop+savev2_adam_c3_kernel_v_read_readvariableop)savev2_adam_c3_bias_v_read_readvariableop+savev2_adam_bn3_gamma_v_read_readvariableop*savev2_adam_bn3_beta_v_read_readvariableop,savev2_adam_ct1_kernel_v_read_readvariableop*savev2_adam_ct1_bias_v_read_readvariableop+savev2_adam_bn4_gamma_v_read_readvariableop*savev2_adam_bn4_beta_v_read_readvariableop,savev2_adam_ct2_kernel_v_read_readvariableop*savev2_adam_ct2_bias_v_read_readvariableop+savev2_adam_bn5_gamma_v_read_readvariableop*savev2_adam_bn5_beta_v_read_readvariableop,savev2_adam_ct3_kernel_v_read_readvariableop*savev2_adam_ct3_bias_v_read_readvariableop+savev2_adam_bn6_gamma_v_read_readvariableop*savev2_adam_bn6_beta_v_read_readvariableop,savev2_adam_ct4_kernel_v_read_readvariableop*savev2_adam_ct4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *p
dtypesf
d2b	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*┐
_input_shapesГ
ф: : : : : : : : :::::::::::::::::::::::: : : : : : : :: : : : : : : : : : : : :::::::::::::::: : : : : :: : : : : :::::::::::::::: : : : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: :  

_output_shapes
: : !

_output_shapes
: : "

_output_shapes
: : #

_output_shapes
: : $

_output_shapes
: :,%(
&
_output_shapes
: : &

_output_shapes
::'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :,.(
&
_output_shapes
: : /

_output_shapes
: : 0

_output_shapes
: : 1

_output_shapes
: :,2(
&
_output_shapes
: : 3

_output_shapes
:: 4

_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
:: 7

_output_shapes
:: 8

_output_shapes
:: 9

_output_shapes
::,:(
&
_output_shapes
:: ;

_output_shapes
:: <

_output_shapes
:: =

_output_shapes
::,>(
&
_output_shapes
:: ?

_output_shapes
:: @

_output_shapes
:: A

_output_shapes
::,B(
&
_output_shapes
: : C

_output_shapes
: : D

_output_shapes
: : E

_output_shapes
: :,F(
&
_output_shapes
: : G

_output_shapes
::,H(
&
_output_shapes
: : I

_output_shapes
: : J

_output_shapes
: : K

_output_shapes
: :,L(
&
_output_shapes
: : M

_output_shapes
:: N

_output_shapes
:: O

_output_shapes
::,P(
&
_output_shapes
:: Q

_output_shapes
:: R

_output_shapes
:: S

_output_shapes
::,T(
&
_output_shapes
:: U

_output_shapes
:: V

_output_shapes
:: W

_output_shapes
::,X(
&
_output_shapes
:: Y

_output_shapes
:: Z

_output_shapes
:: [

_output_shapes
::,\(
&
_output_shapes
: : ]

_output_shapes
: : ^

_output_shapes
: : _

_output_shapes
: :,`(
&
_output_shapes
: : a

_output_shapes
::b

_output_shapes
: 
ф
ў
#__inference_ct4_layer_call_fn_13544

inputs!
unknown: 
	unknown_0:
identityѕбStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct4_layer_call_and_return_conditional_losses_10185Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
м
L
0__inference_max_pooling2d_12_layer_call_fn_12331

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_10219h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ђђ :Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
Ц
Й
#__inference_bn4_layer_call_fn_12964

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn4_layer_call_and_return_conditional_losses_10421w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
 
Г
>__inference_bn3_layer_call_and_return_conditional_losses_12811

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0─
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
К
Г
>__inference_bn1_layer_call_and_return_conditional_losses_12429

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
│!
І
>__inference_ct4_layer_call_and_return_conditional_losses_13587

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ў
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+                           Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
▀
Ќ
"__inference_c3_layer_call_fn_12657

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c3_layer_call_and_return_conditional_losses_10321w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
░
І
>__inference_ct4_layer_call_and_return_conditional_losses_13611

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskJ
stack/1Const*
_output_shapes
: *
dtype0*
value
B :ђJ
stack/2Const*
_output_shapes
: *
dtype0*
value
B :ђI
stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ѕ
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0╠
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:         ђђ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ѕ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ђђ`
SigmoidSigmoidBiasAdd:output:0*
T0*1
_output_shapes
:         ђђd
IdentityIdentitySigmoid:y:0^NoOp*
T0*1
_output_shapes
:         ђђЂ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
д
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_12687

inputs
identityє
MaxPoolMaxPoolinputs*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╣
Ѕ
>__inference_bn1_layer_call_and_return_conditional_losses_12411

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
■э
А8
!__inference__traced_restore_14226
file_prefix4
assignvariableop_c1_kernel: (
assignvariableop_1_c1_bias: *
assignvariableop_2_bn1_gamma: )
assignvariableop_3_bn1_beta: 0
"assignvariableop_4_bn1_moving_mean: 4
&assignvariableop_5_bn1_moving_variance: 6
assignvariableop_6_c2_kernel: (
assignvariableop_7_c2_bias:*
assignvariableop_8_bn2_gamma:)
assignvariableop_9_bn2_beta:1
#assignvariableop_10_bn2_moving_mean:5
'assignvariableop_11_bn2_moving_variance:7
assignvariableop_12_c3_kernel:)
assignvariableop_13_c3_bias:+
assignvariableop_14_bn3_gamma:*
assignvariableop_15_bn3_beta:1
#assignvariableop_16_bn3_moving_mean:5
'assignvariableop_17_bn3_moving_variance:8
assignvariableop_18_ct1_kernel:*
assignvariableop_19_ct1_bias:+
assignvariableop_20_bn4_gamma:*
assignvariableop_21_bn4_beta:1
#assignvariableop_22_bn4_moving_mean:5
'assignvariableop_23_bn4_moving_variance:8
assignvariableop_24_ct2_kernel:*
assignvariableop_25_ct2_bias:+
assignvariableop_26_bn5_gamma:*
assignvariableop_27_bn5_beta:1
#assignvariableop_28_bn5_moving_mean:5
'assignvariableop_29_bn5_moving_variance:8
assignvariableop_30_ct3_kernel: *
assignvariableop_31_ct3_bias: +
assignvariableop_32_bn6_gamma: *
assignvariableop_33_bn6_beta: 1
#assignvariableop_34_bn6_moving_mean: 5
'assignvariableop_35_bn6_moving_variance: 8
assignvariableop_36_ct4_kernel: *
assignvariableop_37_ct4_bias:'
assignvariableop_38_adam_iter:	 )
assignvariableop_39_adam_beta_1: )
assignvariableop_40_adam_beta_2: (
assignvariableop_41_adam_decay: 0
&assignvariableop_42_adam_learning_rate: #
assignvariableop_43_total: #
assignvariableop_44_count: >
$assignvariableop_45_adam_c1_kernel_m: 0
"assignvariableop_46_adam_c1_bias_m: 2
$assignvariableop_47_adam_bn1_gamma_m: 1
#assignvariableop_48_adam_bn1_beta_m: >
$assignvariableop_49_adam_c2_kernel_m: 0
"assignvariableop_50_adam_c2_bias_m:2
$assignvariableop_51_adam_bn2_gamma_m:1
#assignvariableop_52_adam_bn2_beta_m:>
$assignvariableop_53_adam_c3_kernel_m:0
"assignvariableop_54_adam_c3_bias_m:2
$assignvariableop_55_adam_bn3_gamma_m:1
#assignvariableop_56_adam_bn3_beta_m:?
%assignvariableop_57_adam_ct1_kernel_m:1
#assignvariableop_58_adam_ct1_bias_m:2
$assignvariableop_59_adam_bn4_gamma_m:1
#assignvariableop_60_adam_bn4_beta_m:?
%assignvariableop_61_adam_ct2_kernel_m:1
#assignvariableop_62_adam_ct2_bias_m:2
$assignvariableop_63_adam_bn5_gamma_m:1
#assignvariableop_64_adam_bn5_beta_m:?
%assignvariableop_65_adam_ct3_kernel_m: 1
#assignvariableop_66_adam_ct3_bias_m: 2
$assignvariableop_67_adam_bn6_gamma_m: 1
#assignvariableop_68_adam_bn6_beta_m: ?
%assignvariableop_69_adam_ct4_kernel_m: 1
#assignvariableop_70_adam_ct4_bias_m:>
$assignvariableop_71_adam_c1_kernel_v: 0
"assignvariableop_72_adam_c1_bias_v: 2
$assignvariableop_73_adam_bn1_gamma_v: 1
#assignvariableop_74_adam_bn1_beta_v: >
$assignvariableop_75_adam_c2_kernel_v: 0
"assignvariableop_76_adam_c2_bias_v:2
$assignvariableop_77_adam_bn2_gamma_v:1
#assignvariableop_78_adam_bn2_beta_v:>
$assignvariableop_79_adam_c3_kernel_v:0
"assignvariableop_80_adam_c3_bias_v:2
$assignvariableop_81_adam_bn3_gamma_v:1
#assignvariableop_82_adam_bn3_beta_v:?
%assignvariableop_83_adam_ct1_kernel_v:1
#assignvariableop_84_adam_ct1_bias_v:2
$assignvariableop_85_adam_bn4_gamma_v:1
#assignvariableop_86_adam_bn4_beta_v:?
%assignvariableop_87_adam_ct2_kernel_v:1
#assignvariableop_88_adam_ct2_bias_v:2
$assignvariableop_89_adam_bn5_gamma_v:1
#assignvariableop_90_adam_bn5_beta_v:?
%assignvariableop_91_adam_ct3_kernel_v: 1
#assignvariableop_92_adam_ct3_bias_v: 2
$assignvariableop_93_adam_bn6_gamma_v: 1
#assignvariableop_94_adam_bn6_beta_v: ?
%assignvariableop_95_adam_ct4_kernel_v: 1
#assignvariableop_96_adam_ct4_bias_v:
identity_98ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_47бAssignVariableOp_48бAssignVariableOp_49бAssignVariableOp_5бAssignVariableOp_50бAssignVariableOp_51бAssignVariableOp_52бAssignVariableOp_53бAssignVariableOp_54бAssignVariableOp_55бAssignVariableOp_56бAssignVariableOp_57бAssignVariableOp_58бAssignVariableOp_59бAssignVariableOp_6бAssignVariableOp_60бAssignVariableOp_61бAssignVariableOp_62бAssignVariableOp_63бAssignVariableOp_64бAssignVariableOp_65бAssignVariableOp_66бAssignVariableOp_67бAssignVariableOp_68бAssignVariableOp_69бAssignVariableOp_7бAssignVariableOp_70бAssignVariableOp_71бAssignVariableOp_72бAssignVariableOp_73бAssignVariableOp_74бAssignVariableOp_75бAssignVariableOp_76бAssignVariableOp_77бAssignVariableOp_78бAssignVariableOp_79бAssignVariableOp_8бAssignVariableOp_80бAssignVariableOp_81бAssignVariableOp_82бAssignVariableOp_83бAssignVariableOp_84бAssignVariableOp_85бAssignVariableOp_86бAssignVariableOp_87бAssignVariableOp_88бAssignVariableOp_89бAssignVariableOp_9бAssignVariableOp_90бAssignVariableOp_91бAssignVariableOp_92бAssignVariableOp_93бAssignVariableOp_94бAssignVariableOp_95бAssignVariableOp_96к6
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*В5
valueР5B▀5bB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHи
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*┘
value¤B╠bB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B І
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ъ
_output_shapesІ
ѕ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*p
dtypesf
d2b	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOpAssignVariableOpassignvariableop_c1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_1AssignVariableOpassignvariableop_1_c1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_4AssignVariableOp"assignvariableop_4_bn1_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_5AssignVariableOp&assignvariableop_5_bn1_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_6AssignVariableOpassignvariableop_6_c2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_7AssignVariableOpassignvariableop_7_c2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_8AssignVariableOpassignvariableop_8_bn2_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_9AssignVariableOpassignvariableop_9_bn2_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_10AssignVariableOp#assignvariableop_10_bn2_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_11AssignVariableOp'assignvariableop_11_bn2_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_12AssignVariableOpassignvariableop_12_c3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_13AssignVariableOpassignvariableop_13_c3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_14AssignVariableOpassignvariableop_14_bn3_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_15AssignVariableOpassignvariableop_15_bn3_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_16AssignVariableOp#assignvariableop_16_bn3_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_17AssignVariableOp'assignvariableop_17_bn3_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_18AssignVariableOpassignvariableop_18_ct1_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_19AssignVariableOpassignvariableop_19_ct1_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_20AssignVariableOpassignvariableop_20_bn4_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_21AssignVariableOpassignvariableop_21_bn4_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_22AssignVariableOp#assignvariableop_22_bn4_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_23AssignVariableOp'assignvariableop_23_bn4_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_24AssignVariableOpassignvariableop_24_ct2_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_25AssignVariableOpassignvariableop_25_ct2_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_26AssignVariableOpassignvariableop_26_bn5_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_27AssignVariableOpassignvariableop_27_bn5_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_28AssignVariableOp#assignvariableop_28_bn5_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_29AssignVariableOp'assignvariableop_29_bn5_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_30AssignVariableOpassignvariableop_30_ct3_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_31AssignVariableOpassignvariableop_31_ct3_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_32AssignVariableOpassignvariableop_32_bn6_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_33AssignVariableOpassignvariableop_33_bn6_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_34AssignVariableOp#assignvariableop_34_bn6_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_35AssignVariableOp'assignvariableop_35_bn6_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_36AssignVariableOpassignvariableop_36_ct4_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_37AssignVariableOpassignvariableop_37_ct4_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:ј
AssignVariableOp_38AssignVariableOpassignvariableop_38_adam_iterIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_39AssignVariableOpassignvariableop_39_adam_beta_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_40AssignVariableOpassignvariableop_40_adam_beta_2Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_41AssignVariableOpassignvariableop_41_adam_decayIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_learning_rateIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_43AssignVariableOpassignvariableop_43_totalIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_44AssignVariableOpassignvariableop_44_countIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_45AssignVariableOp$assignvariableop_45_adam_c1_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_46AssignVariableOp"assignvariableop_46_adam_c1_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_47AssignVariableOp$assignvariableop_47_adam_bn1_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_48AssignVariableOp#assignvariableop_48_adam_bn1_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_49AssignVariableOp$assignvariableop_49_adam_c2_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_50AssignVariableOp"assignvariableop_50_adam_c2_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_51AssignVariableOp$assignvariableop_51_adam_bn2_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_52AssignVariableOp#assignvariableop_52_adam_bn2_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_53AssignVariableOp$assignvariableop_53_adam_c3_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_54AssignVariableOp"assignvariableop_54_adam_c3_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_55AssignVariableOp$assignvariableop_55_adam_bn3_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_56AssignVariableOp#assignvariableop_56_adam_bn3_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_57AssignVariableOp%assignvariableop_57_adam_ct1_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_58AssignVariableOp#assignvariableop_58_adam_ct1_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_59AssignVariableOp$assignvariableop_59_adam_bn4_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_60AssignVariableOp#assignvariableop_60_adam_bn4_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_61AssignVariableOp%assignvariableop_61_adam_ct2_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_62AssignVariableOp#assignvariableop_62_adam_ct2_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_63AssignVariableOp$assignvariableop_63_adam_bn5_gamma_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_64AssignVariableOp#assignvariableop_64_adam_bn5_beta_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_65AssignVariableOp%assignvariableop_65_adam_ct3_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_66AssignVariableOp#assignvariableop_66_adam_ct3_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_67AssignVariableOp$assignvariableop_67_adam_bn6_gamma_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_68AssignVariableOp#assignvariableop_68_adam_bn6_beta_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_69AssignVariableOp%assignvariableop_69_adam_ct4_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_70AssignVariableOp#assignvariableop_70_adam_ct4_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_71AssignVariableOp$assignvariableop_71_adam_c1_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_72AssignVariableOp"assignvariableop_72_adam_c1_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_73AssignVariableOp$assignvariableop_73_adam_bn1_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_74AssignVariableOp#assignvariableop_74_adam_bn1_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_75AssignVariableOp$assignvariableop_75_adam_c2_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_76AssignVariableOp"assignvariableop_76_adam_c2_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_77AssignVariableOp$assignvariableop_77_adam_bn2_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_78AssignVariableOp#assignvariableop_78_adam_bn2_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_79AssignVariableOp$assignvariableop_79_adam_c3_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_80AssignVariableOp"assignvariableop_80_adam_c3_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_81AssignVariableOp$assignvariableop_81_adam_bn3_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_82AssignVariableOp#assignvariableop_82_adam_bn3_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_83AssignVariableOp%assignvariableop_83_adam_ct1_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_84AssignVariableOp#assignvariableop_84_adam_ct1_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_85AssignVariableOp$assignvariableop_85_adam_bn4_gamma_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_86AssignVariableOp#assignvariableop_86_adam_bn4_beta_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_87AssignVariableOp%assignvariableop_87_adam_ct2_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_88AssignVariableOp#assignvariableop_88_adam_ct2_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_89AssignVariableOp$assignvariableop_89_adam_bn5_gamma_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_90AssignVariableOp#assignvariableop_90_adam_bn5_beta_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_91AssignVariableOp%assignvariableop_91_adam_ct3_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_92AssignVariableOp#assignvariableop_92_adam_ct3_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_93AssignVariableOp$assignvariableop_93_adam_bn6_gamma_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_94AssignVariableOp#assignvariableop_94_adam_bn6_beta_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_95AssignVariableOp%assignvariableop_95_adam_ct4_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_96AssignVariableOp#assignvariableop_96_adam_ct4_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ц
Identity_97Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_98IdentityIdentity_97:output:0^NoOp_1*
T0*
_output_shapes
: њ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96*"
_acd_function_control_output(*
_output_shapes
 "#
identity_98Identity_98:output:0*┘
_input_shapesК
─: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_96:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╣
Ѕ
>__inference_bn5_layer_call_and_return_conditional_losses_13233

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ы
Ѕ
>__inference_bn2_layer_call_and_return_conditional_losses_10294

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Х
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
║
L
0__inference_max_pooling2d_12_layer_call_fn_12326

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_9547Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╣
Ѕ
>__inference_bn4_layer_call_and_return_conditional_losses_12995

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Э
Z
>__inference_LR3_layer_call_and_return_conditional_losses_12821

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         *
alpha%џЎЎ>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Љ
f
J__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_9699

inputs
identityА
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ы
Ѕ
>__inference_bn5_layer_call_and_return_conditional_losses_10492

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Х
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@:::::*
epsilon%oЃ:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @@░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ф
g
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_12341

inputs
identityє
MaxPoolMaxPoolinputs*/
_output_shapes
:         @@ *
ksize
*
paddingSAME*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         @@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ђђ :Y U
1
_output_shapes
:         ђђ 
 
_user_specified_nameinputs
Љ
f
J__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_9623

inputs
identityА
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Э
Z
>__inference_LR2_layer_call_and_return_conditional_losses_12648

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         *
alpha%џЎЎ>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Б
Й
#__inference_bn4_layer_call_fn_12977

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn4_layer_call_and_return_conditional_losses_10865w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
в
Й
#__inference_bn1_layer_call_fn_12367

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_bn1_layer_call_and_return_conditional_losses_9603Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
▀
Ќ
"__inference_c2_layer_call_fn_12484

inputs!
unknown: 
	unknown_0:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c2_layer_call_and_return_conditional_losses_10265w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
┼ 
і
=__inference_ct1_layer_call_and_return_conditional_losses_9803

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ў
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
є
ђ	
'__inference_model_3_layer_call_fn_10689
img!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:$

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identityѕбStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallimgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_10610y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:         ђђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
1
_output_shapes
:         ђђ

_user_specified_nameimg
ы
Ѕ
>__inference_bn1_layer_call_and_return_conditional_losses_10238

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Х
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@ : : : : :*
epsilon%oЃ:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @@ ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
И
ѕ
=__inference_bn1_layer_call_and_return_conditional_losses_9572

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Ц
Й
#__inference_bn1_layer_call_fn_12380

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_10238w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
к
г
=__inference_bn4_layer_call_and_return_conditional_losses_9882

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ц
Й
#__inference_bn5_layer_call_fn_13202

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn5_layer_call_and_return_conditional_losses_10492w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
┐b
У
B__inference_model_3_layer_call_and_return_conditional_losses_10610

inputs"
c1_10210: 
c1_10212: 
	bn1_10239: 
	bn1_10241: 
	bn1_10243: 
	bn1_10245: "
c2_10266: 
c2_10268:
	bn2_10295:
	bn2_10297:
	bn2_10299:
	bn2_10301:"
c3_10322:
c3_10324:
	bn3_10351:
	bn3_10353:
	bn3_10355:
	bn3_10357:#
	ct1_10390:
	ct1_10392:
	bn4_10422:
	bn4_10424:
	bn4_10426:
	bn4_10428:#
	ct2_10461:
	ct2_10463:
	bn5_10493:
	bn5_10495:
	bn5_10497:
	bn5_10499:#
	ct3_10532: 
	ct3_10534: 
	bn6_10564: 
	bn6_10566: 
	bn6_10568: 
	bn6_10570: #
	ct4_10604: 
	ct4_10606:
identityѕбbn1/StatefulPartitionedCallбbn2/StatefulPartitionedCallбbn3/StatefulPartitionedCallбbn4/StatefulPartitionedCallбbn5/StatefulPartitionedCallбbn6/StatefulPartitionedCallбc1/StatefulPartitionedCallбc2/StatefulPartitionedCallбc3/StatefulPartitionedCallбct1/StatefulPartitionedCallбct2/StatefulPartitionedCallбct3/StatefulPartitionedCallбct4/StatefulPartitionedCallР
c1/StatefulPartitionedCallStatefulPartitionedCallinputsc1_10210c1_10212*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c1_layer_call_and_return_conditional_losses_10209№
 max_pooling2d_12/PartitionedCallPartitionedCall#c1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_10219А
bn1/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0	bn1_10239	bn1_10241	bn1_10243	bn1_10245*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_10238о
LR1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR1_layer_call_and_return_conditional_losses_10253Ш
c2/StatefulPartitionedCallStatefulPartitionedCallLR1/PartitionedCall:output:0c2_10266c2_10268*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c2_layer_call_and_return_conditional_losses_10265№
 max_pooling2d_13/PartitionedCallPartitionedCall#c2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_10275А
bn2/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0	bn2_10295	bn2_10297	bn2_10299	bn2_10301*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_10294о
LR2/PartitionedCallPartitionedCall$bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR2_layer_call_and_return_conditional_losses_10309Ш
c3/StatefulPartitionedCallStatefulPartitionedCallLR2/PartitionedCall:output:0c3_10322c3_10324*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_c3_layer_call_and_return_conditional_losses_10321№
 max_pooling2d_14/PartitionedCallPartitionedCall#c3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_10331А
bn3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0	bn3_10351	bn3_10353	bn3_10355	bn3_10357*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_10350о
LR3/PartitionedCallPartitionedCall$bn3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR3_layer_call_and_return_conditional_losses_10365Щ
ct1/StatefulPartitionedCallStatefulPartitionedCallLR3/PartitionedCall:output:0	ct1_10390	ct1_10392*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct1_layer_call_and_return_conditional_losses_10389Ж
up_sampling2d/PartitionedCallPartitionedCall$ct1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_10402ъ
bn4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0	bn4_10422	bn4_10424	bn4_10426	bn4_10428*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn4_layer_call_and_return_conditional_losses_10421о
LR4/PartitionedCallPartitionedCall$bn4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR4_layer_call_and_return_conditional_losses_10436Щ
ct2/StatefulPartitionedCallStatefulPartitionedCallLR4/PartitionedCall:output:0	ct2_10461	ct2_10463*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct2_layer_call_and_return_conditional_losses_10460Ь
up_sampling2d_1/PartitionedCallPartitionedCall$ct2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_10473а
bn5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0	bn5_10493	bn5_10495	bn5_10497	bn5_10499*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn5_layer_call_and_return_conditional_losses_10492о
LR5/PartitionedCallPartitionedCall$bn5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR5_layer_call_and_return_conditional_losses_10507Щ
ct3/StatefulPartitionedCallStatefulPartitionedCallLR5/PartitionedCall:output:0	ct3_10532	ct3_10534*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct3_layer_call_and_return_conditional_losses_10531­
up_sampling2d_2/PartitionedCallPartitionedCall$ct3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_10544б
bn6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0	bn6_10564	bn6_10566	bn6_10568	bn6_10570*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn6_layer_call_and_return_conditional_losses_10563п
LR6/PartitionedCallPartitionedCall$bn6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_LR6_layer_call_and_return_conditional_losses_10578Ч
ct4/StatefulPartitionedCallStatefulPartitionedCallLR6/PartitionedCall:output:0	ct4_10604	ct4_10606*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct4_layer_call_and_return_conditional_losses_10603}
IdentityIdentity$ct4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ╔
NoOpNoOp^bn1/StatefulPartitionedCall^bn2/StatefulPartitionedCall^bn3/StatefulPartitionedCall^bn4/StatefulPartitionedCall^bn5/StatefulPartitionedCall^bn6/StatefulPartitionedCall^c1/StatefulPartitionedCall^c2/StatefulPartitionedCall^c3/StatefulPartitionedCall^ct1/StatefulPartitionedCall^ct2/StatefulPartitionedCall^ct3/StatefulPartitionedCall^ct4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:         ђђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2:
bn2/StatefulPartitionedCallbn2/StatefulPartitionedCall2:
bn3/StatefulPartitionedCallbn3/StatefulPartitionedCall2:
bn4/StatefulPartitionedCallbn4/StatefulPartitionedCall2:
bn5/StatefulPartitionedCallbn5/StatefulPartitionedCall2:
bn6/StatefulPartitionedCallbn6/StatefulPartitionedCall28
c1/StatefulPartitionedCallc1/StatefulPartitionedCall28
c2/StatefulPartitionedCallc2/StatefulPartitionedCall28
c3/StatefulPartitionedCallc3/StatefulPartitionedCall2:
ct1/StatefulPartitionedCallct1/StatefulPartitionedCall2:
ct2/StatefulPartitionedCallct2/StatefulPartitionedCall2:
ct3/StatefulPartitionedCallct3/StatefulPartitionedCall2:
ct4/StatefulPartitionedCallct4/StatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
к
г
=__inference_bn2_layer_call_and_return_conditional_losses_9679

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ь
Й
#__inference_bn4_layer_call_fn_12938

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_9851Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ј
Ѓ	
'__inference_model_3_layer_call_fn_11813

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:$

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identityѕбStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ђђ*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_10610y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ђђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:         ђђ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
█
f
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_10473

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"        X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:џ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*/
_output_shapes
:         @@*
half_pixel_centers(}
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:         @@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           :W S
/
_output_shapes
:           
 
_user_specified_nameinputs
╣
Ѕ
>__inference_bn6_layer_call_and_return_conditional_losses_13471

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ы
Ѕ
>__inference_bn4_layer_call_and_return_conditional_losses_13031

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Х
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Э
Z
>__inference_LR3_layer_call_and_return_conditional_losses_10365

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         *
alpha%џЎЎ>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
К
Г
>__inference_bn2_layer_call_and_return_conditional_losses_12602

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
┘
d
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_12925

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"      X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:џ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*/
_output_shapes
:         *
half_pixel_centers(}
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
И
ѕ
=__inference_bn5_layer_call_and_return_conditional_losses_9978

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
 
Г
>__inference_bn2_layer_call_and_return_conditional_losses_10994

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0─
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ы
Ѕ
>__inference_bn1_layer_call_and_return_conditional_losses_12447

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Х
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@ : : : : :*
epsilon%oЃ:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @@ ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
ы
Ѕ
>__inference_bn4_layer_call_and_return_conditional_losses_10421

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Х
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ц
Й
#__inference_bn3_layer_call_fn_12726

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_10350w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
р
ў
#__inference_ct2_layer_call_fn_13077

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct2_layer_call_and_return_conditional_losses_10460w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
р
ў
#__inference_ct1_layer_call_fn_12839

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_ct1_layer_call_and_return_conditional_losses_10389w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Б
Й
#__inference_bn3_layer_call_fn_12739

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_10929w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
│!
І
>__inference_ct4_layer_call_and_return_conditional_losses_10185

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ў
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+                           Ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
в
Й
#__inference_bn3_layer_call_fn_12713

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *F
fAR?
=__inference_bn3_layer_call_and_return_conditional_losses_9755Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs"ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*▓
serving_defaultъ
=
img6
serving_default_img:0         ђђA
ct4:
StatefulPartitionedCall:0         ђђtensorflow/serving/predict:ѓ№
Ю
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
layer-22
layer_with_weights-11
layer-23
layer-24
layer_with_weights-12
layer-25
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
 
signatures
ы__call__
+Ы&call_and_return_all_conditional_losses
з_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
й

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
З__call__
+ш&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
'	variables
(trainable_variables
)regularization_losses
*	keras_api
Ш__call__
+э&call_and_return_all_conditional_losses"
_tf_keras_layer
В
+axis
	,gamma
-beta
.moving_mean
/moving_variance
0	variables
1trainable_variables
2regularization_losses
3	keras_api
Э__call__
+щ&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
4	variables
5trainable_variables
6regularization_losses
7	keras_api
Щ__call__
+ч&call_and_return_all_conditional_losses"
_tf_keras_layer
й

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
Ч__call__
+§&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
>	variables
?trainable_variables
@regularization_losses
A	keras_api
■__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_layer
В
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
ђ__call__
+Ђ&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
ѓ__call__
+Ѓ&call_and_return_all_conditional_losses"
_tf_keras_layer
й

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
ё__call__
+Ё&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
є__call__
+Є&call_and_return_all_conditional_losses"
_tf_keras_layer
В
Yaxis
	Zgamma
[beta
\moving_mean
]moving_variance
^	variables
_trainable_variables
`regularization_losses
a	keras_api
ѕ__call__
+Ѕ&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
і__call__
+І&call_and_return_all_conditional_losses"
_tf_keras_layer
й

fkernel
gbias
h	variables
itrainable_variables
jregularization_losses
k	keras_api
ї__call__
+Ї&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
ј__call__
+Ј&call_and_return_all_conditional_losses"
_tf_keras_layer
В
paxis
	qgamma
rbeta
smoving_mean
tmoving_variance
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
љ__call__
+Љ&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
њ__call__
+Њ&call_and_return_all_conditional_losses"
_tf_keras_layer
└

}kernel
~bias
	variables
ђtrainable_variables
Ђregularization_losses
ѓ	keras_api
ћ__call__
+Ћ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ф
Ѓ	variables
ёtrainable_variables
Ёregularization_losses
є	keras_api
ќ__call__
+Ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
ш
	Єaxis

ѕgamma
	Ѕbeta
іmoving_mean
Іmoving_variance
ї	variables
Їtrainable_variables
јregularization_losses
Ј	keras_api
ў__call__
+Ў&call_and_return_all_conditional_losses"
_tf_keras_layer
Ф
љ	variables
Љtrainable_variables
њregularization_losses
Њ	keras_api
џ__call__
+Џ&call_and_return_all_conditional_losses"
_tf_keras_layer
├
ћkernel
	Ћbias
ќ	variables
Ќtrainable_variables
ўregularization_losses
Ў	keras_api
ю__call__
+Ю&call_and_return_all_conditional_losses"
_tf_keras_layer
Ф
џ	variables
Џtrainable_variables
юregularization_losses
Ю	keras_api
ъ__call__
+Ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
ш
	ъaxis

Ъgamma
	аbeta
Аmoving_mean
бmoving_variance
Б	variables
цtrainable_variables
Цregularization_losses
д	keras_api
а__call__
+А&call_and_return_all_conditional_losses"
_tf_keras_layer
Ф
Д	variables
еtrainable_variables
Еregularization_losses
ф	keras_api
б__call__
+Б&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Фkernel
	гbias
Г	variables
«trainable_variables
»regularization_losses
░	keras_api
ц__call__
+Ц&call_and_return_all_conditional_losses"
_tf_keras_layer
­
	▒iter
▓beta_1
│beta_2

┤decay
хlearning_rate!mй"mЙ,m┐-m└8m┴9m┬Cm├Dm─Om┼PmкZmК[m╚fm╔gm╩qm╦rm╠}m═~m╬	ѕm¤	Ѕmл	ћmЛ	Ћmм	ЪmМ	аmн	ФmН	гmо!vО"vп,v┘-v┌8v█9v▄CvПDvяOv▀PvЯZvр[vРfvсgvСqvтrvТ}vу~vУ	ѕvж	ЅvЖ	ћvв	ЋvВ	Ъvь	аvЬ	Фv№	гv­"
	optimizer
м
!0
"1
,2
-3
.4
/5
86
97
C8
D9
E10
F11
O12
P13
Z14
[15
\16
]17
f18
g19
q20
r21
s22
t23
}24
~25
ѕ26
Ѕ27
і28
І29
ћ30
Ћ31
Ъ32
а33
А34
б35
Ф36
г37"
trackable_list_wrapper
Ь
!0
"1
,2
-3
84
95
C6
D7
O8
P9
Z10
[11
f12
g13
q14
r15
}16
~17
ѕ18
Ѕ19
ћ20
Ћ21
Ъ22
а23
Ф24
г25"
trackable_list_wrapper
 "
trackable_list_wrapper
М
Хnon_trainable_variables
иlayers
Иmetrics
 ╣layer_regularization_losses
║layer_metrics
	variables
trainable_variables
regularization_losses
ы__call__
з_default_save_signature
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
-
дserving_default"
signature_map
#:! 2	c1/kernel
: 2c1/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
╗non_trainable_variables
╝layers
йmetrics
 Йlayer_regularization_losses
┐layer_metrics
#	variables
$trainable_variables
%regularization_losses
З__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
'	variables
(trainable_variables
)regularization_losses
Ш__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
: 2	bn1/gamma
: 2bn1/beta
:  (2bn1/moving_mean
#:!  (2bn1/moving_variance
<
,0
-1
.2
/3"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
┼non_trainable_variables
кlayers
Кmetrics
 ╚layer_regularization_losses
╔layer_metrics
0	variables
1trainable_variables
2regularization_losses
Э__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
4	variables
5trainable_variables
6regularization_losses
Щ__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses"
_generic_user_object
#:! 2	c2/kernel
:2c2/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
х
¤non_trainable_variables
лlayers
Лmetrics
 мlayer_regularization_losses
Мlayer_metrics
:	variables
;trainable_variables
<regularization_losses
Ч__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
нnon_trainable_variables
Нlayers
оmetrics
 Оlayer_regularization_losses
пlayer_metrics
>	variables
?trainable_variables
@regularization_losses
■__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2	bn2/gamma
:2bn2/beta
: (2bn2/moving_mean
#:! (2bn2/moving_variance
<
C0
D1
E2
F3"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
Пlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
ђ__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
яnon_trainable_variables
▀layers
Яmetrics
 рlayer_regularization_losses
Рlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
ѓ__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses"
_generic_user_object
#:!2	c3/kernel
:2c3/bias
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
сnon_trainable_variables
Сlayers
тmetrics
 Тlayer_regularization_losses
уlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
ё__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Уnon_trainable_variables
жlayers
Жmetrics
 вlayer_regularization_losses
Вlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2	bn3/gamma
:2bn3/beta
: (2bn3/moving_mean
#:! (2bn3/moving_variance
<
Z0
[1
\2
]3"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
ьnon_trainable_variables
Ьlayers
№metrics
 ­layer_regularization_losses
ыlayer_metrics
^	variables
_trainable_variables
`regularization_losses
ѕ__call__
+Ѕ&call_and_return_all_conditional_losses
'Ѕ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Ыnon_trainable_variables
зlayers
Зmetrics
 шlayer_regularization_losses
Шlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
і__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
$:"2
ct1/kernel
:2ct1/bias
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
эnon_trainable_variables
Эlayers
щmetrics
 Щlayer_regularization_losses
чlayer_metrics
h	variables
itrainable_variables
jregularization_losses
ї__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Чnon_trainable_variables
§layers
■metrics
  layer_regularization_losses
ђlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
ј__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2	bn4/gamma
:2bn4/beta
: (2bn4/moving_mean
#:! (2bn4/moving_variance
<
q0
r1
s2
t3"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
Ђnon_trainable_variables
ѓlayers
Ѓmetrics
 ёlayer_regularization_losses
Ёlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
љ__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
єnon_trainable_variables
Єlayers
ѕmetrics
 Ѕlayer_regularization_losses
іlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
њ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
$:"2
ct2/kernel
:2ct2/bias
.
}0
~1"
trackable_list_wrapper
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
и
Іnon_trainable_variables
їlayers
Їmetrics
 јlayer_regularization_losses
Јlayer_metrics
	variables
ђtrainable_variables
Ђregularization_losses
ћ__call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
љnon_trainable_variables
Љlayers
њmetrics
 Њlayer_regularization_losses
ћlayer_metrics
Ѓ	variables
ёtrainable_variables
Ёregularization_losses
ќ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2	bn5/gamma
:2bn5/beta
: (2bn5/moving_mean
#:! (2bn5/moving_variance
@
ѕ0
Ѕ1
і2
І3"
trackable_list_wrapper
0
ѕ0
Ѕ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ћnon_trainable_variables
ќlayers
Ќmetrics
 ўlayer_regularization_losses
Ўlayer_metrics
ї	variables
Їtrainable_variables
јregularization_losses
ў__call__
+Ў&call_and_return_all_conditional_losses
'Ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
џnon_trainable_variables
Џlayers
юmetrics
 Юlayer_regularization_losses
ъlayer_metrics
љ	variables
Љtrainable_variables
њregularization_losses
џ__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses"
_generic_user_object
$:" 2
ct3/kernel
: 2ct3/bias
0
ћ0
Ћ1"
trackable_list_wrapper
0
ћ0
Ћ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ъnon_trainable_variables
аlayers
Аmetrics
 бlayer_regularization_losses
Бlayer_metrics
ќ	variables
Ќtrainable_variables
ўregularization_losses
ю__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
цnon_trainable_variables
Цlayers
дmetrics
 Дlayer_regularization_losses
еlayer_metrics
џ	variables
Џtrainable_variables
юregularization_losses
ъ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
: 2	bn6/gamma
: 2bn6/beta
:  (2bn6/moving_mean
#:!  (2bn6/moving_variance
@
Ъ0
а1
А2
б3"
trackable_list_wrapper
0
Ъ0
а1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Еnon_trainable_variables
фlayers
Фmetrics
 гlayer_regularization_losses
Гlayer_metrics
Б	variables
цtrainable_variables
Цregularization_losses
а__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
«non_trainable_variables
»layers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
Д	variables
еtrainable_variables
Еregularization_losses
б__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
$:" 2
ct4/kernel
:2ct4/bias
0
Ф0
г1"
trackable_list_wrapper
0
Ф0
г1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
│non_trainable_variables
┤layers
хmetrics
 Хlayer_regularization_losses
иlayer_metrics
Г	variables
«trainable_variables
»regularization_losses
ц__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
z
.0
/1
E2
F3
\4
]5
s6
t7
і8
І9
А10
б11"
trackable_list_wrapper
Т
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25"
trackable_list_wrapper
(
И0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
і0
І1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
А0
б1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
R

╣total

║count
╗	variables
╝	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
╣0
║1"
trackable_list_wrapper
.
╗	variables"
_generic_user_object
(:& 2Adam/c1/kernel/m
: 2Adam/c1/bias/m
: 2Adam/bn1/gamma/m
: 2Adam/bn1/beta/m
(:& 2Adam/c2/kernel/m
:2Adam/c2/bias/m
:2Adam/bn2/gamma/m
:2Adam/bn2/beta/m
(:&2Adam/c3/kernel/m
:2Adam/c3/bias/m
:2Adam/bn3/gamma/m
:2Adam/bn3/beta/m
):'2Adam/ct1/kernel/m
:2Adam/ct1/bias/m
:2Adam/bn4/gamma/m
:2Adam/bn4/beta/m
):'2Adam/ct2/kernel/m
:2Adam/ct2/bias/m
:2Adam/bn5/gamma/m
:2Adam/bn5/beta/m
):' 2Adam/ct3/kernel/m
: 2Adam/ct3/bias/m
: 2Adam/bn6/gamma/m
: 2Adam/bn6/beta/m
):' 2Adam/ct4/kernel/m
:2Adam/ct4/bias/m
(:& 2Adam/c1/kernel/v
: 2Adam/c1/bias/v
: 2Adam/bn1/gamma/v
: 2Adam/bn1/beta/v
(:& 2Adam/c2/kernel/v
:2Adam/c2/bias/v
:2Adam/bn2/gamma/v
:2Adam/bn2/beta/v
(:&2Adam/c3/kernel/v
:2Adam/c3/bias/v
:2Adam/bn3/gamma/v
:2Adam/bn3/beta/v
):'2Adam/ct1/kernel/v
:2Adam/ct1/bias/v
:2Adam/bn4/gamma/v
:2Adam/bn4/beta/v
):'2Adam/ct2/kernel/v
:2Adam/ct2/bias/v
:2Adam/bn5/gamma/v
:2Adam/bn5/beta/v
):' 2Adam/ct3/kernel/v
: 2Adam/ct3/bias/v
: 2Adam/bn6/gamma/v
: 2Adam/bn6/beta/v
):' 2Adam/ct4/kernel/v
:2Adam/ct4/bias/v
Ж2у
'__inference_model_3_layer_call_fn_10689
'__inference_model_3_layer_call_fn_11813
'__inference_model_3_layer_call_fn_11894
'__inference_model_3_layer_call_fn_11433└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
о2М
B__inference_model_3_layer_call_and_return_conditional_losses_12098
B__inference_model_3_layer_call_and_return_conditional_losses_12302
B__inference_model_3_layer_call_and_return_conditional_losses_11538
B__inference_model_3_layer_call_and_return_conditional_losses_11643└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
кB├
__inference__wrapped_model_9538img"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╠2╔
"__inference_c1_layer_call_fn_12311б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
у2С
=__inference_c1_layer_call_and_return_conditional_losses_12321б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ї2Ѕ
0__inference_max_pooling2d_12_layer_call_fn_12326
0__inference_max_pooling2d_12_layer_call_fn_12331б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
┬2┐
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_12336
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_12341б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╬2╦
#__inference_bn1_layer_call_fn_12354
#__inference_bn1_layer_call_fn_12367
#__inference_bn1_layer_call_fn_12380
#__inference_bn1_layer_call_fn_12393┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
║2и
>__inference_bn1_layer_call_and_return_conditional_losses_12411
>__inference_bn1_layer_call_and_return_conditional_losses_12429
>__inference_bn1_layer_call_and_return_conditional_losses_12447
>__inference_bn1_layer_call_and_return_conditional_losses_12465┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
═2╩
#__inference_LR1_layer_call_fn_12470б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
У2т
>__inference_LR1_layer_call_and_return_conditional_losses_12475б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╠2╔
"__inference_c2_layer_call_fn_12484б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
у2С
=__inference_c2_layer_call_and_return_conditional_losses_12494б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ї2Ѕ
0__inference_max_pooling2d_13_layer_call_fn_12499
0__inference_max_pooling2d_13_layer_call_fn_12504б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
┬2┐
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_12509
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_12514б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╬2╦
#__inference_bn2_layer_call_fn_12527
#__inference_bn2_layer_call_fn_12540
#__inference_bn2_layer_call_fn_12553
#__inference_bn2_layer_call_fn_12566┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
║2и
>__inference_bn2_layer_call_and_return_conditional_losses_12584
>__inference_bn2_layer_call_and_return_conditional_losses_12602
>__inference_bn2_layer_call_and_return_conditional_losses_12620
>__inference_bn2_layer_call_and_return_conditional_losses_12638┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
═2╩
#__inference_LR2_layer_call_fn_12643б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
У2т
>__inference_LR2_layer_call_and_return_conditional_losses_12648б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╠2╔
"__inference_c3_layer_call_fn_12657б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
у2С
=__inference_c3_layer_call_and_return_conditional_losses_12667б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ї2Ѕ
0__inference_max_pooling2d_14_layer_call_fn_12672
0__inference_max_pooling2d_14_layer_call_fn_12677б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
┬2┐
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_12682
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_12687б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╬2╦
#__inference_bn3_layer_call_fn_12700
#__inference_bn3_layer_call_fn_12713
#__inference_bn3_layer_call_fn_12726
#__inference_bn3_layer_call_fn_12739┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
║2и
>__inference_bn3_layer_call_and_return_conditional_losses_12757
>__inference_bn3_layer_call_and_return_conditional_losses_12775
>__inference_bn3_layer_call_and_return_conditional_losses_12793
>__inference_bn3_layer_call_and_return_conditional_losses_12811┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
═2╩
#__inference_LR3_layer_call_fn_12816б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
У2т
>__inference_LR3_layer_call_and_return_conditional_losses_12821б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
#__inference_ct1_layer_call_fn_12830
#__inference_ct1_layer_call_fn_12839б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Ц
>__inference_ct1_layer_call_and_return_conditional_losses_12872
>__inference_ct1_layer_call_and_return_conditional_losses_12895б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
є2Ѓ
-__inference_up_sampling2d_layer_call_fn_12900
-__inference_up_sampling2d_layer_call_fn_12905б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╝2╣
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_12917
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_12925б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╬2╦
#__inference_bn4_layer_call_fn_12938
#__inference_bn4_layer_call_fn_12951
#__inference_bn4_layer_call_fn_12964
#__inference_bn4_layer_call_fn_12977┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
║2и
>__inference_bn4_layer_call_and_return_conditional_losses_12995
>__inference_bn4_layer_call_and_return_conditional_losses_13013
>__inference_bn4_layer_call_and_return_conditional_losses_13031
>__inference_bn4_layer_call_and_return_conditional_losses_13049┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
═2╩
#__inference_LR4_layer_call_fn_13054б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
У2т
>__inference_LR4_layer_call_and_return_conditional_losses_13059б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
#__inference_ct2_layer_call_fn_13068
#__inference_ct2_layer_call_fn_13077б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Ц
>__inference_ct2_layer_call_and_return_conditional_losses_13110
>__inference_ct2_layer_call_and_return_conditional_losses_13133б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
і2Є
/__inference_up_sampling2d_1_layer_call_fn_13138
/__inference_up_sampling2d_1_layer_call_fn_13143б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
└2й
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_13155
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_13163б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╬2╦
#__inference_bn5_layer_call_fn_13176
#__inference_bn5_layer_call_fn_13189
#__inference_bn5_layer_call_fn_13202
#__inference_bn5_layer_call_fn_13215┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
║2и
>__inference_bn5_layer_call_and_return_conditional_losses_13233
>__inference_bn5_layer_call_and_return_conditional_losses_13251
>__inference_bn5_layer_call_and_return_conditional_losses_13269
>__inference_bn5_layer_call_and_return_conditional_losses_13287┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
═2╩
#__inference_LR5_layer_call_fn_13292б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
У2т
>__inference_LR5_layer_call_and_return_conditional_losses_13297б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
#__inference_ct3_layer_call_fn_13306
#__inference_ct3_layer_call_fn_13315б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Ц
>__inference_ct3_layer_call_and_return_conditional_losses_13348
>__inference_ct3_layer_call_and_return_conditional_losses_13371б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
і2Є
/__inference_up_sampling2d_2_layer_call_fn_13376
/__inference_up_sampling2d_2_layer_call_fn_13381б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
└2й
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_13393
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_13401б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╬2╦
#__inference_bn6_layer_call_fn_13414
#__inference_bn6_layer_call_fn_13427
#__inference_bn6_layer_call_fn_13440
#__inference_bn6_layer_call_fn_13453┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
║2и
>__inference_bn6_layer_call_and_return_conditional_losses_13471
>__inference_bn6_layer_call_and_return_conditional_losses_13489
>__inference_bn6_layer_call_and_return_conditional_losses_13507
>__inference_bn6_layer_call_and_return_conditional_losses_13525┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
═2╩
#__inference_LR6_layer_call_fn_13530б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
У2т
>__inference_LR6_layer_call_and_return_conditional_losses_13535б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
#__inference_ct4_layer_call_fn_13544
#__inference_ct4_layer_call_fn_13553б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Ц
>__inference_ct4_layer_call_and_return_conditional_losses_13587
>__inference_ct4_layer_call_and_return_conditional_losses_13611б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
кB├
#__inference_signature_wrapper_11732img"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 ф
>__inference_LR1_layer_call_and_return_conditional_losses_12475h7б4
-б*
(і%
inputs         @@ 
ф "-б*
#і 
0         @@ 
џ ѓ
#__inference_LR1_layer_call_fn_12470[7б4
-б*
(і%
inputs         @@ 
ф " і         @@ ф
>__inference_LR2_layer_call_and_return_conditional_losses_12648h7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         
џ ѓ
#__inference_LR2_layer_call_fn_12643[7б4
-б*
(і%
inputs         
ф " і         ф
>__inference_LR3_layer_call_and_return_conditional_losses_12821h7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         
џ ѓ
#__inference_LR3_layer_call_fn_12816[7б4
-б*
(і%
inputs         
ф " і         ф
>__inference_LR4_layer_call_and_return_conditional_losses_13059h7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         
џ ѓ
#__inference_LR4_layer_call_fn_13054[7б4
-б*
(і%
inputs         
ф " і         ф
>__inference_LR5_layer_call_and_return_conditional_losses_13297h7б4
-б*
(і%
inputs         @@
ф "-б*
#і 
0         @@
џ ѓ
#__inference_LR5_layer_call_fn_13292[7б4
-б*
(і%
inputs         @@
ф " і         @@«
>__inference_LR6_layer_call_and_return_conditional_losses_13535l9б6
/б,
*і'
inputs         ђђ 
ф "/б,
%і"
0         ђђ 
џ є
#__inference_LR6_layer_call_fn_13530_9б6
/б,
*і'
inputs         ђђ 
ф ""і         ђђ ┼
__inference__wrapped_model_9538А2!",-./89CDEFOPZ[\]fgqrst}~ѕЅіІћЋЪаАбФг6б3
,б)
'і$
img         ђђ
ф "3ф0
.
ct4'і$
ct4         ђђ┘
>__inference_bn1_layer_call_and_return_conditional_losses_12411ќ,-./MбJ
Cб@
:і7
inputs+                            
p 
ф "?б<
5і2
0+                            
џ ┘
>__inference_bn1_layer_call_and_return_conditional_losses_12429ќ,-./MбJ
Cб@
:і7
inputs+                            
p
ф "?б<
5і2
0+                            
џ ┤
>__inference_bn1_layer_call_and_return_conditional_losses_12447r,-./;б8
1б.
(і%
inputs         @@ 
p 
ф "-б*
#і 
0         @@ 
џ ┤
>__inference_bn1_layer_call_and_return_conditional_losses_12465r,-./;б8
1б.
(і%
inputs         @@ 
p
ф "-б*
#і 
0         @@ 
џ ▒
#__inference_bn1_layer_call_fn_12354Ѕ,-./MбJ
Cб@
:і7
inputs+                            
p 
ф "2і/+                            ▒
#__inference_bn1_layer_call_fn_12367Ѕ,-./MбJ
Cб@
:і7
inputs+                            
p
ф "2і/+                            ї
#__inference_bn1_layer_call_fn_12380e,-./;б8
1б.
(і%
inputs         @@ 
p 
ф " і         @@ ї
#__inference_bn1_layer_call_fn_12393e,-./;б8
1б.
(і%
inputs         @@ 
p
ф " і         @@ ┘
>__inference_bn2_layer_call_and_return_conditional_losses_12584ќCDEFMбJ
Cб@
:і7
inputs+                           
p 
ф "?б<
5і2
0+                           
џ ┘
>__inference_bn2_layer_call_and_return_conditional_losses_12602ќCDEFMбJ
Cб@
:і7
inputs+                           
p
ф "?б<
5і2
0+                           
џ ┤
>__inference_bn2_layer_call_and_return_conditional_losses_12620rCDEF;б8
1б.
(і%
inputs         
p 
ф "-б*
#і 
0         
џ ┤
>__inference_bn2_layer_call_and_return_conditional_losses_12638rCDEF;б8
1б.
(і%
inputs         
p
ф "-б*
#і 
0         
џ ▒
#__inference_bn2_layer_call_fn_12527ЅCDEFMбJ
Cб@
:і7
inputs+                           
p 
ф "2і/+                           ▒
#__inference_bn2_layer_call_fn_12540ЅCDEFMбJ
Cб@
:і7
inputs+                           
p
ф "2і/+                           ї
#__inference_bn2_layer_call_fn_12553eCDEF;б8
1б.
(і%
inputs         
p 
ф " і         ї
#__inference_bn2_layer_call_fn_12566eCDEF;б8
1б.
(і%
inputs         
p
ф " і         ┘
>__inference_bn3_layer_call_and_return_conditional_losses_12757ќZ[\]MбJ
Cб@
:і7
inputs+                           
p 
ф "?б<
5і2
0+                           
џ ┘
>__inference_bn3_layer_call_and_return_conditional_losses_12775ќZ[\]MбJ
Cб@
:і7
inputs+                           
p
ф "?б<
5і2
0+                           
џ ┤
>__inference_bn3_layer_call_and_return_conditional_losses_12793rZ[\];б8
1б.
(і%
inputs         
p 
ф "-б*
#і 
0         
џ ┤
>__inference_bn3_layer_call_and_return_conditional_losses_12811rZ[\];б8
1б.
(і%
inputs         
p
ф "-б*
#і 
0         
џ ▒
#__inference_bn3_layer_call_fn_12700ЅZ[\]MбJ
Cб@
:і7
inputs+                           
p 
ф "2і/+                           ▒
#__inference_bn3_layer_call_fn_12713ЅZ[\]MбJ
Cб@
:і7
inputs+                           
p
ф "2і/+                           ї
#__inference_bn3_layer_call_fn_12726eZ[\];б8
1б.
(і%
inputs         
p 
ф " і         ї
#__inference_bn3_layer_call_fn_12739eZ[\];б8
1б.
(і%
inputs         
p
ф " і         ┘
>__inference_bn4_layer_call_and_return_conditional_losses_12995ќqrstMбJ
Cб@
:і7
inputs+                           
p 
ф "?б<
5і2
0+                           
џ ┘
>__inference_bn4_layer_call_and_return_conditional_losses_13013ќqrstMбJ
Cб@
:і7
inputs+                           
p
ф "?б<
5і2
0+                           
џ ┤
>__inference_bn4_layer_call_and_return_conditional_losses_13031rqrst;б8
1б.
(і%
inputs         
p 
ф "-б*
#і 
0         
џ ┤
>__inference_bn4_layer_call_and_return_conditional_losses_13049rqrst;б8
1б.
(і%
inputs         
p
ф "-б*
#і 
0         
џ ▒
#__inference_bn4_layer_call_fn_12938ЅqrstMбJ
Cб@
:і7
inputs+                           
p 
ф "2і/+                           ▒
#__inference_bn4_layer_call_fn_12951ЅqrstMбJ
Cб@
:і7
inputs+                           
p
ф "2і/+                           ї
#__inference_bn4_layer_call_fn_12964eqrst;б8
1б.
(і%
inputs         
p 
ф " і         ї
#__inference_bn4_layer_call_fn_12977eqrst;б8
1б.
(і%
inputs         
p
ф " і         П
>__inference_bn5_layer_call_and_return_conditional_losses_13233џѕЅіІMбJ
Cб@
:і7
inputs+                           
p 
ф "?б<
5і2
0+                           
џ П
>__inference_bn5_layer_call_and_return_conditional_losses_13251џѕЅіІMбJ
Cб@
:і7
inputs+                           
p
ф "?б<
5і2
0+                           
џ И
>__inference_bn5_layer_call_and_return_conditional_losses_13269vѕЅіІ;б8
1б.
(і%
inputs         @@
p 
ф "-б*
#і 
0         @@
џ И
>__inference_bn5_layer_call_and_return_conditional_losses_13287vѕЅіІ;б8
1б.
(і%
inputs         @@
p
ф "-б*
#і 
0         @@
џ х
#__inference_bn5_layer_call_fn_13176ЇѕЅіІMбJ
Cб@
:і7
inputs+                           
p 
ф "2і/+                           х
#__inference_bn5_layer_call_fn_13189ЇѕЅіІMбJ
Cб@
:і7
inputs+                           
p
ф "2і/+                           љ
#__inference_bn5_layer_call_fn_13202iѕЅіІ;б8
1б.
(і%
inputs         @@
p 
ф " і         @@љ
#__inference_bn5_layer_call_fn_13215iѕЅіІ;б8
1б.
(і%
inputs         @@
p
ф " і         @@П
>__inference_bn6_layer_call_and_return_conditional_losses_13471џЪаАбMбJ
Cб@
:і7
inputs+                            
p 
ф "?б<
5і2
0+                            
џ П
>__inference_bn6_layer_call_and_return_conditional_losses_13489џЪаАбMбJ
Cб@
:і7
inputs+                            
p
ф "?б<
5і2
0+                            
џ ╝
>__inference_bn6_layer_call_and_return_conditional_losses_13507zЪаАб=б:
3б0
*і'
inputs         ђђ 
p 
ф "/б,
%і"
0         ђђ 
џ ╝
>__inference_bn6_layer_call_and_return_conditional_losses_13525zЪаАб=б:
3б0
*і'
inputs         ђђ 
p
ф "/б,
%і"
0         ђђ 
џ х
#__inference_bn6_layer_call_fn_13414ЇЪаАбMбJ
Cб@
:і7
inputs+                            
p 
ф "2і/+                            х
#__inference_bn6_layer_call_fn_13427ЇЪаАбMбJ
Cб@
:і7
inputs+                            
p
ф "2і/+                            ћ
#__inference_bn6_layer_call_fn_13440mЪаАб=б:
3б0
*і'
inputs         ђђ 
p 
ф ""і         ђђ ћ
#__inference_bn6_layer_call_fn_13453mЪаАб=б:
3б0
*і'
inputs         ђђ 
p
ф ""і         ђђ ▒
=__inference_c1_layer_call_and_return_conditional_losses_12321p!"9б6
/б,
*і'
inputs         ђђ
ф "/б,
%і"
0         ђђ 
џ Ѕ
"__inference_c1_layer_call_fn_12311c!"9б6
/б,
*і'
inputs         ђђ
ф ""і         ђђ Г
=__inference_c2_layer_call_and_return_conditional_losses_12494l897б4
-б*
(і%
inputs         @@ 
ф "-б*
#і 
0           
џ Ё
"__inference_c2_layer_call_fn_12484_897б4
-б*
(і%
inputs         @@ 
ф " і           Г
=__inference_c3_layer_call_and_return_conditional_losses_12667lOP7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         
џ Ё
"__inference_c3_layer_call_fn_12657_OP7б4
-б*
(і%
inputs         
ф " і         М
>__inference_ct1_layer_call_and_return_conditional_losses_12872љfgIбF
?б<
:і7
inputs+                           
ф "?б<
5і2
0+                           
џ «
>__inference_ct1_layer_call_and_return_conditional_losses_12895lfg7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         
џ Ф
#__inference_ct1_layer_call_fn_12830ЃfgIбF
?б<
:і7
inputs+                           
ф "2і/+                           є
#__inference_ct1_layer_call_fn_12839_fg7б4
-б*
(і%
inputs         
ф " і         М
>__inference_ct2_layer_call_and_return_conditional_losses_13110љ}~IбF
?б<
:і7
inputs+                           
ф "?б<
5і2
0+                           
џ «
>__inference_ct2_layer_call_and_return_conditional_losses_13133l}~7б4
-б*
(і%
inputs         
ф "-б*
#і 
0           
џ Ф
#__inference_ct2_layer_call_fn_13068Ѓ}~IбF
?б<
:і7
inputs+                           
ф "2і/+                           є
#__inference_ct2_layer_call_fn_13077_}~7б4
-б*
(і%
inputs         
ф " і           Н
>__inference_ct3_layer_call_and_return_conditional_losses_13348њћЋIбF
?б<
:і7
inputs+                           
ф "?б<
5і2
0+                            
џ ░
>__inference_ct3_layer_call_and_return_conditional_losses_13371nћЋ7б4
-б*
(і%
inputs         @@
ф "-б*
#і 
0         @@ 
џ Г
#__inference_ct3_layer_call_fn_13306ЁћЋIбF
?б<
:і7
inputs+                           
ф "2і/+                            ѕ
#__inference_ct3_layer_call_fn_13315aћЋ7б4
-б*
(і%
inputs         @@
ф " і         @@ Н
>__inference_ct4_layer_call_and_return_conditional_losses_13587њФгIбF
?б<
:і7
inputs+                            
ф "?б<
5і2
0+                           
џ ┤
>__inference_ct4_layer_call_and_return_conditional_losses_13611rФг9б6
/б,
*і'
inputs         ђђ 
ф "/б,
%і"
0         ђђ
џ Г
#__inference_ct4_layer_call_fn_13544ЁФгIбF
?б<
:і7
inputs+                            
ф "2і/+                           ї
#__inference_ct4_layer_call_fn_13553eФг9б6
/б,
*і'
inputs         ђђ 
ф ""і         ђђЬ
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_12336ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ╣
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_12341j9б6
/б,
*і'
inputs         ђђ 
ф "-б*
#і 
0         @@ 
џ к
0__inference_max_pooling2d_12_layer_call_fn_12326ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Љ
0__inference_max_pooling2d_12_layer_call_fn_12331]9б6
/б,
*і'
inputs         ђђ 
ф " і         @@ Ь
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_12509ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ и
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_12514h7б4
-б*
(і%
inputs           
ф "-б*
#і 
0         
џ к
0__inference_max_pooling2d_13_layer_call_fn_12499ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Ј
0__inference_max_pooling2d_13_layer_call_fn_12504[7б4
-б*
(і%
inputs           
ф " і         Ь
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_12682ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ и
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_12687h7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         
џ к
0__inference_max_pooling2d_14_layer_call_fn_12672ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Ј
0__inference_max_pooling2d_14_layer_call_fn_12677[7б4
-б*
(і%
inputs         
ф " і         В
B__inference_model_3_layer_call_and_return_conditional_losses_11538Ц2!",-./89CDEFOPZ[\]fgqrst}~ѕЅіІћЋЪаАбФг>б;
4б1
'і$
img         ђђ
p 

 
ф "/б,
%і"
0         ђђ
џ В
B__inference_model_3_layer_call_and_return_conditional_losses_11643Ц2!",-./89CDEFOPZ[\]fgqrst}~ѕЅіІћЋЪаАбФг>б;
4б1
'і$
img         ђђ
p

 
ф "/б,
%і"
0         ђђ
џ №
B__inference_model_3_layer_call_and_return_conditional_losses_12098е2!",-./89CDEFOPZ[\]fgqrst}~ѕЅіІћЋЪаАбФгAб>
7б4
*і'
inputs         ђђ
p 

 
ф "/б,
%і"
0         ђђ
џ №
B__inference_model_3_layer_call_and_return_conditional_losses_12302е2!",-./89CDEFOPZ[\]fgqrst}~ѕЅіІћЋЪаАбФгAб>
7б4
*і'
inputs         ђђ
p

 
ф "/б,
%і"
0         ђђ
џ ─
'__inference_model_3_layer_call_fn_10689ў2!",-./89CDEFOPZ[\]fgqrst}~ѕЅіІћЋЪаАбФг>б;
4б1
'і$
img         ђђ
p 

 
ф ""і         ђђ─
'__inference_model_3_layer_call_fn_11433ў2!",-./89CDEFOPZ[\]fgqrst}~ѕЅіІћЋЪаАбФг>б;
4б1
'і$
img         ђђ
p

 
ф ""і         ђђК
'__inference_model_3_layer_call_fn_11813Џ2!",-./89CDEFOPZ[\]fgqrst}~ѕЅіІћЋЪаАбФгAб>
7б4
*і'
inputs         ђђ
p 

 
ф ""і         ђђК
'__inference_model_3_layer_call_fn_11894Џ2!",-./89CDEFOPZ[\]fgqrst}~ѕЅіІћЋЪаАбФгAб>
7б4
*і'
inputs         ђђ
p

 
ф ""і         ђђл
#__inference_signature_wrapper_11732е2!",-./89CDEFOPZ[\]fgqrst}~ѕЅіІћЋЪаАбФг=б:
б 
3ф0
.
img'і$
img         ђђ"3ф0
.
ct4'і$
ct4         ђђь
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_13155ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ Х
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_13163h7б4
-б*
(і%
inputs           
ф "-б*
#і 
0         @@
џ ┼
/__inference_up_sampling2d_1_layer_call_fn_13138ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ј
/__inference_up_sampling2d_1_layer_call_fn_13143[7б4
-б*
(і%
inputs           
ф " і         @@ь
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_13393ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ И
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_13401j7б4
-б*
(і%
inputs         @@ 
ф "/б,
%і"
0         ђђ 
џ ┼
/__inference_up_sampling2d_2_layer_call_fn_13376ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    љ
/__inference_up_sampling2d_2_layer_call_fn_13381]7б4
-б*
(і%
inputs         @@ 
ф ""і         ђђ в
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_12917ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ┤
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_12925h7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         
џ ├
-__inference_up_sampling2d_layer_call_fn_12900ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ї
-__inference_up_sampling2d_layer_call_fn_12905[7б4
-б*
(і%
inputs         
ф " і         