.class public final Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "SatelliteConfigData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;


# instance fields
.field public blacklist carrierId:I

.field public blacklist supportedSatelliteProviderCapabilities:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 263
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;
    .registers 2

    .line 246
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    if-nez v0, :cond_17

    .line 247
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 250
    new-array v1, v1, [Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    sput-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 252
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 254
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 356
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;
    .registers 2

    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->carrierId:I

    .line 269
    invoke-static {}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->emptyArray()[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->supportedSatelliteProviderCapabilities:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 271
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 294
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 295
    iget v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 297
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->supportedSatelliteProviderCapabilities:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    if-eqz v1, :cond_28

    array-length v1, v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    .line 300
    :goto_16
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->supportedSatelliteProviderCapabilities:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    array-length v3, v2

    if-ge v1, v3, :cond_28

    .line 301
    aget-object v2, v2, v1

    if-eqz v2, :cond_25

    const/4 v3, 0x2

    .line 304
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
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

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_51

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    .line 321
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_51

    .line 332
    :cond_15
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->supportedSatelliteProviderCapabilities:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    const/4 v2, 0x0

    if-nez v1, :cond_20

    move v3, v2

    goto :goto_21

    :cond_20
    array-length v3, v1

    :goto_21
    add-int/2addr v0, v3

    .line 334
    new-array v4, v0, [Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    if-eqz v3, :cond_29

    .line 337
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    :goto_29
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3d

    .line 340
    new-instance v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    invoke-direct {v1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;-><init>()V

    aput-object v1, v4, v3

    .line 341
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 342
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 345
    :cond_3d
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;-><init>()V

    aput-object v0, v4, v3

    .line 346
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 347
    iput-object v4, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->supportedSatelliteProviderCapabilities:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    goto :goto_0

    .line 327
    :cond_4a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->carrierId:I

    goto :goto_0

    :cond_51
    :goto_51
    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 279
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 281
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->supportedSatelliteProviderCapabilities:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    if-eqz v0, :cond_20

    array-length v0, v0

    if-lez v0, :cond_20

    const/4 v0, 0x0

    .line 282
    :goto_10
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->supportedSatelliteProviderCapabilities:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 283
    aget-object v1, v1, v0

    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    .line 285
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 289
    :cond_20
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
