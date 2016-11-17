.class public Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvConstructor"
.end annotation


# instance fields
.field private mArray:[B

.field private mArrayLength:I

.field private mLengthSize:I

.field private mPosition:I

.field private mTypeSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "typeSize"    # I
    .param p2, "lengthSize"    # I

    #@0
    .prologue
    const/4 v0, 0x2

    #@1
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 76
    if-ltz p1, :cond_0

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Invalid sizes - typeSize="

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, ", lengthSize="

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 76
    :cond_1
    if-lez p2, :cond_0

    #@2f
    if-gt p2, v0, :cond_0

    #@31
    .line 80
    iput p1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    #@33
    .line 81
    iput p2, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    #@35
    .line 75
    return-void
.end method

.method private addHeader(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    .line 263
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    #@4
    if-ne v0, v4, :cond_2

    #@6
    .line 264
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArray:[B

    #@8
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@a
    int-to-byte v2, p1

    #@b
    aput-byte v2, v0, v1

    #@d
    .line 268
    :cond_0
    :goto_0
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@f
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    #@11
    add-int/2addr v0, v1

    #@12
    iput v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@14
    .line 270
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    #@16
    if-ne v0, v4, :cond_3

    #@18
    .line 271
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArray:[B

    #@1a
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@1c
    int-to-byte v2, p2

    #@1d
    aput-byte v2, v0, v1

    #@1f
    .line 275
    :cond_1
    :goto_1
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@21
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    #@23
    add-int/2addr v0, v1

    #@24
    iput v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@26
    .line 262
    return-void

    #@27
    .line 265
    :cond_2
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    #@29
    if-ne v0, v5, :cond_0

    #@2b
    .line 266
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArray:[B

    #@2d
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@2f
    int-to-short v2, p1

    #@30
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@32
    invoke-static {v0, v1, v2, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    #@35
    goto :goto_0

    #@36
    .line 272
    :cond_3
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    #@38
    if-ne v0, v5, :cond_1

    #@3a
    .line 273
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArray:[B

    #@3c
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@3e
    int-to-short v2, p2

    #@3f
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@41
    invoke-static {v0, v1, v2, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    #@44
    goto :goto_1
.end method

.method private checkLength(I)V
    .locals 2
    .param p1, "dataLength"    # I

    #@0
    .prologue
    .line 257
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@2
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    #@7
    add-int/2addr v0, v1

    #@8
    add-int/2addr v0, p1

    #@9
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    #@b
    if-le v0, v1, :cond_0

    #@d
    .line 258
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@f
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@12
    throw v0

    #@13
    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public allocate(I)Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 105
    new-array v0, p1, [B

    #@2
    iput-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArray:[B

    #@4
    .line 106
    iput p1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    #@6
    .line 107
    return-object p0
.end method

.method public getActualLength()I
    .locals 1

    #@0
    .prologue
    .line 253
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@2
    return v0
.end method

.method public getArray()[B
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArray:[B

    #@2
    return-object v0
.end method

.method public putByte(IB)Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;
    .locals 3
    .param p1, "type"    # I
    .param p2, "b"    # B

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 121
    invoke-direct {p0, v0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    #@4
    .line 122
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    #@7
    .line 123
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArray:[B

    #@9
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@b
    add-int/lit8 v2, v1, 0x1

    #@d
    iput v2, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@f
    aput-byte p2, v0, v1

    #@11
    .line 124
    return-object p0
.end method

.method public putByteArray(I[B)Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;
    .locals 2
    .param p1, "type"    # I
    .param p2, "array"    # [B

    #@0
    .prologue
    .line 159
    array-length v0, p2

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->putByteArray(I[BII)Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public putByteArray(I[BII)Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;
    .locals 2
    .param p1, "type"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 141
    invoke-direct {p0, p4}, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    #@3
    .line 142
    invoke-direct {p0, p1, p4}, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    #@6
    .line 143
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArray:[B

    #@8
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@a
    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d
    .line 144
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@f
    add-int/2addr v0, p4

    #@10
    iput v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@12
    .line 145
    return-object p0
.end method

.method public putInt(II)Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;
    .locals 3
    .param p1, "type"    # I
    .param p2, "data"    # I

    #@0
    .prologue
    const/4 v0, 0x4

    #@1
    .line 207
    invoke-direct {p0, v0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    #@4
    .line 208
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    #@7
    .line 209
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArray:[B

    #@9
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@b
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@d
    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    #@10
    .line 210
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@12
    add-int/lit8 v0, v0, 0x4

    #@14
    iput v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@16
    .line 211
    return-object p0
.end method

.method public putShort(IS)Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;
    .locals 3
    .param p1, "type"    # I
    .param p2, "data"    # S

    #@0
    .prologue
    const/4 v0, 0x2

    #@1
    .line 189
    invoke-direct {p0, v0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    #@4
    .line 190
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    #@7
    .line 191
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArray:[B

    #@9
    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@b
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@d
    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    #@10
    .line 192
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@12
    add-int/lit8 v0, v0, 0x2

    #@14
    iput v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mPosition:I

    #@16
    .line 193
    return-object p0
.end method

.method public putString(ILjava/lang/String;)Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;
    .locals 3
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 227
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->putByteArray(I[BII)Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public putZeroLengthElement(I)Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 173
    invoke-direct {p0, v0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    #@4
    .line 174
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    #@7
    .line 175
    return-object p0
.end method

.method public wrap([B)Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;
    .locals 1
    .param p1, "array"    # [B

    #@0
    .prologue
    .line 92
    iput-object p1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArray:[B

    #@2
    .line 93
    array-length v0, p1

    #@3
    iput v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    #@5
    .line 94
    return-object p0
.end method
