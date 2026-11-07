.class public final Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "SatelliteConfigData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;


# instance fields
.field public blacklist carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

.field public blacklist deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

.field public blacklist version:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;
    .registers 2

    .line 102
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-nez v0, :cond_17

    .line 103
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 106
    new-array v1, v1, [Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    sput-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 108
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 110
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;
    .registers 2

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->version:I

    .line 128
    invoke-static {}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->emptyArray()[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    .line 130
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 131
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 157
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 158
    iget v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->version:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 160
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    if-eqz v1, :cond_28

    array-length v1, v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    .line 163
    :goto_16
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    array-length v3, v2

    if-ge v1, v3, :cond_28

    .line 164
    aget-object v2, v2, v1

    if-eqz v2, :cond_25

    const/4 v3, 0x2

    .line 167
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 171
    :cond_28
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-eqz p0, :cond_32

    const/4 v1, 0x3

    .line 173
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_32
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

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_66

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_19

    .line 188
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_66

    .line 218
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-nez v0, :cond_24

    .line 219
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    .line 221
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 199
    :cond_2a
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    const/4 v2, 0x0

    if-nez v1, :cond_35

    move v3, v2

    goto :goto_36

    :cond_35
    array-length v3, v1

    :goto_36
    add-int/2addr v0, v3

    .line 201
    new-array v4, v0, [Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    if-eqz v3, :cond_3e

    .line 204
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3e
    :goto_3e
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_52

    .line 207
    new-instance v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    invoke-direct {v1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;-><init>()V

    aput-object v1, v4, v3

    .line 208
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 209
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 212
    :cond_52
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;-><init>()V

    aput-object v0, v4, v3

    .line 213
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 214
    iput-object v4, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    goto :goto_0

    .line 194
    :cond_5f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->version:I

    goto :goto_0

    :cond_66
    :goto_66
    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->version:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 139
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 141
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    if-eqz v0, :cond_20

    array-length v0, v0

    if-lez v0, :cond_20

    const/4 v0, 0x0

    .line 142
    :goto_10
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 143
    aget-object v1, v1, v0

    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    .line 145
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 149
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-eqz v0, :cond_28

    const/4 v1, 0x3

    .line 150
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 152
    :cond_28
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
