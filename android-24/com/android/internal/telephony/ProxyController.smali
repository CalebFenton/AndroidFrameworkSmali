.class public Lcom/android/internal/telephony/ProxyController;
.super Ljava/lang/Object;
.source "ProxyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ProxyController$1;
    }
.end annotation


# static fields
.field private static final EVENT_APPLY_RC_RESPONSE:I = 0x3

.field private static final EVENT_FINISH_RC_RESPONSE:I = 0x4

.field private static final EVENT_NOTIFICATION_RC_CHANGED:I = 0x1

.field private static final EVENT_START_RC_RESPONSE:I = 0x2

.field private static final EVENT_TIMEOUT:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "ProxyController"

.field private static final SET_RC_STATUS_APPLYING:I = 0x3

.field private static final SET_RC_STATUS_FAIL:I = 0x5

.field private static final SET_RC_STATUS_IDLE:I = 0x0

.field private static final SET_RC_STATUS_STARTED:I = 0x2

.field private static final SET_RC_STATUS_STARTING:I = 0x1

.field private static final SET_RC_STATUS_SUCCESS:I = 0x4

.field private static final SET_RC_TIMEOUT_WAITING_MSEC:I = 0xafc8

.field private static sProxyController:Lcom/android/internal/telephony/ProxyController;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentLogicalModemIds:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewLogicalModemIds:[Ljava/lang/String;

.field private mNewRadioAccessFamily:[I

.field private mOldRadioAccessFamily:[I

.field private mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

.field private mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

.field private mPhones:[Lcom/android/internal/telephony/Phone;

.field private mRadioAccessFamilyStatusCounter:I

.field private mRadioCapabilitySessionId:I

.field private mSetRadioAccessFamilyStatus:[I

.field private mTransactionFailed:Z

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

.field private mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

.field private mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onApplyRadioCapabilityResponse(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onNotificationRadioCapabilityChanged(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onStartRadioCapabilityResponse(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onTimeoutRadioCapability(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneSwitcher;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "phoneSwitcher"    # Lcom/android/internal/telephony/PhoneSwitcher;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 90
    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@7
    .line 96
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    #@9
    new-instance v3, Ljava/util/Random;

    #@b
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    #@e
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    #@11
    move-result v3

    #@12
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@15
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@17
    .line 304
    new-instance v2, Lcom/android/internal/telephony/ProxyController$1;

    #@19
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ProxyController$1;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    #@1c
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    #@1e
    .line 123
    const-string/jumbo v2, "Constructor - Enter"

    #@21
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@24
    .line 125
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    #@26
    .line 126
    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@28
    .line 127
    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2a
    .line 128
    iput-object p4, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    #@2c
    .line 129
    iput-object p5, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    #@2e
    .line 131
    new-instance v2, Lcom/android/internal/telephony/UiccPhoneBookController;

    #@30
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@32
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/UiccPhoneBookController;-><init>([Lcom/android/internal/telephony/Phone;)V

    #@35
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

    #@37
    .line 132
    new-instance v2, Lcom/android/internal/telephony/PhoneSubInfoController;

    #@39
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    #@3b
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@3d
    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/PhoneSubInfoController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    #@40
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

    #@42
    .line 133
    new-instance v2, Lcom/android/internal/telephony/UiccSmsController;

    #@44
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@46
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/UiccSmsController;-><init>([Lcom/android/internal/telephony/Phone;)V

    #@49
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

    #@4b
    .line 134
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@4d
    array-length v2, v2

    #@4e
    new-array v2, v2, [I

    #@50
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@52
    .line 135
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@54
    array-length v2, v2

    #@55
    new-array v2, v2, [I

    #@57
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    #@59
    .line 136
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@5b
    array-length v2, v2

    #@5c
    new-array v2, v2, [I

    #@5e
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@60
    .line 137
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@62
    array-length v2, v2

    #@63
    new-array v2, v2, [Ljava/lang/String;

    #@65
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    #@67
    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@69
    array-length v2, v2

    #@6a
    new-array v2, v2, [Ljava/lang/String;

    #@6c
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    #@6e
    .line 141
    const-string/jumbo v2, "power"

    #@71
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@74
    move-result-object v1

    #@75
    check-cast v1, Landroid/os/PowerManager;

    #@77
    .line 142
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "ProxyController"

    #@7a
    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@7d
    move-result-object v2

    #@7e
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@80
    .line 143
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@82
    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@85
    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    #@88
    .line 147
    const/4 v0, 0x0

    #@89
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@8b
    array-length v2, v2

    #@8c
    if-ge v0, v2, :cond_0

    #@8e
    .line 148
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@90
    aget-object v2, v2, v0

    #@92
    .line 149
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    #@94
    const/4 v4, 0x0

    #@95
    .line 148
    invoke-virtual {v2, v3, v6, v4}, Lcom/android/internal/telephony/Phone;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@98
    .line 147
    add-int/lit8 v0, v0, 0x1

    #@9a
    goto :goto_0

    #@9b
    .line 151
    :cond_0
    const-string/jumbo v2, "Constructor - Exit"

    #@9e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@a1
    .line 122
    return-void
.end method

.method private clearTransaction()V
    .locals 4

    #@0
    .prologue
    .line 579
    const-string/jumbo v1, "clearTransaction"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@6
    .line 580
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@8
    monitor-enter v2

    #@9
    .line 581
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_0

    #@f
    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "clearTransaction: phoneId="

    #@17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v3, " status=IDLE"

    #@22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@2d
    .line 583
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@2f
    const/4 v3, 0x0

    #@30
    aput v3, v1, v0

    #@32
    .line 584
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@34
    const/4 v3, 0x0

    #@35
    aput v3, v1, v0

    #@37
    .line 585
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    #@39
    const/4 v3, 0x0

    #@3a
    aput v3, v1, v0

    #@3c
    .line 586
    const/4 v1, 0x0

    #@3d
    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@3f
    .line 581
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@44
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_1

    #@4a
    .line 590
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4c
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    :cond_1
    monitor-exit v2

    #@50
    .line 578
    return-void

    #@51
    .line 580
    :catchall_0
    move-exception v1

    #@52
    monitor-exit v2

    #@53
    throw v1
.end method

.method private completeRadioCapabilityTransaction()V
    .locals 10

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 543
    new-instance v7, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v9, "onFinishRadioCapabilityResponse: success="

    #@9
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v9

    #@d
    iget-boolean v7, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@f
    if-eqz v7, :cond_0

    #@11
    move v7, v8

    #@12
    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v7

    #@1a
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@1d
    .line 544
    iget-boolean v7, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@1f
    if-nez v7, :cond_2

    #@21
    .line 545
    new-instance v3, Ljava/util/ArrayList;

    #@23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@26
    .line 546
    .local v3, "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@29
    array-length v7, v7

    #@2a
    if-ge v0, v7, :cond_1

    #@2c
    .line 547
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@2e
    aget-object v7, v7, v0

    #@30
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    #@33
    move-result v5

    #@34
    .line 548
    .local v5, "raf":I
    new-instance v7, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v8, "radioAccessFamily["

    #@3c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v7

    #@44
    const-string/jumbo v8, "]="

    #@47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@56
    .line 549
    new-instance v4, Landroid/telephony/RadioAccessFamily;

    #@58
    invoke-direct {v4, v0, v5}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    #@5b
    .line 550
    .local v4, "phoneRC":Landroid/telephony/RadioAccessFamily;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5e
    .line 546
    add-int/lit8 v0, v0, 0x1

    #@60
    goto :goto_1

    #@61
    .line 543
    .end local v0    # "i":I
    .end local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    .end local v4    # "phoneRC":Landroid/telephony/RadioAccessFamily;
    .end local v5    # "raf":I
    :cond_0
    const/4 v7, 0x1

    #@62
    goto :goto_0

    #@63
    .line 552
    .restart local v0    # "i":I
    .restart local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :cond_1
    new-instance v1, Landroid/content/Intent;

    #@65
    const-string/jumbo v7, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    #@68
    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6b
    .line 553
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "rafs"

    #@6e
    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@71
    .line 557
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@73
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@76
    move-result v7

    #@77
    iput v7, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@79
    .line 560
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    #@7c
    .line 574
    .end local v0    # "i":I
    .end local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    #@7e
    const-string/jumbo v8, "android.permission.READ_PHONE_STATE"

    #@81
    invoke-virtual {v7, v1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@84
    .line 540
    return-void

    #@85
    .line 562
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    #@87
    const-string/jumbo v7, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    #@8a
    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8d
    .line 565
    .restart local v1    # "intent":Landroid/content/Intent;
    iput-boolean v8, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@8f
    .line 566
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@91
    array-length v7, v7

    #@92
    new-array v6, v7, [Landroid/telephony/RadioAccessFamily;

    #@94
    .line 567
    .local v6, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v2, 0x0

    #@95
    .local v2, "phoneId":I
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@97
    array-length v7, v7

    #@98
    if-ge v2, v7, :cond_3

    #@9a
    .line 568
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    #@9c
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@9e
    aget v8, v8, v2

    #@a0
    invoke-direct {v7, v2, v8}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    #@a3
    aput-object v7, v6, v2

    #@a5
    .line 567
    add-int/lit8 v2, v2, 0x1

    #@a7
    goto :goto_3

    #@a8
    .line 570
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    #@ab
    goto :goto_2
.end method

.method private doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z
    .locals 13
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v12, 0x1

    #@2
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@a
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    #@c
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@e
    const/4 v3, 0x5

    #@f
    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@12
    move-result-object v9

    #@13
    .line 266
    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    #@15
    const-wide/32 v2, 0xafc8

    #@18
    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1b
    .line 268
    iget-object v11, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@1d
    monitor-enter v11

    #@1e
    .line 269
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "setRadioCapability: new request session id="

    #@26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@37
    .line 270
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    #@3a
    .line 271
    const/4 v8, 0x0

    #@3b
    .local v8, "i":I
    :goto_0
    array-length v0, p1

    #@3c
    if-ge v8, v0, :cond_0

    #@3e
    .line 272
    aget-object v0, p1, v8

    #@40
    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    #@43
    move-result v1

    #@44
    .line 273
    .local v1, "phoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, "setRadioCapability: phoneId="

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    const-string/jumbo v2, " status=STARTING"

    #@57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@62
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@64
    const/4 v2, 0x1

    #@65
    aput v2, v0, v1

    #@67
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@69
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@6b
    aget-object v2, v2, v1

    #@6d
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    #@70
    move-result v2

    #@71
    aput v2, v0, v1

    #@73
    .line 276
    aget-object v0, p1, v8

    #@75
    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    #@78
    move-result v10

    #@79
    .line 280
    .local v10, "requestedRaf":I
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    #@7b
    aput v10, v0, v1

    #@7d
    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    #@7f
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@81
    aget-object v2, v2, v1

    #@83
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    aput-object v2, v0, v1

    #@89
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    #@8b
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->getLogicalModemIdFromRaf(I)Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    aput-object v2, v0, v1

    #@91
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v2, "setRadioCapability: mOldRadioAccessFamily["

    #@99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    const-string/jumbo v2, "]="

    #@a4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    .line 287
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@aa
    aget v2, v2, v1

    #@ac
    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v0

    #@b4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@b7
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v2, "setRadioCapability: mNewRadioAccessFamily["

    #@bf
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v0

    #@c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v0

    #@c7
    const-string/jumbo v2, "]="

    #@ca
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    .line 289
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    #@d0
    aget v2, v2, v1

    #@d2
    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v0

    #@da
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@dd
    .line 292
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@df
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@e1
    aget v4, v0, v1

    #@e3
    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    #@e5
    aget-object v5, v0, v1

    #@e7
    .line 293
    const/4 v3, 0x1

    #@e8
    .line 296
    const/4 v6, 0x0

    #@e9
    .line 297
    const/4 v7, 0x2

    #@ea
    move-object v0, p0

    #@eb
    .line 290
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ee
    .line 271
    add-int/lit8 v8, v8, 0x1

    #@f0
    goto/16 :goto_0

    #@f2
    .end local v1    # "phoneId":I
    .end local v10    # "requestedRaf":I
    :cond_0
    monitor-exit v11

    #@f3
    .line 301
    return v12

    #@f4
    .line 268
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    #@f5
    monitor-exit v11

    #@f6
    throw v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/ProxyController;
    .locals 1

    #@0
    .prologue
    .line 118
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    #@2
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneSwitcher;)Lcom/android/internal/telephony/ProxyController;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "ps"    # Lcom/android/internal/telephony/PhoneSwitcher;

    #@0
    .prologue
    .line 111
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 112
    new-instance v0, Lcom/android/internal/telephony/ProxyController;

    #@6
    move-object v1, p0

    #@7
    move-object v2, p1

    #@8
    move-object v3, p2

    #@9
    move-object v4, p3

    #@a
    move-object v5, p4

    #@b
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ProxyController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneSwitcher;)V

    #@e
    sput-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    #@10
    .line 114
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    #@12
    return-object v0
.end method

.method private getLogicalModemIdFromRaf(I)Ljava/lang/String;
    .locals 3
    .param p1, "raf"    # I

    #@0
    .prologue
    .line 645
    const/4 v0, 0x0

    #@1
    .line 647
    .local v0, "modemUuid":Ljava/lang/String;
    const/4 v1, 0x0

    #@2
    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@4
    array-length v2, v2

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 648
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@9
    aget-object v2, v2, v1

    #@b
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    #@e
    move-result v2

    #@f
    if-ne v2, p1, :cond_1

    #@11
    .line 649
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@13
    aget-object v2, v2, v1

    #@15
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 653
    .end local v0    # "modemUuid":Ljava/lang/String;
    :cond_0
    return-object v0

    #@1a
    .line 647
    .restart local v0    # "modemUuid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0
.end method

.method private issueFinish(I)V
    .locals 9
    .param p1, "sessionId"    # I

    #@0
    .prologue
    .line 517
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@2
    monitor-enter v8

    #@3
    .line 518
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@6
    array-length v0, v0

    #@7
    if-ge v1, v0, :cond_2

    #@9
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "issueFinish: phoneId="

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v2, " sessionId="

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    .line 520
    const-string/jumbo v2, " mTransactionFailed="

    #@27
    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 520
    iget-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@2d
    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@38
    .line 521
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@3a
    add-int/lit8 v0, v0, 0x1

    #@3c
    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@3e
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@40
    aget v4, v0, v1

    #@42
    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    #@44
    aget-object v5, v0, v1

    #@46
    .line 528
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@48
    if-eqz v0, :cond_1

    #@4a
    const/4 v6, 0x2

    #@4b
    .line 525
    :goto_1
    const/4 v3, 0x4

    #@4c
    .line 530
    const/4 v7, 0x4

    #@4d
    move-object v0, p0

    #@4e
    move v2, p1

    #@4f
    .line 522
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    #@52
    .line 531
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@54
    if-eqz v0, :cond_0

    #@56
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v2, "issueFinish: phoneId: "

    #@5e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    const-string/jumbo v2, " status: FAIL"

    #@69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@74
    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@76
    const/4 v2, 0x5

    #@77
    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@79
    .line 518
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@7b
    goto :goto_0

    #@7c
    .line 529
    :cond_1
    const/4 v6, 0x1

    #@7d
    goto :goto_1

    #@7e
    :cond_2
    monitor-exit v8

    #@7f
    .line 515
    return-void

    #@80
    .line 517
    :catchall_0
    move-exception v0

    #@81
    monitor-exit v8

    #@82
    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 657
    const-string/jumbo v0, "ProxyController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 656
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 661
    const-string/jumbo v0, "ProxyController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 660
    return-void
.end method

.method private onApplyRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 408
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v2, Landroid/os/AsyncResult;

    #@4
    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@6
    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    #@8
    .line 409
    .local v1, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    #@d
    move-result v2

    #@e
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@10
    if-eq v2, v3, :cond_1

    #@12
    .line 410
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "onApplyRadioCapabilityResponse: Ignore session="

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 411
    const-string/jumbo v3, " rc="

    #@27
    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@36
    .line 412
    return-void

    #@37
    .line 414
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "onApplyRadioCapabilityResponse: rc="

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@4e
    .line 415
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@50
    check-cast v2, Landroid/os/AsyncResult;

    #@52
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@54
    if-eqz v2, :cond_2

    #@56
    .line 416
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@58
    monitor-enter v3

    #@59
    .line 417
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v4, "onApplyRadioCapabilityResponse: Error response session="

    #@61
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    #@68
    move-result v4

    #@69
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@74
    .line 418
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    #@77
    move-result v0

    #@78
    .line 419
    .local v0, "id":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v4, "onApplyRadioCapabilityResponse: phoneId="

    #@80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    const-string/jumbo v4, " status=FAIL"

    #@8b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v2

    #@93
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@96
    .line 420
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@98
    const/4 v4, 0x5

    #@99
    aput v4, v2, v0

    #@9b
    .line 421
    const/4 v2, 0x1

    #@9c
    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9e
    monitor-exit v3

    #@9f
    .line 407
    .end local v0    # "id":I
    :goto_0
    return-void

    #@a0
    .line 416
    :catchall_0
    move-exception v2

    #@a1
    monitor-exit v3

    #@a2
    throw v2

    #@a3
    .line 424
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v3, "onApplyRadioCapabilityResponse: Valid start expecting notification rc="

    #@ab
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v2

    #@b3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v2

    #@b7
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@ba
    goto :goto_0
.end method

.method private onNotificationRadioCapabilityChanged(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 433
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v2, Landroid/os/AsyncResult;

    #@4
    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@6
    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    #@8
    .line 434
    .local v1, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    #@d
    move-result v2

    #@e
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@10
    if-eq v2, v3, :cond_1

    #@12
    .line 435
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "onNotificationRadioCapabilityChanged: Ignore session="

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 436
    const-string/jumbo v3, " rc="

    #@27
    .line 435
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@36
    .line 437
    return-void

    #@37
    .line 439
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@39
    monitor-enter v3

    #@3a
    .line 440
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: rc="

    #@42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@51
    .line 442
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    #@54
    move-result v2

    #@55
    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@57
    if-eq v2, v4, :cond_2

    #@59
    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: Ignore session="

    #@61
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    .line 444
    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@67
    .line 443
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    .line 444
    const-string/jumbo v4, " rc="

    #@6e
    .line 443
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7d
    monitor-exit v3

    #@7e
    .line 445
    return-void

    #@7f
    .line 448
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    #@82
    move-result v0

    #@83
    .line 449
    .local v0, "id":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@85
    check-cast v2, Landroid/os/AsyncResult;

    #@87
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@89
    if-nez v2, :cond_3

    #@8b
    .line 450
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    #@8e
    move-result v2

    #@8f
    const/4 v4, 0x2

    #@90
    if-ne v2, v4, :cond_5

    #@92
    .line 451
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: phoneId="

    #@9a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    const-string/jumbo v4, " status=FAIL"

    #@a5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@b0
    .line 452
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@b2
    const/4 v4, 0x5

    #@b3
    aput v4, v2, v0

    #@b5
    .line 453
    const/4 v2, 0x1

    #@b6
    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@b8
    .line 462
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@ba
    add-int/lit8 v2, v2, -0x1

    #@bc
    iput v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@be
    .line 463
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@c0
    if-nez v2, :cond_4

    #@c2
    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: APPLY URC success="

    #@ca
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v2

    #@ce
    .line 465
    iget-boolean v4, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@d0
    .line 464
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v2

    #@d4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v2

    #@d8
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@db
    .line 466
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@dd
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e0
    :cond_4
    monitor-exit v3

    #@e1
    .line 432
    return-void

    #@e2
    .line 455
    :cond_5
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: phoneId="

    #@ea
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v2

    #@ee
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v2

    #@f2
    const-string/jumbo v4, " status=SUCCESS"

    #@f5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v2

    #@f9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v2

    #@fd
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@100
    .line 456
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@102
    const/4 v4, 0x4

    #@103
    aput v4, v2, v0

    #@105
    .line 458
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    #@107
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->resendDataAllowed(I)V

    #@10a
    .line 459
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@10c
    aget-object v2, v2, v0

    #@10e
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@111
    goto :goto_0

    #@112
    .line 439
    .end local v0    # "id":I
    :catchall_0
    move-exception v2

    #@113
    monitor-exit v3

    #@114
    throw v2
.end method

.method private onStartRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 340
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@4
    monitor-enter v15

    #@5
    .line 341
    :try_start_0
    move-object/from16 v0, p1

    #@7
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v9, Landroid/os/AsyncResult;

    #@b
    .line 342
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "onStartRadioCapabilityResponse got exception="

    #@17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@2a
    .line 345
    move-object/from16 v0, p0

    #@2c
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2e
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@31
    move-result v1

    #@32
    move-object/from16 v0, p0

    #@34
    iput v1, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@36
    .line 346
    new-instance v11, Landroid/content/Intent;

    #@38
    const-string/jumbo v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    #@3b
    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3e
    .line 347
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@40
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    #@42
    invoke-virtual {v1, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@45
    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    monitor-exit v15

    #@49
    .line 349
    return-void

    #@4a
    .line 351
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    #@4c
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e
    check-cast v1, Landroid/os/AsyncResult;

    #@50
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@52
    check-cast v14, Lcom/android/internal/telephony/RadioCapability;

    #@54
    .line 352
    .local v14, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v14, :cond_1

    #@56
    invoke-virtual {v14}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    #@59
    move-result v1

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget v3, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@5e
    if-eq v1, v3, :cond_2

    #@60
    .line 353
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v3, "onStartRadioCapabilityResponse: Ignore session="

    #@68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget v3, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    .line 354
    const-string/jumbo v3, " rc="

    #@77
    .line 353
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    move-object/from16 v0, p0

    #@85
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@88
    monitor-exit v15

    #@89
    .line 355
    return-void

    #@8a
    .line 357
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    #@8c
    iget v1, v0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@8e
    add-int/lit8 v1, v1, -0x1

    #@90
    move-object/from16 v0, p0

    #@92
    iput v1, v0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@94
    .line 358
    invoke-virtual {v14}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    #@97
    move-result v10

    #@98
    .line 359
    .local v10, "id":I
    move-object/from16 v0, p1

    #@9a
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9c
    check-cast v1, Landroid/os/AsyncResult;

    #@9e
    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@a0
    if-eqz v1, :cond_4

    #@a2
    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v3, "onStartRadioCapabilityResponse: Error response session="

    #@aa
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {v14}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    #@b1
    move-result v3

    #@b2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v1

    #@ba
    move-object/from16 v0, p0

    #@bc
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@bf
    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v3, "onStartRadioCapabilityResponse: phoneId="

    #@c7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v1

    #@cb
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v1

    #@cf
    const-string/jumbo v3, " status=FAIL"

    #@d2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v1

    #@da
    move-object/from16 v0, p0

    #@dc
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@df
    .line 362
    move-object/from16 v0, p0

    #@e1
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@e3
    const/4 v3, 0x5

    #@e4
    aput v3, v1, v10

    #@e6
    .line 363
    const/4 v1, 0x1

    #@e7
    move-object/from16 v0, p0

    #@e9
    iput-boolean v1, v0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@eb
    .line 369
    :goto_0
    move-object/from16 v0, p0

    #@ed
    iget v1, v0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@ef
    if-nez v1, :cond_6

    #@f1
    .line 370
    new-instance v13, Ljava/util/HashSet;

    #@f3
    move-object/from16 v0, p0

    #@f5
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    #@f7
    array-length v1, v1

    #@f8
    invoke-direct {v13, v1}, Ljava/util/HashSet;-><init>(I)V

    #@fb
    .line 371
    .local v13, "modemsInUse":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@fd
    iget-object v3, v0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    #@ff
    const/4 v1, 0x0

    #@100
    array-length v4, v3

    #@101
    :goto_1
    if-ge v1, v4, :cond_5

    #@103
    aget-object v12, v3, v1

    #@105
    .line 372
    .local v12, "modemId":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@108
    move-result v5

    #@109
    if-nez v5, :cond_3

    #@10b
    .line 373
    const/4 v5, 0x1

    #@10c
    move-object/from16 v0, p0

    #@10e
    iput-boolean v5, v0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@110
    .line 374
    const-string/jumbo v5, "ProxyController"

    #@113
    const-string/jumbo v6, "ERROR: sending down the same id for different phones"

    #@116
    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@119
    .line 371
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@11b
    goto :goto_1

    #@11c
    .line 365
    .end local v12    # "modemId":Ljava/lang/String;
    .end local v13    # "modemsInUse":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    const-string/jumbo v3, "onStartRadioCapabilityResponse: phoneId="

    #@124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v1

    #@128
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v1

    #@12c
    const-string/jumbo v3, " status=STARTED"

    #@12f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v1

    #@133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v1

    #@137
    move-object/from16 v0, p0

    #@139
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@13c
    .line 366
    move-object/from16 v0, p0

    #@13e
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@140
    const/4 v3, 0x2

    #@141
    aput v3, v1, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@143
    goto :goto_0

    #@144
    .line 340
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "id":I
    .end local v14    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :catchall_0
    move-exception v1

    #@145
    monitor-exit v15

    #@146
    throw v1

    #@147
    .line 377
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    .restart local v10    # "id":I
    .restart local v13    # "modemsInUse":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v14    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :cond_5
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v3, "onStartRadioCapabilityResponse: success="

    #@14f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v3

    #@153
    move-object/from16 v0, p0

    #@155
    iget-boolean v1, v0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@157
    if-eqz v1, :cond_7

    #@159
    const/4 v1, 0x0

    #@15a
    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v1

    #@15e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@161
    move-result-object v1

    #@162
    move-object/from16 v0, p0

    #@164
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@167
    .line 378
    move-object/from16 v0, p0

    #@169
    iget-boolean v1, v0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@16b
    if-eqz v1, :cond_8

    #@16d
    .line 381
    move-object/from16 v0, p0

    #@16f
    iget v1, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@171
    move-object/from16 v0, p0

    #@173
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@176
    .end local v13    # "modemsInUse":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_6
    monitor-exit v15

    #@177
    .line 339
    return-void

    #@178
    .line 377
    .restart local v13    # "modemsInUse":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    const/4 v1, 0x1

    #@179
    goto :goto_2

    #@17a
    .line 384
    :cond_8
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    #@17d
    .line 385
    const/4 v2, 0x0

    #@17e
    .local v2, "i":I
    :goto_3
    move-object/from16 v0, p0

    #@180
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@182
    array-length v1, v1

    #@183
    if-ge v2, v1, :cond_6

    #@185
    .line 388
    move-object/from16 v0, p0

    #@187
    iget v3, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@189
    .line 390
    move-object/from16 v0, p0

    #@18b
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    #@18d
    aget v5, v1, v2

    #@18f
    .line 391
    move-object/from16 v0, p0

    #@191
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    #@193
    aget-object v6, v1, v2

    #@195
    .line 389
    const/4 v4, 0x2

    #@196
    .line 392
    const/4 v7, 0x0

    #@197
    .line 393
    const/4 v8, 0x3

    #@198
    move-object/from16 v1, p0

    #@19a
    .line 386
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    #@19d
    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    #@19f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a2
    const-string/jumbo v3, "onStartRadioCapabilityResponse: phoneId="

    #@1a5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v1

    #@1a9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v1

    #@1ad
    const-string/jumbo v3, " status=APPLYING"

    #@1b0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v1

    #@1b4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b7
    move-result-object v1

    #@1b8
    move-object/from16 v0, p0

    #@1ba
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@1bd
    .line 396
    move-object/from16 v0, p0

    #@1bf
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@1c1
    const/4 v3, 0x3

    #@1c2
    aput v3, v1, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1c4
    .line 385
    add-int/lit8 v2, v2, 0x1

    #@1c6
    goto :goto_3
.end method

.method private onTimeoutRadioCapability(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 493
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@2
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@4
    if-eq v2, v3, :cond_0

    #@6
    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "RadioCapability timeout: Ignore msg.arg1="

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 495
    const-string/jumbo v3, "!= mRadioCapabilitySessionId="

    #@1b
    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 495
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@21
    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@2c
    .line 496
    return-void

    #@2d
    .line 499
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@2f
    monitor-enter v3

    #@30
    .line 501
    const/4 v0, 0x0

    #@31
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@33
    array-length v2, v2

    #@34
    if-ge v0, v2, :cond_1

    #@36
    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v4, "RadioCapability timeout: mSetRadioAccessFamilyStatus["

    #@3e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    const-string/jumbo v4, "]="

    #@49
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 503
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@4f
    aget v4, v4, v0

    #@51
    .line 502
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@5c
    .line 501
    add-int/lit8 v0, v0, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 508
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@61
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@64
    move-result v1

    #@65
    .line 510
    .local v1, "uniqueDifferentId":I
    const/4 v2, 0x1

    #@66
    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@68
    .line 511
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6b
    monitor-exit v3

    #@6c
    .line 492
    return-void

    #@6d
    .line 499
    .end local v1    # "uniqueDifferentId":I
    :catchall_0
    move-exception v2

    #@6e
    monitor-exit v3

    #@6f
    throw v2
.end method

.method private resetRadioAccessFamilyStatusCounter()V
    .locals 1

    #@0
    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@2
    array-length v0, v0

    #@3
    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@5
    .line 595
    return-void
.end method

.method private sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "rcPhase"    # I
    .param p4, "radioFamily"    # I
    .param p5, "logicalModemId"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "eventId"    # I

    #@0
    .prologue
    .line 601
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    move v6, p6

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    #@b
    .line 603
    .local v0, "requestRC":Lcom/android/internal/telephony/RadioCapability;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@d
    aget-object v1, v1, p1

    #@f
    .line 604
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    #@11
    invoke-virtual {v2, p7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@14
    move-result-object v2

    #@15
    .line 603
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    #@18
    .line 600
    return-void
.end method


# virtual methods
.method public disableDataConnectivity(ILandroid/os/Message;)V
    .locals 2
    .param p1, "sub"    # I
    .param p2, "dataCleanedUpMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@2
    aget-object v0, v0, p1

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/Phone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    #@8
    .line 163
    return-void
.end method

.method public enableDataConnectivity(I)V
    .locals 3
    .param p1, "sub"    # I

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@2
    aget-object v0, v0, p1

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    #@9
    .line 158
    return-void
.end method

.method public getMaxRafSupported()I
    .locals 5

    #@0
    .prologue
    .line 610
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@2
    array-length v4, v4

    #@3
    new-array v3, v4, [I

    #@5
    .line 611
    .local v3, "numRafSupported":[I
    const/4 v1, 0x0

    #@6
    .line 612
    .local v1, "maxNumRafBit":I
    const/4 v2, 0x1

    #@7
    .line 614
    .local v2, "maxRaf":I
    const/4 v0, 0x0

    #@8
    .local v0, "len":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@a
    array-length v4, v4

    #@b
    if-ge v0, v4, :cond_1

    #@d
    .line 615
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@f
    aget-object v4, v4, v0

    #@11
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    #@14
    move-result v4

    #@15
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    #@18
    move-result v4

    #@19
    aput v4, v3, v0

    #@1b
    .line 616
    aget v4, v3, v0

    #@1d
    if-ge v1, v4, :cond_0

    #@1f
    .line 617
    aget v1, v3, v0

    #@21
    .line 618
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@23
    aget-object v4, v4, v0

    #@25
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    #@28
    move-result v2

    #@29
    .line 614
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 622
    :cond_1
    return v2
.end method

.method public getMinRafSupported()I
    .locals 5

    #@0
    .prologue
    .line 628
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@2
    array-length v4, v4

    #@3
    new-array v3, v4, [I

    #@5
    .line 629
    .local v3, "numRafSupported":[I
    const/4 v1, 0x0

    #@6
    .line 630
    .local v1, "minNumRafBit":I
    const/4 v2, 0x1

    #@7
    .line 632
    .local v2, "minRaf":I
    const/4 v0, 0x0

    #@8
    .local v0, "len":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@a
    array-length v4, v4

    #@b
    if-ge v0, v4, :cond_2

    #@d
    .line 633
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@f
    aget-object v4, v4, v0

    #@11
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    #@14
    move-result v4

    #@15
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    #@18
    move-result v4

    #@19
    aput v4, v3, v0

    #@1b
    .line 634
    if-eqz v1, :cond_0

    #@1d
    aget v4, v3, v0

    #@1f
    if-le v1, v4, :cond_1

    #@21
    .line 635
    :cond_0
    aget v1, v3, v0

    #@23
    .line 636
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@25
    aget-object v4, v4, v0

    #@27
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    #@2a
    move-result v2

    #@2b
    .line 632
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 639
    :cond_2
    return v2
.end method

.method public getRadioAccessFamily(I)I
    .locals 1
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@2
    array-length v0, v0

    #@3
    if-lt p1, v0, :cond_0

    #@5
    .line 206
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@9
    aget-object v0, v0, p1

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public isDataDisconnected(I)Z
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 188
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@7
    move-result v0

    #@8
    .line 190
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    #@a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@11
    move-result v1

    #@12
    if-ge v0, v1, :cond_0

    #@14
    .line 191
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@16
    aget-object v1, v1, v0

    #@18
    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@1a
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    #@1d
    move-result v1

    #@1e
    return v1

    #@1f
    .line 194
    :cond_0
    const/4 v1, 0x1

    #@20
    return v1
.end method

.method onFinishRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 476
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v1, Landroid/os/AsyncResult;

    #@4
    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@6
    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    #@8
    .line 477
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    #@d
    move-result v1

    #@e
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@10
    if-eq v1, v2, :cond_1

    #@12
    .line 478
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "onFinishRadioCapabilityResponse: Ignore session="

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 479
    const-string/jumbo v2, " rc="

    #@27
    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@36
    .line 480
    return-void

    #@37
    .line 482
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@39
    monitor-enter v2

    #@3a
    .line 483
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v3, " onFinishRadioCapabilityResponse mRadioAccessFamilyStatusCounter="

    #@42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 484
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@48
    .line 483
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@53
    .line 485
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@55
    add-int/lit8 v1, v1, -0x1

    #@57
    iput v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@59
    .line 486
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@5b
    if-nez v1, :cond_2

    #@5d
    .line 487
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    :cond_2
    monitor-exit v2

    #@61
    .line 475
    return-void

    #@62
    .line 482
    :catchall_0
    move-exception v1

    #@63
    monitor-exit v2

    #@64
    throw v1
.end method

.method public registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 172
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@7
    move-result v0

    #@8
    .line 174
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    #@a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@11
    move-result v1

    #@12
    if-ge v0, v1, :cond_0

    #@14
    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@16
    aget-object v1, v1, v0

    #@18
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1b
    .line 171
    :cond_0
    return-void
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .locals 6
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 221
    array-length v2, p1

    #@2
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@4
    array-length v3, v3

    #@5
    if-eq v2, v3, :cond_0

    #@7
    .line 222
    new-instance v2, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v3, "Length of input rafs must equal to total phone count"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 226
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@12
    monitor-enter v3

    #@13
    .line 227
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@16
    array-length v2, v2

    #@17
    if-ge v0, v2, :cond_2

    #@19
    .line 228
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@1b
    aget v2, v2, v0

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "setRadioCapability: Phone["

    #@27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v4, "] is not idle. Rejecting request."

    #@32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    monitor-exit v3

    #@3e
    .line 231
    return v5

    #@3f
    .line 227
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    :cond_2
    monitor-exit v3

    #@43
    .line 237
    const/4 v1, 0x1

    #@44
    .line 238
    .local v1, "same":Z
    const/4 v0, 0x0

    #@45
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@47
    array-length v2, v2

    #@48
    if-ge v0, v2, :cond_4

    #@4a
    .line 239
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@4c
    aget-object v2, v2, v0

    #@4e
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    #@51
    move-result v2

    #@52
    aget-object v3, p1, v0

    #@54
    invoke-virtual {v3}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    #@57
    move-result v3

    #@58
    if-eq v2, v3, :cond_3

    #@5a
    .line 240
    const/4 v1, 0x0

    #@5b
    .line 238
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 226
    .end local v1    # "same":Z
    :catchall_0
    move-exception v2

    #@5f
    monitor-exit v3

    #@60
    throw v2

    #@61
    .line 243
    .restart local v1    # "same":Z
    :cond_4
    if-eqz v1, :cond_5

    #@63
    .line 245
    const-string/jumbo v2, "setRadioCapability: Already in requested configuration, nothing to do."

    #@66
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@69
    .line 247
    const/4 v2, 0x1

    #@6a
    return v2

    #@6b
    .line 251
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    #@6e
    .line 254
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@70
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@73
    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    #@76
    move-result v2

    #@77
    return v2
.end method

.method public unregisterForAllDataDisconnected(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 180
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@7
    move-result v0

    #@8
    .line 182
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    #@a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@11
    move-result v1

    #@12
    if-ge v0, v1, :cond_0

    #@14
    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@16
    aget-object v1, v1, v0

    #@18
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/Phone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    #@1b
    .line 179
    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider(I)V
    .locals 1
    .param p1, "sub"    # I

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->updateCurrentCarrierInProvider()Z

    #@7
    .line 167
    return-void
.end method

.method public updateDataConnectionTracker(I)V
    .locals 1
    .param p1, "sub"    # I

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->updateDataConnectionTracker()V

    #@7
    .line 154
    return-void
.end method
