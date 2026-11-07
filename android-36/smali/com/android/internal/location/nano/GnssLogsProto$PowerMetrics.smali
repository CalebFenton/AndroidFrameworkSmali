.class public final Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "GnssLogsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/nano/GnssLogsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerMetrics"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;


# instance fields
.field public blacklist energyConsumedMah:D

.field public blacklist loggingDurationMs:J

.field public blacklist timeInSignalQualityLevelMs:[J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 414
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->clear()Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    .line 416
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .registers 2

    .line 394
    sget-object v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->_emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    if-nez v0, :cond_15

    .line 395
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_7
    sget-object v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->_emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    if-nez v1, :cond_10

    .line 398
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    sput-object v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->_emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    .line 400
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 402
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->_emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 538
    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .registers 3

    .line 419
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    .line 420
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    .line 421
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    .line 422
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->cachedSize:I

    .line 423
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 8

    .line 446
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 447
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 448
    iget-wide v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    .line 449
    invoke-static {v2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 451
    :cond_14
    iget-wide v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 452
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2c

    .line 453
    iget-wide v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    .line 454
    const/4 v1, 0x2

    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v1, v1

    if-lez v1, :cond_4f

    .line 457
    const/4 v1, 0x0

    .line 458
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_37
    iget-object v4, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v4, v4

    if-ge v3, v4, :cond_49

    .line 459
    iget-object v4, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    aget-wide v4, v4, v3

    .line 460
    .local v4, "element":J
    nop

    .line 461
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v6

    add-int/2addr v1, v6

    .line 458
    .end local v4    # "element":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 463
    .end local v3    # "i":I
    :cond_49
    add-int/2addr v0, v1

    .line 464
    iget-object v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v3, v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 466
    .end local v1    # "dataSize":I
    :cond_4f
    return v0
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

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .registers 12
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 475
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_98

    .line 479
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_96

    .line 480
    return-object p0

    .line 510
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 511
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 513
    .local v3, "limit":I
    const/4 v4, 0x0

    .line 514
    .local v4, "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 515
    .local v5, "startPos":I
    :goto_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_29

    .line 516
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    .line 517
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 519
    :cond_29
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 520
    iget-object v6, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    if-nez v6, :cond_32

    move v6, v1

    goto :goto_35

    :cond_32
    iget-object v6, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v6, v6

    .line 521
    .local v6, "i":I
    :goto_35
    add-int v7, v6, v4

    new-array v7, v7, [J

    .line 522
    .local v7, "newArray":[J
    if-eqz v6, :cond_40

    .line 523
    iget-object v8, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    invoke-static {v8, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    :cond_40
    :goto_40
    array-length v1, v7

    if-ge v6, v1, :cond_4c

    .line 526
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    aput-wide v8, v7, v6

    .line 525
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 528
    :cond_4c
    iput-object v7, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    .line 529
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 530
    goto :goto_96

    .line 493
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "startPos":I
    .end local v6    # "i":I
    .end local v7    # "newArray":[J
    :sswitch_52
    nop

    .line 494
    const/16 v2, 0x18

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 495
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    if-nez v3, :cond_5f

    move v3, v1

    goto :goto_62

    :cond_5f
    iget-object v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v3, v3

    .line 496
    .local v3, "i":I
    :goto_62
    add-int v4, v3, v2

    new-array v4, v4, [J

    .line 497
    .local v4, "newArray":[J
    if-eqz v3, :cond_6d

    .line 498
    iget-object v5, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    :cond_6d
    :goto_6d
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_7e

    .line 501
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 502
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 500
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 505
    :cond_7e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 506
    iput-object v4, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    .line 507
    goto :goto_96

    .line 489
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[J
    :sswitch_87
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    .line 490
    goto :goto_96

    .line 485
    :sswitch_8e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    .line 486
    goto :goto_96

    .line 477
    :sswitch_95
    return-object p0

    .line 533
    .end local v0    # "tag":I
    :cond_96
    :goto_96
    goto/16 :goto_1

    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_95
        0x8 -> :sswitch_8e
        0x11 -> :sswitch_87
        0x18 -> :sswitch_52
        0x1a -> :sswitch_10
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 430
    iget-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 432
    :cond_e
    iget-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 433
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    .line 434
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 436
    :cond_24
    iget-object v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v0, v0

    if-lez v0, :cond_3e

    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    iget-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_3e

    .line 438
    iget-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    aget-wide v1, v1, v0

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 441
    .end local v0    # "i":I
    :cond_3e
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 442
    return-void
.end method
