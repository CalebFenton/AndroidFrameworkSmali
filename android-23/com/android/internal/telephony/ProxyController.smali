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

.field private mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

.field private mHandler:Landroid/os/Handler;

.field private mNewLogicalModemIds:[Ljava/lang/String;

.field private mNewRadioAccessFamily:[I

.field private mOldRadioAccessFamily:[I

.field private mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

.field private mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

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

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p3, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 96
    iput-boolean v4, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@7
    .line 102
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
    .line 311
    new-instance v2, Lcom/android/internal/telephony/ProxyController$1;

    #@19
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ProxyController$1;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    #@1c
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    #@1e
    .line 129
    const-string/jumbo v2, "Constructor - Enter"

    #@21
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@24
    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    #@26
    .line 132
    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@28
    .line 133
    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2a
    .line 134
    iput-object p4, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    #@2c
    .line 136
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DctController;->makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;

    #@2f
    move-result-object v2

    #@30
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    #@32
    .line 137
    new-instance v2, Lcom/android/internal/telephony/UiccPhoneBookController;

    #@34
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@36
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/UiccPhoneBookController;-><init>([Lcom/android/internal/telephony/Phone;)V

    #@39
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

    #@3b
    .line 138
    new-instance v2, Lcom/android/internal/telephony/PhoneSubInfoController;

    #@3d
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@3f
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;-><init>([Lcom/android/internal/telephony/Phone;)V

    #@42
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

    #@44
    .line 139
    new-instance v2, Lcom/android/internal/telephony/UiccSmsController;

    #@46
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@48
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/UiccSmsController;-><init>([Lcom/android/internal/telephony/Phone;)V

    #@4b
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

    #@4d
    .line 140
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@4f
    array-length v2, v2

    #@50
    new-array v2, v2, [I

    #@52
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@54
    .line 141
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@56
    array-length v2, v2

    #@57
    new-array v2, v2, [I

    #@59
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    #@5b
    .line 142
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@5d
    array-length v2, v2

    #@5e
    new-array v2, v2, [I

    #@60
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@62
    .line 143
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@64
    array-length v2, v2

    #@65
    new-array v2, v2, [Ljava/lang/String;

    #@67
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    #@69
    .line 144
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@6b
    array-length v2, v2

    #@6c
    new-array v2, v2, [Ljava/lang/String;

    #@6e
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    #@70
    .line 147
    const-string/jumbo v2, "power"

    #@73
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@76
    move-result-object v1

    #@77
    check-cast v1, Landroid/os/PowerManager;

    #@79
    .line 148
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "ProxyController"

    #@7c
    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@7f
    move-result-object v2

    #@80
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@82
    .line 149
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@84
    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@87
    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    #@8a
    .line 153
    const/4 v0, 0x0

    #@8b
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@8d
    array-length v2, v2

    #@8e
    if-ge v0, v2, :cond_0

    #@90
    .line 154
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@92
    aget-object v2, v2, v0

    #@94
    .line 155
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    #@96
    const/4 v4, 0x0

    #@97
    .line 154
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/telephony/PhoneProxy;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@9a
    .line 153
    add-int/lit8 v0, v0, 0x1

    #@9c
    goto :goto_0

    #@9d
    .line 157
    :cond_0
    const-string/jumbo v2, "Constructor - Exit"

    #@a0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@a3
    .line 128
    return-void
.end method

.method private clearTransaction()V
    .locals 4

    #@0
    .prologue
    .line 586
    const-string/jumbo v1, "clearTransaction"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@6
    .line 587
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@8
    monitor-enter v2

    #@9
    .line 588
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_0

    #@f
    .line 589
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
    .line 590
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@2f
    const/4 v3, 0x0

    #@30
    aput v3, v1, v0

    #@32
    .line 591
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@34
    const/4 v3, 0x0

    #@35
    aput v3, v1, v0

    #@37
    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    #@39
    const/4 v3, 0x0

    #@3a
    aput v3, v1, v0

    #@3c
    .line 593
    const/4 v1, 0x0

    #@3d
    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@3f
    .line 588
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    .line 596
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@44
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_1

    #@4a
    .line 597
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4c
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    :cond_1
    monitor-exit v2

    #@50
    .line 585
    return-void

    #@51
    .line 587
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
    .line 550
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
    .line 551
    iget-boolean v7, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@1f
    if-nez v7, :cond_2

    #@21
    .line 552
    new-instance v3, Ljava/util/ArrayList;

    #@23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@26
    .line 553
    .local v3, "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@29
    array-length v7, v7

    #@2a
    if-ge v0, v7, :cond_1

    #@2c
    .line 554
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@2e
    aget-object v7, v7, v0

    #@30
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    #@33
    move-result v5

    #@34
    .line 555
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
    .line 556
    new-instance v4, Landroid/telephony/RadioAccessFamily;

    #@58
    invoke-direct {v4, v0, v5}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    #@5b
    .line 557
    .local v4, "phoneRC":Landroid/telephony/RadioAccessFamily;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5e
    .line 553
    add-int/lit8 v0, v0, 0x1

    #@60
    goto :goto_1

    #@61
    .line 550
    .end local v0    # "i":I
    .end local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    .end local v4    # "phoneRC":Landroid/telephony/RadioAccessFamily;
    .end local v5    # "raf":I
    :cond_0
    const/4 v7, 0x1

    #@62
    goto :goto_0

    #@63
    .line 559
    .restart local v0    # "i":I
    .restart local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :cond_1
    new-instance v1, Landroid/content/Intent;

    #@65
    const-string/jumbo v7, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    #@68
    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6b
    .line 560
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "rafs"

    #@6e
    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@71
    .line 564
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@73
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@76
    move-result v7

    #@77
    iput v7, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@79
    .line 567
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    #@7c
    .line 581
    .end local v0    # "i":I
    .end local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    #@7e
    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@81
    .line 547
    return-void

    #@82
    .line 569
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    #@84
    const-string/jumbo v7, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    #@87
    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8a
    .line 572
    .restart local v1    # "intent":Landroid/content/Intent;
    iput-boolean v8, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@8c
    .line 573
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@8e
    array-length v7, v7

    #@8f
    new-array v6, v7, [Landroid/telephony/RadioAccessFamily;

    #@91
    .line 574
    .local v6, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v2, 0x0

    #@92
    .local v2, "phoneId":I
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@94
    array-length v7, v7

    #@95
    if-ge v2, v7, :cond_3

    #@97
    .line 575
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    #@99
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@9b
    aget v8, v8, v2

    #@9d
    invoke-direct {v7, v2, v8}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    #@a0
    aput-object v7, v6, v2

    #@a2
    .line 574
    add-int/lit8 v2, v2, 0x1

    #@a4
    goto :goto_3

    #@a5
    .line 577
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    #@a8
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
    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@a
    .line 272
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
    .line 273
    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    #@15
    const-wide/32 v2, 0xafc8

    #@18
    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1b
    .line 275
    iget-object v11, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@1d
    monitor-enter v11

    #@1e
    .line 276
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
    .line 277
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    #@3a
    .line 278
    const/4 v8, 0x0

    #@3b
    .local v8, "i":I
    :goto_0
    array-length v0, p1

    #@3c
    if-ge v8, v0, :cond_0

    #@3e
    .line 279
    aget-object v0, p1, v8

    #@40
    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    #@43
    move-result v1

    #@44
    .line 280
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
    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@64
    const/4 v2, 0x1

    #@65
    aput v2, v0, v1

    #@67
    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@69
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@6b
    aget-object v2, v2, v1

    #@6d
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    #@70
    move-result v2

    #@71
    aput v2, v0, v1

    #@73
    .line 283
    aget-object v0, p1, v8

    #@75
    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    #@78
    move-result v10

    #@79
    .line 287
    .local v10, "requestedRaf":I
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    #@7b
    aput v10, v0, v1

    #@7d
    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    #@7f
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@81
    aget-object v2, v2, v1

    #@83
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getModemUuId()Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    aput-object v2, v0, v1

    #@89
    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    #@8b
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->getLogicalModemIdFromRaf(I)Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    aput-object v2, v0, v1

    #@91
    .line 293
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
    .line 294
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@aa
    aget v2, v2, v1

    #@ac
    .line 293
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
    .line 295
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
    .line 296
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    #@d0
    aget v2, v2, v1

    #@d2
    .line 295
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
    .line 299
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@df
    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@e1
    aget v4, v0, v1

    #@e3
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    #@e5
    aget-object v5, v0, v1

    #@e7
    .line 300
    const/4 v3, 0x1

    #@e8
    .line 303
    const/4 v6, 0x0

    #@e9
    .line 304
    const/4 v7, 0x2

    #@ea
    move-object v0, p0

    #@eb
    .line 297
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ee
    .line 278
    add-int/lit8 v8, v8, 0x1

    #@f0
    goto/16 :goto_0

    #@f2
    .end local v1    # "phoneId":I
    .end local v10    # "requestedRaf":I
    :cond_0
    monitor-exit v11

    #@f3
    .line 308
    return v12

    #@f4
    .line 275
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
    .line 124
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    #@2
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneProxy"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p2, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    .line 117
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 118
    new-instance v0, Lcom/android/internal/telephony/ProxyController;

    #@6
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/ProxyController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    #@9
    sput-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    #@b
    .line 120
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    #@d
    return-object v0
.end method

.method private getLogicalModemIdFromRaf(I)Ljava/lang/String;
    .locals 3
    .param p1, "raf"    # I

    #@0
    .prologue
    .line 652
    const/4 v0, 0x0

    #@1
    .line 654
    .local v0, "modemUuid":Ljava/lang/String;
    const/4 v1, 0x0

    #@2
    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@4
    array-length v2, v2

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 655
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@9
    aget-object v2, v2, v1

    #@b
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    #@e
    move-result v2

    #@f
    if-ne v2, p1, :cond_1

    #@11
    .line 656
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@13
    aget-object v2, v2, v1

    #@15
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getModemUuId()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 660
    .end local v0    # "modemUuid":Ljava/lang/String;
    :cond_0
    return-object v0

    #@1a
    .line 654
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
    .line 524
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@2
    monitor-enter v8

    #@3
    .line 525
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@6
    array-length v0, v0

    #@7
    if-ge v1, v0, :cond_2

    #@9
    .line 526
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
    .line 527
    const-string/jumbo v2, " mTransactionFailed="

    #@27
    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 527
    iget-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@2d
    .line 526
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
    .line 528
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@3a
    add-int/lit8 v0, v0, 0x1

    #@3c
    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@3e
    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    #@40
    aget v4, v0, v1

    #@42
    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    #@44
    aget-object v5, v0, v1

    #@46
    .line 535
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@48
    if-eqz v0, :cond_1

    #@4a
    const/4 v6, 0x2

    #@4b
    .line 532
    :goto_1
    const/4 v3, 0x4

    #@4c
    .line 537
    const/4 v7, 0x4

    #@4d
    move-object v0, p0

    #@4e
    move v2, p1

    #@4f
    .line 529
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    #@52
    .line 538
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@54
    if-eqz v0, :cond_0

    #@56
    .line 539
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
    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@76
    const/4 v2, 0x5

    #@77
    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@79
    .line 525
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@7b
    goto :goto_0

    #@7c
    .line 536
    :cond_1
    const/4 v6, 0x1

    #@7d
    goto :goto_1

    #@7e
    :cond_2
    monitor-exit v8

    #@7f
    .line 522
    return-void

    #@80
    .line 524
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
    .line 664
    const-string/jumbo v0, "ProxyController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 663
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 668
    const-string/jumbo v0, "ProxyController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 667
    return-void
.end method

.method private onApplyRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 415
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v2, Landroid/os/AsyncResult;

    #@4
    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@6
    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    #@8
    .line 416
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
    .line 417
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
    .line 418
    const-string/jumbo v3, " rc="

    #@27
    .line 417
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
    .line 419
    return-void

    #@37
    .line 421
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
    .line 422
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@50
    check-cast v2, Landroid/os/AsyncResult;

    #@52
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@54
    if-eqz v2, :cond_2

    #@56
    .line 423
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@58
    monitor-enter v3

    #@59
    .line 424
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
    .line 425
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    #@77
    move-result v0

    #@78
    .line 426
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
    .line 427
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@98
    const/4 v4, 0x5

    #@99
    aput v4, v2, v0

    #@9b
    .line 428
    const/4 v2, 0x1

    #@9c
    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9e
    monitor-exit v3

    #@9f
    .line 414
    .end local v0    # "id":I
    :goto_0
    return-void

    #@a0
    .line 423
    :catchall_0
    move-exception v2

    #@a1
    monitor-exit v3

    #@a2
    throw v2

    #@a3
    .line 431
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
    .line 440
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v2, Landroid/os/AsyncResult;

    #@4
    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@6
    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    #@8
    .line 441
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
    .line 442
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
    .line 443
    const-string/jumbo v3, " rc="

    #@27
    .line 442
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
    .line 444
    return-void

    #@37
    .line 446
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@39
    monitor-enter v3

    #@3a
    .line 447
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
    .line 449
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    #@54
    move-result v2

    #@55
    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@57
    if-eq v2, v4, :cond_2

    #@59
    .line 450
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
    .line 451
    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@67
    .line 450
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    .line 451
    const-string/jumbo v4, " rc="

    #@6e
    .line 450
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
    .line 452
    return-void

    #@7f
    .line 455
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    #@82
    move-result v0

    #@83
    .line 456
    .local v0, "id":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@85
    check-cast v2, Landroid/os/AsyncResult;

    #@87
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@89
    if-nez v2, :cond_3

    #@8b
    .line 457
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    #@8e
    move-result v2

    #@8f
    const/4 v4, 0x2

    #@90
    if-ne v2, v4, :cond_5

    #@92
    .line 458
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
    .line 459
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@b2
    const/4 v4, 0x5

    #@b3
    aput v4, v2, v0

    #@b5
    .line 460
    const/4 v2, 0x1

    #@b6
    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@b8
    .line 469
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@ba
    add-int/lit8 v2, v2, -0x1

    #@bc
    iput v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@be
    .line 470
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@c0
    if-nez v2, :cond_4

    #@c2
    .line 471
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
    .line 472
    iget-boolean v4, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@d0
    .line 471
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
    .line 473
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@dd
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e0
    :cond_4
    monitor-exit v3

    #@e1
    .line 439
    return-void

    #@e2
    .line 462
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
    .line 463
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@102
    const/4 v4, 0x4

    #@103
    aput v4, v2, v0

    #@105
    .line 465
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    #@107
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->retryAttach(I)V

    #@10a
    .line 466
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@10c
    aget-object v2, v2, v0

    #@10e
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/PhoneProxy;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@111
    goto :goto_0

    #@112
    .line 446
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
    .line 347
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@4
    monitor-enter v15

    #@5
    .line 348
    :try_start_0
    move-object/from16 v0, p1

    #@7
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v9, Landroid/os/AsyncResult;

    #@b
    .line 349
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 351
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
    .line 352
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
    .line 353
    new-instance v11, Landroid/content/Intent;

    #@38
    const-string/jumbo v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    #@3b
    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3e
    .line 354
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@40
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    #@42
    invoke-virtual {v1, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@45
    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    monitor-exit v15

    #@49
    .line 356
    return-void

    #@4a
    .line 358
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
    .line 359
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
    .line 360
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
    .line 361
    const-string/jumbo v3, " rc="

    #@77
    .line 360
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
    .line 362
    return-void

    #@8a
    .line 364
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
    .line 365
    invoke-virtual {v14}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    #@97
    move-result v10

    #@98
    .line 366
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
    .line 367
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
    .line 368
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
    .line 369
    move-object/from16 v0, p0

    #@e1
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@e3
    const/4 v3, 0x5

    #@e4
    aput v3, v1, v10

    #@e6
    .line 370
    const/4 v1, 0x1

    #@e7
    move-object/from16 v0, p0

    #@e9
    iput-boolean v1, v0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@eb
    .line 376
    :goto_0
    move-object/from16 v0, p0

    #@ed
    iget v1, v0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@ef
    if-nez v1, :cond_6

    #@f1
    .line 377
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
    .line 378
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
    .line 379
    .local v12, "modemId":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@108
    move-result v5

    #@109
    if-nez v5, :cond_3

    #@10b
    .line 380
    const/4 v5, 0x1

    #@10c
    move-object/from16 v0, p0

    #@10e
    iput-boolean v5, v0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@110
    .line 381
    const-string/jumbo v5, "ProxyController"

    #@113
    const-string/jumbo v6, "ERROR: sending down the same id for different phones"

    #@116
    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@119
    .line 378
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@11b
    goto :goto_1

    #@11c
    .line 372
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
    .line 373
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
    .line 347
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
    .line 384
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
    .line 385
    move-object/from16 v0, p0

    #@169
    iget-boolean v1, v0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@16b
    if-eqz v1, :cond_8

    #@16d
    .line 388
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
    .line 346
    return-void

    #@178
    .line 384
    .restart local v13    # "modemsInUse":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    const/4 v1, 0x1

    #@179
    goto :goto_2

    #@17a
    .line 391
    :cond_8
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    #@17d
    .line 392
    const/4 v2, 0x0

    #@17e
    .local v2, "i":I
    :goto_3
    move-object/from16 v0, p0

    #@180
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@182
    array-length v1, v1

    #@183
    if-ge v2, v1, :cond_6

    #@185
    .line 395
    move-object/from16 v0, p0

    #@187
    iget v3, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@189
    .line 397
    move-object/from16 v0, p0

    #@18b
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    #@18d
    aget v5, v1, v2

    #@18f
    .line 398
    move-object/from16 v0, p0

    #@191
    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    #@193
    aget-object v6, v1, v2

    #@195
    .line 396
    const/4 v4, 0x2

    #@196
    .line 399
    const/4 v7, 0x0

    #@197
    .line 400
    const/4 v8, 0x3

    #@198
    move-object/from16 v1, p0

    #@19a
    .line 393
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    #@19d
    .line 402
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
    .line 403
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
    .line 392
    add-int/lit8 v2, v2, 0x1

    #@1c6
    goto :goto_3
.end method

.method private onTimeoutRadioCapability(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 500
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@2
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@4
    if-eq v2, v3, :cond_0

    #@6
    .line 501
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
    .line 502
    const-string/jumbo v3, "!= mRadioCapabilitySessionId="

    #@1b
    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 502
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    #@21
    .line 501
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
    .line 503
    return-void

    #@2d
    .line 506
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@2f
    monitor-enter v3

    #@30
    .line 508
    const/4 v0, 0x0

    #@31
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@33
    array-length v2, v2

    #@34
    if-ge v0, v2, :cond_1

    #@36
    .line 509
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
    .line 510
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@4f
    aget v4, v4, v0

    #@51
    .line 509
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
    .line 508
    add-int/lit8 v0, v0, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 515
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@61
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@64
    move-result v1

    #@65
    .line 517
    .local v1, "uniqueDifferentId":I
    const/4 v2, 0x1

    #@66
    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    #@68
    .line 518
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6b
    monitor-exit v3

    #@6c
    .line 499
    return-void

    #@6d
    .line 506
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
    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@2
    array-length v0, v0

    #@3
    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@5
    .line 602
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
    .line 608
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
    .line 610
    .local v0, "requestRC":Lcom/android/internal/telephony/RadioCapability;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@d
    aget-object v1, v1, p1

    #@f
    .line 611
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    #@11
    invoke-virtual {v2, p7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@14
    move-result-object v2

    #@15
    .line 610
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    #@18
    .line 607
    return-void
.end method


# virtual methods
.method public disableDataConnectivity(ILandroid/os/Message;)V
    .locals 2
    .param p1, "sub"    # I
    .param p2, "dataCleanedUpMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@2
    aget-object v0, v0, p1

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    #@8
    .line 169
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    #@2
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DctController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 671
    :goto_0
    return-void

    #@6
    .line 674
    :catch_0
    move-exception v0

    #@7
    .line 675
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@a
    goto :goto_0
.end method

.method public enableDataConnectivity(I)V
    .locals 2
    .param p1, "sub"    # I

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@2
    aget-object v0, v0, p1

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(Z)V

    #@8
    .line 164
    return-void
.end method

.method public getMaxRafSupported()I
    .locals 5

    #@0
    .prologue
    .line 617
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@2
    array-length v4, v4

    #@3
    new-array v3, v4, [I

    #@5
    .line 618
    .local v3, "numRafSupported":[I
    const/4 v1, 0x0

    #@6
    .line 619
    .local v1, "maxNumRafBit":I
    const/4 v2, 0x1

    #@7
    .line 621
    .local v2, "maxRaf":I
    const/4 v0, 0x0

    #@8
    .local v0, "len":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@a
    array-length v4, v4

    #@b
    if-ge v0, v4, :cond_1

    #@d
    .line 622
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@f
    aget-object v4, v4, v0

    #@11
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    #@14
    move-result v4

    #@15
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    #@18
    move-result v4

    #@19
    aput v4, v3, v0

    #@1b
    .line 623
    aget v4, v3, v0

    #@1d
    if-ge v1, v4, :cond_0

    #@1f
    .line 624
    aget v1, v3, v0

    #@21
    .line 625
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@23
    aget-object v4, v4, v0

    #@25
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    #@28
    move-result v2

    #@29
    .line 621
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 629
    :cond_1
    return v2
.end method

.method public getMinRafSupported()I
    .locals 5

    #@0
    .prologue
    .line 635
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@2
    array-length v4, v4

    #@3
    new-array v3, v4, [I

    #@5
    .line 636
    .local v3, "numRafSupported":[I
    const/4 v1, 0x0

    #@6
    .line 637
    .local v1, "minNumRafBit":I
    const/4 v2, 0x1

    #@7
    .line 639
    .local v2, "minRaf":I
    const/4 v0, 0x0

    #@8
    .local v0, "len":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@a
    array-length v4, v4

    #@b
    if-ge v0, v4, :cond_2

    #@d
    .line 640
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@f
    aget-object v4, v4, v0

    #@11
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    #@14
    move-result v4

    #@15
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    #@18
    move-result v4

    #@19
    aput v4, v3, v0

    #@1b
    .line 641
    if-eqz v1, :cond_0

    #@1d
    aget v4, v3, v0

    #@1f
    if-le v1, v4, :cond_1

    #@21
    .line 642
    :cond_0
    aget v1, v3, v0

    #@23
    .line 643
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@25
    aget-object v4, v4, v0

    #@27
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    #@2a
    move-result v2

    #@2b
    .line 639
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 646
    :cond_2
    return v2
.end method

.method public getRadioAccessFamily(I)I
    .locals 1
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@2
    array-length v0, v0

    #@3
    if-lt p1, v0, :cond_0

    #@5
    .line 213
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@9
    aget-object v0, v0, p1

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public isDataDisconnected(I)Z
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 194
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@7
    move-result v1

    #@8
    .line 196
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    #@a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@11
    move-result v2

    #@12
    if-ge v1, v2, :cond_0

    #@14
    .line 197
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@16
    aget-object v2, v2, v1

    #@18
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    #@1b
    move-result-object v0

    #@1c
    .line 198
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    #@1e
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@20
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    #@23
    move-result v2

    #@24
    return v2

    #@25
    .line 201
    :cond_0
    const/4 v2, 0x1

    #@26
    return v2
.end method

.method onFinishRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 483
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v1, Landroid/os/AsyncResult;

    #@4
    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@6
    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    #@8
    .line 484
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
    .line 485
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
    .line 486
    const-string/jumbo v2, " rc="

    #@27
    .line 485
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
    .line 487
    return-void

    #@37
    .line 489
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@39
    monitor-enter v2

    #@3a
    .line 490
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
    .line 491
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@48
    .line 490
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
    .line 492
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@55
    add-int/lit8 v1, v1, -0x1

    #@57
    iput v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@59
    .line 493
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    #@5b
    if-nez v1, :cond_2

    #@5d
    .line 494
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    :cond_2
    monitor-exit v2

    #@61
    .line 482
    return-void

    #@62
    .line 489
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
    .line 178
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@7
    move-result v0

    #@8
    .line 180
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
    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@16
    aget-object v1, v1, v0

    #@18
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1b
    .line 177
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
    .line 228
    array-length v2, p1

    #@2
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@4
    array-length v3, v3

    #@5
    if-eq v2, v3, :cond_0

    #@7
    .line 229
    new-instance v2, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v3, "Length of input rafs must equal to total phone count"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 233
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@12
    monitor-enter v3

    #@13
    .line 234
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@16
    array-length v2, v2

    #@17
    if-ge v0, v2, :cond_2

    #@19
    .line 235
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    #@1b
    aget v2, v2, v0

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 237
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
    .line 238
    return v5

    #@3f
    .line 234
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    :cond_2
    monitor-exit v3

    #@43
    .line 244
    const/4 v1, 0x1

    #@44
    .line 245
    .local v1, "same":Z
    const/4 v0, 0x0

    #@45
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@47
    array-length v2, v2

    #@48
    if-ge v0, v2, :cond_4

    #@4a
    .line 246
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@4c
    aget-object v2, v2, v0

    #@4e
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

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
    .line 247
    const/4 v1, 0x0

    #@5b
    .line 245
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 233
    .end local v1    # "same":Z
    :catchall_0
    move-exception v2

    #@5f
    monitor-exit v3

    #@60
    throw v2

    #@61
    .line 250
    .restart local v1    # "same":Z
    :cond_4
    if-eqz v1, :cond_5

    #@63
    .line 252
    const-string/jumbo v2, "setRadioCapability: Already in requested configuration, nothing to do."

    #@66
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    #@69
    .line 254
    const/4 v2, 0x1

    #@6a
    return v2

    #@6b
    .line 258
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    #@6e
    .line 261
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@70
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@73
    .line 263
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
    .line 186
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@7
    move-result v0

    #@8
    .line 188
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
    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@16
    aget-object v1, v1, v0

    #@18
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    #@1b
    .line 185
    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider(I)V
    .locals 1
    .param p1, "sub"    # I

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateCurrentCarrierInProvider()Z

    #@7
    .line 173
    return-void
.end method

.method public updateDataConnectionTracker(I)V
    .locals 1
    .param p1, "sub"    # I

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    #@7
    .line 160
    return-void
.end method
