.class public Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
.super Ljava/lang/Object;
.source "SmsSessionEventBuilder.java"


# instance fields
.field mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@5
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@a
    .line 34
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setType(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@f
    .line 33
    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    #@0
    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    return-object v0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "dataCalls"    # [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@4
    .line 79
    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "delay"    # I

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setDelay(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@5
    .line 39
    return-object p0
.end method

.method public setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setErrorCode(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@5
    .line 49
    return-object p0
.end method

.method public setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "format"    # I

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setFormat(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@5
    .line 89
    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "capabilities"    # Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@4
    .line 74
    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@4
    .line 69
    return-object p0
.end method

.method public setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "errno"    # I

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setError(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@5
    .line 54
    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setRilRequestId(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@5
    .line 84
    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@4
    .line 64
    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "settings"    # Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@4
    .line 59
    return-object p0
.end method

.method public setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "tech"    # I

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setTech(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@5
    .line 44
    return-object p0
.end method
