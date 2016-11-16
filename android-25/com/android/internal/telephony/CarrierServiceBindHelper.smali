.class public Lcom/android/internal/telephony/CarrierServiceBindHelper;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceBindHelper$1;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$2;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;
    }
.end annotation


# static fields
.field private static final EVENT_REBIND:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierSvcBindHelper"


# instance fields
.field private mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastSimState:[Ljava/lang/String;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/CarrierServiceBindHelper;)[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 54
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;

    #@6
    invoke-direct {v0, p0, v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;)V

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@b
    .line 56
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;

    #@d
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    #@10
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    #@12
    .line 74
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$2;

    #@14
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$2;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    #@19
    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    #@1b
    .line 93
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@22
    move-result v6

    #@23
    .line 94
    .local v6, "numPhones":I
    new-array v0, v6, [Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@25
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@27
    .line 95
    new-array v0, v6, [Ljava/lang/String;

    #@29
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:[Ljava/lang/String;

    #@2b
    .line 97
    const/4 v7, 0x0

    #@2c
    .local v7, "phoneId":I
    :goto_0
    if-ge v7, v6, :cond_0

    #@2e
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@30
    new-instance v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@32
    invoke-direct {v1, p0, v7}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V

    #@35
    aput-object v1, v0, v7

    #@37
    .line 97
    add-int/lit8 v7, v7, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@3c
    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    #@3e
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@41
    move-result-object v1

    #@42
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@44
    const/4 v3, 0x0

    #@45
    .line 101
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@48
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    #@4a
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    #@4c
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@4e
    .line 104
    new-instance v3, Landroid/content/IntentFilter;

    #@50
    const-string/jumbo v5, "android.intent.action.USER_UNLOCKED"

    #@53
    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@56
    .line 105
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    #@58
    .line 103
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@5b
    .line 90
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 334
    const-string/jumbo v0, "CarrierSvcBindHelper"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 333
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 338
    const-string/jumbo v1, "CarrierServiceBindHelper:"

    #@3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 339
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@8
    const/4 v1, 0x0

    #@9
    array-length v3, v2

    #@a
    :goto_0
    if-ge v1, v3, :cond_0

    #@c
    aget-object v0, v2, v1

    #@e
    .line 340
    .local v0, "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@11
    .line 339
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 337
    .end local v0    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :cond_0
    return-void
.end method

.method updateForPhoneId(ILjava/lang/String;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "update binding for phoneId: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " simState: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V

    #@22
    .line 110
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_0

    #@28
    .line 111
    return-void

    #@29
    .line 113
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    return-void

    #@30
    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:[Ljava/lang/String;

    #@32
    aget-object v0, v0, p1

    #@34
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 116
    return-void

    #@3b
    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:[Ljava/lang/String;

    #@3d
    aput-object p2, v0, p1

    #@3f
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    #@41
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    #@43
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@45
    aget-object v2, v2, p1

    #@47
    const/4 v3, 0x0

    #@48
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@4f
    .line 108
    return-void
.end method
