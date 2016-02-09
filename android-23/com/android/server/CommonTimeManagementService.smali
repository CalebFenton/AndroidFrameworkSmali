.class Lcom/android/server/CommonTimeManagementService;
.super Landroid/os/Binder;
.source "CommonTimeManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;,
        Lcom/android/server/CommonTimeManagementService$1;,
        Lcom/android/server/CommonTimeManagementService$2;,
        Lcom/android/server/CommonTimeManagementService$3;,
        Lcom/android/server/CommonTimeManagementService$4;,
        Lcom/android/server/CommonTimeManagementService$5;
    }
.end annotation


# static fields
.field private static final ALLOW_WIFI:Z

.field private static final ALLOW_WIFI_PROP:Ljava/lang/String; = "ro.common_time.allow_wifi"

.field private static final AUTO_DISABLE:Z

.field private static final AUTO_DISABLE_PROP:Ljava/lang/String; = "ro.common_time.auto_disable"

.field private static final BASE_SERVER_PRIO:B

.field private static final IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

.field private static final NATIVE_SERVICE_RECONNECT_TIMEOUT:I = 0x1388

.field private static final NO_INTERFACE_TIMEOUT:I

.field private static final NO_INTERFACE_TIMEOUT_PROP:Ljava/lang/String; = "ro.common_time.no_iface_timeout"

.field private static final SERVER_PRIO_PROP:Ljava/lang/String; = "ro.common_time.server_prio"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCTConfig:Landroid/os/CommonTimeConfig;

.field private mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

.field private mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurIface:Ljava/lang/String;

.field private mDetectedAtStartup:Z

.field private mEffectivePrio:B

.field private mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

.field private mLock:Ljava/lang/Object;

.field private mNetMgr:Landroid/os/INetworkManagementService;

.field private mNoInterfaceHandler:Landroid/os/Handler;

.field private mNoInterfaceRunnable:Ljava/lang/Runnable;

.field private mReconnectHandler:Landroid/os/Handler;

.field private mReconnectRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->connectToTimeConfig()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->handleNoInterfaceTimeout()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/16 v5, 0x1e

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v2, 0x1

    #@5
    .line 51
    const-class v1, Lcom/android/server/CommonTimeManagementService;

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    sput-object v1, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    #@d
    .line 65
    const-string/jumbo v1, "ro.common_time.auto_disable"

    #@10
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    move v1, v2

    #@17
    :goto_0
    sput-boolean v1, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    #@19
    .line 66
    const-string/jumbo v1, "ro.common_time.allow_wifi"

    #@1c
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    move v1, v2

    #@23
    :goto_1
    sput-boolean v1, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    #@25
    .line 67
    const-string/jumbo v1, "ro.common_time.server_prio"

    #@28
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@2b
    move-result v0

    #@2c
    .line 68
    .local v0, "tmp":I
    const-string/jumbo v1, "ro.common_time.no_iface_timeout"

    #@2f
    const v4, 0xea60

    #@32
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@35
    move-result v1

    #@36
    sput v1, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    #@38
    .line 70
    if-ge v0, v2, :cond_2

    #@3a
    .line 71
    sput-byte v2, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    #@3c
    .line 78
    :goto_2
    sget-boolean v1, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    #@3e
    if-eqz v1, :cond_4

    #@40
    .line 79
    new-array v1, v6, [Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    #@42
    .line 80
    new-instance v4, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    #@44
    const-string/jumbo v5, "wlan"

    #@47
    invoke-direct {v4, v5, v2}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    #@4a
    aput-object v4, v1, v3

    #@4c
    .line 81
    new-instance v3, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    #@4e
    const-string/jumbo v4, "eth"

    #@51
    invoke-direct {v3, v4, v6}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    #@54
    aput-object v3, v1, v2

    #@56
    .line 79
    sput-object v1, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    #@58
    .line 47
    :goto_3
    return-void

    #@59
    .end local v0    # "tmp":I
    :cond_0
    move v1, v3

    #@5a
    .line 65
    goto :goto_0

    #@5b
    :cond_1
    move v1, v3

    #@5c
    .line 66
    goto :goto_1

    #@5d
    .line 73
    .restart local v0    # "tmp":I
    :cond_2
    if-le v0, v5, :cond_3

    #@5f
    .line 74
    sput-byte v5, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    #@61
    goto :goto_2

    #@62
    .line 76
    :cond_3
    int-to-byte v1, v0

    #@63
    sput-byte v1, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    #@65
    goto :goto_2

    #@66
    .line 84
    :cond_4
    new-array v1, v2, [Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    #@68
    .line 85
    new-instance v2, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    #@6a
    const-string/jumbo v4, "eth"

    #@6d
    invoke-direct {v2, v4, v6}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    #@70
    aput-object v2, v1, v3

    #@72
    .line 84
    sput-object v1, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    #@74
    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 146
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 97
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    #@a
    .line 98
    new-instance v0, Landroid/os/Handler;

    #@c
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    #@11
    .line 99
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    #@18
    .line 100
    const/4 v0, 0x0

    #@19
    iput-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    #@1b
    .line 101
    sget-byte v0, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    #@1d
    iput-byte v0, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    #@1f
    .line 106
    new-instance v0, Lcom/android/server/CommonTimeManagementService$1;

    #@21
    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$1;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    #@24
    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    #@26
    .line 121
    new-instance v0, Lcom/android/server/CommonTimeManagementService$2;

    #@28
    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$2;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    #@2b
    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

    #@2d
    .line 129
    new-instance v0, Lcom/android/server/CommonTimeManagementService$3;

    #@2f
    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$3;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    #@32
    .line 128
    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    #@34
    .line 135
    new-instance v0, Lcom/android/server/CommonTimeManagementService$4;

    #@36
    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$4;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    #@39
    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    #@3b
    .line 139
    new-instance v0, Lcom/android/server/CommonTimeManagementService$5;

    #@3d
    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$5;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    #@40
    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    #@42
    .line 147
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    #@44
    .line 146
    return-void
.end method

.method private cleanupTimeConfig()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 224
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    #@3
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    #@5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@8
    .line 225
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    #@a
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@f
    .line 226
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 227
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@15
    invoke-virtual {v0}, Landroid/os/CommonTimeConfig;->release()V

    #@18
    .line 228
    iput-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@1a
    .line 223
    :cond_0
    return-void
.end method

.method private connectToTimeConfig()V
    .locals 6

    #@0
    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->cleanupTimeConfig()V

    #@3
    .line 238
    :try_start_0
    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 239
    :try_start_1
    new-instance v1, Landroid/os/CommonTimeConfig;

    #@8
    invoke-direct {v1}, Landroid/os/CommonTimeConfig;-><init>()V

    #@b
    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@d
    .line 240
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@f
    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    #@11
    invoke-virtual {v1, v3}, Landroid/os/CommonTimeConfig;->setServerDiedListener(Landroid/os/CommonTimeConfig$OnServerDiedListener;)V

    #@14
    .line 241
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@16
    invoke-virtual {v1}, Landroid/os/CommonTimeConfig;->getInterfaceBinding()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    #@1c
    .line 242
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@1e
    sget-boolean v3, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    #@20
    invoke-virtual {v1, v3}, Landroid/os/CommonTimeConfig;->setAutoDisable(Z)I

    #@23
    .line 243
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@25
    iget-byte v3, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    #@27
    invoke-virtual {v1, v3}, Landroid/os/CommonTimeConfig;->setMasterElectionPriority(B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    :try_start_2
    monitor-exit v2

    #@2b
    .line 246
    sget v1, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    #@2d
    if-ltz v1, :cond_0

    #@2f
    .line 247
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    #@31
    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    #@33
    sget v3, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    #@35
    int-to-long v4, v3

    #@36
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@39
    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V

    #@3c
    .line 232
    :goto_0
    return-void

    #@3d
    .line 238
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@40
    .line 251
    :catch_0
    move-exception v0

    #@41
    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    #@44
    goto :goto_0
.end method

.method private handleNoInterfaceTimeout()V
    .locals 2

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 266
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "Timeout waiting for interface to come up.  Forcing networkless master mode."

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 268
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@e
    invoke-virtual {v0}, Landroid/os/CommonTimeConfig;->forceNetworklessMasterMode()I

    #@11
    move-result v0

    #@12
    const/4 v1, -0x7

    #@13
    if-ne v1, v0, :cond_0

    #@15
    .line 269
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    #@18
    .line 264
    :cond_0
    return-void
.end method

.method private reevaluateServiceState()V
    .locals 19

    #@0
    .prologue
    .line 274
    const/4 v3, 0x0

    #@1
    .line 275
    .local v3, "bindIface":Ljava/lang/String;
    const/4 v2, -0x1

    #@2
    .line 300
    .local v2, "bestScore":B
    :try_start_0
    move-object/from16 v0, p0

    #@4
    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    #@6
    invoke-interface {v13}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    #@9
    move-result-object v8

    #@a
    .line 301
    .local v8, "ifaceList":[Ljava/lang/String;
    if-eqz v8, :cond_4

    #@c
    .line 302
    const/4 v13, 0x0

    #@d
    array-length v15, v8

    #@e
    move v14, v13

    #@f
    .end local v2    # "bestScore":B
    .end local v3    # "bindIface":Ljava/lang/String;
    :goto_0
    if-ge v14, v15, :cond_4

    #@11
    aget-object v7, v8, v14

    #@13
    .line 304
    .local v7, "iface":Ljava/lang/String;
    const/4 v12, -0x1

    #@14
    .line 305
    .local v12, "thisScore":B
    sget-object v16, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    #@16
    const/4 v13, 0x0

    #@17
    move-object/from16 v0, v16

    #@19
    array-length v0, v0

    #@1a
    move/from16 v17, v0

    #@1c
    :goto_1
    move/from16 v0, v17

    #@1e
    if-ge v13, v0, :cond_0

    #@20
    aget-object v10, v16, v13

    #@22
    .line 306
    .local v10, "r":Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    iget-object v0, v10, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mPrefix:Ljava/lang/String;

    #@24
    move-object/from16 v18, v0

    #@26
    move-object/from16 v0, v18

    #@28
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@2b
    move-result v18

    #@2c
    if-eqz v18, :cond_2

    #@2e
    .line 307
    iget-byte v12, v10, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mScore:B

    #@30
    .line 312
    .end local v10    # "r":Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    .end local v12    # "thisScore":B
    :cond_0
    if-gt v12, v2, :cond_3

    #@32
    .line 302
    :cond_1
    :goto_2
    add-int/lit8 v13, v14, 0x1

    #@34
    move v14, v13

    #@35
    goto :goto_0

    #@36
    .line 305
    .restart local v10    # "r":Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    .restart local v12    # "thisScore":B
    :cond_2
    add-int/lit8 v13, v13, 0x1

    #@38
    goto :goto_1

    #@39
    .line 315
    .end local v10    # "r":Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    .end local v12    # "thisScore":B
    :cond_3
    move-object/from16 v0, p0

    #@3b
    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    #@3d
    invoke-interface {v13, v7}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@40
    move-result-object v4

    #@41
    .line 316
    .local v4, "config":Landroid/net/InterfaceConfiguration;
    if-eqz v4, :cond_1

    #@43
    .line 319
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->isActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    move-result v13

    #@47
    if-eqz v13, :cond_1

    #@49
    .line 320
    move-object v3, v7

    #@4a
    .line 321
    .local v3, "bindIface":Ljava/lang/String;
    move v2, v12

    #@4b
    .local v2, "bestScore":B
    goto :goto_2

    #@4c
    .line 326
    .end local v2    # "bestScore":B
    .end local v3    # "bindIface":Ljava/lang/String;
    .end local v4    # "config":Landroid/net/InterfaceConfiguration;
    .end local v7    # "iface":Ljava/lang/String;
    .end local v8    # "ifaceList":[Ljava/lang/String;
    :catch_0
    move-exception v6

    #@4d
    .line 331
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    #@4e
    .line 334
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v5, 0x1

    #@4f
    .line 335
    .local v5, "doRebind":Z
    move-object/from16 v0, p0

    #@51
    iget-object v14, v0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    #@53
    monitor-enter v14

    #@54
    .line 336
    if-eqz v3, :cond_7

    #@56
    :try_start_1
    move-object/from16 v0, p0

    #@58
    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    #@5a
    if-nez v13, :cond_7

    #@5c
    .line 337
    sget-object v13, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    #@5e
    const-string/jumbo v15, "Binding common time service to %s."

    #@61
    const/16 v16, 0x1

    #@63
    move/from16 v0, v16

    #@65
    new-array v0, v0, [Ljava/lang/Object;

    #@67
    move-object/from16 v16, v0

    #@69
    const/16 v17, 0x0

    #@6b
    aput-object v3, v16, v17

    #@6d
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@70
    move-result-object v15

    #@71
    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 338
    move-object/from16 v0, p0

    #@76
    iput-object v3, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@78
    :goto_3
    monitor-exit v14

    #@79
    .line 353
    if-eqz v5, :cond_6

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@7f
    if-eqz v13, :cond_6

    #@81
    .line 354
    if-lez v2, :cond_b

    #@83
    .line 355
    sget-byte v13, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    #@85
    mul-int/2addr v13, v2

    #@86
    int-to-byte v9, v13

    #@87
    .line 357
    .local v9, "newPrio":B
    :goto_4
    move-object/from16 v0, p0

    #@89
    iget-byte v13, v0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    #@8b
    if-eq v9, v13, :cond_5

    #@8d
    .line 358
    move-object/from16 v0, p0

    #@8f
    iput-byte v9, v0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    #@91
    .line 359
    move-object/from16 v0, p0

    #@93
    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@95
    move-object/from16 v0, p0

    #@97
    iget-byte v14, v0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    #@99
    invoke-virtual {v13, v14}, Landroid/os/CommonTimeConfig;->setMasterElectionPriority(B)I

    #@9c
    .line 362
    :cond_5
    move-object/from16 v0, p0

    #@9e
    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@a0
    move-object/from16 v0, p0

    #@a2
    iget-object v14, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    #@a4
    invoke-virtual {v13, v14}, Landroid/os/CommonTimeConfig;->setNetworkBinding(Ljava/lang/String;)I

    #@a7
    move-result v11

    #@a8
    .line 363
    .local v11, "res":I
    if-eqz v11, :cond_c

    #@aa
    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    #@ad
    .line 273
    .end local v9    # "newPrio":B
    .end local v11    # "res":I
    :cond_6
    :goto_5
    return-void

    #@ae
    .line 340
    :cond_7
    if-nez v3, :cond_8

    #@b0
    :try_start_2
    move-object/from16 v0, p0

    #@b2
    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    #@b4
    if-eqz v13, :cond_8

    #@b6
    .line 341
    sget-object v13, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    #@b8
    const-string/jumbo v15, "Unbinding common time service."

    #@bb
    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@be
    .line 342
    const/4 v13, 0x0

    #@bf
    move-object/from16 v0, p0

    #@c1
    iput-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c3
    goto :goto_3

    #@c4
    .line 335
    :catchall_0
    move-exception v13

    #@c5
    monitor-exit v14

    #@c6
    throw v13

    #@c7
    .line 344
    :cond_8
    if-eqz v3, :cond_9

    #@c9
    :try_start_3
    move-object/from16 v0, p0

    #@cb
    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    #@cd
    if-eqz v13, :cond_9

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    #@d3
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d6
    move-result v13

    #@d7
    if-eqz v13, :cond_a

    #@d9
    .line 349
    :cond_9
    const/4 v5, 0x0

    #@da
    goto :goto_3

    #@db
    .line 345
    :cond_a
    sget-object v13, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    #@dd
    const-string/jumbo v15, "Switching common time service binding from %s to %s."

    #@e0
    const/16 v16, 0x2

    #@e2
    move/from16 v0, v16

    #@e4
    new-array v0, v0, [Ljava/lang/Object;

    #@e6
    move-object/from16 v16, v0

    #@e8
    .line 346
    move-object/from16 v0, p0

    #@ea
    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    #@ec
    move-object/from16 v17, v0

    #@ee
    const/16 v18, 0x0

    #@f0
    aput-object v17, v16, v18

    #@f2
    const/16 v17, 0x1

    #@f4
    aput-object v3, v16, v17

    #@f6
    .line 345
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f9
    move-result-object v15

    #@fa
    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@fd
    .line 347
    move-object/from16 v0, p0

    #@ff
    iput-object v3, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@101
    goto/16 :goto_3

    #@103
    .line 356
    :cond_b
    sget-byte v9, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    #@105
    .restart local v9    # "newPrio":B
    goto :goto_4

    #@106
    .line 366
    .restart local v11    # "res":I
    :cond_c
    sget v13, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    #@108
    if-ltz v13, :cond_6

    #@10a
    .line 367
    move-object/from16 v0, p0

    #@10c
    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    #@10e
    move-object/from16 v0, p0

    #@110
    iget-object v14, v0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    #@112
    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@115
    .line 368
    move-object/from16 v0, p0

    #@117
    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    #@119
    if-nez v13, :cond_6

    #@11b
    .line 369
    move-object/from16 v0, p0

    #@11d
    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v14, v0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    #@123
    sget v15, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    #@125
    int-to-long v0, v15

    #@126
    move-wide/from16 v16, v0

    #@128
    move-wide/from16 v0, v16

    #@12a
    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@12d
    goto :goto_5
.end method

.method private scheduleTimeConfigReconnect()V
    .locals 5

    #@0
    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->cleanupTimeConfig()V

    #@3
    .line 258
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    #@5
    const-string/jumbo v1, "Native service died, will reconnect in %d mSec"

    #@8
    const/4 v2, 0x1

    #@9
    new-array v2, v2, [Ljava/lang/Object;

    #@b
    .line 259
    const/16 v3, 0x1388

    #@d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v3

    #@11
    const/4 v4, 0x0

    #@12
    aput-object v3, v2, v4

    #@14
    .line 258
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 260
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    #@1d
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    #@1f
    .line 261
    const-wide/16 v2, 0x1388

    #@21
    .line 260
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@24
    .line 256
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 180
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v1, "android.permission.DUMP"

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 183
    const-string/jumbo v0, "Permission Denial: can\'t dump CommonTimeManagement service from from pid=%d, uid=%d"

    #@10
    .line 182
    const/4 v1, 0x2

    #@11
    new-array v1, v1, [Ljava/lang/Object;

    #@13
    .line 184
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@16
    move-result v2

    #@17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v2

    #@1b
    aput-object v2, v1, v3

    #@1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@20
    move-result v2

    #@21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v2

    #@25
    aput-object v2, v1, v4

    #@27
    .line 182
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 185
    return-void

    #@2f
    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    #@31
    if-nez v0, :cond_1

    #@33
    .line 189
    const-string/jumbo v0, "Native Common Time service was not detected at startup.  Service is unavailable"

    #@36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 191
    return-void

    #@3a
    .line 194
    :cond_1
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    #@3c
    monitor-enter v1

    #@3d
    .line 195
    :try_start_0
    const-string/jumbo v0, "Current Common Time Management Service Config:"

    #@40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 196
    const-string/jumbo v2, "  Native service     : %s"

    #@46
    const/4 v0, 0x1

    #@47
    new-array v3, v0, [Ljava/lang/Object;

    #@49
    .line 197
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    #@4b
    if-nez v0, :cond_2

    #@4d
    const-string/jumbo v0, "reconnecting"

    #@50
    :goto_0
    const/4 v4, 0x0

    #@51
    aput-object v0, v3, v4

    #@53
    .line 196
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 199
    const-string/jumbo v2, "  Bound interface    : %s"

    #@5d
    const/4 v0, 0x1

    #@5e
    new-array v3, v0, [Ljava/lang/Object;

    #@60
    .line 200
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    #@62
    if-nez v0, :cond_3

    #@64
    const-string/jumbo v0, "unbound"

    #@67
    :goto_1
    const/4 v4, 0x0

    #@68
    aput-object v0, v3, v4

    #@6a
    .line 199
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71
    .line 201
    const-string/jumbo v2, "  Allow WiFi         : %s"

    #@74
    const/4 v0, 0x1

    #@75
    new-array v3, v0, [Ljava/lang/Object;

    #@77
    sget-boolean v0, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    #@79
    if-eqz v0, :cond_4

    #@7b
    const-string/jumbo v0, "yes"

    #@7e
    :goto_2
    const/4 v4, 0x0

    #@7f
    aput-object v0, v3, v4

    #@81
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@88
    .line 202
    const-string/jumbo v2, "  Allow Auto Disable : %s"

    #@8b
    const/4 v0, 0x1

    #@8c
    new-array v3, v0, [Ljava/lang/Object;

    #@8e
    sget-boolean v0, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    #@90
    if-eqz v0, :cond_5

    #@92
    const-string/jumbo v0, "yes"

    #@95
    :goto_3
    const/4 v4, 0x0

    #@96
    aput-object v0, v3, v4

    #@98
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 203
    const-string/jumbo v0, "  Server Priority    : %d"

    #@a2
    const/4 v2, 0x1

    #@a3
    new-array v2, v2, [Ljava/lang/Object;

    #@a5
    iget-byte v3, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    #@a7
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@aa
    move-result-object v3

    #@ab
    const/4 v4, 0x0

    #@ac
    aput-object v3, v2, v4

    #@ae
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b1
    move-result-object v0

    #@b2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b5
    .line 204
    const-string/jumbo v0, "  No iface timeout   : %d"

    #@b8
    const/4 v2, 0x1

    #@b9
    new-array v2, v2, [Ljava/lang/Object;

    #@bb
    sget v3, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    #@bd
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c0
    move-result-object v3

    #@c1
    const/4 v4, 0x0

    #@c2
    aput-object v3, v2, v4

    #@c4
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c7
    move-result-object v0

    #@c8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@cb
    monitor-exit v1

    #@cc
    .line 179
    return-void

    #@cd
    .line 198
    :cond_2
    :try_start_1
    const-string/jumbo v0, "alive"

    #@d0
    goto :goto_0

    #@d1
    .line 200
    :cond_3
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    #@d3
    goto :goto_1

    #@d4
    .line 201
    :cond_4
    const-string/jumbo v0, "no"

    #@d7
    goto :goto_2

    #@d8
    .line 202
    :cond_5
    const-string/jumbo v0, "no"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@db
    goto :goto_3

    #@dc
    .line 194
    :catchall_0
    move-exception v0

    #@dd
    monitor-exit v1

    #@de
    throw v0
.end method

.method systemRunning()V
    .locals 5

    #@0
    .prologue
    .line 151
    const-string/jumbo v3, "common_time.config"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 152
    sget-object v3, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v4, "No common time service detected on this platform.  Common time services will be unavailable."

    #@e
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 154
    return-void

    #@12
    .line 157
    :cond_0
    const/4 v3, 0x1

    #@13
    iput-boolean v3, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    #@15
    .line 159
    const-string/jumbo v3, "network_management"

    #@18
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    .line 160
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    #@1f
    move-result-object v3

    #@20
    iput-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    #@22
    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    #@24
    iget-object v4, p0, Lcom/android/server/CommonTimeManagementService;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    #@26
    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 170
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    #@2b
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    #@2e
    .line 171
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    #@31
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@34
    .line 172
    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    #@36
    iget-object v4, p0, Lcom/android/server/CommonTimeManagementService;->mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

    #@38
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3b
    .line 175
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->connectToTimeConfig()V

    #@3e
    .line 150
    return-void

    #@3f
    .line 167
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    #@40
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
