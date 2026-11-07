.class public Lcom/android/internal/telephony/VoiceResponse;
.super Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;
.source "VoiceResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist acceptCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 52
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeRequest(I)V
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public blacklist cancelPendingUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 59
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist conferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 66
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist dialResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 73
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist emergencyDialResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 80
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist exitEmergencyCallbackModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 87
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist explicitCallTransferResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getCallForwardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/CallForwardInfo;)V
    .registers 9

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 106
    array-length v1, p2

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    .line 107
    :goto_d
    array-length v3, p2

    if-ge v2, v3, :cond_34

    .line 108
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v2

    .line 109
    aget-object v4, p2, v2

    iget v5, v4, Landroid/hardware/radio/voice/CallForwardInfo;->status:I

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 110
    iget v5, v4, Landroid/hardware/radio/voice/CallForwardInfo;->reason:I

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 111
    iget v5, v4, Landroid/hardware/radio/voice/CallForwardInfo;->serviceClass:I

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 112
    iget v5, v4, Landroid/hardware/radio/voice/CallForwardInfo;->toa:I

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 113
    iget-object v5, v4, Landroid/hardware/radio/voice/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 114
    iget v4, v4, Landroid/hardware/radio/voice/CallForwardInfo;->timeSeconds:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 116
    :cond_34
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_3d

    .line 117
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 119
    :cond_3d
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_42
    return-void
.end method

.method public blacklist getCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V
    .registers 4

    .line 133
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    .line 134
    filled-new-array {p2, p3}, [I

    move-result-object p2

    const/4 p3, 0x6

    .line 133
    invoke-static {p3, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getClipResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 142
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getClirResponse(Landroid/hardware/radio/RadioResponseInfo;II)V
    .registers 4

    .line 151
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2, p3}, [I

    move-result-object p2

    const/4 p3, 0x6

    invoke-static {p3, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCurrentCallsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/Call;)V
    .registers 10

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 163
    array-length v1, p2

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v1, :cond_40

    .line 167
    aget-object v5, p2, v4

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToDriverCall(Landroid/hardware/radio/voice/Call;)Lcom/android/internal/telephony/DriverCall;

    move-result-object v5

    .line 168
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-boolean v5, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v5, :cond_2f

    .line 170
    iget-object v5, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 171
    iget-object v5, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is enabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_3d

    .line 173
    :cond_2f
    iget-object v5, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 174
    iget-object v5, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is disabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 178
    :cond_40
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez v1, :cond_61

    .line 179
    iget-object p2, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_61

    .line 180
    iget-object p2, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_61

    .line 181
    const-string v1, "responseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 187
    :cond_61
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_6a

    .line 188
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 190
    :cond_6a
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_6f
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 398
    const-string p0, "576f05d082e9269bcf773b0c9b9112d507ab4b9a"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist getLastCallFailCauseResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/voice/LastCallFailCauseInfo;)V
    .registers 6

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 206
    new-instance v1, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v1}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 207
    iget v2, p2, Landroid/hardware/radio/voice/LastCallFailCauseInfo;->causeCode:I

    iput v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 208
    iget-object p2, p2, Landroid/hardware/radio/voice/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 209
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_1f

    .line 210
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 212
    :cond_1f
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method public blacklist getMuteResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 4

    .line 221
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 4

    .line 230
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 238
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 245
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist hangupConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 252
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 259
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 266
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist isVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 6

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 277
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 278
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 280
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist rejectCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 288
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendBurstDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 295
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendCdmaFeatureCodeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 302
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 309
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 316
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist separateConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 323
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCallForwardResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 330
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 337
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setClirResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 344
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setMuteResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 351
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 365
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 372
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist startDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 379
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist stopDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 386
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x6

    .line 393
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method
