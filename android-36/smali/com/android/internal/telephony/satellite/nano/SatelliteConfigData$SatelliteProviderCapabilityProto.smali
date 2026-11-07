.class public final Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "SatelliteConfigData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;


# instance fields
.field public blacklist allowedServices:[I

.field public blacklist carrierPlmn:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 389
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;
    .registers 2

    .line 372
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    if-nez v0, :cond_17

    .line 373
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 376
    new-array v1, v1, [Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    sput-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 378
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 380
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 500
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;
    .registers 2

    .line 394
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    .line 395
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 397
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 417
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 418
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 419
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    const/4 v2, 0x1

    .line 420
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    if-eqz v1, :cond_31

    array-length v1, v1

    if-lez v1, :cond_31

    const/4 v1, 0x0

    move v2, v1

    .line 424
    :goto_1f
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    array-length v4, v3

    if-ge v1, v4, :cond_2e

    .line 425
    aget v3, v3, v1

    .line 427
    invoke-static {v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2e
    add-int/2addr v0, v2

    .line 430
    array-length p0, v3

    add-int/2addr v0, p0

    :cond_31
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
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

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_84

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_57

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1b

    .line 445
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8c

    .line 472
    :cond_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 473
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 476
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v3, v2

    .line 477
    :goto_28
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_34

    .line 478
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 481
    :cond_34
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 482
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    if-nez v1, :cond_3d

    move v4, v2

    goto :goto_3e

    :cond_3d
    array-length v4, v1

    :goto_3e
    add-int/2addr v3, v4

    .line 483
    new-array v5, v3, [I

    if-eqz v4, :cond_46

    .line 485
    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    :goto_46
    if-ge v4, v3, :cond_51

    .line 488
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 490
    :cond_51
    iput-object v5, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    .line 491
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 456
    :cond_57
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 457
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    if-nez v1, :cond_61

    move v3, v2

    goto :goto_62

    :cond_61
    array-length v3, v1

    :goto_62
    add-int/2addr v0, v3

    .line 458
    new-array v4, v0, [I

    if-eqz v3, :cond_6a

    .line 460
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6a
    :goto_6a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_7a

    .line 463
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 464
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 467
    :cond_7a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 468
    iput-object v4, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    goto/16 :goto_0

    .line 451
    :cond_84
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8c
    :goto_8c
    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 407
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    if-eqz v0, :cond_26

    array-length v0, v0

    if-lez v0, :cond_26

    const/4 v0, 0x0

    .line 408
    :goto_18
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    array-length v2, v1

    if-ge v0, v2, :cond_26

    const/4 v2, 0x2

    .line 409
    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 412
    :cond_26
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
