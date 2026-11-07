.class public Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;,
        Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;,
        Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;,
        Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;,
        Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;,
        Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$DefaultNetworkCallback;,
        Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;,
        Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;,
        Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

.field private blacklist mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIgnoreNextBroadcast:Z

.field private final blacklist mIntentFilter:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

.field private final blacklist mLooper:Landroid/os/Looper;

.field private blacklist mNetworkCallback:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

.field private blacklist mNetworkRequest:Landroid/net/NetworkRequest;

.field private blacklist mNetworkState:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

.field private final blacklist mObserver:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

.field private blacklist mRegisterNetworkCallbackFailed:Z

.field private blacklist mRegistered:Z

.field private final blacklist mRegistrationPolicy:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

.field private blacklist mShouldSignalObserver:Z

.field private blacklist mWifiManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;


# direct methods
.method public static synthetic blacklist $r8$lambda$4YImEIJ9VM8hDN15UphigKZEQeM(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->lambda$setWifiManagerDelegateForTests$2(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dCL_1Gh6TlQ7jS4PAg3E6ogmesI(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->lambda$runOnThread$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sFqsCS2uZnXi7q_kAL1hWr7x9nE(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->lambda$setConnectivityManagerDelegateForTests$1(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectivityManagerDelegate(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIgnoreNextBroadcast(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mIgnoreNextBroadcast:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmObserver(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegistered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIgnoreNextBroadcast(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mIgnoreNextBroadcast:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconnectionTypeChanged(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->connectionTypeChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconnectionTypeChangedTo(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->connectionTypeChangedTo(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOnThread(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->runOnThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertToConnectionType(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->convertToConnectionType(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetAllNetworksFiltered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;
    .registers 2

    invoke-static {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->getAllNetworksFiltered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 929
    const-class v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;)V
    .registers 7
    .param p1, "observer"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;
    .param p2, "policy"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    .line 1023
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1024
    nop

    .line 1025
    const-string v0, "NetworkChangeNotifierAutoDetect.constructor"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1026
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mLooper:Landroid/os/Looper;

    .line 1027
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mHandler:Landroid/os/Handler;

    .line 1028
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    .line 1029
    new-instance v1, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 1030
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 1031
    nop

    .line 1035
    new-instance v1, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect-IA;)V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    .line 1036
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1038
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1040
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1041
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1048
    nop

    .line 1049
    new-instance v1, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;

    invoke-direct {v1, p0, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect-IA;)V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1056
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->updateCurrentNetworkState()V

    .line 1057
    new-instance v1, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;-><init>()V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mIntentFilter:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    .line 1058
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mIgnoreNextBroadcast:Z

    .line 1059
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mShouldSignalObserver:Z

    .line 1060
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistrationPolicy:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    .line 1061
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistrationPolicy:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    invoke-virtual {v1, p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->init(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V

    .line 1062
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mShouldSignalObserver:Z
    :try_end_67
    .catchall {:try_start_a .. :try_end_67} :catchall_6d

    .line 1063
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1064
    .end local v0    # "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_6c
    return-void

    .line 1024
    .restart local v0    # "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_6d
    move-exception v1

    if-eqz v0, :cond_78

    :try_start_70
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    :catchall_74
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_78
    :goto_78
    throw v1
.end method

.method private blacklist assertOnThread()V
    .registers 3

    .line 1071
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->onThread()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 1072
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called on NetworkChangeNotifierAutoDetect thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1075
    :cond_13
    :goto_13
    return-void
.end method

.method private blacklist connectionTypeChanged()V
    .registers 4

    .line 1380
    nop

    .line 1381
    const-string v0, "NetworkChangeNotifierAutoDetect.connectionTypeChanged"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1383
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .line 1384
    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v1

    .line 1383
    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->connectionTypeChangedTo(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_18

    .line 1385
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1386
    .end local v0    # "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_17
    return-void

    .line 1380
    .restart local v0    # "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_18
    move-exception v1

    if-eqz v0, :cond_23

    :try_start_1b
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    throw v1
.end method

.method private blacklist connectionTypeChangedTo(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V
    .registers 4
    .param p1, "networkState"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .line 1389
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionType()I

    move-result v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkState:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionType()I

    move-result v1

    if-ne v0, v1, :cond_38

    .line 1390
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkState:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1391
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->isPrivateDnsActive()Z

    move-result v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkState:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->isPrivateDnsActive()Z

    move-result v1

    if-ne v0, v1, :cond_38

    .line 1393
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkState:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .line 1394
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1395
    :cond_38
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionType()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onConnectionTypeChanged(I)V

    .line 1397
    :cond_41
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionType()I

    move-result v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkState:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionType()I

    move-result v1

    if-ne v0, v1, :cond_59

    .line 1398
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionSubtype()I

    move-result v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkState:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionSubtype()I

    move-result v1

    if-eq v0, v1, :cond_62

    .line 1399
    :cond_59
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionSubtype()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onConnectionSubtypeChanged(I)V

    .line 1401
    :cond_62
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionCost()I

    move-result v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkState:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionCost()I

    move-result v1

    if-eq v0, v1, :cond_77

    .line 1402
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionCost()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onConnectionCostChanged(I)V

    .line 1404
    :cond_77
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkState:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .line 1405
    return-void
.end method

.method private static blacklist convertToConnectionType(II)I
    .registers 4
    .param p0, "type"    # I
    .param p1, "subtype"    # I

    .line 1321
    const/4 v0, 0x5

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_1a

    .line 1359
    :pswitch_5
    return v1

    .line 1323
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 1329
    :pswitch_8
    const/4 v0, 0x7

    return v0

    .line 1327
    :pswitch_a
    return v0

    .line 1325
    :pswitch_b
    const/4 v0, 0x2

    return v0

    .line 1334
    :pswitch_d
    packed-switch p1, :pswitch_data_32

    .line 1356
    :pswitch_10
    return v1

    .line 1354
    :pswitch_11
    const/16 v0, 0x8

    return v0

    .line 1352
    :pswitch_14
    return v0

    .line 1350
    :pswitch_15
    const/4 v0, 0x4

    return v0

    .line 1340
    :pswitch_17
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_15
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_17
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private static blacklist getAllNetworksFiltered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;
    .registers 10
    .param p0, "connectivityManagerDelegate"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
    .param p1, "ignoreNetwork"    # Landroid/net/Network;

    .line 1237
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getAllNetworksUnfiltered()[Landroid/net/Network;

    move-result-object v0

    .line 1239
    .local v0, "networks":[Landroid/net/Network;
    const/4 v1, 0x0

    .line 1240
    .local v1, "filteredIndex":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_3e

    aget-object v5, v0, v4

    .line 1241
    .local v5, "network":Landroid/net/Network;
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1242
    goto :goto_3b

    .line 1244
    :cond_13
    nop

    .line 1245
    invoke-virtual {p0, v5}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 1246
    .local v6, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v6, :cond_3b

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-nez v7, :cond_23

    .line 1247
    goto :goto_3b

    .line 1249
    :cond_23
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 1251
    invoke-virtual {p0, v5}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->vpnAccessible(Landroid/net/Network;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 1253
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Network;

    aput-object v5, v2, v3

    return-object v2

    .line 1259
    :cond_36
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "filteredIndex":I
    .local v7, "filteredIndex":I
    aput-object v5, v0, v1

    move v1, v7

    .line 1240
    .end local v5    # "network":Landroid/net/Network;
    .end local v6    # "capabilities":Landroid/net/NetworkCapabilities;
    .end local v7    # "filteredIndex":I
    .restart local v1    # "filteredIndex":I
    :cond_3b
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1261
    :cond_3e
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Network;

    return-object v2
.end method

.method private synthetic blacklist lambda$runOnThread$0(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1085
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1086
    :cond_7
    return-void
.end method

.method private synthetic blacklist lambda$setConnectivityManagerDelegateForTests$1(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;)V
    .registers 2
    .param p1, "oldValue"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 1094
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    return-void
.end method

.method private synthetic blacklist lambda$setWifiManagerDelegateForTests$2(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;)V
    .registers 2
    .param p1, "oldValue"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .line 1101
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    return-void
.end method

.method public static blacklist networkToNetId(Landroid/net/Network;)J
    .registers 3
    .param p0, "network"    # Landroid/net/Network;

    .line 1419
    nop

    .line 1420
    invoke-virtual {p0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist onThread()Z
    .registers 3

    .line 1067
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist runOnThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1078
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->onThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1079
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_14

    .line 1083
    :cond_a
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1088
    :goto_14
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 2

    .line 1115
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->assertOnThread()V

    .line 1116
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistrationPolicy:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->destroy()V

    .line 1117
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->unregister()V

    .line 1118
    return-void
.end method

.method public blacklist getCurrentNetworkState()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    .registers 4

    .line 1224
    nop

    .line 1225
    const-string v0, "NetworkChangeNotifierAutoDetect.getCurrentNetworkState"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1227
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkState:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_f

    .line 1228
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1227
    :cond_e
    return-object v1

    .line 1224
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_1a

    :try_start_12
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw v1
.end method

.method public blacklist getDefaultNetId()J
    .registers 4

    .line 1306
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->getDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1307
    .local v0, "network":Landroid/net/Network;
    if-nez v0, :cond_9

    const-wide/16 v1, -0x1

    goto :goto_d

    :cond_9
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v1

    :goto_d
    return-wide v1
.end method

.method public blacklist getDefaultNetwork()Landroid/net/Network;
    .registers 2

    .line 1297
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNetworksAndTypes()[J
    .registers 11

    .line 1278
    nop

    .line 1279
    const-string v0, "NetworkChangeNotifierAutoDetect.getNetworksAndTypes"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1280
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->getAllNetworksFiltered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v1

    .line 1281
    .local v1, "networks":[Landroid/net/Network;
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    .line 1282
    .local v2, "networksAndTypes":[J
    const/4 v3, 0x0

    .line 1283
    .local v3, "index":I
    array-length v4, v1

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_30

    aget-object v6, v1, v5

    .line 1284
    .local v6, "network":Landroid/net/Network;
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .local v7, "index":I
    invoke-static {v6}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v8

    aput-wide v8, v2, v3

    .line 1285
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "index":I
    .restart local v3    # "index":I
    iget-object v8, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v8, v6}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getConnectionType(Landroid/net/Network;)I

    move-result v8

    int-to-long v8, v8

    aput-wide v8, v2, v7
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_37

    .line 1283
    .end local v6    # "network":Landroid/net/Network;
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 1287
    :cond_30
    nop

    .line 1288
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1287
    :cond_36
    return-object v2

    .line 1278
    .end local v1    # "networks":[Landroid/net/Network;
    .end local v2    # "networksAndTypes":[J
    .end local v3    # "index":I
    :catchall_37
    move-exception v1

    if-eqz v0, :cond_42

    :try_start_3a
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw v1
.end method

.method public blacklist getNetworksForTesting()[Landroid/net/Network;
    .registers 3

    .line 1266
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->getAllNetworksFiltered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method blacklist getRegistrationPolicy()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;
    .registers 2

    .line 1106
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistrationPolicy:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    return-object v0
.end method

.method blacklist isReceiverRegisteredForTesting()Z
    .registers 2

    .line 1111
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    return v0
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1366
    new-instance v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$1;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->runOnThread(Ljava/lang/Runnable;)V

    .line 1377
    return-void
.end method

.method public blacklist register()V
    .registers 8

    .line 1122
    nop

    .line 1123
    const-string v0, "NetworkChangeNotifierAutoDetect.register"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1124
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->assertOnThread()V

    .line 1125
    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    if-eqz v1, :cond_17

    .line 1130
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->connectionTypeChanged()V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_8e

    .line 1192
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1131
    :cond_16
    return-void

    .line 1134
    :cond_17
    :try_start_17
    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mShouldSignalObserver:Z

    if-eqz v1, :cond_1e

    .line 1135
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->connectionTypeChanged()V

    .line 1137
    :cond_1e
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_8e

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 1139
    :try_start_23
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v4, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_2c} :catch_2d
    .catchall {:try_start_23 .. :try_end_2c} :catchall_8e

    .line 1145
    goto :goto_30

    .line 1141
    :catch_2d
    move-exception v1

    .line 1144
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2e
    iput-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1147
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_30
    :goto_30
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v3, 0x1

    if-nez v1, :cond_47

    .line 1155
    nop

    .line 1157
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mIntentFilter:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    .line 1156
    invoke-static {v1, p0, v4}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_44

    move v1, v3

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mIgnoreNextBroadcast:Z

    .line 1160
    :cond_47
    iput-boolean v3, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    .line 1162
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    if-eqz v1, :cond_88

    .line 1163
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->initializeVpnInPlace()V
    :try_end_52
    .catchall {:try_start_2e .. :try_end_52} :catchall_8e

    .line 1165
    :try_start_52
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    iget-object v4, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    iget-object v6, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v5, v6}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_5d} :catch_5e
    .catchall {:try_start_52 .. :try_end_5d} :catchall_8e

    .line 1175
    goto :goto_63

    .line 1167
    :catch_5e
    move-exception v1

    .line 1168
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :try_start_5f
    iput-boolean v3, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegisterNetworkCallbackFailed:Z

    .line 1174
    iput-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    .line 1176
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_63
    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegisterNetworkCallbackFailed:Z

    if-nez v1, :cond_88

    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mShouldSignalObserver:Z

    if-eqz v1, :cond_88

    .line 1182
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 1183
    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->getAllNetworksFiltered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v1

    .line 1185
    .local v1, "networks":[Landroid/net/Network;
    array-length v2, v1

    new-array v2, v2, [J

    .line 1186
    .local v2, "netIds":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_75
    array-length v4, v1

    if-ge v3, v4, :cond_83

    .line 1187
    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1186
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 1189
    .end local v3    # "i":I
    :cond_83
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v3, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->purgeActiveNetworkList([J)V
    :try_end_88
    .catchall {:try_start_5f .. :try_end_88} :catchall_8e

    .line 1192
    .end local v1    # "networks":[Landroid/net/Network;
    .end local v2    # "netIds":[J
    :cond_88
    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1193
    .end local v0    # "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_8d
    return-void

    .line 1122
    .restart local v0    # "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_8e
    move-exception v1

    if-eqz v0, :cond_99

    :try_start_91
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_99
    :goto_99
    throw v1
.end method

.method public blacklist registerNetworkCallbackFailed()Z
    .registers 2

    .line 1315
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegisterNetworkCallbackFailed:Z

    return v0
.end method

.method blacklist setConnectivityManagerDelegateForTests(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;)V
    .registers 4
    .param p1, "delegate"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 1092
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 1093
    .local v0, "oldValue":Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 1094
    new-instance v1, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;)V

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 1095
    return-void
.end method

.method blacklist setWifiManagerDelegateForTests(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;)V
    .registers 4
    .param p1, "delegate"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .line 1099
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .line 1100
    .local v0, "oldValue":Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .line 1101
    new-instance v1, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda2;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;)V

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 1102
    return-void
.end method

.method public blacklist unregister()V
    .registers 3

    .line 1197
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->assertOnThread()V

    .line 1198
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    if-nez v0, :cond_8

    return-void

    .line 1199
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    .line 1200
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    if-eqz v0, :cond_16

    .line 1201
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1203
    :cond_16
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_22

    .line 1204
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_29

    .line 1206
    :cond_22
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1208
    :goto_29
    return-void
.end method

.method public blacklist updateCurrentNetworkState()V
    .registers 4

    .line 1216
    nop

    .line 1217
    const-string v0, "NetworkChangeNotifierAutoDetect.updateCurrentNetworkState"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1219
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v1

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkState:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_17

    .line 1220
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1221
    .end local v0    # "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_16
    return-void

    .line 1216
    .restart local v0    # "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_17
    move-exception v1

    if-eqz v0, :cond_22

    :try_start_1a
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw v1
.end method
