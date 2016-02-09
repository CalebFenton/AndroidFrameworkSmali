.class public Lcom/android/internal/telephony/cdma/CDMALTEPhone;
.super Lcom/android/internal/telephony/cdma/CDMAPhone;
.source "CDMALTEPhone.java"


# static fields
.field private static synthetic -com_android_internal_telephony_DctConstants$StateSwitchesValues:[I = null

.field private static final DBG:Z = true

.field static final LOG_LTE_TAG:Ljava/lang/String; = "CDMALTEPhone"


# instance fields
.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$State;->values()[Lcom/android/internal/telephony/DctConstants$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    #@4d
    :goto_6
    sput-object v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    #@4f
    return-object v0

    #@50
    :catch_0
    move-exception v1

    #@51
    goto :goto_6

    #@52
    :catch_1
    move-exception v1

    #@53
    goto :goto_5

    #@54
    :catch_2
    move-exception v1

    #@55
    goto :goto_4

    #@56
    :catch_3
    move-exception v1

    #@57
    goto :goto_3

    #@58
    :catch_4
    move-exception v1

    #@59
    goto :goto_2

    #@5a
    :catch_5
    move-exception v1

    #@5b
    goto :goto_1

    #@5c
    :catch_6
    move-exception v1

    #@5d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    #@0
    .prologue
    .line 83
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    #@9
    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    #@3
    .line 90
    const-string/jumbo v0, "CDMAPhone"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "CDMALTEPhone: constructor: sub = "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 92
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@21
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    #@24
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@26
    .line 87
    return-void
.end method

.method private setProperties()V
    .locals 5

    #@0
    .prologue
    .line 346
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@5
    move-result-object v2

    #@6
    .line 348
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    #@9
    move-result v3

    #@a
    const/4 v4, 0x2

    #@b
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    #@e
    .line 350
    const-string/jumbo v3, "ro.cdma.home.operator.alpha"

    #@11
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 351
    .local v0, "operatorAlpha":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 352
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    #@1e
    move-result v3

    #@1f
    invoke-virtual {v2, v3, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@22
    .line 356
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    #@24
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 357
    .local v1, "operatorNumeric":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v4, "update icc_operator_numeric="

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    #@3f
    .line 358
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@42
    move-result v3

    #@43
    if-nez v3, :cond_1

    #@45
    .line 359
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    #@48
    move-result v3

    #@49
    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@4c
    .line 361
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getSubId()I

    #@53
    move-result v4

    #@54
    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    #@57
    .line 363
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    #@5a
    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "update mccmnc="

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    #@71
    .line 366
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mContext:Landroid/content/Context;

    #@73
    const/4 v4, 0x0

    #@74
    invoke-static {v3, v1, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@77
    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->updateCurrentCarrierInProvider()Z

    #@7a
    .line 345
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 103
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@9
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@c
    .line 107
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 102
    return-void

    #@11
    .line 103
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 468
    const-string/jumbo v0, "CDMALTEPhone extends:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 469
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 467
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    #@5
    .line 267
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 148
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2
    .line 150
    .local v0, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 154
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@8
    .line 182
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "getDataConnectionState apnType="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " ret="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    #@2a
    .line 183
    return-object v0

    #@2b
    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2d
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_1

    #@33
    .line 156
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@35
    goto :goto_0

    #@36
    .line 158
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->-getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I

    #@39
    move-result-object v1

    #@3a
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@3c
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@43
    move-result v2

    #@44
    aget v1, v1, v2

    #@46
    packed-switch v1, :pswitch_data_0

    #@49
    goto :goto_0

    #@4a
    .line 167
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@4c
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4e
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@50
    if-eq v1, v2, :cond_2

    #@52
    .line 168
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@54
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_3

    #@5a
    .line 171
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@5c
    goto :goto_0

    #@5d
    .line 162
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@5f
    goto :goto_0

    #@60
    .line 169
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@62
    goto :goto_0

    #@63
    .line 177
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@65
    goto :goto_0

    #@66
    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mImeiSv:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const-string/jumbo v0, ""

    #@e
    goto :goto_0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid2()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const-string/jumbo v0, ""

    #@e
    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mImei:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@2
    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 405
    const/4 v2, 0x0

    #@2
    .line 406
    .local v2, "operatorNumeric":Ljava/lang/String;
    const/4 v1, 0x0

    #@3
    .line 407
    .local v1, "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCdmaSubscriptionSource:I

    #@5
    const/4 v5, 0x1

    #@6
    if-ne v4, v5, :cond_3

    #@8
    .line 408
    const-string/jumbo v4, "ro.cdma.home.operator.numeric"

    #@b
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 421
    .end local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    #@11
    .line 422
    const-string/jumbo v4, "CDMAPhone"

    #@14
    new-instance v5, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v6, "getOperatorNumeric: Cannot retrieve operatorNumeric: mCdmaSubscriptionSource = "

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    .line 423
    iget v6, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCdmaSubscriptionSource:I

    #@22
    .line 422
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    .line 423
    const-string/jumbo v6, " mIccRecords = "

    #@29
    .line 422
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    .line 424
    if-eqz v1, :cond_1

    #@2f
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    #@32
    move-result v3

    #@33
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@36
    move-result-object v3

    #@37
    .line 422
    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 427
    :cond_2
    const-string/jumbo v3, "CDMAPhone"

    #@45
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "getOperatorNumeric: mCdmaSubscriptionSource = "

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCdmaSubscriptionSource:I

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    .line 428
    const-string/jumbo v5, " operatorNumeric = "

    #@5a
    .line 427
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 430
    return-object v2

    #@6a
    .line 409
    .restart local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCdmaSubscriptionSource:I

    #@6c
    if-nez v4, :cond_0

    #@6e
    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@70
    .line 411
    .local v1, "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_4

    #@72
    .line 412
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    .local v2, "operatorNumeric":Ljava/lang/String;
    goto :goto_0

    #@77
    .line 414
    .local v2, "operatorNumeric":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@79
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@7c
    move-result-object v1

    #@7d
    .end local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    #@7f
    .line 415
    .restart local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    #@81
    instance-of v4, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    #@83
    if-eqz v4, :cond_0

    #@85
    move-object v0, v1

    #@86
    .line 416
    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    #@88
    .line 417
    .local v0, "csim":Lcom/android/internal/telephony/uicc/RuimRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    #@8b
    move-result-object v2

    #@8c
    .local v2, "operatorNumeric":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const-string/jumbo v0, ""

    #@e
    goto :goto_0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getUnitTestMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 382
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 384
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    #@a
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 132
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsTheCurrentActivePhone:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 133
    const-string/jumbo v0, "CDMAPhone"

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Received message "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 134
    const-string/jumbo v2, "["

    #@1f
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 134
    iget v2, p1, Landroid/os/Message;->what:I

    #@25
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 134
    const-string/jumbo v2, "] while being destroyed. Ignoring."

    #@2c
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 135
    return-void

    #@38
    .line 128
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleMessage(Landroid/os/Message;)V

    #@3b
    .line 129
    return-void

    #@3c
    .line 137
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    #@3e
    packed-switch v0, :pswitch_data_1

    #@41
    .line 143
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleMessage(Landroid/os/Message;)V

    #@44
    .line 117
    :goto_0
    return-void

    #@45
    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@47
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4a
    goto :goto_0

    #@4b
    .line 124
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@54
    .line 137
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method protected init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    #@0
    .prologue
    const/16 v7, 0x1a

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 308
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7
    invoke-interface {v2, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    #@a
    .line 309
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@c
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    #@f
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@11
    .line 310
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@13
    .line 311
    const/16 v3, 0x1b

    #@15
    .line 310
    invoke-static {p1, v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@1b
    .line 312
    new-instance v2, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    #@1d
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    #@20
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    #@22
    .line 313
    new-instance v2, Lcom/android/internal/telephony/PhoneSubInfo;

    #@24
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@27
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    #@29
    .line 314
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager;

    #@2b
    const/4 v3, 0x0

    #@2c
    invoke-direct {v2, p0, p1, v3}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    #@2f
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@31
    .line 316
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@33
    invoke-interface {v2, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@36
    .line 317
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@38
    const/16 v3, 0x8

    #@3a
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3d
    .line 318
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3f
    const/4 v3, 0x5

    #@40
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@43
    .line 319
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@45
    invoke-interface {v2, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    #@48
    .line 320
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@4a
    const/16 v3, 0x13

    #@4c
    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4f
    .line 321
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@51
    const/16 v3, 0x19

    #@53
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    #@56
    .line 322
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@58
    invoke-interface {v2, p0, v7, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5b
    .line 326
    const-string/jumbo v2, "power"

    #@5e
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@61
    move-result-object v1

    #@62
    check-cast v1, Landroid/os/PowerManager;

    #@64
    .line 327
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "CDMAPhone"

    #@67
    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@6a
    move-result-object v2

    #@6b
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6d
    .line 330
    const-string/jumbo v2, "ril.cdma.inecmmode"

    #@70
    const-string/jumbo v3, "false"

    #@73
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    .line 331
    .local v0, "inEcm":Ljava/lang/String;
    const-string/jumbo v2, "true"

    #@7a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v2

    #@7e
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsPhoneInEcmState:Z

    #@80
    .line 332
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsPhoneInEcmState:Z

    #@82
    if-eqz v2, :cond_0

    #@84
    .line 334
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@86
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->obtainMessage(I)Landroid/os/Message;

    #@89
    move-result-object v3

    #@8a
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    #@8d
    .line 338
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mContext:Landroid/content/Context;

    #@8f
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@92
    move-result-object v2

    #@93
    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    #@96
    move-result v3

    #@97
    const-string/jumbo v4, ""

    #@9a
    .line 338
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    #@9d
    move-result-object v2

    #@9e
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@a0
    .line 341
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->setProperties()V

    #@a3
    .line 307
    return-void
.end method

.method protected initSstIcc()V
    .locals 1

    #@0
    .prologue
    .line 98
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@7
    .line 97
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 455
    const-string/jumbo v0, "CDMALTEPhone"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 454
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 459
    const-string/jumbo v0, "CDMALTEPhone"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 458
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 463
    const-string/jumbo v0, "CDMALTEPhone"

    #@3
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 462
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x0

    #@2
    .line 273
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 274
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@8
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@b
    .line 277
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@d
    if-nez v3, :cond_1

    #@f
    .line 278
    return-void

    #@10
    .line 283
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@12
    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    #@14
    invoke-virtual {v3, v4, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@17
    move-result-object v2

    #@18
    .line 284
    .local v2, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v0, 0x0

    #@19
    .line 286
    .local v0, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v2, :cond_2

    #@1b
    .line 287
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@1e
    move-result-object v0

    #@1f
    .end local v0    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    check-cast v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@21
    .line 289
    :cond_2
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@23
    .line 292
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@25
    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    #@27
    .line 293
    const/4 v5, 0x1

    #@28
    .line 292
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2b
    move-result-object v2

    #@2c
    .line 294
    const/4 v1, 0x0

    #@2d
    .line 295
    .local v1, "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v2, :cond_3

    #@2f
    .line 296
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@32
    move-result-object v1

    #@33
    .end local v1    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    #@35
    .line 298
    :cond_3
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@37
    .line 299
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@39
    if-eqz v3, :cond_4

    #@3b
    .line 300
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@3d
    invoke-virtual {v3, p0, v7, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@40
    .line 303
    :cond_4
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onUpdateIccAvailability()V

    #@43
    .line 272
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    #@7
    .line 432
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 443
    return-void
.end method

.method public removeReferences()V
    .locals 0

    #@0
    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeReferences()V

    #@3
    .line 112
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    #@7
    .line 391
    return-void
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabledFlag(Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getUnitTestMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 375
    return-void

    #@7
    .line 377
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    #@9
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@c
    .line 373
    return-void
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    #@7
    .line 437
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 448
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 9

    #@0
    .prologue
    .line 208
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@3
    move-result v6

    #@4
    int-to-long v0, v6

    #@5
    .line 209
    .local v0, "currentDds":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getOperatorNumeric()Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    .line 211
    .local v4, "operatorNumeric":Ljava/lang/String;
    const-string/jumbo v6, "CDMAPhone"

    #@c
    new-instance v7, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v8, "updateCurrentCarrierInProvider: mSubscription = "

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getSubId()I

    #@1b
    move-result v8

    #@1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    .line 212
    const-string/jumbo v8, " currentDds = "

    #@23
    .line 211
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    .line 212
    const-string/jumbo v8, " operatorNumeric = "

    #@2e
    .line 211
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 214
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@40
    move-result v6

    #@41
    if-nez v6, :cond_0

    #@43
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getSubId()I

    #@46
    move-result v6

    #@47
    int-to-long v6, v6

    #@48
    cmp-long v6, v6, v0

    #@4a
    if-nez v6, :cond_0

    #@4c
    .line 216
    :try_start_0
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@4e
    const-string/jumbo v7, "current"

    #@51
    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@54
    move-result-object v5

    #@55
    .line 217
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    #@57
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@5a
    .line 218
    .local v3, "map":Landroid/content/ContentValues;
    const-string/jumbo v6, "numeric"

    #@5d
    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@60
    .line 219
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mContext:Landroid/content/Context;

    #@62
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    .line 220
    const/4 v6, 0x1

    #@6a
    return v6

    #@6b
    .line 221
    .end local v3    # "map":Landroid/content/ContentValues;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    #@6c
    .line 222
    .local v2, "e":Landroid/database/SQLException;
    const-string/jumbo v6, "CDMAPhone"

    #@6f
    const-string/jumbo v7, "Can\'t store current operator"

    #@72
    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@75
    .line 225
    .end local v2    # "e":Landroid/database/SQLException;
    :cond_0
    const/4 v6, 0x0

    #@76
    return v6
.end method

.method updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2
    iget v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    #@4
    const/4 v3, 0x1

    #@5
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@8
    move-result-object v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 196
    const-string/jumbo v1, "updateCurrentCarrierInProvider APP_FAM_3GPP == null"

    #@e
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    #@11
    .line 197
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    .line 202
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "updateCurrentCarrierInProvider X retVal="

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    #@2c
    .line 203
    return v0

    #@2d
    .line 199
    :cond_0
    const-string/jumbo v1, "updateCurrentCarrierInProvider not updated"

    #@30
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    #@33
    .line 200
    const/4 v0, 0x1

    #@34
    .local v0, "retVal":Z
    goto :goto_0
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    #@7
    .line 387
    return-void
.end method
