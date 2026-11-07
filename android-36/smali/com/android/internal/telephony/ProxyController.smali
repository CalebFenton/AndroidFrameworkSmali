.class public Lcom/android/internal/telephony/ProxyController;
.super Ljava/lang/Object;
.source "ProxyController.java"


# static fields
.field public static final blacklist EVENT_FINISH_RC_RESPONSE:I = 0x4

.field public static final blacklist EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0x6

.field static final blacklist EVENT_START_RC_RESPONSE:I = 0x2

.field public static final blacklist EVENT_TIMEOUT:I = 0x5

.field private static greylist-max-r sProxyController:Lcom/android/internal/telephony/ProxyController;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentLogicalModemIds:[Ljava/lang/String;

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field public final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mNewLogicalModemIds:[Ljava/lang/String;

.field private blacklist mNewRadioAccessFamily:[I

.field private greylist-max-r mOldRadioAccessFamily:[I

.field private blacklist mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

.field private blacklist mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

.field private blacklist mPhones:[Lcom/android/internal/telephony/Phone;

.field private blacklist mRadioAccessFamilyStatusCounter:I

.field private greylist-max-r mRadioCapabilitySessionId:I

.field private greylist-max-r mSetRadioAccessFamilyStatus:[I

.field private blacklist mSmsController:Lcom/android/internal/telephony/SmsController;

.field private blacklist mTransactionFailed:Z

.field private blacklist mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

.field private greylist-max-r mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monApplyRadioCapabilityResponse(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onApplyRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMultiSimConfigChanged(Lcom/android/internal/telephony/ProxyController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->onMultiSimConfigChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNotificationRadioCapabilityChanged(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onNotificationRadioCapabilityChanged(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monStartRadioCapabilityResponse(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onStartRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTimeoutRadioCapability(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onTimeoutRadioCapability(Landroid/os/Message;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 6

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 103
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 104
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 287
    new-instance v1, Lcom/android/internal/telephony/ProxyController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ProxyController$1;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    .line 139
    const-string v1, "Constructor - Enter"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 143
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 144
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 146
    new-instance v1, Lcom/android/internal/telephony/UiccPhoneBookController;

    invoke-direct {v1}, Lcom/android/internal/telephony/UiccPhoneBookController;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

    .line 147
    new-instance v1, Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

    .line 148
    new-instance v1, Lcom/android/internal/telephony/SmsController;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/android/internal/telephony/SmsController;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSmsController:Lcom/android/internal/telephony/SmsController;

    .line 149
    iget-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    .line 150
    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    .line 151
    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    .line 152
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    .line 153
    array-length p2, p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    .line 156
    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 157
    const-string p2, "ProxyController"

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 162
    :goto_7d
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length p2, p1

    const/4 v2, 0x0

    if-ge v0, p2, :cond_8d

    .line 163
    aget-object p1, p1, v0

    iget-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 167
    :cond_8d
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-static {p1, p2, v2}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    const-string p1, "Constructor - Exit"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist clearTransaction()V
    .registers 6

    .line 629
    const-string v0, "clearTransaction"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 631
    :goto_a
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v2, v3, :cond_3b

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearTransaction: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status=IDLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 633
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aput v1, v3, v2

    .line 634
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aput v1, v3, v2

    .line 635
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aput v1, v3, v2

    .line 636
    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catchall_39
    move-exception p0

    goto :goto_4d

    .line 639
    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyController;->isWakeLockHeld()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 640
    const-string v1, "clearTransaction:checking wakelock held and releasing"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 641
    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 643
    :cond_4b
    monitor-exit v0

    return-void

    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_a .. :try_end_4e} :catchall_39

    throw p0
.end method

.method private greylist-max-r completeRadioCapabilityTransaction()V
    .registers 6

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishRadioCapabilityResponse: success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 590
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6c

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    :goto_22
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v2

    if-ge v1, v3, :cond_54

    .line 593
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioAccessFamily["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 595
    new-instance v3, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v3, v1, v2}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    .line 596
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 598
    :cond_54
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    const-string v2, "rafs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 606
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    goto :goto_91

    .line 608
    :cond_6c
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 611
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    new-array v2, v2, [Landroid/telephony/RadioAccessFamily;

    .line 612
    :goto_7a
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v1, v3, :cond_8d

    .line 613
    new-instance v3, Landroid/telephony/RadioAccessFamily;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v4, v1

    invoke-direct {v3, v1, v4}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 615
    :cond_8d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    move-object v1, v0

    .line 620
    :goto_91
    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z
    .registers 14

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 248
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xafc8

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v1

    .line 252
    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioCapability: new request session id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 254
    :goto_34
    array-length v0, p1

    const/4 v2, 0x1

    if-ge v3, v0, :cond_de

    .line 255
    aget-object v0, p1, v3

    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v5

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioCapability: phoneId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status=STARTING"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aput v2, v0, v5

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    aput v2, v0, v5

    .line 259
    aget-object v0, p1, v3

    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v0

    .line 263
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aput v0, v2, v5

    .line 265
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 268
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->getLogicalModemIdFromRaf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioCapability: mOldRadioAccessFamily["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v2, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioCapability: mNewRadioAccessFamily["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v2, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 273
    iget v6, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v8, v0, v5

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    aget-object v9, v0, v5

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v7, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    add-int/lit8 v3, v3, 0x1

    move-object p0, v4

    goto/16 :goto_34

    :catchall_db
    move-exception v0

    move-object p0, v0

    goto :goto_e0

    .line 282
    :cond_de
    monitor-exit v1

    return v2

    :goto_e0
    monitor-exit v1
    :try_end_e1
    .catchall {:try_start_1b .. :try_end_e1} :catchall_db

    throw p0
.end method

.method public static greylist-max-r getInstance()Lcom/android/internal/telephony/ProxyController;
    .registers 1

    .line 129
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/ProxyController;
    .registers 3

    .line 121
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    if-nez v0, :cond_b

    .line 122
    new-instance v0, Lcom/android/internal/telephony/ProxyController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/ProxyController;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 124
    :cond_b
    sget-object p0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object p0
.end method

.method private blacklist getLogicalModemIdFromRaf(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 711
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 712
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v1

    if-ne v1, p1, :cond_17

    .line 713
    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist issueFinish(I)V
    .registers 12

    .line 560
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v1

    const/4 v0, 0x0

    move v3, v0

    .line 561
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    if-ge v3, v0, :cond_88

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueFinish: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTransactionFailed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 564
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 569
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_43

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v4, v3

    :goto_3e
    move v6, v4

    goto :goto_48

    :catchall_40
    move-exception v0

    move-object p0, v0

    goto :goto_8a

    .line 570
    :cond_43
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v4, v4, v3

    goto :goto_3e

    :goto_48
    if-eqz v0, :cond_50

    .line 571
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    aget-object v4, v4, v3

    :goto_4e
    move-object v7, v4

    goto :goto_55

    .line 572
    :cond_50
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    aget-object v4, v4, v3

    goto :goto_4e

    :goto_55
    if-eqz v0, :cond_58

    const/4 v2, 0x2

    :cond_58
    move v8, v2

    const/4 v9, 0x4

    const/4 v5, 0x4

    move-object v2, p0

    move v4, p1

    .line 565
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 576
    iget-boolean p0, v2, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz p0, :cond_82

    .line 577
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "issueFinish: phoneId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status: FAIL"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 579
    iget-object p0, v2, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 p1, 0x5

    aput p1, p0, v3

    :cond_82
    add-int/lit8 v3, v3, 0x1

    move-object p0, v2

    move p1, v4

    goto/16 :goto_5

    .line 582
    :cond_88
    monitor-exit v1

    return-void

    :goto_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_5 .. :try_end_8b} :catchall_40

    throw p0
.end method

.method private greylist-max-r logd(Ljava/lang/String;)V
    .registers 2

    .line 722
    const-string p0, "ProxyController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 726
    const-string p0, "ProxyController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onApplyRadioCapabilityResponse(Landroid/os/Message;)V
    .registers 5

    .line 440
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    if-eqz v0, :cond_89

    .line 441
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v1, v2, :cond_13

    goto :goto_89

    .line 446
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplyRadioCapabilityResponse: rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 447
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_74

    .line 448
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter p1

    .line 449
    :try_start_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplyRadioCapabilityResponse: Error response session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplyRadioCapabilityResponse: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status=FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x5

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 453
    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 454
    monitor-exit p1

    return-void

    :catchall_71
    move-exception p0

    monitor-exit p1
    :try_end_73
    .catchall {:try_start_32 .. :try_end_73} :catchall_71

    throw p0

    .line 456
    :cond_74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onApplyRadioCapabilityResponse: Valid start expecting notification rc="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void

    .line 442
    :cond_89
    :goto_89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onApplyRadioCapabilityResponse: Ignore session="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rc="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onMultiSimConfigChanged()V
    .registers 6

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    .line 325
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 328
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    array-length v1, v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    .line 329
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    .line 330
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    .line 331
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    .line 332
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    .line 335
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 338
    :goto_45
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v1

    if-ge v0, v2, :cond_56

    .line 339
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_56
    return-void
.end method

.method private blacklist onNotificationRadioCapabilityChanged(Landroid/os/Message;)V
    .registers 7

    .line 465
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    if-eqz v0, :cond_dc

    .line 466
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v1, v2, :cond_14

    goto/16 :goto_dc

    .line 471
    :cond_14
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v1

    .line 472
    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationRadioCapabilityChanged: rc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v3, :cond_56

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rc="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 477
    monitor-exit v1

    return-void

    :catchall_53
    move-exception p0

    goto/16 :goto_da

    .line 480
    :cond_56
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v2

    .line 481
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x1

    if-nez p1, :cond_96

    .line 482
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_6b

    goto :goto_96

    .line 487
    :cond_6b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status=SUCCESS"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 488
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x4

    aput v4, p1, v2

    .line 490
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onRadioCapChanged(I)V

    .line 491
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, p1, v2

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;Z)V

    goto :goto_b6

    .line 483
    :cond_96
    :goto_96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " status=FAIL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 484
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v0, 0x5

    aput v0, p1, v2

    .line 485
    iput-boolean v3, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 494
    :goto_b6
    iget p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez p1, :cond_d8

    .line 496
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNotificationRadioCapabilityChanged: APPLY URC success="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 498
    iget p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V

    .line 500
    :cond_d8
    monitor-exit v1

    return-void

    :goto_da
    monitor-exit v1
    :try_end_db
    .catchall {:try_start_17 .. :try_end_db} :catchall_53

    throw p0

    .line 467
    :cond_dc
    :goto_dc
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rc="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onStartRadioCapabilityResponse(Landroid/os/Message;)V
    .registers 12

    .line 349
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v1

    .line 350
    :try_start_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 354
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5f

    .line 356
    instance-of v5, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_21

    .line 357
    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 358
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 359
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v5, :cond_21

    move v2, v4

    goto :goto_22

    :catchall_1d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_15d

    :cond_21
    move v2, v3

    .line 363
    :goto_22
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-eq v5, v4, :cond_2e

    if-eqz v2, :cond_5f

    .line 365
    :cond_2e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse got exception="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 366
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 367
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 373
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 374
    monitor-exit v1

    return-void

    .line 377
    :cond_5f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/RadioCapability;

    .line 380
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_95

    if-eqz p1, :cond_75

    .line 381
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v5, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v5, :cond_95

    .line 382
    :cond_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: Ignore session="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 384
    monitor-exit v1

    return-void

    .line 386
    :cond_95
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 389
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_b7

    .line 390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse got exception="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 394
    iput-boolean v4, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    goto :goto_d9

    .line 396
    :cond_b7
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result p1

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status=STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x2

    aput v2, v0, p1

    .line 401
    :goto_d9
    iget p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez p1, :cond_15b

    .line 402
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    array-length v2, v0

    move v5, v3

    :goto_e9
    if-ge v5, v2, :cond_ff

    aget-object v6, v0, v5

    .line 404
    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_fc

    .line 405
    iput-boolean v4, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 406
    const-string v6, "ProxyController"

    const-string v7, "ERROR: sending down the same id for different phones"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fc
    add-int/lit8 v5, v5, 0x1

    goto :goto_e9

    .line 409
    :cond_ff
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartRadioCapabilityResponse: success="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 410
    iget-boolean p1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz p1, :cond_120

    .line 413
    iget p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V

    goto :goto_15b

    .line 416
    :cond_120
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 417
    :goto_123
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length p1, p1

    if-ge v3, p1, :cond_15b

    .line 418
    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v6, p1, v3

    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    aget-object v7, p1, v3

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v5, 0x2

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 427
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status=APPLYING"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 428
    iget-object p0, v2, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 p1, 0x3

    aput p1, p0, v3

    add-int/lit8 v3, v3, 0x1

    move-object p0, v2

    goto :goto_123

    .line 432
    :cond_15b
    :goto_15b
    monitor-exit v1

    return-void

    :goto_15d
    monitor-exit v1
    :try_end_15e
    .catchall {:try_start_3 .. :try_end_15e} :catchall_1d

    throw p0
.end method

.method private blacklist onTimeoutRadioCapability(Landroid/os/Message;)V
    .registers 6

    .line 532
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v0, v1, :cond_27

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioCapability timeout: Ignore msg.arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!= mRadioCapabilitySessionId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void

    .line 538
    :cond_27
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter p1

    const/4 v0, 0x0

    move v1, v0

    .line 540
    :goto_2c
    :try_start_2c
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    if-ge v1, v2, :cond_56

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RadioCapability timeout: mSetRadioAccessFamilyStatus["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :catchall_54
    move-exception p0

    goto :goto_68

    .line 547
    :cond_56
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 550
    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 554
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V

    .line 555
    monitor-exit p1

    return-void

    :goto_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_2c .. :try_end_69} :catchall_54

    throw p0
.end method

.method private blacklist resetRadioAccessFamilyStatusCounter()V
    .registers 2

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    return-void
.end method

.method private greylist-max-r sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    .registers 15

    .line 665
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 667
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, p1, v1

    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    .line 668
    invoke-virtual {p0, p7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 667
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/Phone;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public blacklist getMaxRafSupported()I
    .registers 7

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 678
    :goto_8
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v5, v4

    if-ge v1, v5, :cond_27

    .line 679
    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    aput v4, v0, v1

    if-ge v3, v4, :cond_24

    .line 682
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    move v3, v4

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_27
    return v2
.end method

.method public blacklist getMinRafSupported()I
    .registers 7

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 696
    :goto_8
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v5, v4

    if-ge v1, v5, :cond_29

    .line 697
    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    aput v4, v0, v1

    if-eqz v3, :cond_1d

    if-le v3, v4, :cond_26

    .line 700
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    move v3, v4

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_29
    return v2
.end method

.method public blacklist getRadioAccessFamily(I)I
    .registers 3

    .line 179
    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, p0

    if-lt p1, v0, :cond_7

    const/4 p0, 0x0

    return p0

    .line 182
    :cond_7
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result p0

    return p0
.end method

.method public blacklist getSmsController()Lcom/android/internal/telephony/SmsController;
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController;->mSmsController:Lcom/android/internal/telephony/SmsController;

    return-object p0
.end method

.method public blacklist isWakeLockHeld()Z
    .registers 2

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    .line 654
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 655
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method blacklist onFinishRadioCapabilityResponse(Landroid/os/Message;)V
    .registers 6

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    .line 509
    :try_start_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/os/AsyncResult;

    .line 510
    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/RadioCapability;

    .line 513
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3f

    if-eqz p1, :cond_1f

    .line 514
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v3, :cond_3f

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_7c

    .line 515
    :cond_1f
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishRadioCapabilityResponse: Ignore session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 517
    monitor-exit v0

    return-void

    .line 519
    :cond_3f
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_59

    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishRadioCapabilityResponse got exception="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 522
    :cond_59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onFinishRadioCapabilityResponse mRadioAccessFamilyStatusCounter="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 524
    iget p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez p1, :cond_7a

    .line 526
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 528
    :cond_7a
    monitor-exit v0

    return-void

    :goto_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_1d

    throw p0
.end method

.method public blacklist setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .registers 8

    .line 195
    array-length v0, p1

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    .line 200
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    move v1, v2

    .line 201
    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v1, v3, :cond_37

    .line 202
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v3, v3, v1

    if-eqz v3, :cond_34

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioCapability: Phone["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] is not idle. Rejecting request."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V

    .line 205
    monitor-exit v0

    return v2

    :catchall_32
    move-exception p0

    goto :goto_6c

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 208
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_32

    const/4 v0, 0x1

    move v3, v0

    move v1, v2

    .line 212
    :goto_3b
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v5, v4

    if-ge v1, v5, :cond_52

    .line 213
    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v4

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v5

    if-eq v4, v5, :cond_4f

    move v3, v2

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_52
    if-eqz v3, :cond_5a

    .line 219
    const-string p1, "setRadioCapability: Already in requested configuration, nothing to do."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return v0

    .line 225
    :cond_5a
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 228
    const-string v0, "Acquiring wake lock for setting radio capability"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    move-result p0

    return p0

    .line 208
    :goto_6c
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_32

    throw p0
.end method
