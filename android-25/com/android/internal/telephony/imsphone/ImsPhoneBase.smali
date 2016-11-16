.class abstract Lcom/android/internal/telephony/imsphone/ImsPhoneBase;
.super Lcom/android/internal/telephony/Phone;
.source "ImsPhoneBase.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneBase"


# instance fields
.field private mOnHoldRegistrants:Landroid/os/RegistrantList;

.field private mRingbackRegistrants:Landroid/os/RegistrantList;

.field private mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z

    #@0
    .prologue
    .line 59
    new-instance v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCommandInterface;

    #@2
    invoke-direct {v4, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCommandInterface;-><init>(Landroid/content/Context;)V

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p3

    #@8
    move-object v3, p2

    #@9
    move v5, p4

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    #@d
    .line 52
    new-instance v0, Landroid/os/RegistrantList;

    #@f
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@14
    .line 53
    new-instance v0, Landroid/os/RegistrantList;

    #@16
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Landroid/os/RegistrantList;

    #@1b
    .line 54
    new-instance v0, Landroid/os/RegistrantList;

    #@1d
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    #@22
    .line 55
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@24
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@26
    .line 58
    return-void
.end method


# virtual methods
.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 506
    const-string/jumbo v0, "ImsPhoneBase"

    #@3
    const-string/jumbo v1, "Error! This functionality is not implemented for Volte."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 505
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
    .line 242
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    #@9
    move-result v1

    #@a
    .line 243
    .local v1, "serviceState":I
    const-string/jumbo v4, "ImsPhoneBase"

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
    .line 244
    const/4 v4, 0x3

    #@25
    if-ne v1, v4, :cond_0

    #@27
    return v3

    #@28
    .line 247
    :cond_0
    const-string/jumbo v4, "ro.telephony.disable-call"

    #@2b
    const-string/jumbo v5, "false"

    #@2e
    .line 246
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 248
    .local v0, "disableCall":Ljava/lang/String;
    const-string/jumbo v4, "ImsPhoneBase"

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
    .line 249
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
    .line 251
    :cond_1
    const-string/jumbo v4, "ImsPhoneBase"

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
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

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
    .line 252
    const-string/jumbo v4, "ImsPhoneBase"

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
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

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
    .line 253
    const-string/jumbo v4, "ImsPhoneBase"

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
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

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
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@bf
    move-result-object v4

    #@c0
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    #@c3
    move-result v4

    #@c4
    if-nez v4, :cond_3

    #@c6
    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

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
    .line 256
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

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
    .line 254
    :cond_2
    :goto_0
    return v2

    #@e4
    :cond_3
    move v2, v3

    #@e5
    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    #@0
    .prologue
    .line 483
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public disableLocationUpdates()V
    .locals 0

    #@0
    .prologue
    .line 456
    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 1

    #@0
    .prologue
    .line 479
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public enableLocationUpdates()V
    .locals 0

    #@0
    .prologue
    .line 452
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 423
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    #@0
    .prologue
    .line 179
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
    .line 377
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 403
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4
    .line 404
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 402
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 511
    const-string/jumbo v0, "ImsPhoneBase"

    #@3
    const-string/jumbo v1, "Error! This functionality is not implemented for Volte."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 510
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    #@0
    .prologue
    .line 154
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
    .line 444
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 1

    #@0
    .prologue
    .line 199
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@2
    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 440
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    #@0
    .prologue
    .line 189
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2
    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2
    return-object v0
.end method

.method public getDataEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 470
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 461
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 307
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 312
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 322
    const-string/jumbo v0, "ImsPhoneBase"

    #@3
    const-string/jumbo v1, "[VoltePhone] getEsn() is a CDMA method"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 323
    const-string/jumbo v0, "0"

    #@c
    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 339
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 344
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    #@0
    .prologue
    .line 419
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    #@0
    .prologue
    .line 501
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    #@0
    .prologue
    .line 496
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    #@0
    .prologue
    .line 414
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 349
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 317
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 359
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 354
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 530
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 328
    const-string/jumbo v0, "ImsPhoneBase"

    #@3
    const-string/jumbo v1, "[VoltePhone] getMeid() is a CDMA method"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 329
    const-string/jumbo v0, "0"

    #@c
    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    #@0
    .prologue
    .line 174
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 436
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 389
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4
    .line 390
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 387
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
    .line 184
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    #@0
    .prologue
    .line 164
    const/4 v0, 0x5

    #@1
    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    #@0
    .prologue
    .line 139
    new-instance v0, Landroid/telephony/ServiceState;

    #@2
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@5
    .line 140
    .local v0, "s":Landroid/telephony/ServiceState;
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    #@9
    .line 141
    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    #@0
    .prologue
    .line 169
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
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 334
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 302
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 297
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 261
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 275
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    #@0
    .prologue
    .line 488
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method isInCall()Z
    .locals 4

    #@0
    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@7
    move-result-object v1

    #@8
    .line 266
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@f
    move-result-object v0

    #@10
    .line 267
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v2

    #@18
    .line 269
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
    .line 270
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@27
    move-result v3

    #@28
    .line 269
    :goto_0
    return v3

    #@29
    :cond_0
    const/4 v3, 0x1

    #@2a
    goto :goto_0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "from"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->migrateFrom(Lcom/android/internal/telephony/Phone;)V

    #@3
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@5
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;

    #@7
    .end local p1    # "from":Lcom/android/internal/telephony/Phone;
    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@c
    .line 63
    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 523
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 237
    return-void
.end method

.method public notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 220
    return-void
.end method

.method public notifyPhoneStateChanged()V
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 206
    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .locals 0

    #@0
    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->notifyPreciseCallStateChangedP()V

    #@3
    .line 215
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    #@3
    .line 232
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 228
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 224
    return-void
.end method

.method public onTtyModeReceived(I)V
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 131
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@a
    .line 132
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    #@c
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@f
    .line 130
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 0

    #@0
    .prologue
    .line 534
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 91
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 69
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 284
    return-void
.end method

.method public registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 121
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 0
    .param p1, "commandInterfaceCLIRMode"    # I

    #@0
    .prologue
    .line 491
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "persistSelection"    # Z
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 432
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "ussdMessge"    # Ljava/lang/String;

    #@0
    .prologue
    .line 279
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
    .line 383
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 409
    const-string/jumbo v0, "ImsPhoneBase"

    #@3
    const-string/jumbo v1, "call waiting not supported"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 408
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 516
    const-string/jumbo v0, "ImsPhoneBase"

    #@3
    const-string/jumbo v1, "Error! This functionality is not implemented for Volte."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 515
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 474
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 465
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 365
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 427
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
    .line 397
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4
    .line 398
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 395
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    #@0
    .prologue
    .line 292
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
    .line 372
    invoke-static {p3, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4
    .line 373
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 370
    return-void
.end method

.method protected startOnHoldTone(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 106
    new-instance v0, Landroid/util/Pair;

    #@3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@5
    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@8
    .line 107
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/Connection;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Landroid/os/RegistrantList;

    #@a
    new-instance v2, Landroid/os/AsyncResult;

    #@c
    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@f
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@12
    .line 105
    return-void
.end method

.method public startRingbackTone()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 80
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@5
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8
    .line 81
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@d
    .line 79
    return-void
.end method

.method protected stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 116
    new-instance v0, Landroid/util/Pair;

    #@3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@5
    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@8
    .line 117
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/Connection;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Landroid/os/RegistrantList;

    #@a
    new-instance v2, Landroid/os/AsyncResult;

    #@c
    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@f
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@12
    .line 115
    return-void
.end method

.method public stopRingbackTone()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 86
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@5
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8
    .line 87
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@d
    .line 85
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 96
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 74
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 288
    return-void
.end method

.method public unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 126
    return-void
.end method

.method updatePhoneState()V
    .locals 4

    #@0
    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    .line 540
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 541
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@e
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@10
    .line 549
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@12
    if-eq v1, v0, :cond_0

    #@14
    .line 550
    const-string/jumbo v1, "ImsPhoneBase"

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
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

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
    .line 551
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyPhoneStateChanged()V

    #@33
    .line 537
    :cond_0
    return-void

    #@34
    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_2

    #@3e
    .line 543
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@45
    move-result v1

    #@46
    .line 542
    if-eqz v1, :cond_2

    #@48
    .line 544
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4a
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4c
    goto :goto_0

    #@4d
    .line 546
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4f
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@51
    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 0

    #@0
    .prologue
    .line 448
    return-void
.end method
