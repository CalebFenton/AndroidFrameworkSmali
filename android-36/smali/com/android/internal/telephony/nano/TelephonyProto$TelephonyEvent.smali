.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$Type;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkValidationState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RadioState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$EventState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ApnType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;


# instance fields
.field public blacklist activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

.field public blacklist carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

.field public blacklist carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

.field public blacklist dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

.field public blacklist dataStallAction:I

.field public blacklist dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

.field public blacklist deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

.field public blacklist emergencyNumberDatabaseVersion:I

.field public blacklist enabledModemBitmap:I

.field public blacklist error:I

.field public blacklist imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

.field public blacklist imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

.field public blacklist modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

.field public blacklist networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

.field public blacklist networkValidationState:I

.field public blacklist nitzTimestampMillis:J

.field public blacklist onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

.field public blacklist phoneId:I

.field public blacklist radioState:I

.field public blacklist serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

.field public blacklist settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

.field public blacklist setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

.field public blacklist setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

.field public blacklist signalStrength:I

.field public blacklist simState:[I

.field public blacklist timestampMillis:J

.field public blacklist type:I

.field public blacklist updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4817
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4818
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .registers 2

    .line 4722
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    if-nez v0, :cond_17

    .line 4723
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4725
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 4726
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 4728
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 4730
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5457
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5451
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .registers 6

    const-wide/16 v0, 0x0

    .line 4822
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    const/4 v2, 0x0

    .line 4823
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    .line 4824
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    const/4 v3, 0x0

    .line 4825
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 4826
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 4827
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 4828
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 4829
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 4830
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    .line 4831
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 4832
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 4833
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 4834
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    .line 4835
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    .line 4836
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    .line 4837
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    .line 4838
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    .line 4839
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    .line 4840
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkValidationState:I

    .line 4841
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    .line 4842
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    .line 4843
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    .line 4844
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->enabledModemBitmap:I

    .line 4845
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    .line 4846
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    .line 4847
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->signalStrength:I

    .line 4848
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->emergencyNumberDatabaseVersion:I

    .line 4849
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->radioState:I

    .line 4850
    iput-object v3, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4851
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 9

    .line 4954
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4955
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    .line 4957
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4959
    :cond_12
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    const/4 v2, 0x2

    if-eqz v1, :cond_1c

    .line 4961
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4963
    :cond_1c
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    if-eqz v1, :cond_26

    const/4 v5, 0x3

    .line 4965
    invoke-static {v5, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4967
    :cond_26
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v1, :cond_30

    const/4 v5, 0x4

    .line 4969
    invoke-static {v5, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4971
    :cond_30
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v1, :cond_3a

    const/4 v5, 0x5

    .line 4973
    invoke-static {v5, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4975
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v1, :cond_44

    const/4 v5, 0x6

    .line 4977
    invoke-static {v5, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4979
    :cond_44
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v1, :cond_4e

    const/4 v5, 0x7

    .line 4981
    invoke-static {v5, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4983
    :cond_4e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    const/4 v5, 0x0

    if-eqz v1, :cond_6a

    array-length v1, v1

    if-lez v1, :cond_6a

    move v1, v5

    .line 4984
    :goto_57
    iget-object v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v7, v6

    if-ge v1, v7, :cond_6a

    .line 4985
    aget-object v6, v6, v1

    if-eqz v6, :cond_67

    const/16 v7, 0x8

    .line 4988
    invoke-static {v7, v6}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 4992
    :cond_6a
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    if-eqz v1, :cond_75

    const/16 v6, 0x9

    .line 4994
    invoke-static {v6, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4996
    :cond_75
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-eqz v1, :cond_80

    const/16 v6, 0xa

    .line 4998
    invoke-static {v6, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5000
    :cond_80
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-eqz v1, :cond_8b

    const/16 v6, 0xb

    .line 5002
    invoke-static {v6, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5004
    :cond_8b
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-eqz v1, :cond_96

    const/16 v6, 0xc

    .line 5006
    invoke-static {v6, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5008
    :cond_96
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    if-eqz v1, :cond_a1

    const/16 v6, 0xd

    .line 5010
    invoke-static {v6, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5012
    :cond_a1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    if-eqz v1, :cond_ac

    const/16 v6, 0xe

    .line 5014
    invoke-static {v6, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5016
    :cond_ac
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    cmp-long v1, v6, v3

    if-eqz v1, :cond_b9

    const/16 v1, 0xf

    .line 5018
    invoke-static {v1, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5020
    :cond_b9
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    if-eqz v1, :cond_c4

    const/16 v3, 0x10

    .line 5022
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5024
    :cond_c4
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-eqz v1, :cond_cf

    const/16 v3, 0x11

    .line 5026
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5028
    :cond_cf
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    if-eqz v1, :cond_da

    const/16 v3, 0x13

    .line 5030
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5032
    :cond_da
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkValidationState:I

    if-eqz v1, :cond_e5

    const/16 v3, 0x14

    .line 5034
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5036
    :cond_e5
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    if-eqz v1, :cond_f0

    const/16 v3, 0x15

    .line 5038
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5040
    :cond_f0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    if-eqz v1, :cond_10b

    array-length v1, v1

    if-lez v1, :cond_10b

    move v1, v5

    .line 5042
    :goto_f8
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    array-length v4, v3

    if-ge v5, v4, :cond_107

    .line 5043
    aget v3, v3, v5

    .line 5045
    invoke-static {v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_f8

    :cond_107
    add-int/2addr v0, v1

    .line 5048
    array-length v1, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 5050
    :cond_10b
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-eqz v1, :cond_116

    const/16 v2, 0x17

    .line 5052
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5054
    :cond_116
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->enabledModemBitmap:I

    if-eqz v1, :cond_121

    const/16 v2, 0x18

    .line 5056
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5058
    :cond_121
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-eqz v1, :cond_12c

    const/16 v2, 0x19

    .line 5060
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5062
    :cond_12c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    if-eqz v1, :cond_137

    const/16 v2, 0x1a

    .line 5064
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5066
    :cond_137
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->signalStrength:I

    if-eqz v1, :cond_142

    const/16 v2, 0x1b

    .line 5068
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5070
    :cond_142
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->emergencyNumberDatabaseVersion:I

    if-eqz v1, :cond_14d

    const/16 v2, 0x1c

    .line 5072
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5074
    :cond_14d
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->radioState:I

    if-eqz p0, :cond_158

    const/16 v1, 0x1d

    .line 5076
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_158
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5086
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_262

    .line 5091
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_261

    .line 5434
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_20

    if-eq v0, v3, :cond_20

    if-eq v0, v2, :cond_20

    if-eq v0, v1, :cond_20

    goto :goto_0

    .line 5440
    :cond_20
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->radioState:I

    goto :goto_0

    .line 5430
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->emergencyNumberDatabaseVersion:I

    goto :goto_0

    .line 5426
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->signalStrength:I

    goto :goto_0

    .line 5419
    :sswitch_31
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    if-nez v0, :cond_3c

    .line 5420
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    .line 5422
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5412
    :sswitch_42
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-nez v0, :cond_4d

    .line 5413
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    .line 5415
    :cond_4d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5408
    :sswitch_53
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->enabledModemBitmap:I

    goto :goto_0

    .line 5401
    :sswitch_5a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-nez v0, :cond_65

    .line 5402
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    .line 5404
    :cond_65
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5364
    :sswitch_6b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5365
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 5368
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v5, v4

    .line 5369
    :goto_78
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_8c

    .line 5370
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    if-eqz v6, :cond_89

    if-eq v6, v3, :cond_89

    if-eq v6, v2, :cond_89

    goto :goto_78

    :cond_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    :cond_8c
    if-eqz v5, :cond_b9

    .line 5379
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5380
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    if-nez v1, :cond_97

    move v6, v4

    goto :goto_98

    :cond_97
    array-length v6, v1

    :goto_98
    add-int/2addr v5, v6

    .line 5381
    new-array v5, v5, [I

    if-eqz v6, :cond_a0

    .line 5383
    invoke-static {v1, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5385
    :cond_a0
    :goto_a0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_b7

    .line 5386
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    if-eqz v1, :cond_b1

    if-eq v1, v3, :cond_b1

    if-eq v1, v2, :cond_b1

    goto :goto_a0

    :cond_b1
    add-int/lit8 v4, v6, 0x1

    .line 5391
    aput v1, v5, v6

    move v6, v4

    goto :goto_a0

    .line 5395
    :cond_b7
    iput-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    .line 5397
    :cond_b9
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_be
    const/16 v0, 0xb0

    .line 5332
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5333
    new-array v1, v0, [I

    move v5, v4

    move v6, v5

    :goto_c8
    if-ge v5, v0, :cond_e2

    if-eqz v5, :cond_cf

    .line 5337
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5339
    :cond_cf
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    if-eqz v7, :cond_da

    if-eq v7, v3, :cond_da

    if-eq v7, v2, :cond_da

    goto :goto_df

    :cond_da
    add-int/lit8 v8, v6, 0x1

    .line 5344
    aput v7, v1, v6

    move v6, v8

    :goto_df
    add-int/lit8 v5, v5, 0x1

    goto :goto_c8

    :cond_e2
    if-eqz v6, :cond_0

    .line 5349
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    if-nez v2, :cond_ea

    move v3, v4

    goto :goto_eb

    :cond_ea
    array-length v3, v2

    :goto_eb
    if-nez v3, :cond_f3

    if-ne v6, v0, :cond_f3

    .line 5351
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    goto/16 :goto_0

    :cond_f3
    add-int v0, v3, v6

    .line 5353
    new-array v0, v0, [I

    if-eqz v3, :cond_fc

    .line 5355
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5357
    :cond_fc
    invoke-static {v1, v4, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5358
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    goto/16 :goto_0

    .line 5324
    :sswitch_103
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    if-nez v0, :cond_10e

    .line 5325
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    .line 5327
    :cond_10e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5312
    :sswitch_115
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_123

    if-eq v0, v3, :cond_123

    if-eq v0, v2, :cond_123

    if-eq v0, v1, :cond_123

    goto/16 :goto_0

    .line 5318
    :cond_123
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkValidationState:I

    goto/16 :goto_0

    .line 5305
    :sswitch_127
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    if-nez v0, :cond_132

    .line 5306
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    .line 5308
    :cond_132
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5298
    :sswitch_139
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-nez v0, :cond_144

    .line 5299
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    .line 5301
    :cond_144
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5291
    :sswitch_14b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    if-nez v0, :cond_156

    .line 5292
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    .line 5294
    :cond_156
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5287
    :sswitch_15d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    goto/16 :goto_0

    .line 5280
    :sswitch_165
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    if-nez v0, :cond_170

    .line 5281
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    .line 5283
    :cond_170
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5276
    :sswitch_177
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    goto/16 :goto_0

    .line 5269
    :sswitch_17f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-nez v0, :cond_18a

    .line 5270
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 5272
    :cond_18a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5262
    :sswitch_191
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-nez v0, :cond_19c

    .line 5263
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 5265
    :cond_19c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5255
    :sswitch_1a3
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-nez v0, :cond_1ae

    .line 5256
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 5258
    :cond_1ae
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5186
    :sswitch_1b5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_2dc

    packed-switch v0, :pswitch_data_31a

    goto/16 :goto_0

    .line 5249
    :pswitch_1c1
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    goto/16 :goto_0

    :sswitch_1c5
    const/16 v0, 0x42

    .line 5167
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5168
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-nez v1, :cond_1d1

    move v2, v4

    goto :goto_1d2

    :cond_1d1
    array-length v2, v1

    :goto_1d2
    add-int/2addr v0, v2

    .line 5169
    new-array v3, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v2, :cond_1da

    .line 5172
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1da
    :goto_1da
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_1ee

    .line 5175
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v1, v3, v2

    .line 5176
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 5177
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1da

    .line 5180
    :cond_1ee
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v0, v3, v2

    .line 5181
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 5182
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .line 5159
    :sswitch_1fc
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_207

    .line 5160
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 5162
    :cond_207
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5152
    :sswitch_20e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-nez v0, :cond_219

    .line 5153
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 5155
    :cond_219
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5145
    :sswitch_220
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-nez v0, :cond_22b

    .line 5146
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 5148
    :cond_22b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5138
    :sswitch_232
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_23d

    .line 5139
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 5141
    :cond_23d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5105
    :sswitch_244
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_35e

    goto/16 :goto_0

    .line 5132
    :pswitch_24d
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    goto/16 :goto_0

    .line 5101
    :sswitch_251
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    goto/16 :goto_0

    .line 5097
    :sswitch_259
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    goto/16 :goto_0

    :goto_261
    :sswitch_261
    return-object p0

    :sswitch_data_262
    .sparse-switch
        0x0 -> :sswitch_261
        0x8 -> :sswitch_259
        0x10 -> :sswitch_251
        0x18 -> :sswitch_244
        0x22 -> :sswitch_232
        0x2a -> :sswitch_220
        0x32 -> :sswitch_20e
        0x3a -> :sswitch_1fc
        0x42 -> :sswitch_1c5
        0x48 -> :sswitch_1b5
        0x52 -> :sswitch_1a3
        0x5a -> :sswitch_191
        0x62 -> :sswitch_17f
        0x68 -> :sswitch_177
        0x72 -> :sswitch_165
        0x78 -> :sswitch_15d
        0x82 -> :sswitch_14b
        0x8a -> :sswitch_139
        0x9a -> :sswitch_127
        0xa0 -> :sswitch_115
        0xaa -> :sswitch_103
        0xb0 -> :sswitch_be
        0xb2 -> :sswitch_6b
        0xba -> :sswitch_5a
        0xc0 -> :sswitch_53
        0xca -> :sswitch_42
        0xd2 -> :sswitch_31
        0xd8 -> :sswitch_2a
        0xe0 -> :sswitch_23
        0xe8 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_2dc
    .packed-switch 0x0
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
    .end packed-switch

    :pswitch_data_31a
    .packed-switch 0x24
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
    .end packed-switch

    :pswitch_data_35e
    .packed-switch 0x0
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
        :pswitch_24d
    .end packed-switch
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

    .line 2641
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4858
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 4859
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4861
    :cond_c
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    .line 4862
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4864
    :cond_14
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    .line 4865
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4867
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v0, :cond_24

    const/4 v1, 0x4

    .line 4868
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4870
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v0, :cond_2c

    const/4 v1, 0x5

    .line 4871
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4873
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v0, :cond_34

    const/4 v1, 0x6

    .line 4874
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4876
    :cond_34
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v0, :cond_3c

    const/4 v1, 0x7

    .line 4877
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4879
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    array-length v0, v0

    if-lez v0, :cond_56

    move v0, v1

    .line 4880
    :goto_45
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v5, v4

    if-ge v0, v5, :cond_56

    .line 4881
    aget-object v4, v4, v0

    if-eqz v4, :cond_53

    const/16 v5, 0x8

    .line 4883
    invoke-virtual {p1, v5, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 4887
    :cond_56
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    if-eqz v0, :cond_5f

    const/16 v4, 0x9

    .line 4888
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4890
    :cond_5f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-eqz v0, :cond_68

    const/16 v4, 0xa

    .line 4891
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4893
    :cond_68
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-eqz v0, :cond_71

    const/16 v4, 0xb

    .line 4894
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4896
    :cond_71
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-eqz v0, :cond_7a

    const/16 v4, 0xc

    .line 4897
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4899
    :cond_7a
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    if-eqz v0, :cond_83

    const/16 v4, 0xd

    .line 4900
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4902
    :cond_83
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    if-eqz v0, :cond_8c

    const/16 v4, 0xe

    .line 4903
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4905
    :cond_8c
    iget-wide v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_97

    const/16 v0, 0xf

    .line 4906
    invoke-virtual {p1, v0, v4, v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4908
    :cond_97
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    if-eqz v0, :cond_a0

    const/16 v2, 0x10

    .line 4909
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4911
    :cond_a0
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-eqz v0, :cond_a9

    const/16 v2, 0x11

    .line 4912
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4914
    :cond_a9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    if-eqz v0, :cond_b2

    const/16 v2, 0x13

    .line 4915
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4917
    :cond_b2
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkValidationState:I

    if-eqz v0, :cond_bb

    const/16 v2, 0x14

    .line 4918
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4920
    :cond_bb
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    if-eqz v0, :cond_c4

    const/16 v2, 0x15

    .line 4921
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4923
    :cond_c4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    if-eqz v0, :cond_da

    array-length v0, v0

    if-lez v0, :cond_da

    .line 4924
    :goto_cb
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    array-length v2, v0

    if-ge v1, v2, :cond_da

    const/16 v2, 0x16

    .line 4925
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    .line 4928
    :cond_da
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-eqz v0, :cond_e3

    const/16 v1, 0x17

    .line 4929
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4931
    :cond_e3
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->enabledModemBitmap:I

    if-eqz v0, :cond_ec

    const/16 v1, 0x18

    .line 4932
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4934
    :cond_ec
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-eqz v0, :cond_f5

    const/16 v1, 0x19

    .line 4935
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4937
    :cond_f5
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    if-eqz v0, :cond_fe

    const/16 v1, 0x1a

    .line 4938
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4940
    :cond_fe
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->signalStrength:I

    if-eqz v0, :cond_107

    const/16 v1, 0x1b

    .line 4941
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4943
    :cond_107
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->emergencyNumberDatabaseVersion:I

    if-eqz v0, :cond_110

    const/16 v1, 0x1c

    .line 4944
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4946
    :cond_110
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->radioState:I

    if-eqz v0, :cond_119

    const/16 v1, 0x1d

    .line 4947
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4949
    :cond_119
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
