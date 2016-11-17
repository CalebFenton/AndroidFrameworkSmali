.class public final Lcom/android/dex/EncodedValueReader;
.super Ljava/lang/Object;
.source "EncodedValueReader.java"


# static fields
.field public static final ENCODED_ANNOTATION:I = 0x1d

.field public static final ENCODED_ARRAY:I = 0x1c

.field public static final ENCODED_BOOLEAN:I = 0x1f

.field public static final ENCODED_BYTE:I = 0x0

.field public static final ENCODED_CHAR:I = 0x3

.field public static final ENCODED_DOUBLE:I = 0x11

.field public static final ENCODED_ENUM:I = 0x1b

.field public static final ENCODED_FIELD:I = 0x19

.field public static final ENCODED_FLOAT:I = 0x10

.field public static final ENCODED_INT:I = 0x4

.field public static final ENCODED_LONG:I = 0x6

.field public static final ENCODED_METHOD:I = 0x1a

.field public static final ENCODED_NULL:I = 0x1e

.field public static final ENCODED_SHORT:I = 0x2

.field public static final ENCODED_STRING:I = 0x17

.field public static final ENCODED_TYPE:I = 0x18

.field private static final MUST_READ:I = -0x1


# instance fields
.field private annotationType:I

.field private arg:I

.field protected final in:Lcom/android/dex/util/ByteInput;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/android/dex/EncodedValue;)V
    .locals 1
    .param p1, "in"    # Lcom/android/dex/EncodedValue;

    #@0
    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/android/dex/EncodedValue;->asByteInput()Lcom/android/dex/util/ByteInput;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;)V

    #@7
    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/dex/EncodedValue;I)V
    .locals 1
    .param p1, "in"    # Lcom/android/dex/EncodedValue;
    .param p2, "knownType"    # I

    #@0
    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/android/dex/EncodedValue;->asByteInput()Lcom/android/dex/util/ByteInput;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;I)V

    #@7
    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/dex/util/ByteInput;)V
    .locals 1
    .param p1, "in"    # Lcom/android/dex/util/ByteInput;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@6
    .line 51
    iput-object p1, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@8
    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/dex/util/ByteInput;I)V
    .locals 1
    .param p1, "in"    # Lcom/android/dex/util/ByteInput;
    .param p2, "knownType"    # I

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@6
    .line 65
    iput-object p1, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@8
    .line 66
    iput p2, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@a
    .line 64
    return-void
.end method

.method private checkType(I)V
    .locals 5
    .param p1, "expected"    # I

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->peek()I

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    .line 284
    const-string/jumbo v1, "Expected %x but was %x"

    #@b
    const/4 v2, 0x2

    #@c
    new-array v2, v2, [Ljava/lang/Object;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x0

    #@13
    aput-object v3, v2, v4

    #@15
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->peek()I

    #@18
    move-result v3

    #@19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v3

    #@1d
    const/4 v4, 0x1

    #@1e
    aput-object v3, v2, v4

    #@20
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 283
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public getAnnotationType()I
    .locals 1

    #@0
    .prologue
    .line 127
    iget v0, p0, Lcom/android/dex/EncodedValueReader;->annotationType:I

    #@2
    return v0
.end method

.method public peek()I
    .locals 3

    #@0
    .prologue
    .line 77
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@2
    const/4 v2, -0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 78
    iget-object v1, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@7
    invoke-interface {v1}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@a
    move-result v1

    #@b
    and-int/lit16 v0, v1, 0xff

    #@d
    .line 79
    .local v0, "argAndType":I
    and-int/lit8 v1, v0, 0x1f

    #@f
    iput v1, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@11
    .line 80
    and-int/lit16 v1, v0, 0xe0

    #@13
    shr-int/lit8 v1, v1, 0x5

    #@15
    iput v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@17
    .line 82
    .end local v0    # "argAndType":I
    :cond_0
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@19
    return v1
.end method

.method public readAnnotation()I
    .locals 1

    #@0
    .prologue
    .line 115
    const/16 v0, 0x1d

    #@2
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@5
    .line 116
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@8
    .line 117
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@a
    invoke-static {v0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->annotationType:I

    #@10
    .line 118
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@12
    invoke-static {v0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public readAnnotationName()I
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@2
    invoke-static {v0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readArray()I
    .locals 1

    #@0
    .prologue
    .line 96
    const/16 v0, 0x1c

    #@2
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@5
    .line 97
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@8
    .line 98
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@a
    invoke-static {v0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public readBoolean()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 212
    const/16 v1, 0x1f

    #@3
    invoke-direct {p0, v1}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@6
    .line 213
    const/4 v1, -0x1

    #@7
    iput v1, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@9
    .line 214
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public readByte()B
    .locals 2

    #@0
    .prologue
    .line 135
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@4
    .line 136
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@7
    .line 137
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@9
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@b
    invoke-static {v0, v1}, Lcom/android/dex/EncodedValueCodec;->readSignedInt(Lcom/android/dex/util/ByteInput;I)I

    #@e
    move-result v0

    #@f
    int-to-byte v0, v0

    #@10
    return v0
.end method

.method public readChar()C
    .locals 3

    #@0
    .prologue
    .line 147
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@4
    .line 148
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@7
    .line 149
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@9
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    #@f
    move-result v0

    #@10
    int-to-char v0, v0

    #@11
    return v0
.end method

.method public readDouble()D
    .locals 3

    #@0
    .prologue
    .line 171
    const/16 v0, 0x11

    #@2
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@5
    .line 172
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@8
    .line 173
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@a
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@c
    const/4 v2, 0x1

    #@d
    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedLong(Lcom/android/dex/util/ByteInput;IZ)J

    #@10
    move-result-wide v0

    #@11
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@14
    move-result-wide v0

    #@15
    return-wide v0
.end method

.method public readEnum()I
    .locals 3

    #@0
    .prologue
    .line 195
    const/16 v0, 0x1b

    #@2
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@5
    .line 196
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@8
    .line 197
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@a
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public readField()I
    .locals 3

    #@0
    .prologue
    .line 189
    const/16 v0, 0x19

    #@2
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@5
    .line 190
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@8
    .line 191
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@a
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public readFloat()F
    .locals 3

    #@0
    .prologue
    .line 165
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@5
    .line 166
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@8
    .line 167
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@a
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@c
    const/4 v2, 0x1

    #@d
    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    #@10
    move-result v0

    #@11
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public readInt()I
    .locals 2

    #@0
    .prologue
    .line 153
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@4
    .line 154
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@7
    .line 155
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@9
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@b
    invoke-static {v0, v1}, Lcom/android/dex/EncodedValueCodec;->readSignedInt(Lcom/android/dex/util/ByteInput;I)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public readLong()J
    .locals 2

    #@0
    .prologue
    .line 159
    const/4 v0, 0x6

    #@1
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@4
    .line 160
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@7
    .line 161
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@9
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@b
    invoke-static {v0, v1}, Lcom/android/dex/EncodedValueCodec;->readSignedLong(Lcom/android/dex/util/ByteInput;I)J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method public readMethod()I
    .locals 3

    #@0
    .prologue
    .line 201
    const/16 v0, 0x1a

    #@2
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@5
    .line 202
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@8
    .line 203
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@a
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public readNull()V
    .locals 1

    #@0
    .prologue
    .line 207
    const/16 v0, 0x1e

    #@2
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@5
    .line 208
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@8
    .line 206
    return-void
.end method

.method public readShort()S
    .locals 2

    #@0
    .prologue
    .line 141
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@4
    .line 142
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@7
    .line 143
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@9
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@b
    invoke-static {v0, v1}, Lcom/android/dex/EncodedValueCodec;->readSignedInt(Lcom/android/dex/util/ByteInput;I)I

    #@e
    move-result v0

    #@f
    int-to-short v0, v0

    #@10
    return v0
.end method

.method public readString()I
    .locals 3

    #@0
    .prologue
    .line 177
    const/16 v0, 0x17

    #@2
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@5
    .line 178
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@8
    .line 179
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@a
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public readType()I
    .locals 3

    #@0
    .prologue
    .line 183
    const/16 v0, 0x18

    #@2
    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    #@5
    .line 184
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@8
    .line 185
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    #@a
    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public skipValue()V
    .locals 5

    #@0
    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->peek()I

    #@3
    move-result v2

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 277
    :pswitch_0
    new-instance v2, Lcom/android/dex/DexException;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "Unexpected type: "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    iget v4, p0, Lcom/android/dex/EncodedValueReader;->type:I

    #@17
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v2, v3}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 224
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readByte()B

    #@2a
    .line 221
    :cond_0
    :goto_0
    return-void

    #@2b
    .line 227
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readShort()S

    #@2e
    goto :goto_0

    #@2f
    .line 230
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readChar()C

    #@32
    goto :goto_0

    #@33
    .line 233
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readInt()I

    #@36
    goto :goto_0

    #@37
    .line 236
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readLong()J

    #@3a
    goto :goto_0

    #@3b
    .line 239
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readFloat()F

    #@3e
    goto :goto_0

    #@3f
    .line 242
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readDouble()D

    #@42
    goto :goto_0

    #@43
    .line 245
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readString()I

    #@46
    goto :goto_0

    #@47
    .line 248
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readType()I

    #@4a
    goto :goto_0

    #@4b
    .line 251
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readField()I

    #@4e
    goto :goto_0

    #@4f
    .line 254
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readEnum()I

    #@52
    goto :goto_0

    #@53
    .line 257
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readMethod()I

    #@56
    goto :goto_0

    #@57
    .line 260
    :pswitch_d
    const/4 v0, 0x0

    #@58
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readArray()I

    #@5b
    move-result v1

    #@5c
    .local v1, "size":I
    :goto_1
    if-ge v0, v1, :cond_0

    #@5e
    .line 261
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    #@61
    .line 260
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_1

    #@64
    .line 265
    .end local v0    # "i":I
    .end local v1    # "size":I
    :pswitch_e
    const/4 v0, 0x0

    #@65
    .restart local v0    # "i":I
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readAnnotation()I

    #@68
    move-result v1

    #@69
    .restart local v1    # "size":I
    :goto_2
    if-ge v0, v1, :cond_0

    #@6b
    .line 266
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    #@6e
    .line 267
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    #@71
    .line 265
    add-int/lit8 v0, v0, 0x1

    #@73
    goto :goto_2

    #@74
    .line 271
    .end local v0    # "i":I
    .end local v1    # "size":I
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readNull()V

    #@77
    goto :goto_0

    #@78
    .line 274
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readBoolean()Z

    #@7b
    goto :goto_0

    #@7c
    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
