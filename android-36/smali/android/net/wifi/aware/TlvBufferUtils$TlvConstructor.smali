.class public Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvConstructor"
.end annotation


# instance fields
.field private greylist-max-o mArray:[B

.field private greylist-max-o mArrayLength:I

.field private blacklist mByteOrder:Ljava/nio/ByteOrder;

.field private greylist-max-o mLengthSize:I

.field private greylist-max-o mPosition:I

.field private greylist-max-o mTypeSize:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 6
    .param p1, "typeSize"    # I
    .param p2, "lengthSize"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mByteOrder:Ljava/nio/ByteOrder;

    .line 80
    if-ltz p1, :cond_18

    const/4 v0, 0x2

    if-gt p1, v0, :cond_18

    if-lez p2, :cond_18

    if-gt p2, v0, :cond_18

    .line 84
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    .line 85
    iput p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 87
    return-void

    .line 81
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sizes - typeSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lengthSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addHeader(II)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "length"    # I

    .line 347
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    .line 348
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    int-to-byte v4, p1

    aput-byte v4, v0, v3

    goto :goto_1c

    .line 349
    :cond_e
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    if-ne v0, v1, :cond_1c

    .line 350
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    int-to-short v4, p1

    iget-object v5, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v4, v5}, Landroid/net/wifi/aware/TlvBufferUtils;->-$$Nest$smpokeShort([BISLjava/nio/ByteOrder;)V

    .line 352
    :cond_1c
    :goto_1c
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 354
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    if-ne v0, v2, :cond_2f

    .line 355
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    goto :goto_3d

    .line 356
    :cond_2f
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    if-ne v0, v1, :cond_3d

    .line 357
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    int-to-short v2, p2

    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/aware/TlvBufferUtils;->-$$Nest$smpokeShort([BISLjava/nio/ByteOrder;)V

    .line 359
    :cond_3d
    :goto_3d
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 360
    return-void
.end method

.method private greylist-max-o checkLength(I)V
    .registers 4
    .param p1, "dataLength"    # I

    .line 335
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    if-gt v0, v1, :cond_e

    .line 338
    return-void

    .line 336
    :cond_e
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method private blacklist checkRawLength(I)V
    .registers 4
    .param p1, "dataLength"    # I

    .line 341
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    if-gt v0, v1, :cond_8

    .line 344
    return-void

    .line 342
    :cond_8
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method private greylist-max-o getActualLength()I
    .registers 2

    .line 331
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    return v0
.end method


# virtual methods
.method public greylist-max-o allocate(I)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 3
    .param p1, "capacity"    # I

    .line 124
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    .line 125
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 127
    return-object p0
.end method

.method public greylist-max-o allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;"
        }
    .end annotation

    .line 139
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz p1, :cond_36

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "size":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 142
    .local v2, "field":[B
    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 143
    if-eqz v2, :cond_1d

    .line 144
    array-length v3, v2

    add-int/2addr v0, v3

    .line 146
    .end local v2    # "field":[B
    :cond_1d
    goto :goto_7

    .line 147
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocate(I)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    .line 148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 149
    .restart local v2    # "field":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->putByteArray(I[B)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    .line 150
    .end local v2    # "field":[B
    goto :goto_25

    .line 152
    .end local v0    # "size":I
    :cond_36
    return-object p0
.end method

.method public greylist-max-o getArray()[B
    .registers 3

    .line 320
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    invoke-direct {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getActualLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o putByte(IB)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 6
    .param p1, "type"    # I
    .param p2, "b"    # B

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    .line 167
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    .line 168
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    aput-byte p2, v0, v1

    .line 169
    return-object p0
.end method

.method public greylist-max-o putByteArray(I[B)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 5
    .param p1, "type"    # I
    .param p2, "array"    # [B

    .line 219
    const/4 v0, 0x0

    if-nez p2, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    array-length v1, p2

    :goto_6
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->putByteArray(I[BII)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o putByteArray(I[BII)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 7
    .param p1, "type"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 199
    invoke-direct {p0, p4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    .line 200
    invoke-direct {p0, p1, p4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    .line 201
    if-eqz p4, :cond_f

    .line 202
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    :cond_f
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    add-int/2addr v0, p4

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 205
    return-object p0
.end method

.method public greylist-max-o putInt(II)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 7
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 283
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    .line 284
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    .line 285
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p2, v3}, Landroid/net/wifi/aware/TlvBufferUtils;->-$$Nest$smpokeInt([BIILjava/nio/ByteOrder;)V

    .line 286
    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 287
    return-object p0
.end method

.method public blacklist putRawByte(B)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 5
    .param p1, "b"    # B

    .line 179
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkRawLength(I)V

    .line 180
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    aput-byte p1, v0, v1

    .line 181
    return-object p0
.end method

.method public blacklist putRawByteArray([B)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 6
    .param p1, "array"    # [B

    .line 230
    if-nez p1, :cond_3

    return-object p0

    .line 232
    :cond_3
    array-length v0, p1

    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkRawLength(I)V

    .line 233
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 235
    return-object p0
.end method

.method public greylist-max-o putShort(IS)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 7
    .param p1, "type"    # I
    .param p2, "data"    # S

    .line 265
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    .line 266
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    .line 267
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p2, v3}, Landroid/net/wifi/aware/TlvBufferUtils;->-$$Nest$smpokeShort([BISLjava/nio/ByteOrder;)V

    .line 268
    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 269
    return-object p0
.end method

.method public greylist-max-o putString(ILjava/lang/String;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 6
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 305
    .local v1, "length":I
    if-eqz p2, :cond_9

    .line 306
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 307
    array-length v1, v0

    .line 309
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->putByteArray(I[BII)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o putZeroLengthElement(I)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 3
    .param p1, "type"    # I

    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    .line 250
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    .line 251
    return-object p0
.end method

.method public blacklist setByteOrder(Ljava/nio/ByteOrder;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 2
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 98
    iput-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mByteOrder:Ljava/nio/ByteOrder;

    .line 99
    return-object p0
.end method

.method public greylist-max-o wrap([B)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .registers 4
    .param p1, "array"    # [B

    .line 110
    iput-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    .line 111
    const/4 v0, 0x0

    if-nez p1, :cond_7

    move v1, v0

    goto :goto_8

    :cond_7
    array-length v1, p1

    :goto_8
    iput v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    .line 112
    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    .line 113
    return-object p0
.end method
