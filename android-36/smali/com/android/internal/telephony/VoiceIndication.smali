.class public Lcom/android/internal/telephony/VoiceIndication;
.super Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;
.source "VoiceIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist callRing(IZLandroid/hardware/radio/voice/CdmaSignalInfoRecord;)V
    .registers 8

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    const/4 p1, 0x0

    if-nez p2, :cond_2a

    .line 77
    iget-boolean p2, p3, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;->isPresent:Z

    int-to-char p2, p2

    .line 78
    iget-byte v0, p3, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;->signalType:B

    int-to-char v0, v0

    .line 79
    iget-byte v1, p3, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;->alertPitch:B

    int-to-char v1, v1

    .line 80
    iget-byte p3, p3, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;->signal:B

    int-to-char p3, p3

    const/4 v2, 0x4

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p2, v2, v3

    const/4 p2, 0x1

    aput-char v0, v2, p2

    const/4 p2, 0x2

    aput-char v1, v2, p2

    const/4 p2, 0x3

    aput-char p3, v2, p2

    .line 81
    iget-object p2, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/RIL;->writeMetricsCallRing([C)V

    goto :goto_2b

    :cond_2a
    move-object v2, p1

    .line 84
    :goto_2b
    iget-object p2, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_3a

    iget-object p2, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p3, 0x3fa

    invoke-virtual {p2, p3, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 86
    :cond_3a
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_48

    .line 87
    new-instance p2, Landroid/os/AsyncResult;

    invoke-direct {p2, p1, v2, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_48
    return-void
.end method

.method public blacklist callStateChanged(I)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 98
    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 100
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist cdmaCallWaiting(ILandroid/hardware/radio/voice/CdmaCallWaiting;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist cdmaInfoRec(I[Landroid/hardware/radio/voice/CdmaInformationRecord;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist cdmaOtaProvisionStatus(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist currentEmergencyNumberList(I[Landroid/hardware/radio/voice/EmergencyNumber;)V
    .registers 14

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 263
    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    array-length v0, p2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_32

    aget-object v2, p2, v1

    .line 265
    new-instance v3, Landroid/telephony/emergency/EmergencyNumber;

    iget-object v4, v2, Landroid/hardware/radio/voice/EmergencyNumber;->number:Ljava/lang/String;

    iget-object v5, v2, Landroid/hardware/radio/voice/EmergencyNumber;->mcc:Ljava/lang/String;

    .line 266
    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/radio/voice/EmergencyNumber;->mnc:Ljava/lang/String;

    iget v7, v2, Landroid/hardware/radio/voice/EmergencyNumber;->categories:I

    iget-object v8, v2, Landroid/hardware/radio/voice/EmergencyNumber;->urns:[Ljava/lang/String;

    .line 267
    invoke-static {v8}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iget v9, v2, Landroid/hardware/radio/voice/EmergencyNumber;->sources:I

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 269
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 272
    :cond_32
    iget-object p2, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_41

    iget-object p2, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x44e

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 275
    :cond_41
    iget-object p2, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/BaseCommands;->cacheEmergencyNumberListIndication(Ljava/util/List;)V

    .line 278
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNumberListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist enterEmergencyCallbackMode(I)V
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 290
    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 292
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1e

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_1e
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(I)V
    .registers 4

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 305
    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x409

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 307
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 454
    const-string p0, "576f05d082e9269bcf773b0c9b9112d507ab4b9a"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist indicateRingbackTone(IZ)V
    .registers 5

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 318
    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x405

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 320
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist onSupplementaryServiceIndication(ILandroid/hardware/radio/voice/StkCcUnsolSsResult;)V
    .registers 9

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 334
    new-instance p1, Lcom/android/internal/telephony/gsm/SsData;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SsData;-><init>()V

    .line 336
    iget v0, p2, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SsData;->ServiceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 337
    iget v0, p2, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->requestType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SsData;->RequestTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 338
    iget v0, p2, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->teleserviceType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SsData;->TeleserviceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 339
    iget v0, p2, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceClass:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    .line 340
    iget v0, p2, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->result:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    .line 342
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v0

    const-string v1, " : "

    const/4 v2, 0x0

    if-eqz v0, :cond_97

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->isTypeInterrogation()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 343
    iget-object p2, p2, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->cfData:[Landroid/hardware/radio/voice/CfData;

    aget-object p2, p2, v2

    .line 344
    iget-object v0, p2, Landroid/hardware/radio/voice/CfData;->cfInfo:[Landroid/hardware/radio/voice/CallForwardInfo;

    array-length v0, v0

    .line 345
    new-array v3, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    :goto_49
    if-ge v2, v0, :cond_cf

    .line 348
    iget-object v3, p2, Landroid/hardware/radio/voice/CfData;->cfInfo:[Landroid/hardware/radio/voice/CallForwardInfo;

    aget-object v3, v3, v2

    .line 349
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    new-instance v5, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v5, v4, v2

    .line 350
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v4, v4, v2

    iget v5, v3, Landroid/hardware/radio/voice/CallForwardInfo;->status:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 351
    iget v5, v3, Landroid/hardware/radio/voice/CallForwardInfo;->reason:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 352
    iget v5, v3, Landroid/hardware/radio/voice/CallForwardInfo;->serviceClass:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 353
    iget v5, v3, Landroid/hardware/radio/voice/CallForwardInfo;->toa:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 354
    iget-object v5, v3, Landroid/hardware/radio/voice/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 355
    iget v3, v3, Landroid/hardware/radio/voice/CallForwardInfo;->timeSeconds:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 356
    iget-object v3, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SS Data] CF Info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 359
    :cond_97
    iget-object p2, p2, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->ssInfo:[Landroid/hardware/radio/voice/SsInfoData;

    aget-object p2, p2, v2

    .line 360
    iget-object v0, p2, Landroid/hardware/radio/voice/SsInfoData;->ssInfo:[I

    array-length v0, v0

    .line 361
    new-array v3, v0, [I

    iput-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    :goto_a2
    if-ge v2, v0, :cond_cf

    .line 363
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    iget-object v4, p2, Landroid/hardware/radio/voice/SsInfoData;->ssInfo:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 364
    iget-object v3, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SS Data] SS Info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    .line 368
    :cond_cf
    iget-object p2, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_de

    iget-object p2, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x413

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 370
    :cond_de
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_ed

    .line 371
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_ed
    return-void
.end method

.method public blacklist onUssd(IILjava/lang/String;)V
    .registers 7

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 385
    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ee

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 388
    :cond_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    .line 389
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_48

    .line 390
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_48
    return-void
.end method

.method public blacklist resendIncallMute(I)V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 401
    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x406

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 403
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist srvccStateNotify(II)V
    .registers 5

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 414
    filled-new-array {p2}, [I

    move-result-object p1

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x40f

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 418
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/RIL;->writeMetricsSrvcc(I)V

    .line 419
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist stkCallControlAlphaNotify(ILjava/lang/String;)V
    .registers 5

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 430
    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x414

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 432
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 433
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist stkCallSetup(IJ)V
    .registers 6

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 445
    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x3f7

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 447
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_2c

    .line 448
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_2c
    return-void
.end method
