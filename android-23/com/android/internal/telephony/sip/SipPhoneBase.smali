.class abstract Lcom/android/internal/telephony/sip/SipPhoneBase;
.super Lcom/android/internal/telephony/PhoneBase;
.source "SipPhoneBase.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SipPhoneBase"


# instance fields
.field private mRingbackRegistrants:Landroid/os/RegistrantList;

.field private mState:Lcom/android/internal/telephony/PhoneConstants$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    #@0
    .prologue
    .line 61
    new-instance v4, Lcom/android/internal/telephony/sip/SipCommandInterface;

    #@2
    invoke-direct {v4, p2}, Lcom/android/internal/telephony/sip/SipCommandInterface;-><init>(Landroid/content/Context;)V

    #@5
    const/4 v5, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v2, p3

    #@9
    move-object v3, p2

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    #@d
    .line 57
    new-instance v0, Landroid/os/RegistrantList;

    #@f
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@14
    .line 58
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@16
    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@18
    .line 60
    return-void
.end method


# virtual methods
.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 484
    const-string/jumbo v0, "SipPhoneBase"

    #@3
    const-string/jumbo v1, "Error! This functionality is not implemented for SIP."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 483
    return-void
.end method

.method public canDial()Z
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 207
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    #@9
    move-result v1

    #@a
    .line 208
    .local v1, "serviceState":I
    const-string/jumbo v4, "SipPhoneBase"

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "canDial(): serviceState = "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 209
    const/4 v4, 0x3

    #@25
    if-ne v1, v4, :cond_0

    #@27
    return v3

    #@28
    .line 212
    :cond_0
    const-string/jumbo v4, "ro.telephony.disable-call"

    #@2b
    const-string/jumbo v5, "false"

    #@2e
    .line 211
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 213
    .local v0, "disableCall":Ljava/lang/String;
    const-string/jumbo v4, "SipPhoneBase"

    #@35
    new-instance v5, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v6, "canDial(): disableCall = "

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 214
    const-string/jumbo v4, "true"

    #@4f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_1

    #@55
    return v3

    #@56
    .line 216
    :cond_1
    const-string/jumbo v4, "SipPhoneBase"

    #@59
    new-instance v5, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v6, "canDial(): ringingCall: "

    #@61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 217
    const-string/jumbo v4, "SipPhoneBase"

    #@7b
    new-instance v5, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v6, "canDial(): foregndCall: "

    #@83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v5

    #@97
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9a
    .line 218
    const-string/jumbo v4, "SipPhoneBase"

    #@9d
    new-instance v5, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v6, "canDial(): backgndCall: "

    #@a5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@ac
    move-result-object v6

    #@ad
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@b0
    move-result-object v6

    #@b1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v5

    #@b5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v5

    #@b9
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@bc
    .line 219
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@bf
    move-result-object v4

    #@c0
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    #@c3
    move-result v4

    #@c4
    if-nez v4, :cond_3

    #@c6
    .line 220
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@c9
    move-result-object v4

    #@ca
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@cd
    move-result-object v4

    #@ce
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@d1
    move-result v4

    #@d2
    if-eqz v4, :cond_2

    #@d4
    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@d7
    move-result-object v4

    #@d8
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@db
    move-result-object v4

    #@dc
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@df
    move-result v4

    #@e0
    if-eqz v4, :cond_2

    #@e2
    move v2, v3

    #@e3
    .line 219
    :cond_2
    :goto_0
    return v2

    #@e4
    :cond_3
    move v2, v3

    #@e5
    goto :goto_0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    #@0
    .prologue
    .line 452
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public disableLocationUpdates()V
    .locals 0

    #@0
    .prologue
    .line 426
    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 1

    #@0
    .prologue
    .line 448
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public enableLocationUpdates()V
    .locals 0

    #@0
    .prologue
    .line 422
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 388
    return-void
.end method

.method public abstract getBackgroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    #@0
    .prologue
    .line 141
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 342
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 368
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4
    .line 369
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 367
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 489
    const-string/jumbo v0, "SipPhoneBase"

    #@3
    const-string/jumbo v1, "Error! This functionality is not implemented for SIP."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 488
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    #@0
    .prologue
    .line 116
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 414
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    #@0
    .prologue
    .line 161
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@2
    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 410
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    #@0
    .prologue
    .line 151
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2
    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 156
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2
    return-object v0
.end method

.method public getDataEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 440
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 431
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 272
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 277
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 287
    const-string/jumbo v0, "SipPhoneBase"

    #@3
    const-string/jumbo v1, "[SipPhone] getEsn() is a CDMA method"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 288
    const-string/jumbo v0, "0"

    #@c
    return-object v0
.end method

.method public abstract getForegroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 304
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 309
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    #@0
    .prologue
    .line 384
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    #@0
    .prologue
    .line 479
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    #@0
    .prologue
    .line 474
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    #@0
    .prologue
    .line 379
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 314
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 282
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 324
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 319
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 508
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 293
    const-string/jumbo v0, "SipPhoneBase"

    #@3
    const-string/jumbo v1, "[SipPhone] getMeid() is a CDMA method"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 294
    const-string/jumbo v0, "0"

    #@c
    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 402
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 354
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4
    .line 355
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 352
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    #@0
    .prologue
    .line 469
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    #@0
    .prologue
    .line 126
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public abstract getRingingCall()Lcom/android/internal/telephony/Call;
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    #@0
    .prologue
    .line 109
    new-instance v0, Landroid/telephony/ServiceState;

    #@2
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@5
    .line 110
    .local v0, "s":Landroid/telephony/ServiceState;
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setState(I)V

    #@9
    .line 111
    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    #@0
    .prologue
    .line 131
    new-instance v0, Landroid/telephony/SignalStrength;

    #@2
    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    #@5
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 299
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 267
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 262
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 226
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 240
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    #@0
    .prologue
    .line 457
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method isInCall()Z
    .locals 4

    #@0
    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@7
    move-result-object v1

    #@8
    .line 231
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@f
    move-result-object v0

    #@10
    .line 232
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v2

    #@18
    .line 234
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_0

    #@24
    .line 235
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@27
    move-result v3

    #@28
    .line 234
    :goto_0
    return v3

    #@29
    :cond_0
    const/4 v3, 0x1

    #@2a
    goto :goto_0
.end method

.method public isVideoEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 518
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method migrateFrom(Lcom/android/internal/telephony/sip/SipPhoneBase;)V
    .locals 2
    .param p1, "from"    # Lcom/android/internal/telephony/sip/SipPhoneBase;

    #@0
    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V

    #@3
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@5
    iget-object v1, p1, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@a
    .line 80
    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 501
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 202
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 185
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    #@3
    .line 181
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 0

    #@0
    .prologue
    .line 167
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    #@0
    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    #@3
    .line 176
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    #@3
    .line 197
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/Phone$SuppService;

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 193
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 189
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 0

    #@0
    .prologue
    .line 540
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 86
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 249
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 0
    .param p1, "commandInterfaceCLIRMode"    # I

    #@0
    .prologue
    .line 464
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 398
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "ussdMessge"    # Ljava/lang/String;

    #@0
    .prologue
    .line 244
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 348
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 374
    const-string/jumbo v0, "SipPhoneBase"

    #@3
    const-string/jumbo v1, "call waiting not supported"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 373
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 494
    const-string/jumbo v0, "SipPhoneBase"

    #@3
    const-string/jumbo v1, "Error! This functionality is not implemented for SIP."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 493
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 444
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 435
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 330
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 392
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 406
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 362
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4
    .line 363
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 360
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    #@0
    .prologue
    .line 257
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 337
    invoke-static {p3, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4
    .line 338
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 335
    return-void
.end method

.method protected startRingbackTone()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 96
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@5
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8
    .line 97
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@d
    .line 95
    return-void
.end method

.method protected stopRingbackTone()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 101
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@5
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8
    .line 102
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@d
    .line 100
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 91
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 253
    return-void
.end method

.method updateCurrentCarrierInProvider()Z
    .locals 1

    #@0
    .prologue
    .line 461
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method updatePhoneState()V
    .locals 4

    #@0
    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    .line 524
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 525
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@e
    iput-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@10
    .line 533
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@12
    if-eq v1, v0, :cond_0

    #@14
    .line 534
    const-string/jumbo v1, "SipPhoneBase"

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, " ^^^ new phone state: "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 535
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->notifyPhoneStateChanged()V

    #@33
    .line 521
    :cond_0
    return-void

    #@34
    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_2

    #@3e
    .line 527
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@45
    move-result v1

    #@46
    .line 526
    if-eqz v1, :cond_2

    #@48
    .line 528
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4a
    iput-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4c
    goto :goto_0

    #@4d
    .line 530
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4f
    iput-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@51
    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 0

    #@0
    .prologue
    .line 418
    return-void
.end method
