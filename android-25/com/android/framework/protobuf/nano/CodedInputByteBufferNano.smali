.class public final Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedInputByteBufferNano.java"


# static fields
.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private bufferStart:I

.field private currentLimit:I

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 406
    const v0, 0x7fffffff

    #@6
    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    #@8
    .line 410
    const/16 v0, 0x40

    #@a
    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    #@c
    .line 413
    const/high16 v0, 0x4000000

    #@e
    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    #@10
    .line 419
    iput-object p1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    #@12
    .line 420
    iput p2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    #@14
    .line 421
    add-int v0, p2, p3

    #@16
    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    #@18
    .line 422
    iput p2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@1a
    .line 418
    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 2
    .param p0, "n"    # I

    #@0
    .prologue
    .line 379
    ushr-int/lit8 v0, p0, 0x1

    #@2
    and-int/lit8 v1, p0, 0x1

    #@4
    neg-int v1, v1

    #@5
    xor-int/2addr v0, v1

    #@6
    return v0
.end method

.method public static decodeZigZag64(J)J
    .locals 4
    .param p0, "n"    # J

    #@0
    .prologue
    .line 393
    const/4 v0, 0x1

    #@1
    ushr-long v0, p0, v0

    #@3
    const-wide/16 v2, 0x1

    #@5
    and-long/2addr v2, p0

    #@6
    neg-long v2, v2

    #@7
    xor-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method public static newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .locals 2
    .param p0, "buf"    # [B

    #@0
    .prologue
    .line 52
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static newInstance([BII)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    .line 60
    new-instance v0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    #@5
    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    #@0
    .prologue
    .line 496
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    #@2
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    #@4
    add-int/2addr v1, v2

    #@5
    iput v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    #@7
    .line 497
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    #@9
    .line 498
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    #@b
    if-le v0, v1, :cond_0

    #@d
    .line 500
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    #@f
    sub-int v1, v0, v1

    #@11
    iput v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    #@13
    .line 501
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    #@15
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    #@17
    sub-int/2addr v1, v2

    #@18
    iput v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    #@1a
    .line 495
    :goto_0
    return-void

    #@1b
    .line 503
    :cond_0
    const/4 v1, 0x0

    #@1c
    iput v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    #@1e
    goto :goto_0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 95
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@7
    move-result-object v0

    #@8
    throw v0

    #@9
    .line 93
    :cond_0
    return-void
.end method

.method public getAbsolutePosition()I
    .locals 1

    #@0
    .prologue
    .line 550
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@2
    return v0
.end method

.method public getBuffer()[B
    .locals 1

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    #@2
    return-object v0
.end method

.method public getBytesUntilLimit()I
    .locals 3

    #@0
    .prologue
    .line 522
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    #@2
    const v2, 0x7fffffff

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 523
    const/4 v1, -0x1

    #@8
    return v1

    #@9
    .line 526
    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@b
    .line 527
    .local v0, "currentAbsolutePosition":I
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    #@d
    sub-int/2addr v1, v0

    #@e
    return v1
.end method

.method public getData(II)[B
    .locals 4
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 568
    if-nez p2, :cond_0

    #@3
    .line 569
    sget-object v2, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    #@5
    return-object v2

    #@6
    .line 571
    :cond_0
    new-array v0, p2, [B

    #@8
    .line 572
    .local v0, "copy":[B
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    #@a
    add-int v1, v2, p1

    #@c
    .line 573
    .local v1, "start":I
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    #@e
    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@11
    .line 574
    return-object v0
.end method

.method public getPosition()I
    .locals 2

    #@0
    .prologue
    .line 543
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@2
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public isAtEnd()Z
    .locals 2

    #@0
    .prologue
    .line 536
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@2
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    #@0
    .prologue
    .line 513
    iput p1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    #@2
    .line 514
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    #@5
    .line 512
    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 480
    if-gez p1, :cond_0

    #@2
    .line 481
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@5
    move-result-object v1

    #@6
    throw v1

    #@7
    .line 483
    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@9
    add-int/2addr p1, v1

    #@a
    .line 484
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    #@c
    .line 485
    .local v0, "oldLimit":I
    if-le p1, v0, :cond_1

    #@e
    .line 486
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 488
    :cond_1
    iput p1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    #@15
    .line 490
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    #@18
    .line 492
    return v0
.end method

.method public readBool()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 184
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public readBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 231
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@4
    move-result v1

    #@5
    .line 232
    .local v1, "size":I
    if-gez v1, :cond_0

    #@7
    .line 233
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@a
    move-result-object v2

    #@b
    throw v2

    #@c
    .line 235
    :cond_0
    if-nez v1, :cond_1

    #@e
    .line 236
    sget-object v2, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    #@10
    return-object v2

    #@11
    .line 238
    :cond_1
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    #@13
    iget v3, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@15
    sub-int/2addr v2, v3

    #@16
    if-le v1, v2, :cond_2

    #@18
    .line 239
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@1b
    move-result-object v2

    #@1c
    throw v2

    #@1d
    .line 242
    :cond_2
    new-array v0, v1, [B

    #@1f
    .line 243
    .local v0, "result":[B
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    #@21
    iget v3, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@23
    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@26
    .line 244
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@28
    add-int/2addr v2, v1

    #@29
    iput v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@2b
    .line 245
    return-object v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public readGroup(Lcom/android/framework/protobuf/nano/MessageNano;I)V
    .locals 2
    .param p1, "msg"    # Lcom/android/framework/protobuf/nano/MessageNano;
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    #@2
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 206
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 208
    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    #@11
    .line 209
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;

    #@14
    .line 211
    const/4 v0, 0x4

    #@15
    invoke-static {p2, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->makeTag(II)I

    #@18
    move-result v0

    #@19
    .line 210
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    #@1c
    .line 212
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    #@1e
    add-int/lit8 v0, v0, -0x1

    #@20
    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    #@22
    .line 204
    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V
    .locals 4
    .param p1, "msg"    # Lcom/android/framework/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@3
    move-result v0

    #@4
    .line 218
    .local v0, "length":I
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    #@6
    iget v3, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    #@8
    if-lt v2, v3, :cond_0

    #@a
    .line 219
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@d
    move-result-object v2

    #@e
    throw v2

    #@f
    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    #@12
    move-result v1

    #@13
    .line 222
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    #@15
    add-int/lit8 v2, v2, 0x1

    #@17
    iput v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    #@19
    .line 223
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;

    #@1c
    .line 224
    const/4 v2, 0x0

    #@1d
    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    #@20
    .line 225
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    #@22
    add-int/lit8 v2, v2, -0x1

    #@24
    iput v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    #@26
    .line 226
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    #@29
    .line 216
    return-void
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 598
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@2
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 599
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 601
    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    #@d
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@f
    add-int/lit8 v2, v1, 0x1

    #@11
    iput v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@13
    aget-byte v0, v0, v1

    #@15
    return v0
.end method

.method public readRawBytes(I)[B
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 611
    if-gez p1, :cond_0

    #@3
    .line 612
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@6
    move-result-object v1

    #@7
    throw v1

    #@8
    .line 615
    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@a
    add-int/2addr v1, p1

    #@b
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    #@d
    if-le v1, v2, :cond_1

    #@f
    .line 617
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    #@11
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@13
    sub-int/2addr v1, v2

    #@14
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    #@17
    .line 619
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@1a
    move-result-object v1

    #@1b
    throw v1

    #@1c
    .line 622
    :cond_1
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    #@1e
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@20
    sub-int/2addr v1, v2

    #@21
    if-gt p1, v1, :cond_2

    #@23
    .line 624
    new-array v0, p1, [B

    #@25
    .line 625
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    #@27
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@29
    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2c
    .line 626
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@2e
    add-int/2addr v1, p1

    #@2f
    iput v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@31
    .line 627
    return-object v0

    #@32
    .line 629
    .end local v0    # "bytes":[B
    :cond_2
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@35
    move-result-object v1

    #@36
    throw v1
.end method

.method public readRawLittleEndian32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@3
    move-result v0

    #@4
    .line 339
    .local v0, "b1":B
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@7
    move-result v1

    #@8
    .line 340
    .local v1, "b2":B
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@b
    move-result v2

    #@c
    .line 341
    .local v2, "b3":B
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@f
    move-result v3

    #@10
    .line 342
    .local v3, "b4":B
    and-int/lit16 v4, v0, 0xff

    #@12
    .line 343
    and-int/lit16 v5, v1, 0xff

    #@14
    shl-int/lit8 v5, v5, 0x8

    #@16
    .line 342
    or-int/2addr v4, v5

    #@17
    .line 344
    and-int/lit16 v5, v2, 0xff

    #@19
    shl-int/lit8 v5, v5, 0x10

    #@1b
    .line 342
    or-int/2addr v4, v5

    #@1c
    .line 345
    and-int/lit16 v5, v3, 0xff

    #@1e
    shl-int/lit8 v5, v5, 0x18

    #@20
    .line 342
    or-int/2addr v4, v5

    #@21
    return v4
.end method

.method public readRawLittleEndian64()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@3
    move-result v0

    #@4
    .line 351
    .local v0, "b1":B
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@7
    move-result v1

    #@8
    .line 352
    .local v1, "b2":B
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@b
    move-result v2

    #@c
    .line 353
    .local v2, "b3":B
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@f
    move-result v3

    #@10
    .line 354
    .local v3, "b4":B
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@13
    move-result v4

    #@14
    .line 355
    .local v4, "b5":B
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@17
    move-result v5

    #@18
    .line 356
    .local v5, "b6":B
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@1b
    move-result v6

    #@1c
    .line 357
    .local v6, "b7":B
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@1f
    move-result v7

    #@20
    .line 358
    .local v7, "b8":B
    int-to-long v8, v0

    #@21
    const-wide/16 v10, 0xff

    #@23
    and-long/2addr v8, v10

    #@24
    .line 359
    int-to-long v10, v1

    #@25
    const-wide/16 v12, 0xff

    #@27
    and-long/2addr v10, v12

    #@28
    const/16 v12, 0x8

    #@2a
    shl-long/2addr v10, v12

    #@2b
    .line 358
    or-long/2addr v8, v10

    #@2c
    .line 360
    int-to-long v10, v2

    #@2d
    const-wide/16 v12, 0xff

    #@2f
    and-long/2addr v10, v12

    #@30
    const/16 v12, 0x10

    #@32
    shl-long/2addr v10, v12

    #@33
    .line 358
    or-long/2addr v8, v10

    #@34
    .line 361
    int-to-long v10, v3

    #@35
    const-wide/16 v12, 0xff

    #@37
    and-long/2addr v10, v12

    #@38
    const/16 v12, 0x18

    #@3a
    shl-long/2addr v10, v12

    #@3b
    .line 358
    or-long/2addr v8, v10

    #@3c
    .line 362
    int-to-long v10, v4

    #@3d
    const-wide/16 v12, 0xff

    #@3f
    and-long/2addr v10, v12

    #@40
    const/16 v12, 0x20

    #@42
    shl-long/2addr v10, v12

    #@43
    .line 358
    or-long/2addr v8, v10

    #@44
    .line 363
    int-to-long v10, v5

    #@45
    const-wide/16 v12, 0xff

    #@47
    and-long/2addr v10, v12

    #@48
    const/16 v12, 0x28

    #@4a
    shl-long/2addr v10, v12

    #@4b
    .line 358
    or-long/2addr v8, v10

    #@4c
    .line 364
    int-to-long v10, v6

    #@4d
    const-wide/16 v12, 0xff

    #@4f
    and-long/2addr v10, v12

    #@50
    const/16 v12, 0x30

    #@52
    shl-long/2addr v10, v12

    #@53
    .line 358
    or-long/2addr v8, v10

    #@54
    .line 365
    int-to-long v10, v7

    #@55
    const-wide/16 v12, 0xff

    #@57
    and-long/2addr v10, v12

    #@58
    const/16 v12, 0x38

    #@5a
    shl-long/2addr v10, v12

    #@5b
    .line 358
    or-long/2addr v8, v10

    #@5c
    return-wide v8
.end method

.method public readRawVarint32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@3
    move-result v2

    #@4
    .line 289
    .local v2, "tmp":B
    if-ltz v2, :cond_0

    #@6
    .line 290
    return v2

    #@7
    .line 292
    :cond_0
    and-int/lit8 v1, v2, 0x7f

    #@9
    .line 293
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@c
    move-result v2

    #@d
    if-ltz v2, :cond_2

    #@f
    .line 294
    shl-int/lit8 v3, v2, 0x7

    #@11
    or-int/2addr v1, v3

    #@12
    .line 318
    :cond_1
    :goto_0
    return v1

    #@13
    .line 296
    :cond_2
    and-int/lit8 v3, v2, 0x7f

    #@15
    shl-int/lit8 v3, v3, 0x7

    #@17
    or-int/2addr v1, v3

    #@18
    .line 297
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@1b
    move-result v2

    #@1c
    if-ltz v2, :cond_3

    #@1e
    .line 298
    shl-int/lit8 v3, v2, 0xe

    #@20
    or-int/2addr v1, v3

    #@21
    goto :goto_0

    #@22
    .line 300
    :cond_3
    and-int/lit8 v3, v2, 0x7f

    #@24
    shl-int/lit8 v3, v3, 0xe

    #@26
    or-int/2addr v1, v3

    #@27
    .line 301
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@2a
    move-result v2

    #@2b
    if-ltz v2, :cond_4

    #@2d
    .line 302
    shl-int/lit8 v3, v2, 0x15

    #@2f
    or-int/2addr v1, v3

    #@30
    goto :goto_0

    #@31
    .line 304
    :cond_4
    and-int/lit8 v3, v2, 0x7f

    #@33
    shl-int/lit8 v3, v3, 0x15

    #@35
    or-int/2addr v1, v3

    #@36
    .line 305
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@39
    move-result v2

    #@3a
    shl-int/lit8 v3, v2, 0x1c

    #@3c
    or-int/2addr v1, v3

    #@3d
    .line 306
    if-gez v2, :cond_1

    #@3f
    .line 308
    const/4 v0, 0x0

    #@40
    .local v0, "i":I
    :goto_1
    const/4 v3, 0x5

    #@41
    if-ge v0, v3, :cond_6

    #@43
    .line 309
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@46
    move-result v3

    #@47
    if-ltz v3, :cond_5

    #@49
    .line 310
    return v1

    #@4a
    .line 308
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 313
    :cond_6
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@50
    move-result-object v3

    #@51
    throw v3
.end method

.method public readRawVarint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 323
    const/4 v1, 0x0

    #@1
    .line 324
    .local v1, "shift":I
    const-wide/16 v2, 0x0

    #@3
    .line 325
    .local v2, "result":J
    :goto_0
    const/16 v4, 0x40

    #@5
    if-ge v1, v4, :cond_1

    #@7
    .line 326
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    #@a
    move-result v0

    #@b
    .line 327
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    #@d
    int-to-long v4, v4

    #@e
    shl-long/2addr v4, v1

    #@f
    or-long/2addr v2, v4

    #@10
    .line 328
    and-int/lit16 v4, v0, 0x80

    #@12
    if-nez v4, :cond_0

    #@14
    .line 329
    return-wide v2

    #@15
    .line 331
    :cond_0
    add-int/lit8 v1, v1, 0x7

    #@17
    goto :goto_0

    #@18
    .line 333
    .end local v0    # "b":B
    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@1b
    move-result-object v4

    #@1c
    throw v4
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag32(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag64(J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@3
    move-result v1

    #@4
    .line 190
    .local v1, "size":I
    if-gez v1, :cond_0

    #@6
    .line 191
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@9
    move-result-object v2

    #@a
    throw v2

    #@b
    .line 193
    :cond_0
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    #@d
    iget v3, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@f
    sub-int/2addr v2, v3

    #@10
    if-le v1, v2, :cond_1

    #@12
    .line 194
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@15
    move-result-object v2

    #@16
    throw v2

    #@17
    .line 197
    :cond_1
    new-instance v0, Ljava/lang/String;

    #@19
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    #@1b
    iget v3, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@1d
    const-string/jumbo v4, "UTF-8"

    #@20
    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@23
    .line 198
    .local v0, "result":Ljava/lang/String;
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@25
    add-int/2addr v2, v1

    #@26
    iput v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@28
    .line 199
    return-object v0
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 71
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 72
    iput v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    #@9
    .line 73
    return v1

    #@a
    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    #@10
    .line 77
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    #@12
    if-nez v0, :cond_1

    #@14
    .line 79
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@17
    move-result-object v0

    #@18
    throw v0

    #@19
    .line 81
    :cond_1
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    #@1b
    return v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public resetSizeCounter()V
    .locals 0

    #@0
    .prologue
    .line 470
    return-void
.end method

.method public rewindToPosition(I)V
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    .line 581
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@2
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    #@4
    sub-int/2addr v0, v1

    #@5
    if-le p1, v0, :cond_0

    #@7
    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Position "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " is beyond current "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@22
    iget v3, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    #@24
    sub-int/2addr v2, v3

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 582
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 585
    :cond_0
    if-gez p1, :cond_1

    #@33
    .line 586
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@35
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v2, "Bad position "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0

    #@4d
    .line 588
    :cond_1
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    #@4f
    add-int/2addr v0, p1

    #@50
    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@52
    .line 580
    return-void
.end method

.method public setRecursionLimit(I)I
    .locals 4
    .param p1, "limit"    # I

    #@0
    .prologue
    .line 433
    if-gez p1, :cond_0

    #@2
    .line 434
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "Recursion limit cannot be negative: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 434
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 437
    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    #@1e
    .line 438
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    #@20
    .line 439
    return v0
.end method

.method public setSizeLimit(I)I
    .locals 4
    .param p1, "limit"    # I

    #@0
    .prologue
    .line 458
    if-gez p1, :cond_0

    #@2
    .line 459
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "Size limit cannot be negative: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 459
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 462
    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    #@1e
    .line 463
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    #@20
    .line 464
    return v0
.end method

.method public skipField(I)Z
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 106
    invoke-static {p1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    #@4
    move-result v0

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 128
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@b
    move-result-object v0

    #@c
    throw v0

    #@d
    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@10
    .line 109
    return v2

    #@11
    .line 111
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    #@14
    .line 112
    return v2

    #@15
    .line 114
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    #@1c
    .line 115
    return v2

    #@1d
    .line 117
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipMessage()V

    #@20
    .line 119
    invoke-static {p1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    #@23
    move-result v0

    #@24
    .line 120
    const/4 v1, 0x4

    #@25
    .line 119
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->makeTag(II)I

    #@28
    move-result v0

    #@29
    .line 118
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    #@2c
    .line 121
    return v2

    #@2d
    .line 123
    :pswitch_4
    const/4 v0, 0x0

    #@2e
    return v0

    #@2f
    .line 125
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    #@32
    .line 126
    return v2

    #@33
    .line 106
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 139
    .local v0, "tag":I
    if-eqz v0, :cond_1

    #@6
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 140
    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 640
    if-gez p1, :cond_0

    #@2
    .line 641
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@5
    move-result-object v0

    #@6
    throw v0

    #@7
    .line 644
    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@9
    add-int/2addr v0, p1

    #@a
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    #@c
    if-le v0, v1, :cond_1

    #@e
    .line 646
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    #@10
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@12
    sub-int/2addr v0, v1

    #@13
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    #@16
    .line 648
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@19
    move-result-object v0

    #@1a
    throw v0

    #@1b
    .line 651
    :cond_1
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    #@1d
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@1f
    sub-int/2addr v0, v1

    #@20
    if-gt p1, v0, :cond_2

    #@22
    .line 653
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@24
    add-int/2addr v0, p1

    #@25
    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    #@27
    .line 639
    return-void

    #@28
    .line 655
    :cond_2
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@2b
    move-result-object v0

    #@2c
    throw v0
.end method
