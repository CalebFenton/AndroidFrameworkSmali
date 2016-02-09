.class abstract Lcom/android/internal/telephony/imsphone/ImsPhoneBase;
.super Lcom/android/internal/telephony/PhoneBase;
.source "ImsPhoneBase.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneBase"


# instance fields
.field private mOnHoldRegistrants:Landroid/os/RegistrantList;

.field private mRingbackRegistrants:Landroid/os/RegistrantList;

.field private mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    #@0
    .prologue
    .line 66
    new-instance v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCommandInterface;

    #@2
    invoke-direct {v4, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCommandInterface;-><init>(Landroid/content/Context;)V

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
    .line 60
    new-instance v0, Landroid/os/RegistrantList;

    #@f
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@14
    .line 61
    new-instance v0, Landroid/os/RegistrantList;

    #@16
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Landroid/os/RegistrantList;

    #@1b
    .line 62
    new-instance v0, Landroid/os/RegistrantList;

    #@1d
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    #@22
    .line 63
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@24
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@26
    .line 65
    return-void
.end method


# virtual methods
.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

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

.method public canDial()Z
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    #@9
    move-result v1

    #@a
    .line 238
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
    .line 239
    const/4 v4, 0x3

    #@25
    if-ne v1, v4, :cond_0

    #@27
    return v3

    #@28
    .line 242
    :cond_0
    const-string/jumbo v4, "ro.telephony.disable-call"

    #@2b
    const-string/jumbo v5, "false"

    #@2e
    .line 241
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 243
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
    .line 244
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
    .line 246
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
    .line 247
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
    .line 248
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
    .line 249
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
    .line 250
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
    .line 251
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
    .line 249
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
    .line 479
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public disableLocationUpdates()V
    .locals 0

    #@0
    .prologue
    .line 452
    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 1

    #@0
    .prologue
    .line 475
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public enableLocationUpdates()V
    .locals 0

    #@0
    .prologue
    .line 448
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
    .line 144
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
    .line 418
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    #@0
    .prologue
    .line 174
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
    .line 372
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 398
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4
    .line 399
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 397
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

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

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    #@0
    .prologue
    .line 149
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
    .line 440
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    #@0
    .prologue
    .line 194
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@2
    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 436
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    #@0
    .prologue
    .line 184
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2
    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 189
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2
    return-object v0
.end method

.method public getDataEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 466
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 457
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 302
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 307
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 317
    const-string/jumbo v0, "ImsPhoneBase"

    #@3
    const-string/jumbo v1, "[VoltePhone] getEsn() is a CDMA method"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 318
    const-string/jumbo v0, "0"

    #@c
    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 334
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 339
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    #@0
    .prologue
    .line 414
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    #@0
    .prologue
    .line 506
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    #@0
    .prologue
    .line 501
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    #@0
    .prologue
    .line 409
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 344
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 312
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 354
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 349
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 535
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 323
    const-string/jumbo v0, "ImsPhoneBase"

    #@3
    const-string/jumbo v1, "[VoltePhone] getMeid() is a CDMA method"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 324
    const-string/jumbo v0, "0"

    #@c
    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    #@0
    .prologue
    .line 169
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 432
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 384
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4
    .line 385
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 382
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
    .line 179
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
    .line 496
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    #@0
    .prologue
    .line 159
    const/4 v0, 0x5

    #@1
    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    #@0
    .prologue
    .line 134
    new-instance v0, Landroid/telephony/ServiceState;

    #@2
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@5
    .line 135
    .local v0, "s":Landroid/telephony/ServiceState;
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setState(I)V

    #@9
    .line 136
    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    #@0
    .prologue
    .line 164
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
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 329
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 297
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 292
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 256
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 270
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    #@0
    .prologue
    .line 484
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method isInCall()Z
    .locals 4

    #@0
    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@7
    move-result-object v1

    #@8
    .line 261
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@f
    move-result-object v0

    #@10
    .line 262
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v2

    #@18
    .line 264
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
    .line 265
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@27
    move-result v3

    #@28
    .line 264
    :goto_0
    return v3

    #@29
    :cond_0
    const/4 v3, 0x1

    #@2a
    goto :goto_0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "from"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V

    #@3
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@5
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;

    #@7
    .end local p1    # "from":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@c
    .line 70
    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 528
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 232
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 215
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 201
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    #@0
    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    #@3
    .line 210
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    #@3
    .line 227
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/Phone$SuppService;

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 223
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 219
    return-void
.end method

.method public onTtyModeReceived(I)V
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 126
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@a
    .line 127
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    #@c
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@f
    .line 125
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 0

    #@0
    .prologue
    .line 539
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 96
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 76
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 279
    return-void
.end method

.method public registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 116
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

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 428
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "ussdMessge"    # Ljava/lang/String;

    #@0
    .prologue
    .line 274
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
    .line 378
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 404
    const-string/jumbo v0, "ImsPhoneBase"

    #@3
    const-string/jumbo v1, "call waiting not supported"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 403
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 521
    const-string/jumbo v0, "ImsPhoneBase"

    #@3
    const-string/jumbo v1, "Error! This functionality is not implemented for Volte."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 520
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 470
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 461
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 360
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 422
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
    .line 392
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4
    .line 393
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 390
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    #@0
    .prologue
    .line 287
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
    .line 367
    invoke-static {p3, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4
    .line 368
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 365
    return-void
.end method

.method protected startOnHoldTone()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 106
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@5
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8
    .line 107
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@d
    .line 105
    return-void
.end method

.method protected startRingbackTone()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 86
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

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

.method protected stopOnHoldTone()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 111
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@5
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8
    .line 112
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@d
    .line 110
    return-void
.end method

.method protected stopRingbackTone()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 91
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@5
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8
    .line 92
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@d
    .line 90
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mOnHoldRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 101
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 81
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 283
    return-void
.end method

.method public unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 121
    return-void
.end method

.method updateCurrentCarrierInProvider()Z
    .locals 1

    #@0
    .prologue
    .line 488
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method updatePhoneState()V
    .locals 4

    #@0
    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    .line 545
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
    .line 546
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@e
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@10
    .line 554
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@12
    if-eq v1, v0, :cond_0

    #@14
    .line 555
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
    .line 556
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyPhoneStateChanged()V

    #@33
    .line 542
    :cond_0
    return-void

    #@34
    .line 547
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
    .line 548
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    #@45
    move-result v1

    #@46
    .line 547
    if-eqz v1, :cond_2

    #@48
    .line 549
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4a
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4c
    goto :goto_0

    #@4d
    .line 551
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
    .line 444
    return-void
.end method
