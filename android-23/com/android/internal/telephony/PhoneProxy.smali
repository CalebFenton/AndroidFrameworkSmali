.class public Lcom/android/internal/telephony/PhoneProxy;
.super Landroid/os/Handler;
.source "PhoneProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# static fields
.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_REQUEST_VOICE_RADIO_TECH_DONE:I = 0x3

.field private static final EVENT_RIL_CONNECTED:I = 0x4

.field private static final EVENT_SIM_RECORDS_LOADED:I = 0x6

.field private static final EVENT_UPDATE_PHONE_OBJECT:I = 0x5

.field private static final EVENT_VOICE_RADIO_TECH_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneProxy"

.field public static final lockForRadioTechnologyChange:Ljava/lang/Object;


# instance fields
.field private mActivePhone:Lcom/android/internal/telephony/Phone;

.field private mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

.field private mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field private mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private mPhoneId:I

.field private mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

.field private mResetModemOnRadioTechnologyChange:Z

.field private mRilVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 60
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@7
    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    .line 85
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@7
    .line 69
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    #@9
    .line 80
    iput v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneId:I

    #@b
    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@d
    .line 88
    const-string/jumbo v0, "persist.radio.reset_on_switch"

    #@10
    .line 87
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@13
    move-result v0

    #@14
    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    #@16
    .line 89
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    #@18
    .line 90
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@1b
    move-result-object v1

    #@1c
    .line 89
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    #@1f
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    #@21
    .line 91
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@23
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    #@2a
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@2c
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2e
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    #@30
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@32
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@34
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@36
    const/4 v1, 0x4

    #@37
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3a
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@3c
    invoke-interface {v0, p0, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3f
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@41
    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@44
    .line 98
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@47
    move-result v0

    #@48
    iput v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneId:I

    #@4a
    .line 100
    new-instance v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@4c
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@4e
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    #@50
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    #@53
    .line 99
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@55
    .line 101
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@57
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@59
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@5c
    move-result-object v1

    #@5d
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@5f
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@61
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@64
    move-result v3

    #@65
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V

    #@68
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@6a
    .line 103
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@6d
    move-result v0

    #@6e
    if-ne v0, v4, :cond_1

    #@70
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@72
    const/4 v1, 0x3

    #@73
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    #@76
    .line 85
    :cond_0
    :goto_0
    return-void

    #@77
    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@7a
    move-result v0

    #@7b
    if-ne v0, v5, :cond_0

    #@7d
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@7f
    const/4 v1, 0x6

    #@80
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    #@83
    goto :goto_0
.end method

.method private deleteAndCreatePhone(I)V
    .locals 6
    .param p1, "newVoiceRadioTech"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 282
    const-string/jumbo v2, "Unknown"

    #@4
    .line 283
    .local v2, "outgoingPhoneName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@6
    .line 284
    .local v1, "oldPhone":Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    #@7
    .line 286
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v1, :cond_0

    #@9
    move-object v3, v1

    #@a
    .line 287
    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    #@c
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 288
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    #@13
    .line 291
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Switching Voice Phone : "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v4, " >>> "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    .line 292
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_5

    #@30
    const-string/jumbo v3, "GSM"

    #@33
    .line 291
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@3e
    .line 294
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_6

    #@44
    .line 295
    iget v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneId:I

    #@46
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone(I)Lcom/android/internal/telephony/Phone;

    #@49
    move-result-object v3

    #@4a
    iput-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@4c
    .line 304
    :goto_1
    if-eqz v1, :cond_1

    #@4e
    .line 305
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->relinquishOwnershipOfImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@51
    move-result-object v0

    #@52
    .line 308
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@54
    if-eqz v3, :cond_3

    #@56
    .line 309
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@59
    move-result-object v3

    #@5a
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@5c
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    #@5f
    .line 310
    if-eqz v0, :cond_2

    #@61
    .line 311
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@63
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/Phone;->acquireOwnershipOfImsPhone(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@66
    .line 313
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@68
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->startMonitoringImsService()V

    #@6b
    .line 314
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@6d
    const/4 v4, 0x6

    #@6e
    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@71
    .line 317
    :cond_3
    if-eqz v1, :cond_4

    #@73
    .line 318
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    #@7a
    .line 319
    const-string/jumbo v3, "Disposing old phone.."

    #@7d
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@80
    .line 320
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->dispose()V

    #@83
    .line 326
    :cond_4
    const/4 v1, 0x0

    #@84
    .line 280
    .local v1, "oldPhone":Lcom/android/internal/telephony/Phone;
    return-void

    #@85
    .line 292
    .restart local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    .local v1, "oldPhone":Lcom/android/internal/telephony/Phone;
    :cond_5
    const-string/jumbo v3, "CDMA"

    #@88
    goto :goto_0

    #@89
    .line 296
    :cond_6
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    #@8c
    move-result v3

    #@8d
    if-eqz v3, :cond_7

    #@8f
    .line 297
    iget v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneId:I

    #@91
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone(I)Lcom/android/internal/telephony/Phone;

    #@94
    move-result-object v3

    #@95
    iput-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@97
    goto :goto_1

    #@98
    .line 299
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v4, "deleteAndCreatePhone: newVoiceRadioTech="

    #@a0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v3

    #@a4
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    .line 300
    const-string/jumbo v4, " is not CDMA or GSM (error) - aborting!"

    #@ab
    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v3

    #@af
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneProxy;->loge(Ljava/lang/String;)V

    #@b6
    .line 301
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    const-string/jumbo v0, "PhoneProxy"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[PhoneProxy] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 169
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    const-string/jumbo v0, "PhoneProxy"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[PhoneProxy] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 173
    return-void
.end method

.method private phoneObjectUpdater(I)V
    .locals 13
    .param p1, "newVoiceRadioTech"    # I

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    const/4 v9, 0x0

    #@4
    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v8, "phoneObjectUpdater: newVoiceRadioTech="

    #@c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v7

    #@14
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v7

    #@18
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@1b
    .line 180
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@1d
    if-eqz v7, :cond_4

    #@1f
    .line 182
    const/16 v7, 0xe

    #@21
    if-eq p1, v7, :cond_0

    #@23
    .line 183
    if-nez p1, :cond_1

    #@25
    .line 185
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@27
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@2a
    move-result-object v7

    #@2b
    const-string/jumbo v8, "carrier_config"

    #@2e
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    .line 184
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@34
    .line 186
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@36
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@39
    move-result v7

    #@3a
    invoke-virtual {v1, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@3d
    move-result-object v0

    #@3e
    .line 187
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_2

    #@40
    .line 189
    const-string/jumbo v7, "volte_replacement_rat_int"

    #@43
    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@46
    move-result v6

    #@47
    .line 190
    .local v6, "volteReplacementRat":I
    new-instance v7, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v8, "phoneObjectUpdater: volteReplacementRat="

    #@4f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@5e
    .line 191
    if-eqz v6, :cond_1

    #@60
    .line 192
    move p1, v6

    #@61
    .line 199
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v1    # "configMgr":Landroid/telephony/CarrierConfigManager;
    .end local v6    # "volteReplacementRat":I
    :cond_1
    :goto_0
    iget v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mRilVersion:I

    #@63
    const/4 v8, 0x6

    #@64
    if-ne v7, v8, :cond_5

    #@66
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getLteOnCdmaMode()I

    #@69
    move-result v7

    #@6a
    if-ne v7, v11, :cond_5

    #@6c
    .line 204
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@6e
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@71
    move-result v7

    #@72
    if-ne v7, v12, :cond_3

    #@74
    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v8, "phoneObjectUpdater: LTE ON CDMA property is set. Use CDMA Phone newVoiceRadioTech="

    #@7c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v7

    #@84
    .line 207
    const-string/jumbo v8, " mActivePhone="

    #@87
    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v7

    #@8b
    .line 207
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@8d
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@90
    move-result-object v8

    #@91
    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v7

    #@95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v7

    #@99
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@9c
    .line 208
    return-void

    #@9d
    .line 195
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v1    # "configMgr":Landroid/telephony/CarrierConfigManager;
    :cond_2
    const-string/jumbo v7, "phoneObjectUpdater: didn\'t get volteReplacementRat from carrier config"

    #@a0
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneProxy;->loge(Ljava/lang/String;)V

    #@a3
    goto :goto_0

    #@a4
    .line 210
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v1    # "configMgr":Landroid/telephony/CarrierConfigManager;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v8, "phoneObjectUpdater: LTE ON CDMA property is set. Switch to CDMALTEPhone newVoiceRadioTech="

    #@ac
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v7

    #@b0
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v7

    #@b4
    .line 212
    const-string/jumbo v8, " mActivePhone="

    #@b7
    .line 210
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v7

    #@bb
    .line 212
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@bd
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@c0
    move-result-object v8

    #@c1
    .line 210
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v7

    #@c5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v7

    #@c9
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@cc
    .line 213
    const/4 p1, 0x6

    #@cd
    .line 236
    :cond_4
    if-nez p1, :cond_9

    #@cf
    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v8, "phoneObjectUpdater: Unknown rat ignore,  newVoiceRadioTech=Unknown. mActivePhone="

    #@d7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v7

    #@db
    .line 240
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@dd
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@e0
    move-result-object v8

    #@e1
    .line 239
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v7

    #@e5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v7

    #@e9
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@ec
    .line 241
    return-void

    #@ed
    .line 216
    :cond_5
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@f0
    move-result v3

    #@f1
    .line 217
    .local v3, "matchCdma":Z
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    #@f4
    move-result v4

    #@f5
    .line 218
    .local v4, "matchGsm":Z
    if-eqz v3, :cond_7

    #@f7
    .line 219
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@f9
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@fc
    move-result v7

    #@fd
    if-ne v7, v12, :cond_7

    #@ff
    .line 223
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v8, "phoneObjectUpdater: No change ignore, newVoiceRadioTech="

    #@107
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v7

    #@10b
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v7

    #@10f
    .line 225
    const-string/jumbo v8, " mActivePhone="

    #@112
    .line 223
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v7

    #@116
    .line 225
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@118
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@11b
    move-result-object v8

    #@11c
    .line 223
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v7

    #@120
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@123
    move-result-object v7

    #@124
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@127
    .line 226
    return-void

    #@128
    .line 220
    :cond_7
    if-eqz v4, :cond_8

    #@12a
    .line 221
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@12c
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@12f
    move-result v7

    #@130
    if-eq v7, v11, :cond_6

    #@132
    .line 228
    :cond_8
    if-nez v3, :cond_4

    #@134
    if-nez v4, :cond_4

    #@136
    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string/jumbo v8, "phoneObjectUpdater: newVoiceRadioTech="

    #@13e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v7

    #@142
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@145
    move-result-object v7

    #@146
    .line 230
    const-string/jumbo v8, " doesn\'t match either CDMA or GSM - error! No phone change"

    #@149
    .line 229
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v7

    #@14d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v7

    #@151
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneProxy;->loge(Ljava/lang/String;)V

    #@154
    .line 231
    return-void

    #@155
    .line 244
    .end local v3    # "matchCdma":Z
    .end local v4    # "matchGsm":Z
    :cond_9
    const/4 v5, 0x0

    #@156
    .line 245
    .local v5, "oldPowerState":Z
    iget-boolean v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    #@158
    if-eqz v7, :cond_a

    #@15a
    .line 246
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@15c
    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@15f
    move-result-object v7

    #@160
    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@163
    move-result v7

    #@164
    if-eqz v7, :cond_a

    #@166
    .line 247
    const/4 v5, 0x1

    #@167
    .line 248
    const-string/jumbo v7, "phoneObjectUpdater: Setting Radio Power to Off"

    #@16a
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@16d
    .line 249
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@16f
    invoke-interface {v7, v10, v9}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@172
    .line 253
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneProxy;->deleteAndCreatePhone(I)V

    #@175
    .line 255
    iget-boolean v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    #@177
    if-eqz v7, :cond_b

    #@179
    if-eqz v5, :cond_b

    #@17b
    .line 256
    const-string/jumbo v7, "phoneObjectUpdater: Resetting Radio"

    #@17e
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@181
    .line 257
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@183
    invoke-interface {v7, v5, v9}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@186
    .line 261
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@188
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@18a
    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    #@18c
    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    #@18f
    .line 262
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    #@191
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@193
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@196
    move-result-object v8

    #@197
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->setmIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    #@19a
    .line 264
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@19c
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@19e
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    #@1a1
    move-result-object v8

    #@1a2
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    #@1a5
    .line 266
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@1a7
    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    #@1a9
    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1ab
    iput-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@1ad
    .line 267
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@1af
    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    #@1b2
    .line 270
    new-instance v2, Landroid/content/Intent;

    #@1b4
    const-string/jumbo v7, "android.intent.action.RADIO_TECHNOLOGY"

    #@1b7
    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1ba
    .line 271
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x20000000

    #@1bc
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1bf
    .line 272
    const-string/jumbo v7, "phoneName"

    #@1c2
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@1c4
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@1c7
    move-result-object v8

    #@1c8
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1cb
    .line 273
    iget v7, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneId:I

    #@1cd
    invoke-static {v2, v7}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@1d0
    .line 274
    const/4 v7, -0x1

    #@1d1
    invoke-static {v2, v9, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    #@1d4
    .line 276
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    #@1d7
    move-result-object v7

    #@1d8
    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/dataconnection/DctController;->updatePhoneObject(Lcom/android/internal/telephony/PhoneProxy;)V

    #@1db
    .line 177
    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 1
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    #@5
    .line 698
    return-void
.end method

.method public acquireOwnershipOfImsPhone(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    .line 1482
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    #@5
    .line 1138
    return-void
.end method

.method public canConference()Z
    .locals 1

    #@0
    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canTransfer()Z
    .locals 1

    #@0
    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    #@5
    .line 743
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    #@5
    .line 718
    return-void
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    #@5
    move-result-object v0

    #@6
    return-object v0
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
    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    #@5
    .line 403
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    #@5
    .line 983
    return-void
.end method

.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@6
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    #@9
    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@b
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    #@e
    .line 1363
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V

    #@13
    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@15
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    #@18
    .line 1358
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1608
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    #@4
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1612
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@a
    .line 1613
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 1616
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@12
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@15
    .line 1620
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@18
    .line 1621
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@1b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 1624
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@20
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@23
    .line 1628
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@26
    .line 1629
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@29
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 1606
    return-void

    #@2d
    .line 1609
    :catch_0
    move-exception v0

    #@2e
    .line 1610
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@31
    goto :goto_0

    #@32
    .line 1617
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@33
    .line 1618
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@36
    goto :goto_1

    #@37
    .line 1625
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    #@38
    .line 1626
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@3b
    goto :goto_2
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    #@5
    .line 723
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    #@5
    .line 978
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    #@0
    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    #@5
    .line 1192
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    #@5
    .line 738
    return-void
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    return-object v0
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
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    #@5
    .line 903
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    #@0
    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    #@5
    .line 867
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    #@5
    .line 893
    return-void
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    #@0
    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    #@0
    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    #@5
    .line 1143
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    #@5
    .line 968
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    const-string/jumbo v1, "default"

    #@5
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDataEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    #@5
    .line 728
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel2()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    #@0
    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@2
    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    #@0
    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerProxy()Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    .locals 1

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    #@2
    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    #@0
    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecordsLoaded()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@2
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getImsPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    #@0
    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLceStatus()I
    .locals 1

    #@0
    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLceStatus()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocaleFromSimAndCarrierPrefs()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLocaleFromSimAndCarrierPrefs()Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    #@0
    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    #@0
    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getModemActivityInfo(Landroid/os/Message;)V

    #@5
    .line 1584
    return-void
.end method

.method public getModemUuId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMute()Z
    .locals 1

    #@0
    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getNai()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    #@5
    .line 933
    return-void
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@5
    .line 913
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    #@5
    .line 881
    return-void
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
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
    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPhoneIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;
    .locals 1

    #@0
    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@2
    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    #@0
    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPhoneSubInfoProxy()Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 1

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@2
    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    #@5
    .line 928
    return-void
.end method

.method public getRadioAccessFamily()I
    .locals 1

    #@0
    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 1

    #@0
    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    #@0
    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    #@0
    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    #@5
    .line 1158
    return-void
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubId()I
    .locals 1

    #@0
    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    #@0
    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    #@0
    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    #@0
    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    #@0
    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVoicePhoneServiceState()I
    .locals 1

    #@0
    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoicePhoneServiceState()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x0

    #@2
    .line 113
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    check-cast v0, Landroid/os/AsyncResult;

    #@6
    .line 114
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    #@8
    packed-switch v3, :pswitch_data_0

    #@b
    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Error! This handler was not registered for this message type. Message: "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    .line 163
    iget v4, p1, Landroid/os/Message;->what:I

    #@19
    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneProxy;->loge(Ljava/lang/String;)V

    #@24
    .line 166
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@27
    .line 112
    return-void

    #@28
    .line 117
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@2a
    .line 118
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    #@2d
    move-result-object v4

    #@2e
    .line 117
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    #@31
    goto :goto_0

    #@32
    .line 122
    :pswitch_1
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@34
    if-nez v3, :cond_1

    #@36
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 123
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3c
    check-cast v3, Ljava/lang/Integer;

    #@3e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@41
    move-result v3

    #@42
    iput v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mRilVersion:I

    #@44
    goto :goto_0

    #@45
    .line 125
    :cond_1
    const-string/jumbo v3, "Unexpected exception on EVENT_RIL_CONNECTED"

    #@48
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@4b
    .line 126
    const/4 v3, -0x1

    #@4c
    iput v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mRilVersion:I

    #@4e
    goto :goto_0

    #@4f
    .line 132
    :pswitch_2
    iget v3, p1, Landroid/os/Message;->what:I

    #@51
    const/4 v4, 0x1

    #@52
    if-ne v3, v4, :cond_2

    #@54
    .line 133
    const-string/jumbo v2, "EVENT_VOICE_RADIO_TECH_CHANGED"

    #@57
    .line 134
    .local v2, "what":Ljava/lang/String;
    :goto_1
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@59
    if-nez v3, :cond_4

    #@5b
    .line 135
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@5d
    if-eqz v3, :cond_3

    #@5f
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@61
    check-cast v3, [I

    #@63
    array-length v3, v3

    #@64
    if-eqz v3, :cond_3

    #@66
    .line 136
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@68
    check-cast v3, [I

    #@6a
    aget v1, v3, v5

    #@6c
    .line 137
    .local v1, "newVoiceTech":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    const-string/jumbo v4, ": newVoiceTech="

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@87
    .line 138
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->phoneObjectUpdater(I)V

    #@8a
    goto :goto_0

    #@8b
    .line 133
    .end local v1    # "newVoiceTech":I
    .end local v2    # "what":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "EVENT_REQUEST_VOICE_RADIO_TECH_DONE"

    #@8e
    .restart local v2    # "what":Ljava/lang/String;
    goto :goto_1

    #@8f
    .line 140
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    const-string/jumbo v4, ": has no tech!"

    #@9b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v3

    #@a3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneProxy;->loge(Ljava/lang/String;)V

    #@a6
    goto/16 :goto_0

    #@a8
    .line 143
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    const-string/jumbo v4, ": exception="

    #@b4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v3

    #@b8
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ba
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v3

    #@be
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v3

    #@c2
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneProxy;->loge(Ljava/lang/String;)V

    #@c5
    goto/16 :goto_0

    #@c7
    .line 148
    .end local v2    # "what":Ljava/lang/String;
    :pswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@c9
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneProxy;->phoneObjectUpdater(I)V

    #@cc
    goto/16 :goto_0

    #@ce
    .line 154
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@d0
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@d3
    move-result-object v3

    #@d4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d7
    move-result-object v3

    #@d8
    .line 155
    const v4, 0x1120091

    #@db
    .line 154
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@de
    move-result v3

    #@df
    if-nez v3, :cond_0

    #@e1
    .line 156
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@e3
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    #@e6
    move-result-object v4

    #@e7
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasMatchedTetherApnSetting()Z
    .locals 1

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hasMatchedTetherApnSetting()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    #@5
    .line 958
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    #@5
    .line 963
    return-void
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    #@0
    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    const-string/jumbo v1, "default"

    #@5
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isImsRegistered()Z
    .locals 1

    #@0
    .prologue
    .line 1557
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isInEcm()Z
    .locals 1

    #@0
    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    #@0
    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRadioAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 1504
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isRadioOn()Z
    .locals 1

    #@0
    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isVideoCallPresent()Z
    .locals 1

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isVideoCallPresent()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVideoEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVolteEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isWifiCallingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    #@0
    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    #@5
    .line 1153
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->nvReadItem(ILandroid/os/Message;)V

    #@5
    .line 1338
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 1
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->nvResetConfig(ILandroid/os/Message;)V

    #@5
    .line 1353
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 1
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->nvWriteCdmaPrl([BLandroid/os/Message;)V

    #@5
    .line 1348
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V

    #@5
    .line 1343
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    #@5
    .line 1003
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    #@5
    .line 1028
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    #@5
    .line 1133
    return-void
.end method

.method public radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    .locals 1
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    #@0
    .prologue
    .line 1539
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    #@5
    .line 1538
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1267
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1423
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@8
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@a
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    #@d
    .line 1421
    :goto_0
    return-void

    #@e
    .line 1424
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@10
    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1425
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@16
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@18
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1b
    goto :goto_0

    #@1c
    .line 1427
    :cond_1
    const-string/jumbo v0, "Phone object is not MultiSim. This should not hit!!!!"

    #@1f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->loge(Ljava/lang/String;)V

    #@22
    goto :goto_0
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1207
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 609
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 519
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1227
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 629
    return-void
.end method

.method public registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 468
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 599
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 589
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 509
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1257
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 539
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 529
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 488
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1237
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 649
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 478
    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1543
    return-void
.end method

.method public registerForRadioOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1286
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1247
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 659
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 639
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 559
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1217
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 669
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 619
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 579
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 569
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1277
    return-void
.end method

.method public registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 678
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 458
    return-void
.end method

.method public registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 499
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    #@5
    .line 703
    return-void
.end method

.method public relinquishOwnershipOfImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 1

    #@0
    .prologue
    .line 1476
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public removeReferences()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1369
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@3
    .line 1370
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    .line 1368
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    #@5
    .line 918
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    #@5
    .line 1187
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    #@5
    .line 784
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessge"    # Ljava/lang/String;

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    #@5
    .line 554
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    #@5
    .line 998
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    #@a
    .line 875
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    #@5
    .line 898
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    #@5
    .line 1033
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    #@5
    .line 1038
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    #@5
    .line 1148
    return-void
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .param p1, "rateInMillis"    # I

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    #@5
    .line 378
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    #@5
    .line 1023
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    #@5
    .line 1013
    return-void
.end method

.method public setEchoSuppressionEnabled()V
    .locals 1

    #@0
    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled()V

    #@5
    .line 953
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 4
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 1457
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "setImsRegistrationState - registered: "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@17
    .line 1459
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@19
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->setImsRegistrationState(Z)V

    #@1c
    .line 1461
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@1e
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, "GSM"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 1462
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2d
    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@2f
    .line 1463
    .local v1, "GP":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setImsRegistrationState(Z)V

    #@36
    .line 1456
    .end local v1    # "GP":Lcom/android/internal/telephony/gsm/GSMPhone;
    :cond_0
    :goto_0
    return-void

    #@37
    .line 1464
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@39
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    const-string/jumbo v3, "CDMA"

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_0

    #@46
    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@48
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4a
    .line 1466
    .local v0, "CP":Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setImsRegistrationState(Z)V

    #@51
    goto :goto_0
.end method

.method public setInternalDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1396
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    #@4
    .line 1395
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1413
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@8
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@a
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    #@d
    .line 1411
    :goto_0
    return-void

    #@e
    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@10
    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1415
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@16
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@18
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    #@1b
    goto :goto_0

    #@1c
    .line 1417
    :cond_1
    const-string/jumbo v0, "Phone object is not MultiSim. This should not hit!!!!"

    #@1f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->loge(Ljava/lang/String;)V

    #@22
    goto :goto_0
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1400
    const/4 v0, 0x0

    #@1
    .line 1401
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@3
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1402
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@9
    check-cast v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@b
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->setInternalDataEnabledFlag(Z)Z

    #@e
    move-result v0

    #@f
    .line 1408
    .end local v0    # "flag":Z
    :goto_0
    return v0

    #@10
    .line 1403
    .restart local v0    # "flag":Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@12
    instance-of v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 1404
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@18
    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@1a
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setInternalDataEnabledFlag(Z)Z

    #@1d
    move-result v0

    #@1e
    .local v0, "flag":Z
    goto :goto_0

    #@1f
    .line 1406
    .local v0, "flag":Z
    :cond_1
    const-string/jumbo v1, "Phone object is not MultiSim. This should not hit!!!!"

    #@22
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->loge(Ljava/lang/String;)V

    #@25
    goto :goto_0
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    #@0
    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    #@5
    .line 943
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@5
    .line 908
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1295
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 938
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "brand"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setOperatorBrandOverride(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    #@5
    .line 887
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@5
    .line 923
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 1
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    #@5
    .line 1518
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    #@0
    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    #@5
    .line 799
    return-void
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1498
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    #@5
    .line 1163
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "ttyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    #@5
    .line 1128
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setUiTTYMode(ILandroid/os/Message;)V

    #@5
    .line 1123
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1
    .param p1, "f"    # Z

    #@0
    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    #@5
    .line 988
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@5
    .line 861
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    #@0
    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    #@5
    .line 1323
    return-void
.end method

.method public shutdownRadio()V
    .locals 1

    #@0
    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->shutdownRadio()V

    #@5
    .line 1513
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    #@5
    .line 789
    return-void
.end method

.method public startMonitoringImsService()V
    .locals 0

    #@0
    .prologue
    .line 1479
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    #@0
    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    #@5
    .line 794
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    #@5
    .line 708
    return-void
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1433
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@8
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    #@d
    .line 1431
    :goto_0
    return-void

    #@e
    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@10
    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1435
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@16
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    #@1b
    goto :goto_0

    #@1c
    .line 1437
    :cond_1
    const-string/jumbo v0, "Phone object is not MultiSim. This should not hit!!!!"

    #@1f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->loge(Ljava/lang/String;)V

    #@22
    goto :goto_0
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    #@5
    .line 1212
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    #@5
    .line 614
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    #@5
    .line 524
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    #@5
    .line 1232
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    #@5
    .line 634
    return-void
.end method

.method public unregisterForHandoverStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForHandoverStateChanged(Landroid/os/Handler;)V

    #@5
    .line 473
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    #@5
    .line 604
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    #@5
    .line 594
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    #@5
    .line 514
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    #@5
    .line 1262
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    #@5
    .line 544
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    #@5
    .line 534
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    #@5
    .line 493
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    #@5
    .line 1242
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    #@5
    .line 654
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    #@5
    .line 483
    return-void
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V

    #@5
    .line 1548
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailable(Landroid/os/Handler;)V

    #@5
    .line 1290
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    #@5
    .line 1252
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    #@5
    .line 664
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    #@5
    .line 644
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    #@5
    .line 564
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    #@5
    .line 1222
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    #@5
    .line 673
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    #@5
    .line 624
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    #@5
    .line 584
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    #@5
    .line 574
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    #@5
    .line 1282
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    #@5
    .line 1272
    return-void
.end method

.method public unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    #@5
    .line 683
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    #@5
    .line 463
    return-void
.end method

.method public unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V

    #@5
    .line 504
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    #@5
    .line 1300
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 1

    #@0
    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1375
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@8
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->updateCurrentCarrierInProvider()Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@11
    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1377
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@17
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@19
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 1379
    :cond_1
    const-string/jumbo v0, "Phone object is not MultiSim. This should not hit!!!!"

    #@21
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->loge(Ljava/lang/String;)V

    #@24
    .line 1380
    const/4 v0, 0x0

    #@25
    return v0
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    #@0
    .prologue
    .line 1385
    const-string/jumbo v0, "Updating Data Connection Tracker"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@6
    .line 1386
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@8
    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1387
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@e
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->updateDataConnectionTracker()V

    #@13
    .line 1384
    :goto_0
    return-void

    #@14
    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@16
    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1389
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@1c
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@1e
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateDataConnectionTracker()V

    #@21
    goto :goto_0

    #@22
    .line 1391
    :cond_1
    const-string/jumbo v0, "Phone object is not MultiSim. This should not hit!!!!"

    #@25
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->loge(Ljava/lang/String;)V

    #@28
    goto :goto_0
.end method

.method public updatePhoneObject(I)V
    .locals 3
    .param p1, "voiceRadioTech"    # I

    #@0
    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "updatePhoneObject: radioTechnology="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    #@17
    .line 353
    const/4 v0, 0x5

    #@18
    const/4 v1, 0x0

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    #@21
    .line 351
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    #@0
    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    #@5
    .line 973
    return-void
.end method
