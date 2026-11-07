.class public final Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedInputByteBufferNano.java"


# static fields
.field private static final blacklist DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final blacklist DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final blacklist buffer:[B

.field private blacklist bufferPos:I

.field private blacklist bufferSize:I

.field private blacklist bufferSizeAfterLimit:I

.field private blacklist bufferStart:I

.field private blacklist currentLimit:I

.field private blacklist lastTag:I

.field private blacklist recursionDepth:I

.field private blacklist recursionLimit:I

.field private blacklist sizeLimit:I


# direct methods
.method private constructor blacklist <init>([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const v0, 0x7fffffff

    iput v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 409
    const/16 v0, 0x40

    iput v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 412
    const/high16 v0, 0x4000000

    iput v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 418
    iput-object p1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    .line 419
    iput p2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    .line 420
    add-int v0, p2, p3

    iput v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 421
    iput p2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 422
    return-void
.end method

.method public static blacklist decodeZigZag32(I)I
    .registers 3
    .param p0, "n"    # I

    .line 378
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static blacklist decodeZigZag64(J)J
    .registers 6
    .param p0, "n"    # J

    .line 392
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist newInstance([B)Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .registers 3
    .param p0, "buf"    # [B

    .line 52
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newInstance([BII)Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .registers 4
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 60
    new-instance v0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private blacklist recomputeBufferSizeAfterLimit()V
    .registers 4

    .line 495
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 496
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 497
    .local v0, "bufferEnd":I
    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_1b

    .line 499
    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    .line 500
    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    goto :goto_1e

    .line 502
    :cond_1b
    const/4 v1, 0x0

    iput v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    .line 504
    :goto_1e
    return-void
.end method


# virtual methods
.method public blacklist checkLastTagWas(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 94
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-ne v0, p1, :cond_5

    .line 97
    return-void

    .line 95
    :cond_5
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getBytesUntilLimit()I
    .registers 3

    .line 521
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 522
    const/4 v0, -0x1

    return v0

    .line 525
    :cond_9
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 526
    .local v0, "currentAbsolutePosition":I
    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public blacklist getData(II)[B
    .registers 7
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 553
    if-nez p2, :cond_5

    .line 554
    sget-object v0, Landroid/internal/framework/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object v0

    .line 556
    :cond_5
    new-array v0, p2, [B

    .line 557
    .local v0, "copy":[B
    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v1, p1

    .line 558
    .local v1, "start":I
    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    return-object v0
.end method

.method public blacklist getPosition()I
    .registers 3

    .line 542
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist isAtEnd()Z
    .registers 3

    .line 535
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist popLimit(I)V
    .registers 2
    .param p1, "oldLimit"    # I

    .line 512
    iput p1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 513
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    .line 514
    return-void
.end method

.method public blacklist pushLimit(I)I
    .registers 4
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 479
    if-ltz p1, :cond_14

    .line 482
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr p1, v0

    .line 483
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 484
    .local v0, "oldLimit":I
    if-gt p1, v0, :cond_f

    .line 487
    iput p1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 489
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    .line 491
    return v0

    .line 485
    :cond_f
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 480
    .end local v0    # "oldLimit":I
    :cond_14
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readBool()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist readBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 232
    .local v0, "size":I
    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1d

    if-lez v0, :cond_1d

    .line 235
    new-array v1, v0, [B

    .line 236
    .local v1, "result":[B
    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 238
    return-object v1

    .line 239
    .end local v1    # "result":[B
    :cond_1d
    if-nez v0, :cond_22

    .line 240
    sget-object v1, Landroid/internal/framework/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object v1

    .line 243
    :cond_22
    invoke-virtual {p0, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist readGroup(Landroid/internal/framework/protobuf/nano/MessageNano;I)V
    .registers 5
    .param p1, "msg"    # Landroid/internal/framework/protobuf/nano/MessageNano;
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-ge v0, v1, :cond_1f

    .line 208
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 209
    invoke-virtual {p1, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/internal/framework/protobuf/nano/MessageNano;

    .line 210
    nop

    .line 211
    const/4 v0, 0x4

    invoke-static {p2, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    .line 210
    invoke-virtual {p0, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 212
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 213
    return-void

    .line 206
    :cond_1f
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V
    .registers 5
    .param p1, "msg"    # Landroid/internal/framework/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 218
    .local v0, "length":I
    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-ge v1, v2, :cond_25

    .line 221
    invoke-virtual {p0, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 222
    .local v1, "oldLimit":I
    iget v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 223
    invoke-virtual {p1, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/internal/framework/protobuf/nano/MessageNano;

    .line 224
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 225
    iget v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 226
    invoke-virtual {p0, v1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 227
    return-void

    .line 219
    .end local v1    # "oldLimit":I
    :cond_25
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1
.end method

.method blacklist readPrimitiveField(I)Ljava/lang/Object;
    .registers 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    packed-switch p1, :pswitch_data_a4

    .line 680
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :pswitch_1c
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 676
    :pswitch_25
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 674
    :pswitch_2e
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 672
    :pswitch_37
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 670
    :pswitch_40
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 668
    :pswitch_49
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 666
    :pswitch_52
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    return-object v0

    .line 664
    :pswitch_57
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 662
    :pswitch_5c
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 660
    :pswitch_65
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 658
    :pswitch_6e
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 656
    :pswitch_77
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 654
    :pswitch_80
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 652
    :pswitch_89
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 650
    :pswitch_92
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 648
    :pswitch_9b
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_92
        :pswitch_89
        :pswitch_80
        :pswitch_77
        :pswitch_6e
        :pswitch_65
        :pswitch_5c
        :pswitch_57
        :pswitch_3
        :pswitch_3
        :pswitch_52
        :pswitch_49
        :pswitch_40
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist readRawByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-eq v0, v1, :cond_11

    .line 586
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    aget-byte v0, v0, v1

    return v0

    .line 584
    :cond_11
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readRawBytes(I)[B
    .registers 6
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    if-ltz p1, :cond_32

    .line 600
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v0, v1, :cond_25

    .line 607
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_20

    .line 609
    new-array v0, p1, [B

    .line 610
    .local v0, "bytes":[B
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 612
    return-object v0

    .line 614
    .end local v0    # "bytes":[B
    :cond_20
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 602
    :cond_25
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 604
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 597
    :cond_32
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readRawLittleEndian32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 338
    .local v0, "b1":B
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 339
    .local v1, "b2":B
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 340
    .local v2, "b3":B
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 341
    .local v3, "b4":B
    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    return v4
.end method

.method public blacklist readRawLittleEndian64()J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 350
    .local v0, "b1":B
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 351
    .local v1, "b2":B
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 352
    .local v2, "b3":B
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 353
    .local v3, "b4":B
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v4

    .line 354
    .local v4, "b5":B
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v5

    .line 355
    .local v5, "b6":B
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v6

    .line 356
    .local v6, "b7":B
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v7

    .line 357
    .local v7, "b8":B
    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v14, 0x8

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    int-to-long v12, v2

    and-long/2addr v12, v10

    const/16 v14, 0x10

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    int-to-long v12, v3

    and-long/2addr v12, v10

    const/16 v14, 0x18

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    int-to-long v12, v4

    and-long/2addr v12, v10

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    int-to-long v12, v5

    and-long/2addr v12, v10

    const/16 v14, 0x28

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    int-to-long v12, v6

    and-long/2addr v12, v10

    const/16 v14, 0x30

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    int-to-long v12, v7

    and-long/2addr v10, v12

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    return-wide v8
.end method

.method public blacklist readRawVarint32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 288
    .local v0, "tmp":B
    if-ltz v0, :cond_7

    .line 289
    return v0

    .line 291
    :cond_7
    and-int/lit8 v1, v0, 0x7f

    .line 292
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    move v0, v2

    if-ltz v2, :cond_14

    .line 293
    shl-int/lit8 v2, v0, 0x7

    or-int/2addr v1, v2

    goto :goto_56

    .line 295
    :cond_14
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    .line 296
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    move v0, v2

    if-ltz v2, :cond_24

    .line 297
    shl-int/lit8 v2, v0, 0xe

    or-int/2addr v1, v2

    goto :goto_56

    .line 299
    :cond_24
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v1, v2

    .line 300
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    move v0, v2

    if-ltz v2, :cond_34

    .line 301
    shl-int/lit8 v2, v0, 0x15

    or-int/2addr v1, v2

    goto :goto_56

    .line 303
    :cond_34
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v1, v2

    .line 304
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    move v0, v2

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v1, v2

    .line 305
    if-gez v0, :cond_56

    .line 307
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_44
    const/4 v3, 0x5

    if-ge v2, v3, :cond_51

    .line 308
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    if-ltz v3, :cond_4e

    .line 309
    return v1

    .line 307
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 312
    .end local v2    # "i":I
    :cond_51
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    .line 317
    :cond_56
    :goto_56
    return v1
.end method

.method public blacklist readRawVarint64()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "shift":I
    const-wide/16 v1, 0x0

    .line 324
    .local v1, "result":J
    :goto_3
    const/16 v3, 0x40

    if-ge v0, v3, :cond_19

    .line 325
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 326
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 327
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_15

    .line 328
    return-wide v1

    .line 330
    :cond_15
    nop

    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x7

    .line 331
    goto :goto_3

    .line 332
    :cond_19
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v3

    throw v3
.end method

.method public blacklist readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public blacklist readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 190
    .local v0, "size":I
    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    if-lez v0, :cond_1e

    .line 193
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sget-object v4, Landroid/internal/framework/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 194
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 195
    return-object v1

    .line 198
    .end local v1    # "result":Ljava/lang/String;
    :cond_1e
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object v2

    sget-object v3, Landroid/internal/framework/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public blacklist readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 73
    return v0

    .line 76
    :cond_a
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 77
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-eqz v0, :cond_17

    .line 81
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    return v0

    .line 79
    :cond_17
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist resetSizeCounter()V
    .registers 1

    .line 470
    return-void
.end method

.method public blacklist rewindToPosition(I)V
    .registers 6
    .param p1, "position"    # I

    .line 566
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_28

    .line 570
    if-ltz p1, :cond_f

    .line 573
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 574
    return-void

    .line 571
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v3, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRecursionLimit(I)I
    .registers 5
    .param p1, "limit"    # I

    .line 432
    if-ltz p1, :cond_7

    .line 436
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 437
    .local v0, "oldLimit":I
    iput p1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 438
    return v0

    .line 433
    .end local v0    # "oldLimit":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSizeLimit(I)I
    .registers 5
    .param p1, "limit"    # I

    .line 457
    if-ltz p1, :cond_7

    .line 461
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 462
    .local v0, "oldLimit":I
    iput p1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 463
    return v0

    .line 458
    .end local v0    # "oldLimit":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist skipField(I)Z
    .registers 5
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p1}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_34

    .line 128
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 125
    :pswitch_d
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    .line 126
    return v1

    .line 123
    :pswitch_11
    const/4 v0, 0x0

    return v0

    .line 117
    :pswitch_13
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->skipMessage()V

    .line 118
    nop

    .line 119
    invoke-static {p1}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    .line 118
    invoke-virtual {p0, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 121
    return v1

    .line 114
    :pswitch_24
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 115
    return v1

    .line 111
    :pswitch_2c
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    .line 112
    return v1

    .line 108
    :pswitch_30
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 109
    return v1

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2c
        :pswitch_24
        :pswitch_13
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist skipMessage()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    nop

    :goto_1
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 139
    .local v0, "tag":I
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    .line 142
    .end local v0    # "tag":I
    :cond_e
    goto :goto_1

    .line 140
    .restart local v0    # "tag":I
    :cond_f
    :goto_f
    return-void
.end method

.method public blacklist skipRawBytes(I)V
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    if-ltz p1, :cond_28

    .line 629
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v0, v1, :cond_1b

    .line 636
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_16

    .line 638
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 642
    return-void

    .line 640
    :cond_16
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 631
    :cond_1b
    iget v0, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 633
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 626
    :cond_28
    invoke-static {}, Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method
