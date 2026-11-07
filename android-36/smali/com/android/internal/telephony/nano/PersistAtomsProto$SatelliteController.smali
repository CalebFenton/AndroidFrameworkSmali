.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;


# instance fields
.field public blacklist carrierId:I

.field public blacklist countOfAllowedSatelliteAccess:I

.field public blacklist countOfDatagramTypeKeepAliveFail:I

.field public blacklist countOfDatagramTypeKeepAliveSuccess:I

.field public blacklist countOfDatagramTypeLocationSharingFail:I

.field public blacklist countOfDatagramTypeLocationSharingSuccess:I

.field public blacklist countOfDatagramTypeSosSmsFail:I

.field public blacklist countOfDatagramTypeSosSmsSuccess:I

.field public blacklist countOfDemoModeIncomingDatagramFail:I

.field public blacklist countOfDemoModeIncomingDatagramSuccess:I

.field public blacklist countOfDemoModeOutgoingDatagramFail:I

.field public blacklist countOfDemoModeOutgoingDatagramSuccess:I

.field public blacklist countOfDemoModeSatelliteServiceEnablementsFail:I

.field public blacklist countOfDemoModeSatelliteServiceEnablementsSuccess:I

.field public blacklist countOfDeprovisionFail:I

.field public blacklist countOfDeprovisionSuccess:I

.field public blacklist countOfDisallowedSatelliteAccess:I

.field public blacklist countOfFailedLocationQueries:I

.field public blacklist countOfIncomingDatagramFail:I

.field public blacklist countOfIncomingDatagramSuccess:I

.field public blacklist countOfIncomingDatagramTypeSmsFail:I

.field public blacklist countOfIncomingDatagramTypeSmsSuccess:I

.field public blacklist countOfIncomingDatagramTypeSosSmsFail:I

.field public blacklist countOfIncomingDatagramTypeSosSmsSuccess:I

.field public blacklist countOfOutgoingDatagramFail:I

.field public blacklist countOfOutgoingDatagramSuccess:I

.field public blacklist countOfOutgoingDatagramTypeSmsFail:I

.field public blacklist countOfOutgoingDatagramTypeSmsSuccess:I

.field public blacklist countOfP2PSmsAvailableNotificationRemoved:I

.field public blacklist countOfP2PSmsAvailableNotificationShown:I

.field public blacklist countOfProvisionFail:I

.field public blacklist countOfProvisionSuccess:I

.field public blacklist countOfSatelliteAccessCheckFail:I

.field public blacklist countOfSatelliteAllowedStateChangedEvents:I

.field public blacklist countOfSatelliteServiceEnablementsFail:I

.field public blacklist countOfSatelliteServiceEnablementsSuccess:I

.field public blacklist countOfSuccessfulLocationQueries:I

.field public blacklist isNtnOnlyCarrier:Z

.field public blacklist isProvisioned:Z

.field public blacklist totalBatteryChargedTimeSec:I

.field public blacklist totalBatteryConsumptionPercent:I

.field public blacklist totalServiceUptimeSec:I

.field public blacklist versionOfSatelliteAccessConfig:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8991
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8992
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;
    .registers 2

    .line 8851
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    if-nez v0, :cond_17

    .line 8852
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8854
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 8855
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 8857
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 8859
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9556
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 9550
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;
    .registers 2

    const/4 v0, 0x0

    .line 8996
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    .line 8997
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    .line 8998
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    .line 8999
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    .line 9000
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    .line 9001
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    .line 9002
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    .line 9003
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    .line 9004
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    .line 9005
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    .line 9006
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    .line 9007
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    .line 9008
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    .line 9009
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    .line 9010
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    .line 9011
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    .line 9012
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    .line 9013
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    .line 9014
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    .line 9015
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    .line 9016
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    .line 9017
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    .line 9018
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    .line 9019
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    .line 9020
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    .line 9021
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    .line 9022
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    .line 9023
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    .line 9024
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isProvisioned:Z

    .line 9025
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierId:I

    .line 9026
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    .line 9027
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    .line 9028
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    .line 9029
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    .line 9030
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    .line 9031
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isNtnOnlyCarrier:Z

    .line 9032
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->versionOfSatelliteAccessConfig:I

    .line 9033
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    .line 9034
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    .line 9035
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    .line 9036
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    .line 9037
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    .line 9038
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    const/4 v0, 0x0

    .line 9039
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 9040
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 9181
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9182
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 9184
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9186
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 9188
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9190
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 9192
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9194
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 9196
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9198
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 9200
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9202
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 9204
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9206
    :cond_40
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 9208
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9210
    :cond_4a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 9212
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9214
    :cond_55
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    if-eqz v1, :cond_60

    const/16 v2, 0x9

    .line 9216
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9218
    :cond_60
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    if-eqz v1, :cond_6b

    const/16 v2, 0xa

    .line 9220
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9222
    :cond_6b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    if-eqz v1, :cond_76

    const/16 v2, 0xb

    .line 9224
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9226
    :cond_76
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    if-eqz v1, :cond_81

    const/16 v2, 0xc

    .line 9228
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9230
    :cond_81
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    if-eqz v1, :cond_8c

    const/16 v2, 0xd

    .line 9232
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9234
    :cond_8c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    if-eqz v1, :cond_97

    const/16 v2, 0xe

    .line 9236
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9238
    :cond_97
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    if-eqz v1, :cond_a2

    const/16 v2, 0xf

    .line 9240
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9242
    :cond_a2
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    if-eqz v1, :cond_ad

    const/16 v2, 0x10

    .line 9244
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9246
    :cond_ad
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    if-eqz v1, :cond_b8

    const/16 v2, 0x11

    .line 9248
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9250
    :cond_b8
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    if-eqz v1, :cond_c3

    const/16 v2, 0x12

    .line 9252
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9254
    :cond_c3
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    if-eqz v1, :cond_ce

    const/16 v2, 0x13

    .line 9256
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9258
    :cond_ce
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    if-eqz v1, :cond_d9

    const/16 v2, 0x14

    .line 9260
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9262
    :cond_d9
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    if-eqz v1, :cond_e4

    const/16 v2, 0x15

    .line 9264
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9266
    :cond_e4
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    if-eqz v1, :cond_ef

    const/16 v2, 0x16

    .line 9268
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9270
    :cond_ef
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    if-eqz v1, :cond_fa

    const/16 v2, 0x17

    .line 9272
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9274
    :cond_fa
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    if-eqz v1, :cond_105

    const/16 v2, 0x18

    .line 9276
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9278
    :cond_105
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    if-eqz v1, :cond_110

    const/16 v2, 0x19

    .line 9280
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9282
    :cond_110
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    if-eqz v1, :cond_11b

    const/16 v2, 0x1a

    .line 9284
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9286
    :cond_11b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    if-eqz v1, :cond_126

    const/16 v2, 0x1b

    .line 9288
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9290
    :cond_126
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    if-eqz v1, :cond_131

    const/16 v2, 0x1c

    .line 9292
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9294
    :cond_131
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isProvisioned:Z

    if-eqz v1, :cond_13c

    const/16 v2, 0x1d

    .line 9296
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9298
    :cond_13c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierId:I

    if-eqz v1, :cond_147

    const/16 v2, 0x1e

    .line 9300
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9302
    :cond_147
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    if-eqz v1, :cond_152

    const/16 v2, 0x1f

    .line 9304
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9306
    :cond_152
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    if-eqz v1, :cond_15d

    const/16 v2, 0x20

    .line 9308
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9310
    :cond_15d
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    if-eqz v1, :cond_168

    const/16 v2, 0x21

    .line 9312
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9314
    :cond_168
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    if-eqz v1, :cond_173

    const/16 v2, 0x22

    .line 9316
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9318
    :cond_173
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    if-eqz v1, :cond_17e

    const/16 v2, 0x23

    .line 9320
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9322
    :cond_17e
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isNtnOnlyCarrier:Z

    if-eqz v1, :cond_189

    const/16 v2, 0x24

    .line 9324
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9326
    :cond_189
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->versionOfSatelliteAccessConfig:I

    if-eqz v1, :cond_194

    const/16 v2, 0x25

    .line 9328
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9330
    :cond_194
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    if-eqz v1, :cond_19f

    const/16 v2, 0x26

    .line 9332
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9334
    :cond_19f
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    if-eqz v1, :cond_1aa

    const/16 v2, 0x27

    .line 9336
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9338
    :cond_1aa
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    if-eqz v1, :cond_1b5

    const/16 v2, 0x28

    .line 9340
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9342
    :cond_1b5
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    if-eqz v1, :cond_1c0

    const/16 v2, 0x29

    .line 9344
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9346
    :cond_1c0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    if-eqz v1, :cond_1cb

    const/16 v2, 0x2a

    .line 9348
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9350
    :cond_1cb
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    if-eqz p0, :cond_1d6

    const/16 v1, 0x2b

    .line 9352
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1d6
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9362
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_158

    .line 9367
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_157

    .line 9541
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    goto :goto_0

    .line 9537
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    goto :goto_0

    .line 9533
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    goto :goto_0

    .line 9529
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    goto :goto_0

    .line 9525
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    goto :goto_0

    .line 9521
    :sswitch_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    goto :goto_0

    .line 9517
    :sswitch_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->versionOfSatelliteAccessConfig:I

    goto :goto_0

    .line 9513
    :sswitch_40
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isNtnOnlyCarrier:Z

    goto :goto_0

    .line 9509
    :sswitch_47
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    goto :goto_0

    .line 9505
    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    goto :goto_0

    .line 9501
    :sswitch_55
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    goto :goto_0

    .line 9497
    :sswitch_5c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    goto :goto_0

    .line 9493
    :sswitch_63
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    goto :goto_0

    .line 9489
    :sswitch_6a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierId:I

    goto :goto_0

    .line 9485
    :sswitch_71
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isProvisioned:Z

    goto :goto_0

    .line 9481
    :sswitch_78
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    goto :goto_0

    .line 9477
    :sswitch_7f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    goto/16 :goto_0

    .line 9473
    :sswitch_87
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    goto/16 :goto_0

    .line 9469
    :sswitch_8f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    goto/16 :goto_0

    .line 9465
    :sswitch_97
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    goto/16 :goto_0

    .line 9461
    :sswitch_9f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    goto/16 :goto_0

    .line 9457
    :sswitch_a7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    goto/16 :goto_0

    .line 9453
    :sswitch_af
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    goto/16 :goto_0

    .line 9449
    :sswitch_b7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    goto/16 :goto_0

    .line 9445
    :sswitch_bf
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    goto/16 :goto_0

    .line 9441
    :sswitch_c7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    goto/16 :goto_0

    .line 9437
    :sswitch_cf
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    goto/16 :goto_0

    .line 9433
    :sswitch_d7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    goto/16 :goto_0

    .line 9429
    :sswitch_df
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    goto/16 :goto_0

    .line 9425
    :sswitch_e7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    goto/16 :goto_0

    .line 9421
    :sswitch_ef
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    goto/16 :goto_0

    .line 9417
    :sswitch_f7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    goto/16 :goto_0

    .line 9413
    :sswitch_ff
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    goto/16 :goto_0

    .line 9409
    :sswitch_107
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    goto/16 :goto_0

    .line 9405
    :sswitch_10f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    goto/16 :goto_0

    .line 9401
    :sswitch_117
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    goto/16 :goto_0

    .line 9397
    :sswitch_11f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    goto/16 :goto_0

    .line 9393
    :sswitch_127
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    goto/16 :goto_0

    .line 9389
    :sswitch_12f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    goto/16 :goto_0

    .line 9385
    :sswitch_137
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    goto/16 :goto_0

    .line 9381
    :sswitch_13f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    goto/16 :goto_0

    .line 9377
    :sswitch_147
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    goto/16 :goto_0

    .line 9373
    :sswitch_14f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    goto/16 :goto_0

    :goto_157
    :sswitch_157
    return-object p0

    :sswitch_data_158
    .sparse-switch
        0x0 -> :sswitch_157
        0x8 -> :sswitch_14f
        0x10 -> :sswitch_147
        0x18 -> :sswitch_13f
        0x20 -> :sswitch_137
        0x28 -> :sswitch_12f
        0x30 -> :sswitch_127
        0x38 -> :sswitch_11f
        0x40 -> :sswitch_117
        0x48 -> :sswitch_10f
        0x50 -> :sswitch_107
        0x58 -> :sswitch_ff
        0x60 -> :sswitch_f7
        0x68 -> :sswitch_ef
        0x70 -> :sswitch_e7
        0x78 -> :sswitch_df
        0x80 -> :sswitch_d7
        0x88 -> :sswitch_cf
        0x90 -> :sswitch_c7
        0x98 -> :sswitch_bf
        0xa0 -> :sswitch_b7
        0xa8 -> :sswitch_af
        0xb0 -> :sswitch_a7
        0xb8 -> :sswitch_9f
        0xc0 -> :sswitch_97
        0xc8 -> :sswitch_8f
        0xd0 -> :sswitch_87
        0xd8 -> :sswitch_7f
        0xe0 -> :sswitch_78
        0xe8 -> :sswitch_71
        0xf0 -> :sswitch_6a
        0xf8 -> :sswitch_63
        0x100 -> :sswitch_5c
        0x108 -> :sswitch_55
        0x110 -> :sswitch_4e
        0x118 -> :sswitch_47
        0x120 -> :sswitch_40
        0x128 -> :sswitch_39
        0x130 -> :sswitch_32
        0x138 -> :sswitch_2b
        0x140 -> :sswitch_24
        0x148 -> :sswitch_1d
        0x150 -> :sswitch_16
        0x158 -> :sswitch_f
    .end sparse-switch
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

    .line 8845
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9047
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 9048
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9050
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 9051
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9053
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 9054
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9056
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 9057
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9059
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 9060
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9062
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 9063
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9065
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 9066
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9068
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 9069
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9071
    :cond_41
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 9072
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9074
    :cond_4a
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    if-eqz v0, :cond_53

    const/16 v1, 0xa

    .line 9075
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9077
    :cond_53
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    if-eqz v0, :cond_5c

    const/16 v1, 0xb

    .line 9078
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9080
    :cond_5c
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    if-eqz v0, :cond_65

    const/16 v1, 0xc

    .line 9081
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9083
    :cond_65
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    if-eqz v0, :cond_6e

    const/16 v1, 0xd

    .line 9084
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9086
    :cond_6e
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    if-eqz v0, :cond_77

    const/16 v1, 0xe

    .line 9087
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9089
    :cond_77
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    if-eqz v0, :cond_80

    const/16 v1, 0xf

    .line 9090
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9092
    :cond_80
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    if-eqz v0, :cond_89

    const/16 v1, 0x10

    .line 9093
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9095
    :cond_89
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    if-eqz v0, :cond_92

    const/16 v1, 0x11

    .line 9096
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9098
    :cond_92
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    if-eqz v0, :cond_9b

    const/16 v1, 0x12

    .line 9099
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9101
    :cond_9b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    if-eqz v0, :cond_a4

    const/16 v1, 0x13

    .line 9102
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9104
    :cond_a4
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    if-eqz v0, :cond_ad

    const/16 v1, 0x14

    .line 9105
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9107
    :cond_ad
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    if-eqz v0, :cond_b6

    const/16 v1, 0x15

    .line 9108
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9110
    :cond_b6
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    if-eqz v0, :cond_bf

    const/16 v1, 0x16

    .line 9111
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9113
    :cond_bf
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    if-eqz v0, :cond_c8

    const/16 v1, 0x17

    .line 9114
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9116
    :cond_c8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    if-eqz v0, :cond_d1

    const/16 v1, 0x18

    .line 9117
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9119
    :cond_d1
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    if-eqz v0, :cond_da

    const/16 v1, 0x19

    .line 9120
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9122
    :cond_da
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    if-eqz v0, :cond_e3

    const/16 v1, 0x1a

    .line 9123
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9125
    :cond_e3
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    if-eqz v0, :cond_ec

    const/16 v1, 0x1b

    .line 9126
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9128
    :cond_ec
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    if-eqz v0, :cond_f5

    const/16 v1, 0x1c

    .line 9129
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9131
    :cond_f5
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isProvisioned:Z

    if-eqz v0, :cond_fe

    const/16 v1, 0x1d

    .line 9132
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9134
    :cond_fe
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierId:I

    if-eqz v0, :cond_107

    const/16 v1, 0x1e

    .line 9135
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9137
    :cond_107
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    if-eqz v0, :cond_110

    const/16 v1, 0x1f

    .line 9138
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9140
    :cond_110
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    if-eqz v0, :cond_119

    const/16 v1, 0x20

    .line 9141
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9143
    :cond_119
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    if-eqz v0, :cond_122

    const/16 v1, 0x21

    .line 9144
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9146
    :cond_122
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    if-eqz v0, :cond_12b

    const/16 v1, 0x22

    .line 9147
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9149
    :cond_12b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    if-eqz v0, :cond_134

    const/16 v1, 0x23

    .line 9150
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9152
    :cond_134
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isNtnOnlyCarrier:Z

    if-eqz v0, :cond_13d

    const/16 v1, 0x24

    .line 9153
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9155
    :cond_13d
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->versionOfSatelliteAccessConfig:I

    if-eqz v0, :cond_146

    const/16 v1, 0x25

    .line 9156
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9158
    :cond_146
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    if-eqz v0, :cond_14f

    const/16 v1, 0x26

    .line 9159
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9161
    :cond_14f
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    if-eqz v0, :cond_158

    const/16 v1, 0x27

    .line 9162
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9164
    :cond_158
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    if-eqz v0, :cond_161

    const/16 v1, 0x28

    .line 9165
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9167
    :cond_161
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    if-eqz v0, :cond_16a

    const/16 v1, 0x29

    .line 9168
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9170
    :cond_16a
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    if-eqz v0, :cond_173

    const/16 v1, 0x2a

    .line 9171
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9173
    :cond_173
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    if-eqz v0, :cond_17c

    const/16 v1, 0x2b

    .line 9174
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9176
    :cond_17c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
