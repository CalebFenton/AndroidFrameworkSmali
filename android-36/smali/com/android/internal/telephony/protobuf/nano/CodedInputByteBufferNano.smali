.class public final Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedInputByteBufferNano.java"


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

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 405
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const/16 v0, 0x40

    .line 409
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    const/high16 v0, 0x4000000

    .line 412
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 418
    iput-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    .line 419
    iput p2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr p3, p2

    .line 420
    iput p3, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 421
    iput p2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void
.end method

.method public static blacklist decodeZigZag32(I)I
    .registers 2

    .line 0
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static blacklist decodeZigZag64(J)J
    .registers 6

    .line 0
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist newInstance([B)Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .registers 3

    .line 52
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newInstance([BII)Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .registers 4

    .line 60
    new-instance v0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private blacklist recomputeBufferSizeAfterLimit()V
    .registers 3

    .line 495
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 497
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_13

    sub-int v1, v0, v1

    .line 499
    iput v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    .line 500
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    return-void

    :cond_13
    const/4 v0, 0x0

    .line 502
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    return-void
.end method


# virtual methods
.method public blacklist checkLastTagWas(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 94
    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-ne p0, p1, :cond_5

    return-void

    .line 95
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getBytesUntilLimit()I
    .registers 3

    .line 521
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 p0, -0x1

    return p0

    .line 525
    :cond_9
    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public blacklist getData(II)[B
    .registers 5

    if-nez p2, :cond_5

    .line 554
    sget-object p0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object p0

    .line 556
    :cond_5
    new-array v0, p2, [B

    .line 557
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v1, p1

    .line 558
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    const/4 p1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public blacklist getPosition()I
    .registers 2

    .line 542
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public blacklist isAtEnd()Z
    .registers 2

    .line 535
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist popLimit(I)V
    .registers 2

    .line 512
    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 513
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public blacklist pushLimit(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    if-ltz p1, :cond_14

    .line 482
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr p1, v0

    .line 483
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt p1, v0, :cond_f

    .line 487
    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 489
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    return v0

    .line 485
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0

    .line 480
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0
.end method

.method public blacklist readBool()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist readBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 232
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1b

    if-lez v0, :cond_1b

    .line 235
    new-array v1, v0, [B

    .line 236
    iget-object v3, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-object v1

    :cond_1b
    if-nez v0, :cond_20

    .line 240
    sget-object p0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object p0

    .line 243
    :cond_20
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readEnum()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result p0

    return p0
.end method

.method public blacklist readFixed32()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result p0

    return p0
.end method

.method public blacklist readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFloat()F
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public blacklist readGroup(Lcom/android/internal/telephony/protobuf/nano/MessageNano;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-ge v0, v1, :cond_1c

    add-int/lit8 v0, v0, 0x1

    .line 208
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 209
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    const/4 p1, 0x4

    .line 211
    invoke-static {p2, p1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 212
    iget p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    return-void

    .line 206
    :cond_1c
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0
.end method

.method public blacklist readInt32()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result p0

    return p0
.end method

.method public blacklist readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 218
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-ge v1, v2, :cond_25

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 222
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 223
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    const/4 p1, 0x0

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 225
    iget p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    return-void

    .line 219
    :cond_25
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0
.end method

.method blacklist readPrimitiveField(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_a2

    .line 680
    :pswitch_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 678
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readSInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 676
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 674
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readSFixed64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 672
    :pswitch_35
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 670
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readEnum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 668
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 666
    :pswitch_50
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object p0

    return-object p0

    .line 664
    :pswitch_55
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 662
    :pswitch_5a
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 660
    :pswitch_63
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 658
    :pswitch_6c
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 656
    :pswitch_75
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 654
    :pswitch_7e
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 652
    :pswitch_87
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 650
    :pswitch_90
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 648
    :pswitch_99
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_99
        :pswitch_90
        :pswitch_87
        :pswitch_7e
        :pswitch_75
        :pswitch_6c
        :pswitch_63
        :pswitch_5a
        :pswitch_55
        :pswitch_3
        :pswitch_3
        :pswitch_50
        :pswitch_47
        :pswitch_3e
        :pswitch_35
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
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
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-eq v0, v1, :cond_f

    .line 586
    iget-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    aget-byte p0, v1, v0

    return p0

    .line 584
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0
.end method

.method public blacklist readRawBytes(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2b

    .line 600
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v1, v2, :cond_22

    .line 607
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_1d

    .line 609
    new-array v1, p1, [B

    .line 610
    iget-object v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-object v1

    .line 614
    :cond_1d
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0

    :cond_22
    sub-int/2addr v2, v0

    .line 602
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 604
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0

    .line 597
    :cond_2b
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0
.end method

.method public blacklist readRawLittleEndian32()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result p0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public blacklist readRawLittleEndian64()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v4

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v5

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v6

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result p0

    int-to-long v7, v0

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    int-to-long v0, v1

    and-long/2addr v0, v9

    const/16 v11, 0x8

    shl-long/2addr v0, v11

    or-long/2addr v0, v7

    int-to-long v7, v2

    and-long/2addr v7, v9

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v0, v7

    int-to-long v2, v3

    and-long/2addr v2, v9

    const/16 v7, 0x18

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v9

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v9

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v9

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p0

    and-long/2addr v2, v9

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist readRawVarint32()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    if-ltz v0, :cond_7

    return v0

    :cond_7
    and-int/lit8 v0, v0, 0x7f

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_13

    shl-int/lit8 p0, v1, 0x7

    :goto_11
    or-int/2addr p0, v0

    return p0

    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_21

    shl-int/lit8 p0, v1, 0xe

    goto :goto_11

    :cond_21
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_2f

    shl-int/lit8 p0, v1, 0x15

    goto :goto_11

    :cond_2f
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_50

    const/4 v1, 0x0

    :goto_3e
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4b

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_48

    goto :goto_50

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 312
    :cond_4b
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0

    :cond_50
    :goto_50
    return v0
.end method

.method public blacklist readRawVarint64()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v0, v3, :cond_18

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v1

    :cond_15
    add-int/lit8 v0, v0, 0x7

    goto :goto_3

    .line 332
    :cond_18
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0
.end method

.method public blacklist readSFixed32()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result p0

    return p0
.end method

.method public blacklist readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSInt32()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag32(I)I

    move-result p0

    return p0
.end method

.method public blacklist readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag64(J)J

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
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 190
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    if-lez v0, :cond_1c

    .line 193
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    sget-object v4, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 194
    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-object v1

    .line 198
    :cond_1c
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

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
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    return v0

    .line 76
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-eqz v0, :cond_13

    return v0

    .line 79
    :cond_13
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0
.end method

.method public blacklist readUInt32()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result p0

    return p0
.end method

.method public blacklist readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist resetSizeCounter()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist rewindToPosition(I)V
    .registers 5

    .line 566
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_24

    if-ltz p1, :cond_d

    add-int/2addr v1, p1

    .line 573
    iput v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void

    .line 571
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 567
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr p1, p0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRecursionLimit(I)I
    .registers 4

    if-ltz p1, :cond_7

    .line 436
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 437
    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    return v0

    .line 433
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recursion limit cannot be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setSizeLimit(I)I
    .registers 4

    if-ltz p1, :cond_7

    .line 461
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 462
    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    return v0

    .line 458
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size limit cannot be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist skipField(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_20

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x5

    if-ne v0, p1, :cond_19

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    return v1

    .line 128
    :cond_19
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0

    :cond_1e
    const/4 p0, 0x0

    return p0

    .line 117
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->skipMessage()V

    .line 119
    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    return v1

    .line 114
    :cond_2f
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    return v1

    .line 111
    :cond_37
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    return v1

    .line 108
    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    return v1
.end method

.method public blacklist skipMessage()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public blacklist skipRawBytes(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_21

    .line 629
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v1, v2, :cond_18

    .line 636
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_13

    add-int/2addr v0, p1

    .line 638
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void

    .line 640
    :cond_13
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0

    :cond_18
    sub-int/2addr v2, v0

    .line 631
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 633
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0

    .line 626
    :cond_21
    invoke-static {}, Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0
.end method
