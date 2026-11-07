.class public final Lcom/android/server/sip/SipService;
.super Landroid/net/sip/ISipService$Stub;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipService$MyExecutor;,
        Lcom/android/server/sip/SipService$ConnectivityReceiver;,
        Lcom/android/server/sip/SipService$SipSessionGroupExt;,
        Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;,
        Lcom/android/server/sip/SipService$SipAutoReg;
    }
.end annotation


# static fields
.field static final blacklist DBG:Z = true

.field private static final blacklist DEFAULT_KEEPALIVE_INTERVAL:I = 0xa

.field private static final blacklist DEFAULT_MAX_KEEPALIVE_INTERVAL:I = 0x78

.field private static final blacklist EXPIRY_TIME:I = 0xe10

.field private static final blacklist MIN_EXPIRY_TIME:I = 0x3c

.field private static final blacklist SHORT_EXPIRY_TIME:I = 0xa

.field static final blacklist TAG:Ljava/lang/String; = "SipService"


# instance fields
.field private final blacklist mAppOps:Landroid/app/AppOpsManager;

.field private blacklist mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

.field private blacklist mKeepAliveInterval:I

.field private blacklist mLastGoodKeepAliveInterval:I

.field private blacklist mLocalIp:Ljava/lang/String;

.field private blacklist mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

.field private blacklist mNetworkType:I

.field private blacklist mPendingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/sip/ISipSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSipGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/sip/SipService$SipSessionGroupExt;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

.field private blacklist mSipOnWifiOnly:Z

.field private blacklist mTimer:Lcom/android/server/sip/SipWakeupTimer;

.field private blacklist mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/server/sip/SipService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeepAliveInterval(Lcom/android/server/sip/SipService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalIp(Lcom/android/server/sip/SipService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkType(Lcom/android/server/sip/SipService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeepAliveInterval(Lcom/android/server/sip/SipService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastGoodKeepAliveInterval(Lcom/android/server/sip/SipService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddPendingSession(Lcom/android/server/sip/SipService;Landroid/net/sip/ISipSession;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->addPendingSession(Landroid/net/sip/ISipSession;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcallingSelf(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetKeepAliveInterval(Lcom/android/server/sip/SipService;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->getKeepAliveInterval()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misBehindNAT(Lcom/android/server/sip/SipService;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/server/sip/SipService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/server/sip/SipService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monConnectivityChanged(Lcom/android/server/sip/SipService;Landroid/net/NetworkInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->onConnectivityChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monKeepAliveIntervalChanged(Lcom/android/server/sip/SipService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->onKeepAliveIntervalChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestartPortMappingLifetimeMeasurement(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartPortMappingLifetimeMeasurement(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateLooper()Landroid/os/Looper;
    .registers 1

    invoke-static {}, Lcom/android/server/sip/SipService;->createLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Landroid/net/sip/ISipService$Stub;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    .line 85
    new-instance v0, Lcom/android/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipService$MyExecutor;-><init>(Lcom/android/server/sip/SipService;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    .line 98
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 115
    const-string v0, "SipService: started!"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    .line 117
    new-instance v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService-IA;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    .line 119
    nop

    .line 120
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 121
    const/4 v1, 0x1

    const-string v2, "SipService"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 122
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 123
    invoke-static {p1}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService;->mSipOnWifiOnly:Z

    .line 125
    new-instance v0, Lcom/android/server/sip/SipWakeLock;

    .line 126
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-direct {v0, v1}, Lcom/android/server/sip/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    .line 128
    new-instance v0, Lcom/android/server/sip/SipWakeupTimer;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p1, v1}, Lcom/android/server/sip/SipWakeupTimer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;

    .line 129
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mAppOps:Landroid/app/AppOpsManager;

    .line 130
    return-void
.end method

.method private declared-synchronized blacklist addPendingSession(Landroid/net/sip/ISipSession;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    monitor-enter p0

    .line 408
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->cleanUpPendingSessions()V

    .line 409
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#pending sess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_29} :catch_2c
    .catchall {:try_start_1 .. :try_end_29} :catchall_2a

    .line 414
    goto :goto_32

    .line 407
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    .end local p1    # "session":Landroid/net/sip/ISipSession;
    :catchall_2a
    move-exception p1

    goto :goto_34

    .line 411
    .restart local p1    # "session":Landroid/net/sip/ISipSession;
    :catch_2c
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2d
    const-string v1, "addPendingSession()"

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_2a

    .line 415
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    monitor-exit p0

    return-void

    .line 407
    .end local p1    # "session":Landroid/net/sip/ISipSession;
    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2a

    throw p1
.end method

.method private declared-synchronized blacklist callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .registers 7
    .param p1, "ringingGroup"    # Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .param p2, "ringingSession"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    monitor-enter p0

    .line 430
    :try_start_1
    invoke-virtual {p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "callId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 432
    .local v2, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eq v2, p1, :cond_56

    invoke-virtual {v2, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->containsSession(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call self: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 434
    invoke-virtual {p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    invoke-virtual {v2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_5a

    .line 436
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 438
    .end local v2    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_56
    goto :goto_f

    .line 439
    :cond_57
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 429
    .end local v0    # "callId":Ljava/lang/String;
    .end local p1    # "ringingGroup":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local p2    # "ringingSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_5a
    move-exception p1

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method private blacklist canUseSip(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.USE_SIP"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const-string v3, "android:use_sip"

    move-object v5, p1

    move-object v7, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "message":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    .local v7, "message":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private blacklist cleanUpPendingSessions()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    .line 419
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    .line 420
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    .line 419
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 421
    .local v0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_33

    aget-object v3, v0, v2

    .line 422
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/ISipSession;

    invoke-interface {v4}, Landroid/net/sip/ISipSession;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_30

    .line 423
    iget-object v4, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 426
    :cond_33
    return-void
.end method

.method private blacklist createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .registers 6
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 314
    .local v1, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v1, :cond_1e

    .line 315
    new-instance v2, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    move-object v1, v2

    .line 316
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->notifyProfileAdded(Landroid/net/sip/SipProfile;)V

    goto :goto_24

    .line 318
    :cond_1e
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 321
    :goto_24
    return-object v1

    .line 319
    :cond_25
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist createGroup(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .registers 8
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Landroid/net/sip/ISipSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 327
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 329
    .local v1, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eqz v1, :cond_23

    .line 330
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 333
    invoke-virtual {v1, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setIncomingCallPendingIntent(Landroid/app/PendingIntent;)V

    .line 334
    invoke-virtual {v1, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setListener(Landroid/net/sip/ISipSessionListener;)V

    goto :goto_31

    .line 331
    :cond_1b
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_23
    new-instance v2, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    move-object v1, v2

    .line 338
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->notifyProfileAdded(Landroid/net/sip/SipProfile;)V

    .line 341
    :goto_31
    return-object v1
.end method

.method private static blacklist createLooper()Landroid/os/Looper;
    .registers 2

    .line 1243
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipService.Executor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1245
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method private blacklist determineLocalIp()Ljava/lang/String;
    .registers 4

    .line 300
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 301
    .local v0, "s":Ljava/net/DatagramSocket;
    const-string v1, "192.168.1.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 302
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v1

    .line 303
    .end local v0    # "s":Ljava/net/DatagramSocket;
    :catch_19
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "determineLocalIp()"

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getKeepAliveInterval()I
    .registers 2

    .line 449
    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    if-gez v0, :cond_7

    .line 450
    iget v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    goto :goto_9

    .line 451
    :cond_7
    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    .line 449
    :goto_9
    return v0
.end method

.method private static blacklist isAllowedCharacter(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 1326
    const/16 v0, 0x40

    if-eq p0, v0, :cond_b

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private blacklist isBehindNAT(Ljava/lang/String;)Z
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .line 458
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 459
    .local v1, "d":[B
    aget-byte v2, v1, v0

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eq v2, v3, :cond_32

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xac

    if-ne v2, v3, :cond_20

    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_32

    :cond_20
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_31

    aget-byte v2, v1, v4
    :try_end_2a
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_2a} :catch_33

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_31

    goto :goto_32

    .line 468
    .end local v1    # "d":[B
    :cond_31
    goto :goto_4a

    .line 464
    .restart local v1    # "d":[B
    :cond_32
    :goto_32
    return v4

    .line 466
    .end local v1    # "d":[B
    :catch_33
    move-exception v1

    .line 467
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBehindAT()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_4a
    return v0
.end method

.method private blacklist isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z
    .registers 5
    .param p1, "group"    # Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 192
    invoke-virtual {p1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 193
    .local v0, "profile":Landroid/net/sip/SipProfile;
    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private blacklist isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z
    .registers 3
    .param p1, "group"    # Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 197
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->isCallerRadio()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private blacklist isCallerRadio()Z
    .registers 3

    .line 201
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1282
    const-string v0, "SipService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1290
    const-string v0, "SipService"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    return-void
.end method

.method private blacklist notifyProfileAdded(Landroid/net/sip/SipProfile;)V
    .registers 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify: profile added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_ADD_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android:localSipUri"

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    .line 350
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->registerReceivers()V

    .line 352
    :cond_39
    return-void
.end method

.method private blacklist notifyProfileRemoved(Landroid/net/sip/SipProfile;)V
    .registers 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify: profile removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.sip.action.SIP_REMOVE_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android:localSipUri"

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_38

    .line 360
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->unregisterReceivers()V

    .line 362
    :cond_38
    return-void
.end method

.method public static blacklist obfuscateSipUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "sipUri"    # Ljava/lang/String;

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1295
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1296
    .local v1, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1297
    const-string v2, "sip:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1298
    const/4 v1, 0x4

    .line 1299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    :cond_16
    const/4 v2, 0x0

    .line 1303
    .local v2, "prevC":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1304
    .local v3, "len":I
    move v4, v1

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_4d

    .line 1305
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1306
    .local v5, "c":C
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v3, :cond_2d

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_2e

    :cond_2d
    const/4 v6, 0x0

    .line 1307
    .local v6, "nextC":C
    :goto_2e
    const/16 v7, 0x2a

    .line 1312
    .local v7, "charToAppend":C
    sub-int v8, v4, v1

    const/4 v9, 0x1

    if-lt v8, v9, :cond_45

    add-int/lit8 v8, v4, 0x1

    if-eq v8, v3, :cond_45

    .line 1314
    invoke-static {v5}, Lcom/android/server/sip/SipService;->isAllowedCharacter(C)Z

    move-result v8

    if-nez v8, :cond_45

    const/16 v8, 0x40

    if-eq v2, v8, :cond_45

    if-ne v6, v8, :cond_46

    .line 1317
    :cond_45
    move v7, v5

    .line 1319
    :cond_46
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1320
    move v2, v5

    .line 1304
    .end local v5    # "c":C
    .end local v6    # "nextC":C
    .end local v7    # "charToAppend":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1322
    .end local v4    # "i":I
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private declared-synchronized blacklist onConnectivityChanged(Landroid/net/NetworkInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/net/NetworkInfo;

    monitor-enter p0

    .line 1195
    if-eqz p1, :cond_11

    :try_start_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iget v1, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    if-eq v0, v1, :cond_20

    .line 1196
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_11
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 1197
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1198
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    move-object p1, v1

    .line 1203
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_20
    const/4 v0, -0x1

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_2f

    :cond_2e
    move v1, v0

    .line 1204
    .local v1, "networkType":I
    :goto_2f
    iget-boolean v2, p0, Lcom/android/server/sip/SipService;->mSipOnWifiOnly:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-eq v1, v3, :cond_37

    .line 1205
    const/4 v1, -0x1

    .line 1209
    :cond_37
    iget v2, p0, Lcom/android/server/sip/SipService;->mNetworkType:I
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_bc

    if-ne v2, v1, :cond_3d

    .line 1211
    monitor-exit p0

    return-void

    .line 1214
    .restart local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_3d
    :try_start_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConnectivityChanged: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_3d .. :try_end_5f} :catchall_bc

    .line 1219
    :try_start_5f
    iget v2, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    if-eq v2, v0, :cond_84

    .line 1220
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 1221
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->stopPortMappingMeasurement()V

    .line 1222
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1223
    .local v4, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V

    .line 1224
    .end local v4    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    goto :goto_73

    .line 1226
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_84
    iput v1, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    .line 1228
    iget v2, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    if-eq v2, v0, :cond_b0

    .line 1229
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->determineLocalIp()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 1230
    iput v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    .line 1231
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 1232
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1233
    .local v2, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v2, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V

    .line 1234
    .end local v2    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    goto :goto_a0

    .line 1236
    :cond_b0
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->updateWakeLocks()V
    :try_end_b3
    .catch Ljavax/sip/SipException; {:try_start_5f .. :try_end_b3} :catch_b4
    .catchall {:try_start_5f .. :try_end_b3} :catchall_bc

    .line 1239
    goto :goto_ba

    .line 1237
    :catch_b4
    move-exception v0

    .line 1238
    .local v0, "e":Ljavax/sip/SipException;
    :try_start_b5
    const-string v2, "onConnectivityChanged()"

    invoke-direct {p0, v2, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_bc

    .line 1240
    .end local v0    # "e":Ljavax/sip/SipException;
    :goto_ba
    monitor-exit p0

    return-void

    .line 1194
    .end local v1    # "networkType":I
    .end local p1    # "info":Landroid/net/NetworkInfo;
    :catchall_bc
    move-exception p1

    :try_start_bd
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw p1
.end method

.method private declared-synchronized blacklist onKeepAliveIntervalChanged()V
    .registers 3

    monitor-enter p0

    .line 443
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 444
    .local v1, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onKeepAliveIntervalChanged()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1d

    .line 445
    .end local v1    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    goto :goto_b

    .line 446
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_1b
    monitor-exit p0

    return-void

    .line 442
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private blacklist registerReceivers()V
    .registers 5

    .line 1156
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1158
    const-string v0, "registerReceivers:"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 1159
    return-void
.end method

.method private blacklist restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    .registers 4
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "maxInterval"    # I

    .line 401
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->stopPortMappingMeasurement()V

    .line 402
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    .line 404
    return-void
.end method

.method private static blacklist slog(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1286
    const-string v0, "SipService"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    return-void
.end method

.method public static blacklist start(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 106
    const-string v0, "sip"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_25

    .line 107
    new-instance v1, Lcom/android/server/sip/SipService;

    invoke-direct {v1, p0}, Lcom/android/server/sip/SipService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.sip.action.SIP_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    const-string v0, "start:"

    invoke-static {v0}, Lcom/android/server/sip/SipService;->slog(Ljava/lang/String;)V

    .line 112
    :cond_25
    return-void
.end method

.method private blacklist startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V
    .registers 3
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;

    .line 373
    const/16 v0, 0x78

    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    .line 375
    return-void
.end method

.method private blacklist startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    .registers 6
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "maxInterval"    # I

    .line 379
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    if-nez v0, :cond_56

    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_56

    iget-object v0, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 381
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPortMappingLifetimeMeasurement: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 385
    iget v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 386
    .local v0, "minInterval":I
    if-lt v0, p2, :cond_4a

    .line 389
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    move v0, v1

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  reset min interval to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 393
    :cond_4a
    new-instance v1, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;II)V

    iput-object v1, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    .line 395
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->start()V

    .line 397
    .end local v0    # "minInterval":I
    :cond_56
    return-void
.end method

.method private blacklist stopPortMappingMeasurement()V
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    if-eqz v0, :cond_c

    .line 366
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->stop()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    .line 369
    :cond_c
    return-void
.end method

.method private blacklist unregisterReceivers()V
    .registers 3

    .line 1162
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1163
    const-string v0, "unregisterReceivers:"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1167
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    .line 1168
    return-void
.end method

.method private blacklist updateWakeLocks()V
    .registers 4

    .line 1171
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1172
    .local v1, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isOpenedToReceiveCalls()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1176
    iget v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2d

    iget v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_27

    goto :goto_2d

    .line 1179
    :cond_27
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_32

    .line 1177
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1181
    :goto_32
    return-void

    .line 1183
    .end local v1    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_33
    goto :goto_a

    .line 1184
    :cond_34
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1185
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    invoke-virtual {v0}, Lcom/android/server/sip/SipWakeLock;->reset()V

    .line 1186
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist close(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 206
    :try_start_1
    const-string v0, "close"

    invoke-direct {p0, p2, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_3b

    if-nez v0, :cond_b

    .line 207
    monitor-exit p0

    return-void

    .line 209
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_3b

    .line 210
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_17

    monitor-exit p0

    return-void

    .line 211
    :cond_17
    :try_start_17
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 212
    const-string v1, "only creator or radio can close this profile"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_3b

    .line 213
    monitor-exit p0

    return-void

    .line 216
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 217
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .local v1, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->notifyProfileRemoved(Landroid/net/sip/SipProfile;)V

    .line 218
    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->close()V

    .line 220
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->updateWakeLocks()V
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_3b

    .line 221
    monitor-exit p0

    return-void

    .line 205
    .end local v1    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local p1    # "localProfileUri":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public declared-synchronized blacklist createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;
    .registers 7
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;
    .param p3, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 271
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession: profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 272
    const-string v0, "createSession"

    invoke-direct {p0, p3, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_47

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 273
    monitor-exit p0

    return-object v1

    .line 275
    :cond_22
    :try_start_22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    .line 276
    iget v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_35

    .line 277
    const-string v0, "createSession: mNetworkType==-1 ret=null"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_47

    .line 278
    monitor-exit p0

    return-object v1

    .line 281
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_35
    :try_start_35
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-result-object v0

    .line 282
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v1
    :try_end_3d
    .catch Ljavax/sip/SipException; {:try_start_35 .. :try_end_3d} :catch_3f
    .catchall {:try_start_35 .. :try_end_3d} :catchall_47

    monitor-exit p0

    return-object v1

    .line 283
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catch_3f
    move-exception v0

    .line 284
    .local v0, "e":Ljavax/sip/SipException;
    :try_start_40
    const-string v2, "createSession;"

    invoke-direct {p0, v2, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_47

    .line 285
    monitor-exit p0

    return-object v1

    .line 270
    .end local v0    # "e":Ljavax/sip/SipException;
    .end local p1    # "localProfile":Landroid/net/sip/SipProfile;
    .end local p2    # "listener":Landroid/net/sip/ISipSessionListener;
    .end local p3    # "opPackageName":Ljava/lang/String;
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public declared-synchronized blacklist getPendingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/net/sip/ISipSession;
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 291
    :try_start_1
    const-string v0, "getPendingSession"

    invoke-direct {p0, p2, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1a

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 292
    monitor-exit p0

    return-object v1

    .line 294
    :cond_c
    if-nez p1, :cond_10

    monitor-exit p0

    return-object v1

    .line 295
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/ISipSession;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 290
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    .end local p1    # "callId":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public declared-synchronized blacklist getProfiles(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 134
    :try_start_1
    const-string v0, "getProfiles"

    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 138
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->isCallerRadio()Z

    move-result v0

    .line 139
    .local v0, "isCallerRadio":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 141
    .local v3, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_30

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 142
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_30
    invoke-virtual {v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_4a

    .line 144
    .end local v3    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_37
    goto :goto_1c

    .line 145
    :cond_38
    monitor-exit p0

    return-object v1

    .line 135
    .end local v0    # "isCallerRadio":Z
    .end local v1    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    :cond_3a
    :try_start_3a
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Package %s cannot use Sip service"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    .end local p1    # "opPackageName":Ljava/lang/String;
    :catchall_4a
    move-exception p1

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public declared-synchronized blacklist isOpened(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 225
    :try_start_1
    const-string v0, "isOpened"

    invoke-direct {p0, p2, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_28

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 226
    monitor-exit p0

    return v1

    .line 228
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_28

    .line 229
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_18

    monitor-exit p0

    return v1

    .line 230
    :cond_18
    :try_start_18
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_28

    if-eqz v2, :cond_21

    .line 231
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 233
    :cond_21
    :try_start_21
    const-string v2, "only creator or radio can query on the profile"

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    .line 234
    monitor-exit p0

    return v1

    .line 224
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    .end local p1    # "localProfileUri":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public declared-synchronized blacklist isRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 240
    :try_start_1
    const-string v0, "isRegistered"

    invoke-direct {p0, p2, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2b

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 241
    monitor-exit p0

    return v1

    .line 243
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_2b

    .line 244
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_18

    monitor-exit p0

    return v1

    .line 245
    :cond_18
    :try_start_18
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 246
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isRegistered()Z

    move-result v1
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_2b

    monitor-exit p0

    return v1

    .line 248
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_24
    :try_start_24
    const-string v2, "only creator or radio can query on the profile"

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2b

    .line 249
    monitor-exit p0

    return v1

    .line 239
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local p1    # "localProfileUri":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public declared-synchronized blacklist open(Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 150
    :try_start_1
    const-string v0, "open"

    invoke-direct {p0, p2, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1e

    if-nez v0, :cond_b

    .line 151
    monitor-exit p0

    return-void

    .line 153
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/sip/SipProfile;->setCallingUid(I)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1e

    .line 155
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_15
    .catch Ljavax/sip/SipException; {:try_start_12 .. :try_end_15} :catch_16
    .catchall {:try_start_12 .. :try_end_15} :catchall_1e

    .line 159
    goto :goto_1c

    .line 156
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :catch_16
    move-exception v0

    .line 157
    .local v0, "e":Ljavax/sip/SipException;
    :try_start_17
    const-string v1, "openToMakeCalls()"

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1e

    .line 160
    .end local v0    # "e":Ljavax/sip/SipException;
    :goto_1c
    monitor-exit p0

    return-void

    .line 149
    .end local p1    # "localProfile":Landroid/net/sip/SipProfile;
    .end local p2    # "opPackageName":Ljava/lang/String;
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public declared-synchronized blacklist open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V
    .registers 7
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Landroid/net/sip/ISipSessionListener;
    .param p4, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 167
    :try_start_1
    const-string v0, "open3"

    invoke-direct {p0, p4, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_66

    if-nez v0, :cond_b

    .line 168
    monitor-exit p0

    return-void

    .line 170
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    .line 171
    if-nez p2, :cond_1b

    .line 172
    const-string v0, "open3: incomingCallPendingIntent cannot be null; the profile is not opened"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_66

    .line 174
    monitor-exit p0

    return-void

    .line 176
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sip/SipService;->obfuscateSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_1b .. :try_end_4d} :catchall_66

    .line 179
    :try_start_4d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-result-object v0

    .line 181
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 182
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->openToReceiveCalls()V

    .line 183
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->updateWakeLocks()V
    :try_end_5d
    .catch Ljavax/sip/SipException; {:try_start_4d .. :try_end_5d} :catch_5e
    .catchall {:try_start_4d .. :try_end_5d} :catchall_66

    .line 188
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_5d
    goto :goto_64

    .line 185
    :catch_5e
    move-exception v0

    .line 186
    .local v0, "e":Ljavax/sip/SipException;
    :try_start_5f
    const-string v1, "open3:"

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_66

    .line 189
    .end local v0    # "e":Ljavax/sip/SipException;
    :goto_64
    monitor-exit p0

    return-void

    .line 166
    .end local p1    # "localProfile":Landroid/net/sip/SipProfile;
    .end local p2    # "incomingCallPendingIntent":Landroid/app/PendingIntent;
    .end local p3    # "listener":Landroid/net/sip/ISipSessionListener;
    .end local p4    # "opPackageName":Ljava/lang/String;
    :catchall_66
    move-exception p1

    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p1
.end method

.method public declared-synchronized blacklist setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V
    .registers 6
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;
    .param p3, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 256
    :try_start_1
    const-string v0, "setRegistrationListener"

    invoke-direct {p0, p3, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_28

    if-nez v0, :cond_b

    .line 257
    monitor-exit p0

    return-void

    .line 259
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_28

    .line 260
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_17

    monitor-exit p0

    return-void

    .line 261
    :cond_17
    :try_start_17
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 262
    invoke-virtual {v0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setListener(Landroid/net/sip/ISipSessionListener;)V

    goto :goto_26

    .line 264
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_21
    const-string v1, "only creator can set listener on the profile"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_28

    .line 266
    :goto_26
    monitor-exit p0

    return-void

    .line 255
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local p1    # "localProfileUri":Ljava/lang/String;
    .end local p2    # "listener":Landroid/net/sip/ISipSessionListener;
    .end local p3    # "opPackageName":Ljava/lang/String;
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method
