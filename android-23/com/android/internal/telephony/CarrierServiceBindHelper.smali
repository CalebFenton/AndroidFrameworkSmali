.class public Lcom/android/internal/telephony/CarrierServiceBindHelper;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$1;
    }
.end annotation


# static fields
.field private static final BIND_TIMEOUT_MILLIS:I = 0x2710

.field private static final EVENT_BIND:I = 0x0

.field private static final EVENT_BIND_TIMEOUT:I = 0x2

.field private static final EVENT_PACKAGE_CHANGED:I = 0x3

.field private static final EVENT_UNBIND:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


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

.method static synthetic -get2(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

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

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const-class v0, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 52
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;

    #@6
    invoke-direct {v0, p0, v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;)V

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@b
    .line 61
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;

    #@d
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    #@10
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    #@12
    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    #@14
    .line 101
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@1b
    move-result v6

    #@1c
    .line 102
    .local v6, "numPhones":I
    new-array v0, v6, [Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@1e
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@20
    .line 104
    const/4 v7, 0x0

    #@21
    .local v7, "phoneId":I
    :goto_0
    if-ge v7, v6, :cond_0

    #@23
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@25
    new-instance v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@27
    invoke-direct {v1, p0, v7}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V

    #@2a
    aput-object v1, v0, v7

    #@2c
    .line 104
    add-int/lit8 v7, v7, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 110
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    #@31
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@34
    .line 111
    .local v3, "pkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    #@37
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3a
    .line 112
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@3d
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@40
    .line 113
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    #@43
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@46
    .line 114
    const-string/jumbo v0, "package"

    #@49
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@4c
    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@4e
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@50
    move-object v0, p1

    #@51
    move-object v5, v4

    #@52
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@55
    .line 98
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 294
    sget-object v0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->LOG_TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 293
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
    .line 298
    const-string/jumbo v1, "CarrierServiceBindHelper:"

    #@3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 299
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
    .line 300
    .local v0, "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@11
    .line 299
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 297
    .end local v0    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :cond_0
    return-void
.end method

.method public updateForPhoneId(ILjava/lang/String;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 119
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
    .line 120
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_0

    #@28
    .line 121
    return-void

    #@29
    .line 124
    :cond_0
    const-string/jumbo v0, "ABSENT"

    #@2c
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    #@34
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    #@36
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@38
    aget-object v2, v2, p1

    #@3a
    const/4 v3, 0x1

    #@3b
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@42
    .line 118
    :cond_2
    :goto_0
    return-void

    #@43
    .line 124
    :cond_3
    const-string/jumbo v0, "CARD_IO_ERROR"

    #@46
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v0

    #@4a
    if-nez v0, :cond_1

    #@4c
    const-string/jumbo v0, "UNKNOWN"

    #@4f
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v0

    #@53
    if-nez v0, :cond_1

    #@55
    const-string/jumbo v0, "LOADED"

    #@58
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_4

    #@5e
    .line 132
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    #@60
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    #@62
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@64
    aget-object v2, v2, p1

    #@66
    const/4 v3, 0x0

    #@67
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@6e
    goto :goto_0

    #@6f
    .line 124
    :cond_4
    const-string/jumbo v0, "LOCKED"

    #@72
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v0

    #@76
    if-eqz v0, :cond_2

    #@78
    goto :goto_1
.end method
