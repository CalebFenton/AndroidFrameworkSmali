.class public Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
.super Ljava/lang/Object;
.source "TelephonyEventBuilder.java"


# instance fields
.field private final blacklist mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, -0x1

    .line 55
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    return-void
.end method

.method public constructor blacklist <init>(JI)V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 63
    iput-wide p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    .line 64
    iput p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    return-object p0
.end method

.method public blacklist setActiveSubscriptionInfoChange(Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x13

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 190
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    return-object p0
.end method

.method public blacklist setCarrierIdMatching(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xd

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 150
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    return-object p0
.end method

.method public blacklist setCarrierKeyChange(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xe

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 168
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    return-object p0
.end method

.method public blacklist setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 129
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object p0
.end method

.method public blacklist setDataStallRecoveryAction(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xa

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 93
    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    return-object p0
.end method

.method public blacklist setDataSwitch(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xf

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 204
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    return-object p0
.end method

.method public blacklist setDeactivateDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 117
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    return-object p0
.end method

.method public blacklist setDeactivateDataCallResponse(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 123
    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    return-object p0
.end method

.method public blacklist setEnabledModemBitmap(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x14

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 197
    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->enabledModemBitmap:I

    return-object p0
.end method

.method public blacklist setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 87
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-object p0
.end method

.method public blacklist setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 81
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-object p0
.end method

.method public blacklist setModemRestart(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xb

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 141
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    return-object p0
.end method

.method public blacklist setNITZ(J)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xc

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 135
    iput-wide p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    return-object p0
.end method

.method public blacklist setNetworkCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x16

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 226
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    return-object p0
.end method

.method public blacklist setNetworkValidate(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 211
    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkValidationState:I

    return-object p0
.end method

.method public blacklist setOnDemandDataSwitch(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x11

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 218
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    return-object p0
.end method

.method public blacklist setRadioState(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x18

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 233
    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->radioState:I

    return-object p0
.end method

.method public blacklist setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 75
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-object p0
.end method

.method public blacklist setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 69
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object p0
.end method

.method public blacklist setSetupDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 105
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    return-object p0
.end method

.method public blacklist setSetupDataCallResponse(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 111
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    return-object p0
.end method

.method public blacklist setSignalStrength(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x17

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 99
    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->signalStrength:I

    return-object p0
.end method

.method public blacklist setSimStateChange(Landroid/util/SparseArray;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;"
        }
    .end annotation

    .line 174
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    new-array v2, v0, [I

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    const/4 v1, 0x0

    .line 176
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 177
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v3, 0x12

    iput v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 178
    :goto_18
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 179
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-ltz v2, :cond_36

    if-ge v2, v0, :cond_36

    .line 181
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iget-object v3, v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_39
    return-object p0
.end method

.method public blacklist setUpdatedEmergencyNumber(Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x15

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 161
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    .line 162
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->emergencyNumberDatabaseVersion:I

    return-object p0
.end method
