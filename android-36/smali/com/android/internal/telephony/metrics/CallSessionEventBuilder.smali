.class public Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
.super Ljava/lang/Object;
.source "CallSessionEventBuilder.java"


# instance fields
.field private final blacklist mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 39
    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method

.method public blacklist setAudioCodec(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    return-object p0
.end method

.method public blacklist setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callIndex:I

    return-object p0
.end method

.method public blacklist setCallQuality(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    return-object p0
.end method

.method public blacklist setCallQualitySummaryDl(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    return-object p0
.end method

.method public blacklist setCallQualitySummaryUl(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    return-object p0
.end method

.method public blacklist setCallState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callState:I

    return-object p0
.end method

.method public blacklist setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object p0
.end method

.method public blacklist setDelay(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    return-object p0
.end method

.method public blacklist setEmergencyNumberDatabaseVersion(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->emergencyNumberDatabaseVersion:I

    return-object p0
.end method

.method public blacklist setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-object p0
.end method

.method public blacklist setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCommand:I

    return-object p0
.end method

.method public blacklist setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-object p0
.end method

.method public blacklist setImsEmergencyNumberInfo(Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    return-object p0
.end method

.method public blacklist setImsReasonInfo(Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    return-object p0
.end method

.method public blacklist setIsImsEmergencyCall(Z)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->isImsEmergencyCall:Z

    return-object p0
.end method

.method public blacklist setNITZ(J)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-wide p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis:J

    return-object p0
.end method

.method public blacklist setPhoneState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->phoneState:I

    return-object p0
.end method

.method public blacklist setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-object p0
.end method

.method public blacklist setRilError(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->error:I

    return-object p0
.end method

.method public blacklist setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequest:I

    return-object p0
.end method

.method public blacklist setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequestId:I

    return-object p0
.end method

.method public blacklist setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-object p0
.end method

.method public blacklist setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object p0
.end method

.method public blacklist setSrcAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech:I

    return-object p0
.end method

.method public blacklist setSrvccState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srvccState:I

    return-object p0
.end method

.method public blacklist setTargetAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech:I

    return-object p0
.end method
