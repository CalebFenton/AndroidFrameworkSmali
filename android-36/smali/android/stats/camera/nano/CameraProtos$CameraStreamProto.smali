.class public final Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CameraProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/camera/nano/CameraProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraStreamProto"
.end annotation


# static fields
.field public static final blacklist CAPTURE_LATENCY:I = 0x1

.field public static final blacklist UNKNOWN:I

.field private static volatile blacklist _emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;


# instance fields
.field public blacklist colorSpace:I

.field public blacklist dataSpace:I

.field public blacklist dynamicRangeProfile:J

.field public blacklist errorCount:J

.field public blacklist firstCaptureLatencyMillis:I

.field public blacklist format:I

.field public blacklist height:I

.field public blacklist histogramBins:[F

.field public blacklist histogramCounts:[J

.field public blacklist histogramType:I

.field public blacklist maxAppBuffers:I

.field public blacklist maxHalBuffers:I

.field public blacklist requestCount:J

.field public blacklist streamUseCase:J

.field public blacklist usage:J

.field public blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 78
    invoke-virtual {p0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->clear()Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    .line 79
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 2

    .line 18
    sget-object v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    if-nez v0, :cond_15

    .line 19
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_7
    sget-object v1, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    if-nez v1, :cond_10

    .line 22
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    sput-object v1, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    .line 24
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 26
    :cond_15
    :goto_15
    sget-object v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    new-instance v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    invoke-virtual {v0, p0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 393
    new-instance v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 5

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 83
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 84
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 85
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 86
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 87
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 88
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 89
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 90
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 91
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 92
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 93
    sget-object v3, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 94
    sget-object v3, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 95
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 96
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 97
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->cachedSize:I

    .line 99
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 10

    .line 162
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 163
    .local v0, "size":I
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    .line 164
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 165
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_10
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    if-eqz v1, :cond_1c

    .line 168
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 169
    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_1c
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    if-eqz v1, :cond_28

    .line 172
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 173
    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_28
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    const/4 v3, 0x4

    if-eqz v1, :cond_34

    .line 176
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 177
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_34
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_44

    .line 180
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 181
    const/4 v1, 0x5

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_44
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_52

    .line 184
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 185
    const/4 v1, 0x6

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_52
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_60

    .line 188
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 189
    const/4 v1, 0x7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_60
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    if-eqz v1, :cond_6d

    .line 192
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 193
    const/16 v4, 0x8

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_6d
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    if-eqz v1, :cond_7a

    .line 196
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 197
    const/16 v4, 0x9

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_7a
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    if-eqz v1, :cond_87

    .line 200
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 201
    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_87
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    if-eqz v1, :cond_94

    .line 204
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 205
    const/16 v4, 0xb

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_94
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-eqz v1, :cond_a7

    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v1, v1

    if-lez v1, :cond_a7

    .line 208
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v1, v1

    mul-int/2addr v1, v3

    .line 209
    .local v1, "dataSize":I
    add-int/2addr v0, v1

    .line 210
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v3, v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 212
    .end local v1    # "dataSize":I
    :cond_a7
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-eqz v1, :cond_ca

    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v1, v1

    if-lez v1, :cond_ca

    .line 213
    const/4 v1, 0x0

    .line 214
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b2
    iget-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v4, v4

    if-ge v3, v4, :cond_c4

    .line 215
    iget-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    aget-wide v4, v4, v3

    .line 216
    .local v4, "element":J
    nop

    .line 217
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v8

    add-int/2addr v1, v8

    .line 214
    .end local v4    # "element":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_b2

    .line 219
    .end local v3    # "i":I
    :cond_c4
    add-int/2addr v0, v1

    .line 220
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v3, v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 222
    .end local v1    # "dataSize":I
    :cond_ca
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_d9

    .line 223
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 224
    const/16 v3, 0xe

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 226
    :cond_d9
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_e8

    .line 227
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 228
    const/16 v3, 0xf

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    :cond_e8
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    if-eqz v1, :cond_f5

    .line 231
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    .line 232
    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    :cond_f5
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 12
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 243
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_15c

    .line 247
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_159

    .line 248
    return-object p0

    .line 384
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    goto/16 :goto_159

    .line 380
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 381
    goto/16 :goto_159

    .line 376
    :sswitch_20
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 377
    goto/16 :goto_159

    .line 353
    :sswitch_28
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 354
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 356
    .local v3, "limit":I
    const/4 v4, 0x0

    .line 357
    .local v4, "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 358
    .local v5, "startPos":I
    :goto_35
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_41

    .line 359
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    .line 360
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 362
    :cond_41
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 363
    iget-object v6, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-nez v6, :cond_4a

    move v6, v1

    goto :goto_4d

    :cond_4a
    iget-object v6, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v6, v6

    .line 364
    .local v6, "i":I
    :goto_4d
    add-int v7, v6, v4

    new-array v7, v7, [J

    .line 365
    .local v7, "newArray":[J
    if-eqz v6, :cond_58

    .line 366
    iget-object v8, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    invoke-static {v8, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    :cond_58
    :goto_58
    array-length v1, v7

    if-ge v6, v1, :cond_64

    .line 369
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    aput-wide v8, v7, v6

    .line 368
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    .line 371
    :cond_64
    iput-object v7, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 372
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 373
    goto/16 :goto_159

    .line 336
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "startPos":I
    .end local v6    # "i":I
    .end local v7    # "newArray":[J
    :sswitch_6b
    nop

    .line 337
    const/16 v2, 0x68

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 338
    .local v2, "arrayLength":I
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-nez v3, :cond_78

    move v3, v1

    goto :goto_7b

    :cond_78
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v3, v3

    .line 339
    .local v3, "i":I
    :goto_7b
    add-int v4, v3, v2

    new-array v4, v4, [J

    .line 340
    .local v4, "newArray":[J
    if-eqz v3, :cond_86

    .line 341
    iget-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    :cond_86
    :goto_86
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_97

    .line 344
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 345
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 343
    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    .line 348
    :cond_97
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 349
    iput-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 350
    goto/16 :goto_159

    .line 303
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[J
    :sswitch_a1
    nop

    .line 304
    const/16 v2, 0x65

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 305
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-nez v3, :cond_ae

    move v3, v1

    goto :goto_b1

    :cond_ae
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v3, v3

    .line 306
    .restart local v3    # "i":I
    :goto_b1
    add-int v4, v3, v2

    new-array v4, v4, [F

    .line 307
    .local v4, "newArray":[F
    if-eqz v3, :cond_bc

    .line 308
    iget-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    :cond_bc
    :goto_bc
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_cd

    .line 311
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 312
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 310
    add-int/lit8 v3, v3, 0x1

    goto :goto_bc

    .line 315
    :cond_cd
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 316
    iput-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 317
    goto/16 :goto_159

    .line 320
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_d7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 321
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 322
    .local v3, "limit":I
    div-int/lit8 v4, v2, 0x4

    .line 323
    .local v4, "arrayLength":I
    iget-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-nez v5, :cond_e7

    move v5, v1

    goto :goto_ea

    :cond_e7
    iget-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v5, v5

    .line 324
    .local v5, "i":I
    :goto_ea
    add-int v6, v5, v4

    new-array v6, v6, [F

    .line 325
    .local v6, "newArray":[F
    if-eqz v5, :cond_f5

    .line 326
    iget-object v7, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    invoke-static {v7, v1, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    :cond_f5
    :goto_f5
    array-length v1, v6

    if-ge v5, v1, :cond_101

    .line 329
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v6, v5

    .line 328
    add-int/lit8 v5, v5, 0x1

    goto :goto_f5

    .line 331
    :cond_101
    iput-object v6, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 332
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 333
    goto :goto_159

    .line 293
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "i":I
    .end local v6    # "newArray":[F
    :sswitch_107
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 294
    .local v1, "value":I
    packed-switch v1, :pswitch_data_1aa

    goto :goto_111

    .line 297
    :pswitch_10f
    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 300
    :goto_111
    goto :goto_159

    .line 289
    .end local v1    # "value":I
    :sswitch_112
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 290
    goto :goto_159

    .line 285
    :sswitch_119
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 286
    goto :goto_159

    .line 281
    :sswitch_120
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 282
    goto :goto_159

    .line 277
    :sswitch_127
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 278
    goto :goto_159

    .line 273
    :sswitch_12e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 274
    goto :goto_159

    .line 269
    :sswitch_135
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 270
    goto :goto_159

    .line 265
    :sswitch_13c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 266
    goto :goto_159

    .line 261
    :sswitch_143
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 262
    goto :goto_159

    .line 257
    :sswitch_14a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 258
    goto :goto_159

    .line 253
    :sswitch_151
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 254
    goto :goto_159

    .line 245
    :sswitch_158
    return-object p0

    .line 388
    .end local v0    # "tag":I
    :cond_159
    :goto_159
    goto/16 :goto_1

    nop

    :sswitch_data_15c
    .sparse-switch
        0x0 -> :sswitch_158
        0x8 -> :sswitch_151
        0x10 -> :sswitch_14a
        0x18 -> :sswitch_143
        0x20 -> :sswitch_13c
        0x28 -> :sswitch_135
        0x30 -> :sswitch_12e
        0x38 -> :sswitch_127
        0x40 -> :sswitch_120
        0x48 -> :sswitch_119
        0x50 -> :sswitch_112
        0x58 -> :sswitch_107
        0x62 -> :sswitch_d7
        0x65 -> :sswitch_a1
        0x68 -> :sswitch_6b
        0x6a -> :sswitch_28
        0x70 -> :sswitch_20
        0x78 -> :sswitch_18
        0x80 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_10f
        :pswitch_10f
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    if-eqz v0, :cond_a

    .line 106
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 108
    :cond_a
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    if-eqz v0, :cond_14

    .line 109
    const/4 v0, 0x2

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 111
    :cond_14
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    if-eqz v0, :cond_1e

    .line 112
    const/4 v0, 0x3

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 114
    :cond_1e
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    if-eqz v0, :cond_28

    .line 115
    const/4 v0, 0x4

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 117
    :cond_28
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_36

    .line 118
    const/4 v0, 0x5

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 120
    :cond_36
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_42

    .line 121
    const/4 v0, 0x6

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 123
    :cond_42
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4e

    .line 124
    const/4 v0, 0x7

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 126
    :cond_4e
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    if-eqz v0, :cond_59

    .line 127
    const/16 v0, 0x8

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 129
    :cond_59
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    if-eqz v0, :cond_64

    .line 130
    const/16 v0, 0x9

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 132
    :cond_64
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    if-eqz v0, :cond_6f

    .line 133
    const/16 v0, 0xa

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 135
    :cond_6f
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    if-eqz v0, :cond_7a

    .line 136
    const/16 v0, 0xb

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 138
    :cond_7a
    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-eqz v0, :cond_95

    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v0, v0

    if-lez v0, :cond_95

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_84
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v1, v1

    if-ge v0, v1, :cond_95

    .line 140
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    aget v1, v1, v0

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 143
    .end local v0    # "i":I
    :cond_95
    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-eqz v0, :cond_b0

    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v0, v0

    if-lez v0, :cond_b0

    .line 144
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9f
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v1, v1

    if-ge v0, v1, :cond_b0

    .line 145
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    aget-wide v4, v1, v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 148
    .end local v0    # "i":I
    :cond_b0
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_bd

    .line 149
    const/16 v0, 0xe

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 151
    :cond_bd
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ca

    .line 152
    const/16 v0, 0xf

    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 154
    :cond_ca
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    if-eqz v0, :cond_d5

    .line 155
    const/16 v0, 0x10

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 157
    :cond_d5
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 158
    return-void
.end method
