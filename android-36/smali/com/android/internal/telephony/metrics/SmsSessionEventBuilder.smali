.class public Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
.super Ljava/lang/Object;
.source "SmsSessionEventBuilder.java"


# instance fields
.field blacklist mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    .line 34
    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    return-object p0
.end method

.method public blacklist setBlocked(Z)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    return-object p0
.end method

.method public blacklist setCellBroadcastMessage(Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    return-object p0
.end method

.method public blacklist setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object p0
.end method

.method public blacklist setDelay(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    return-object p0
.end method

.method public blacklist setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    return-object p0
.end method

.method public blacklist setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    return-object p0
.end method

.method public blacklist setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-object p0
.end method

.method public blacklist setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-object p0
.end method

.method public blacklist setImsServiceErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    return-object p0
.end method

.method public blacklist setIncompleteSms(Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    return-object p0
.end method

.method public blacklist setMessageId(J)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-wide p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->messageId:J

    return-object p0
.end method

.method public blacklist setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    return-object p0
.end method

.method public blacklist setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    return-object p0
.end method

.method public blacklist setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-object p0
.end method

.method public blacklist setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object p0
.end method

.method public blacklist setSmsType(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    return-object p0
.end method

.method public blacklist setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    return-object p0
.end method
