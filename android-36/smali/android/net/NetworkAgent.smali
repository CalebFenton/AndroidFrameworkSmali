.class public abstract Landroid/net/NetworkAgent;
.super Ljava/lang/Object;
.source "NetworkAgent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkAgent$NetworkAgentHandler;,
        Landroid/net/NetworkAgent$InitialConfiguration;,
        Landroid/net/NetworkAgent$NetworkAgentBinder;,
        Landroid/net/NetworkAgent$RegistryAction;,
        Landroid/net/NetworkAgent$DscpPolicyStatus;,
        Landroid/net/NetworkAgent$ValidationStatus;,
        Landroid/net/NetworkAgent$NetworkAgentState;
    }
.end annotation


# static fields
.field private static final greylist-max-o BASE:I = 0xc8

.field private static final greylist-max-o BW_REFRESH_MIN_WIN_MS:J = 0x1f4L

.field public static final blacklist CMD_ADD_KEEPALIVE_PACKET_FILTER:I = 0xd8

.field public static final blacklist CMD_DSCP_POLICY_STATUS:I = 0xe4

.field public static final blacklist CMD_NETWORK_CREATED:I = 0xde

.field public static final blacklist CMD_NETWORK_DESTROYED:I = 0xdf

.field public static final greylist-max-o CMD_PREVENT_AUTOMATIC_RECONNECT:I = 0xd7

.field public static final blacklist CMD_REGISTER_QOS_CALLBACK:I = 0xdc

.field public static final blacklist CMD_REMOVE_KEEPALIVE_PACKET_FILTER:I = 0xd9

.field public static final greylist-max-o CMD_REPORT_NETWORK_STATUS:I = 0xcf

.field public static final greylist-max-o CMD_REQUEST_BANDWIDTH_UPDATE:I = 0xd2

.field public static final greylist-max-o CMD_SAVE_ACCEPT_UNVALIDATED:I = 0xd1

.field public static final greylist-max-o CMD_SET_SIGNAL_STRENGTH_THRESHOLDS:I = 0xd6

.field public static final blacklist CMD_START_SOCKET_KEEPALIVE:I = 0xd3

.field public static final blacklist CMD_STOP_SOCKET_KEEPALIVE:I = 0xd4

.field public static final greylist-max-o CMD_SUSPECT_BAD:I = 0xc8

.field public static final blacklist CMD_UNREGISTER_QOS_CALLBACK:I = 0xdd

.field private static final greylist-max-o DBG:Z = true

.field public static final whitelist DSCP_POLICY_STATUS_DELETED:I = 0x4

.field public static final whitelist DSCP_POLICY_STATUS_INSUFFICIENT_PROCESSING_RESOURCES:I = 0x3

.field public static final whitelist DSCP_POLICY_STATUS_POLICY_NOT_FOUND:I = 0x5

.field public static final whitelist DSCP_POLICY_STATUS_REQUESTED_CLASSIFIER_NOT_SUPPORTED:I = 0x2

.field public static final whitelist DSCP_POLICY_STATUS_REQUEST_DECLINED:I = 0x1

.field public static final whitelist DSCP_POLICY_STATUS_SUCCESS:I = 0x0

.field public static final blacklist EVENT_ADD_DSCP_POLICY:I = 0xe1

.field private static final blacklist EVENT_AGENT_CONNECTED:I = 0xda

.field private static final blacklist EVENT_AGENT_DISCONNECTED:I = 0xdb

.field public static final blacklist EVENT_LINGER_DURATION_CHANGED:I = 0xe0

.field public static final blacklist EVENT_LOCAL_NETWORK_CONFIG_CHANGED:I = 0xe6

.field public static final greylist-max-o EVENT_NETWORK_CAPABILITIES_CHANGED:I = 0xca

.field public static final greylist-max-o EVENT_NETWORK_INFO_CHANGED:I = 0xc9

.field public static final greylist-max-o EVENT_NETWORK_PROPERTIES_CHANGED:I = 0xcb

.field public static final greylist-max-o EVENT_NETWORK_SCORE_CHANGED:I = 0xcc

.field public static final blacklist EVENT_REMOVE_ALL_DSCP_POLICIES:I = 0xe3

.field public static final blacklist EVENT_REMOVE_DSCP_POLICY:I = 0xe2

.field public static final greylist-max-o EVENT_SET_EXPLICITLY_SELECTED:I = 0xd0

.field public static final blacklist EVENT_SOCKET_KEEPALIVE:I = 0xd5

.field public static final blacklist EVENT_TEARDOWN_DELAY_CHANGED:I = 0xce

.field public static final blacklist EVENT_UNDERLYING_NETWORKS_CHANGED:I = 0xcd

.field public static final blacklist EVENT_UNREGISTER_AFTER_REPLACEMENT:I = 0xe5

.field public static final greylist-max-o INVALID_NETWORK:I = 0x2

.field public static final blacklist MAX_TEARDOWN_DELAY_MS:I = 0x1388

.field public static final blacklist MIN_LINGER_TIMER_MS:I = 0x7d0

.field public static final greylist-max-o REDIRECT_URL_KEY:Ljava/lang/String; = "redirect URL"

.field private static final blacklist STATE_CREATED:I = 0x0

.field private static final blacklist STATE_REGISTERED:I = 0x1

.field private static final blacklist STATE_UNREGISTERED:I = 0x2

.field public static final whitelist VALIDATION_STATUS_NOT_VALID:I = 0x2

.field public static final whitelist VALIDATION_STATUS_VALID:I = 0x1

.field public static final greylist-max-o VALID_NETWORK:I = 0x1

.field private static final greylist-max-o VDBG:Z = false

.field public static final greylist-max-o WIFI_BASE_SCORE:I = 0x3c


# instance fields
.field private final greylist-max-o LOG_TAG:Ljava/lang/String;

.field private blacklist mBandwidthUpdatePending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mBandwidthUpdateScheduled:Z

.field private blacklist mConnected:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private volatile blacklist mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

.field private volatile greylist-max-o mLastBwRefreshTime:J

.field private volatile blacklist mNetwork:Landroid/net/Network;

.field private blacklist mNetworkInfo:Landroid/net/NetworkInfo;

.field private final greylist-max-o mPreConnectedQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/NetworkAgent$RegistryAction;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQueueRemoved:Z

.field private final blacklist mRegisterLock:Ljava/lang/Object;

.field private volatile blacklist mRegistry:Landroid/net/INetworkAgentRegistry;

.field private blacklist mState:I

.field public final blacklist providerId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetLOG_TAG(Landroid/net/NetworkAgent;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBandwidthUpdatePending(Landroid/net/NetworkAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Landroid/net/NetworkAgent;->mBandwidthUpdatePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBandwidthUpdateScheduled(Landroid/net/NetworkAgent;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/NetworkAgent;->mBandwidthUpdateScheduled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnected(Landroid/net/NetworkAgent;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/NetworkAgent;->mConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastBwRefreshTime(Landroid/net/NetworkAgent;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreConnectedQueue(Landroid/net/NetworkAgent;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQueueRemoved(Landroid/net/NetworkAgent;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/NetworkAgent;->mQueueRemoved:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisterLock(Landroid/net/NetworkAgent;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/net/NetworkAgent;->mRegisterLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegistry(Landroid/net/NetworkAgent;)Landroid/net/INetworkAgentRegistry;
    .registers 1

    iget-object p0, p0, Landroid/net/NetworkAgent;->mRegistry:Landroid/net/INetworkAgentRegistry;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBandwidthUpdateScheduled(Landroid/net/NetworkAgent;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/NetworkAgent;->mBandwidthUpdateScheduled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnected(Landroid/net/NetworkAgent;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/NetworkAgent;->mConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Landroid/net/NetworkAgent;I)V
    .registers 2

    iput p1, p0, Landroid/net/NetworkAgent;->mState:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "lp"    # Landroid/net/LinkProperties;
    .param p6, "score"    # I
    .param p7, "config"    # Landroid/net/NetworkAgentConfig;
    .param p8, "provider"    # Landroid/net/NetworkProvider;

    .line 544
    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 545
    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v8

    .line 544
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 546
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "lp"    # Landroid/net/LinkProperties;
    .param p6, "score"    # Landroid/net/NetworkScore;
    .param p7, "config"    # Landroid/net/NetworkAgentConfig;
    .param p8, "provider"    # Landroid/net/NetworkProvider;

    .line 564
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 566
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "lp"    # Landroid/net/LinkProperties;
    .param p6, "localNetworkConfig"    # Landroid/net/connectivity/android/net/LocalNetworkConfig;
    .param p7, "score"    # Landroid/net/NetworkScore;
    .param p8, "config"    # Landroid/net/NetworkAgentConfig;
    .param p9, "provider"    # Landroid/net/NetworkProvider;

    .line 589
    nop

    .line 590
    if-nez p9, :cond_5

    const/4 v0, -0x1

    goto :goto_9

    :cond_5
    invoke-virtual/range {p9 .. p9}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v0

    :goto_9
    move v10, v0

    .line 591
    invoke-static/range {p8 .. p8}, Landroid/net/NetworkAgent;->getLegacyNetworkInfo(Landroid/net/NetworkAgentConfig;)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 589
    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v11}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;ILandroid/net/NetworkInfo;)V

    .line 592
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;ILandroid/net/NetworkInfo;)V
    .registers 21
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "lp"    # Landroid/net/LinkProperties;
    .param p6, "localNetworkConfig"    # Landroid/net/connectivity/android/net/LocalNetworkConfig;
    .param p7, "score"    # Landroid/net/NetworkScore;
    .param p8, "config"    # Landroid/net/NetworkAgentConfig;
    .param p9, "providerId"    # I
    .param p10, "ni"    # Landroid/net/NetworkInfo;

    .line 620
    move-object v0, p5

    move-object/from16 v8, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    .line 118
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    .line 123
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/net/NetworkAgent;->mBandwidthUpdateScheduled:Z

    .line 124
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Landroid/net/NetworkAgent;->mBandwidthUpdatePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/net/NetworkAgent;->mRegisterLock:Ljava/lang/Object;

    .line 131
    iput-boolean v3, p0, Landroid/net/NetworkAgent;->mConnected:Z

    .line 144
    iput v3, p0, Landroid/net/NetworkAgent;->mState:I

    .line 621
    new-instance v3, Landroid/net/NetworkAgent$NetworkAgentHandler;

    invoke-direct {v3, p0, p1}, Landroid/net/NetworkAgent$NetworkAgentHandler;-><init>(Landroid/net/NetworkAgent;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    .line 624
    const-wide/16 v3, 0x2

    invoke-virtual {p0, p2, v3, v4}, Landroid/net/NetworkAgent;->isFeatureEnabled(Landroid/content/Context;J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/net/NetworkAgent;->mQueueRemoved:Z

    .line 626
    iput-object p3, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    .line 627
    new-instance v3, Landroid/net/NetworkInfo;

    invoke-direct {v3, v8}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    iput-object v3, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 628
    move/from16 v9, p9

    iput v9, p0, Landroid/net/NetworkAgent;->providerId:I

    .line 629
    if-eqz v8, :cond_63

    if-eqz p4, :cond_63

    if-eqz v0, :cond_63

    .line 633
    new-instance v3, Landroid/net/NetworkAgent$InitialConfiguration;

    move-object v4, v3

    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3, p4, v1, v2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;J)V

    move-object v1, v4

    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4, p5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    move-object v2, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v8}, Landroid/net/NetworkAgent$InitialConfiguration;-><init>(Landroid/content/Context;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkInfo;)V

    iput-object v1, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    .line 636
    return-void

    .line 630
    :cond_63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static blacklist getLegacyNetworkInfo(Landroid/net/NetworkAgentConfig;)Landroid/net/NetworkInfo;
    .registers 6
    .param p0, "config"    # Landroid/net/NetworkAgentConfig;

    .line 520
    new-instance v0, Landroid/net/NetworkInfo;

    iget v1, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    iget v2, p0, Landroid/net/NetworkAgentConfig;->legacySubType:I

    iget-object v3, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/NetworkAgentConfig;->legacySubTypeName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 522
    .local v0, "ni":Landroid/net/NetworkInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 523
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 524
    invoke-virtual {p0}, Landroid/net/NetworkAgentConfig;->getLegacyExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 523
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-object v0
.end method

.method static synthetic blacklist lambda$explicitlySelected$8(ZZLandroid/net/INetworkAgentRegistry;)V
    .registers 3
    .param p0, "explicitlySelected"    # Z
    .param p1, "acceptUnvalidated"    # Z
    .param p2, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkAgentRegistry;->sendExplicitlySelected(ZZ)V

    return-void
.end method

.method static synthetic blacklist lambda$sendAddDscpPolicy$15(Landroid/net/DscpPolicy;Landroid/net/INetworkAgentRegistry;)V
    .registers 2
    .param p0, "policy"    # Landroid/net/DscpPolicy;
    .param p1, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1635
    invoke-interface {p1, p0}, Landroid/net/INetworkAgentRegistry;->sendAddDscpPolicy(Landroid/net/DscpPolicy;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendLinkProperties$0(Landroid/net/LinkProperties;Landroid/net/INetworkAgentRegistry;)V
    .registers 3
    .param p0, "linkProperties"    # Landroid/net/LinkProperties;
    .param p1, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1075
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-interface {p1, v0}, Landroid/net/INetworkAgentRegistry;->sendLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendLocalNetworkConfig$6(Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/INetworkAgentRegistry;)V
    .registers 2
    .param p0, "config"    # Landroid/net/connectivity/android/net/LocalNetworkConfig;
    .param p1, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1270
    invoke-interface {p1, p0}, Landroid/net/INetworkAgentRegistry;->sendLocalNetworkConfig(Landroid/net/connectivity/android/net/LocalNetworkConfig;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendNetworkCapabilities$5(Landroid/net/NetworkCapabilities;Landroid/net/INetworkAgentRegistry;)V
    .registers 2
    .param p0, "nc"    # Landroid/net/NetworkCapabilities;
    .param p1, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1258
    invoke-interface {p1, p0}, Landroid/net/INetworkAgentRegistry;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendNetworkInfo$4(Landroid/net/NetworkInfo;Landroid/net/INetworkAgentRegistry;)V
    .registers 2
    .param p0, "ni"    # Landroid/net/NetworkInfo;
    .param p1, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1245
    invoke-interface {p1, p0}, Landroid/net/INetworkAgentRegistry;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendNetworkScore$7(Landroid/net/NetworkScore;Landroid/net/INetworkAgentRegistry;)V
    .registers 2
    .param p0, "score"    # Landroid/net/NetworkScore;
    .param p1, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1280
    invoke-interface {p1, p0}, Landroid/net/INetworkAgentRegistry;->sendScore(Landroid/net/NetworkScore;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendQosCallbackError$13(IILandroid/net/INetworkAgentRegistry;)V
    .registers 3
    .param p0, "qosCallbackId"    # I
    .param p1, "exceptionType"    # I
    .param p2, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1609
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkAgentRegistry;->sendQosCallbackError(II)V

    return-void
.end method

.method static synthetic blacklist lambda$sendQosSessionAvailable$10(IILandroid/net/QosSessionAttributes;Landroid/net/INetworkAgentRegistry;)V
    .registers 6
    .param p0, "qosCallbackId"    # I
    .param p1, "sessionId"    # I
    .param p2, "attributes"    # Landroid/net/QosSessionAttributes;
    .param p3, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1576
    new-instance v0, Landroid/net/QosSession;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/net/QosSession;-><init>(II)V

    move-object v1, p2

    check-cast v1, Landroid/telephony/data/EpsBearerQosSessionAttributes;

    invoke-interface {p3, p0, v0, v1}, Landroid/net/INetworkAgentRegistry;->sendEpsQosSessionAvailable(ILandroid/net/QosSession;Landroid/telephony/data/EpsBearerQosSessionAttributes;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendQosSessionAvailable$11(IILandroid/net/QosSessionAttributes;Landroid/net/INetworkAgentRegistry;)V
    .registers 6
    .param p0, "qosCallbackId"    # I
    .param p1, "sessionId"    # I
    .param p2, "attributes"    # Landroid/net/QosSessionAttributes;
    .param p3, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1580
    new-instance v0, Landroid/net/QosSession;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroid/net/QosSession;-><init>(II)V

    move-object v1, p2

    check-cast v1, Landroid/telephony/data/NrQosSessionAttributes;

    invoke-interface {p3, p0, v0, v1}, Landroid/net/INetworkAgentRegistry;->sendNrQosSessionAvailable(ILandroid/net/QosSession;Landroid/telephony/data/NrQosSessionAttributes;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendQosSessionLost$12(IIILandroid/net/INetworkAgentRegistry;)V
    .registers 5
    .param p0, "qosCallbackId"    # I
    .param p1, "sessionId"    # I
    .param p2, "qosSessionType"    # I
    .param p3, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1595
    new-instance v0, Landroid/net/QosSession;

    invoke-direct {v0, p1, p2}, Landroid/net/QosSession;-><init>(II)V

    invoke-interface {p3, p0, v0}, Landroid/net/INetworkAgentRegistry;->sendQosSessionLost(ILandroid/net/QosSession;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendRemoveAllDscpPolicies$17(Landroid/net/INetworkAgentRegistry;)V
    .registers 1
    .param p0, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1650
    invoke-interface {p0}, Landroid/net/INetworkAgentRegistry;->sendRemoveAllDscpPolicies()V

    return-void
.end method

.method static synthetic blacklist lambda$sendRemoveDscpPolicy$16(ILandroid/net/INetworkAgentRegistry;)V
    .registers 2
    .param p0, "policyId"    # I
    .param p1, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1643
    invoke-interface {p1, p0}, Landroid/net/INetworkAgentRegistry;->sendRemoveDscpPolicy(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendSocketKeepaliveEvent$9(IILandroid/net/INetworkAgentRegistry;)V
    .registers 3
    .param p0, "slot"    # I
    .param p1, "event"    # I
    .param p2, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1470
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkAgentRegistry;->sendSocketKeepaliveEvent(II)V

    return-void
.end method

.method static synthetic blacklist lambda$setLingerDuration$14(JLandroid/net/INetworkAgentRegistry;)V
    .registers 4
    .param p0, "durationMs"    # J
    .param p2, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1626
    long-to-int v0, p0

    invoke-interface {p2, v0}, Landroid/net/INetworkAgentRegistry;->sendLingerDuration(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setTeardownDelayMillis$2(ILandroid/net/INetworkAgentRegistry;)V
    .registers 2
    .param p0, "teardownDelayMillis"    # I
    .param p1, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1152
    invoke-interface {p1, p0}, Landroid/net/INetworkAgentRegistry;->sendTeardownDelayMs(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setUnderlyingNetworks$1(Ljava/util/ArrayList;Landroid/net/INetworkAgentRegistry;)V
    .registers 2
    .param p0, "underlyingArray"    # Ljava/util/ArrayList;
    .param p1, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1101
    invoke-interface {p1, p0}, Landroid/net/INetworkAgentRegistry;->sendUnderlyingNetworks(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$unregisterAfterReplacement$3(ILandroid/net/INetworkAgentRegistry;)V
    .registers 2
    .param p0, "timeoutMillis"    # I
    .param p1, "reg"    # Landroid/net/INetworkAgentRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1191
    invoke-interface {p1, p0}, Landroid/net/INetworkAgentRegistry;->sendUnregisterAfterReplacement(I)V

    return-void
.end method

.method private blacklist logTerribleErrorMessageBeforeConnect()V
    .registers 3

    .line 1021
    const/16 v0, 0x3d3

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/FrameworkConnectivityStatsLog;->write(II)V

    .line 1025
    return-void
.end method

.method private blacklist send(Landroid/net/NetworkAgent$RegistryAction;)V
    .registers 6
    .param p1, "action"    # Landroid/net/NetworkAgent$RegistryAction;

    .line 1028
    iget-object v0, p0, Landroid/net/NetworkAgent;->mRegisterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1029
    :try_start_3
    iget-boolean v1, p0, Landroid/net/NetworkAgent;->mQueueRemoved:Z

    if-eqz v1, :cond_25

    .line 1030
    iget v1, p0, Landroid/net/NetworkAgent;->mState:I

    if-gtz v1, :cond_17

    .line 1033
    invoke-direct {p0}, Landroid/net/NetworkAgent;->logTerribleErrorMessageBeforeConnect()V

    .line 1034
    iget-object v1, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Agent not yet registered, ignoring command"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    monitor-exit v0

    return-void

    .line 1037
    :cond_17
    iget v1, p0, Landroid/net/NetworkAgent;->mState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_37

    .line 1044
    iget-object v1, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Agent already unregistered, ignoring command"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    monitor-exit v0

    return-void

    .line 1048
    :cond_25
    iget-object v1, p0, Landroid/net/NetworkAgent;->mNetwork:Landroid/net/Network;

    if-nez v1, :cond_2c

    .line 1051
    invoke-direct {p0}, Landroid/net/NetworkAgent;->logTerribleErrorMessageBeforeConnect()V

    .line 1053
    :cond_2c
    iget-boolean v1, p0, Landroid/net/NetworkAgent;->mConnected:Z

    if-nez v1, :cond_37

    .line 1054
    iget-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_47

    return-void

    .line 1059
    :cond_37
    :try_start_37
    iget-object v1, p0, Landroid/net/NetworkAgent;->mRegistry:Landroid/net/INetworkAgentRegistry;

    invoke-interface {p1, v1}, Landroid/net/NetworkAgent$RegistryAction;->execute(Landroid/net/INetworkAgentRegistry;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catchall {:try_start_37 .. :try_end_3c} :catchall_47

    .line 1063
    goto :goto_45

    .line 1060
    :catch_3d
    move-exception v1

    .line 1061
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3e
    iget-object v2, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error executing registry action"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1064
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_45
    monitor-exit v0

    .line 1065
    return-void

    .line 1064
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_47

    throw v1
.end method


# virtual methods
.method protected blacklist addKeepalivePacketFilter(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1492
    return-void
.end method

.method public greylist-max-o explicitlySelected(Z)V
    .registers 3
    .param p1, "acceptUnvalidated"    # Z

    .line 1306
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/net/NetworkAgent;->explicitlySelected(ZZ)V

    .line 1307
    return-void
.end method

.method public blacklist explicitlySelected(ZZ)V
    .registers 4
    .param p1, "explicitlySelected"    # Z
    .param p2, "acceptUnvalidated"    # Z

    .line 1330
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda9;-><init>(ZZ)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1331
    return-void
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .registers 2

    .line 1017
    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public blacklist isFeatureEnabled(Landroid/content/Context;J)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feature"    # J

    .line 537
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p2, p3}, Landroid/net/ConnectivityManager;->isFeatureEnabled(J)Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o log(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 1655
    iget-object v0, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    return-void
.end method

.method public whitelist markConnected()V
    .registers 5

    .line 1109
    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v2, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1110
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 1109
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1112
    return-void
.end method

.method protected greylist-max-o networkStatus(ILjava/lang/String;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;

    .line 1381
    return-void
.end method

.method public whitelist onAddKeepalivePacketFilter(ILandroid/net/KeepalivePacketData;)V
    .registers 6
    .param p1, "slot"    # I
    .param p2, "packet"    # Landroid/net/KeepalivePacketData;

    .line 1486
    iget-object v0, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1487
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->addKeepalivePacketFilter(Landroid/os/Message;)V

    .line 1488
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1489
    return-void
.end method

.method public whitelist onAutomaticReconnectDisabled()V
    .registers 1

    .line 1539
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->preventAutomaticReconnect()V

    .line 1540
    return-void
.end method

.method public whitelist onBandwidthUpdateRequested()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1353
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->pollLceData()V

    .line 1354
    return-void
.end method

.method public whitelist onDscpPolicyStatusUpdated(II)V
    .registers 3
    .param p1, "policyId"    # I
    .param p2, "status"    # I

    .line 1413
    return-void
.end method

.method public whitelist onNetworkCreated()V
    .registers 1

    .line 1402
    return-void
.end method

.method public whitelist onNetworkDestroyed()V
    .registers 1

    .line 1408
    return-void
.end method

.method public whitelist onNetworkUnwanted()V
    .registers 1

    .line 1340
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->unwanted()V

    .line 1341
    return-void
.end method

.method public whitelist onQosCallbackRegistered(ILandroid/net/QosFilter;)V
    .registers 3
    .param p1, "qosCallbackId"    # I
    .param p2, "filter"    # Landroid/net/QosFilter;

    .line 1551
    return-void
.end method

.method public whitelist onQosCallbackUnregistered(I)V
    .registers 2
    .param p1, "qosCallbackId"    # I

    .line 1562
    return-void
.end method

.method public whitelist onRemoveKeepalivePacketFilter(I)V
    .registers 6
    .param p1, "slot"    # I

    .line 1502
    iget-object v0, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xd9

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1503
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->removeKeepalivePacketFilter(Landroid/os/Message;)V

    .line 1504
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1505
    return-void
.end method

.method public whitelist onSaveAcceptUnvalidated(Z)V
    .registers 2
    .param p1, "accept"    # Z

    .line 1393
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->saveAcceptUnvalidated(Z)V

    .line 1394
    return-void
.end method

.method public whitelist onSignalStrengthThresholdsUpdated([I)V
    .registers 2
    .param p1, "thresholds"    # [I

    .line 1526
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->setSignalStrengthThresholds([I)V

    .line 1527
    return-void
.end method

.method public blacklist onSocketKeepaliveEvent(II)V
    .registers 3
    .param p1, "slot"    # I
    .param p2, "reason"    # I

    .line 1474
    invoke-virtual {p0, p1, p2}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    .line 1475
    return-void
.end method

.method public whitelist onStartSocketKeepalive(ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V
    .registers 9
    .param p1, "slot"    # I
    .param p2, "interval"    # Ljava/time/Duration;
    .param p3, "packet"    # Landroid/net/KeepalivePacketData;

    .line 1429
    invoke-virtual {p2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    .line 1430
    .local v0, "intervalSeconds":J
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_20

    const-wide/16 v2, 0xe10

    cmp-long v2, v0, v2

    if-gtz v2, :cond_20

    .line 1436
    iget-object v2, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd3

    long-to-int v4, v0

    invoke-virtual {v2, v3, p1, v4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1438
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {p0, v2}, Landroid/net/NetworkAgent;->startSocketKeepalive(Landroid/os/Message;)V

    .line 1439
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 1440
    return-void

    .line 1432
    .end local v2    # "msg":Landroid/os/Message;
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interval needs to be comprised between 10 and 3600 but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist onStopSocketKeepalive(I)V
    .registers 6
    .param p1, "slot"    # I

    .line 1452
    iget-object v0, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xd4

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1453
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->stopSocketKeepalive(Landroid/os/Message;)V

    .line 1454
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1455
    return-void
.end method

.method public whitelist onValidationStatus(ILandroid/net/Uri;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "redirectUri"    # Landroid/net/Uri;

    .line 1377
    if-nez p2, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkAgent;->networkStatus(ILjava/lang/String;)V

    .line 1378
    return-void
.end method

.method protected greylist-max-o pollLceData()V
    .registers 1

    .line 1357
    return-void
.end method

.method protected greylist-max-o preventAutomaticReconnect()V
    .registers 1

    .line 1543
    return-void
.end method

.method public whitelist register()Landroid/net/Network;
    .registers 13

    .line 802
    iget-object v1, p0, Landroid/net/NetworkAgent;->mRegisterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 803
    :try_start_3
    iget-boolean v0, p0, Landroid/net/NetworkAgent;->mQueueRemoved:Z

    if-eqz v0, :cond_1d

    .line 804
    iget v0, p0, Landroid/net/NetworkAgent;->mState:I

    packed-switch v0, :pswitch_data_b6

    .line 808
    goto :goto_21

    :pswitch_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Agent already unregistered"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/NetworkAgent;
    throw v0

    .line 806
    .restart local p0    # "this":Landroid/net/NetworkAgent;
    :pswitch_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Agent already registered"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/NetworkAgent;
    throw v0

    .line 813
    .restart local p0    # "this":Landroid/net/NetworkAgent;
    :cond_1d
    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetwork:Landroid/net/Network;

    if-nez v0, :cond_ab

    .line 817
    :goto_21
    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v0, v0, Landroid/net/NetworkAgent$InitialConfiguration;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 818
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v2, v0

    .line 820
    .local v2, "cm":Landroid/net/ConnectivityManager;
    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v0, v0, Landroid/net/NetworkAgent$InitialConfiguration;->localNetworkConfig:Landroid/net/connectivity/android/net/LocalNetworkConfig;

    const/4 v11, 0x0

    if-nez v0, :cond_5c

    .line 823
    new-instance v3, Landroid/net/NetworkAgent$NetworkAgentBinder;

    iget-object v0, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v0, v11}, Landroid/net/NetworkAgent$NetworkAgentBinder;-><init>(Landroid/os/Handler;Landroid/net/NetworkAgent-IA;)V

    new-instance v4, Landroid/net/NetworkInfo;

    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v0, v0, Landroid/net/NetworkAgent$InitialConfiguration;->info:Landroid/net/NetworkInfo;

    invoke-direct {v4, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v5, v0, Landroid/net/NetworkAgent$InitialConfiguration;->properties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v6, v0, Landroid/net/NetworkAgent$InitialConfiguration;->capabilities:Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v7, v0, Landroid/net/NetworkAgent$InitialConfiguration;->score:Landroid/net/NetworkScore;

    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v8, v0, Landroid/net/NetworkAgent$InitialConfiguration;->config:Landroid/net/NetworkAgentConfig;

    iget v9, p0, Landroid/net/NetworkAgent;->providerId:I

    invoke-virtual/range {v2 .. v9}, Landroid/net/ConnectivityManager;->registerNetworkAgent(Landroid/net/INetworkAgent;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;I)Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;

    move-result-object v0

    .local v0, "result":Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;
    goto :goto_86

    .line 828
    .end local v0    # "result":Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;
    :cond_5c
    new-instance v3, Landroid/net/NetworkAgent$NetworkAgentBinder;

    iget-object v0, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v0, v11}, Landroid/net/NetworkAgent$NetworkAgentBinder;-><init>(Landroid/os/Handler;Landroid/net/NetworkAgent-IA;)V

    new-instance v4, Landroid/net/NetworkInfo;

    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v0, v0, Landroid/net/NetworkAgent$InitialConfiguration;->info:Landroid/net/NetworkInfo;

    invoke-direct {v4, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v5, v0, Landroid/net/NetworkAgent$InitialConfiguration;->properties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v6, v0, Landroid/net/NetworkAgent$InitialConfiguration;->capabilities:Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v7, v0, Landroid/net/NetworkAgent$InitialConfiguration;->localNetworkConfig:Landroid/net/connectivity/android/net/LocalNetworkConfig;

    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v8, v0, Landroid/net/NetworkAgent$InitialConfiguration;->score:Landroid/net/NetworkScore;

    iget-object v0, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    iget-object v9, v0, Landroid/net/NetworkAgent$InitialConfiguration;->config:Landroid/net/NetworkAgentConfig;

    iget v10, p0, Landroid/net/NetworkAgent;->providerId:I

    invoke-virtual/range {v2 .. v10}, Landroid/net/ConnectivityManager;->registerNetworkAgent(Landroid/net/INetworkAgent;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;I)Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;

    move-result-object v0

    .line 834
    .restart local v0    # "result":Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;
    :goto_86
    if-nez v0, :cond_9a

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 839
    iget-object v3, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    const-string v4, "registerNetworkAgent returned null. This agent will not work. Is ConnectivityManager a mock\u00a0?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 842
    :cond_9a
    iget-object v3, v0, Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;->network:Landroid/net/Network;

    iput-object v3, p0, Landroid/net/NetworkAgent;->mNetwork:Landroid/net/Network;

    .line 843
    iget-object v3, v0, Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;->registry:Landroid/net/INetworkAgentRegistry;

    iput-object v3, p0, Landroid/net/NetworkAgent;->mRegistry:Landroid/net/INetworkAgentRegistry;

    .line 844
    const/4 v3, 0x1

    iput v3, p0, Landroid/net/NetworkAgent;->mState:I

    .line 846
    :goto_a5
    iput-object v11, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    .line 847
    .end local v0    # "result":Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_3 .. :try_end_a8} :catchall_b3

    .line 848
    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetwork:Landroid/net/Network;

    return-object v0

    .line 814
    :cond_ab
    :try_start_ab
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Agent already registered"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/NetworkAgent;
    throw v0

    .line 847
    .restart local p0    # "this":Landroid/net/NetworkAgent;
    :catchall_b3
    move-exception v0

    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_ab .. :try_end_b5} :catchall_b3

    throw v0

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist registerForTest(Landroid/net/Network;Landroid/net/INetworkAgentRegistry;)Landroid/net/INetworkAgent;
    .registers 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "registry"    # Landroid/net/INetworkAgentRegistry;

    .line 989
    const-string v0, "Registering NetworkAgent for test"

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Landroid/net/NetworkAgent;->mRegisterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_8
    iput-object p1, p0, Landroid/net/NetworkAgent;->mNetwork:Landroid/net/Network;

    .line 992
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/NetworkAgent;->mInitialConfiguration:Landroid/net/NetworkAgent$InitialConfiguration;

    .line 993
    iput-object p2, p0, Landroid/net/NetworkAgent;->mRegistry:Landroid/net/INetworkAgentRegistry;

    .line 994
    const/4 v2, 0x1

    iput v2, p0, Landroid/net/NetworkAgent;->mState:I

    .line 995
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1b

    .line 996
    new-instance v0, Landroid/net/NetworkAgent$NetworkAgentBinder;

    iget-object v2, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, v1}, Landroid/net/NetworkAgent$NetworkAgentBinder;-><init>(Landroid/os/Handler;Landroid/net/NetworkAgent-IA;)V

    return-object v0

    .line 995
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method protected blacklist removeKeepalivePacketFilter(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1508
    return-void
.end method

.method protected greylist-max-o saveAcceptUnvalidated(Z)V
    .registers 2
    .param p1, "accept"    # Z

    .line 1397
    return-void
.end method

.method public whitelist sendAddDscpPolicy(Landroid/net/DscpPolicy;)V
    .registers 3
    .param p1, "policy"    # Landroid/net/DscpPolicy;

    .line 1634
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda3;-><init>(Landroid/net/DscpPolicy;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1636
    return-void
.end method

.method public whitelist sendLinkProperties(Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .line 1072
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda4;-><init>(Landroid/net/LinkProperties;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1076
    return-void
.end method

.method public blacklist sendLocalNetworkConfig(Landroid/net/connectivity/android/net/LocalNetworkConfig;)V
    .registers 3
    .param p1, "config"    # Landroid/net/connectivity/android/net/LocalNetworkConfig;

    .line 1267
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda8;-><init>(Landroid/net/connectivity/android/net/LocalNetworkConfig;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1271
    return-void
.end method

.method public whitelist sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 5
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 1253
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    iget-object v0, p0, Landroid/net/NetworkAgent;->mBandwidthUpdatePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    .line 1256
    new-instance v0, Landroid/net/NetworkCapabilities;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;J)V

    .line 1258
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    new-instance v1, Landroid/net/NetworkAgent$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda16;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, v1}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1259
    return-void
.end method

.method public greylist-max-p sendNetworkInfo(Landroid/net/NetworkInfo;)V
    .registers 4
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 1244
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1245
    .local v0, "ni":Landroid/net/NetworkInfo;
    new-instance v1, Landroid/net/NetworkAgent$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda1;-><init>(Landroid/net/NetworkInfo;)V

    invoke-direct {p0, v1}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1246
    return-void
.end method

.method public whitelist sendNetworkScore(I)V
    .registers 3
    .param p1, "score"    # I

    .line 1290
    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkScore(Landroid/net/NetworkScore;)V

    .line 1291
    return-void
.end method

.method public whitelist sendNetworkScore(Landroid/net/NetworkScore;)V
    .registers 3
    .param p1, "score"    # Landroid/net/NetworkScore;

    .line 1279
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda13;-><init>(Landroid/net/NetworkScore;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1281
    return-void
.end method

.method public final whitelist sendQosCallbackError(II)V
    .registers 4
    .param p1, "qosCallbackId"    # I
    .param p2, "exceptionType"    # I

    .line 1609
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1610
    return-void
.end method

.method public final whitelist sendQosSessionAvailable(IILandroid/net/QosSessionAttributes;)V
    .registers 5
    .param p1, "qosCallbackId"    # I
    .param p2, "sessionId"    # I
    .param p3, "attributes"    # Landroid/net/QosSessionAttributes;

    .line 1574
    const-string v0, "The attributes must be non-null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1575
    instance-of v0, p3, Landroid/telephony/data/EpsBearerQosSessionAttributes;

    if-eqz v0, :cond_12

    .line 1576
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda14;-><init>(IILandroid/net/QosSessionAttributes;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    goto :goto_1e

    .line 1579
    :cond_12
    instance-of v0, p3, Landroid/telephony/data/NrQosSessionAttributes;

    if-eqz v0, :cond_1e

    .line 1580
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda15;-><init>(IILandroid/net/QosSessionAttributes;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1584
    :cond_1e
    :goto_1e
    return-void
.end method

.method public final whitelist sendQosSessionLost(III)V
    .registers 5
    .param p1, "qosCallbackId"    # I
    .param p2, "sessionId"    # I
    .param p3, "qosSessionType"    # I

    .line 1595
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda0;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1597
    return-void
.end method

.method public whitelist sendRemoveAllDscpPolicies()V
    .registers 2

    .line 1650
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1651
    return-void
.end method

.method public whitelist sendRemoveDscpPolicy(I)V
    .registers 3
    .param p1, "policyId"    # I

    .line 1643
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1644
    return-void
.end method

.method public final whitelist sendSocketKeepaliveEvent(II)V
    .registers 4
    .param p1, "slot"    # I
    .param p2, "event"    # I

    .line 1470
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda11;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1471
    return-void
.end method

.method public blacklist setLegacyExtraInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "extraInfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1230
    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 1231
    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1232
    return-void
.end method

.method public whitelist setLegacySubtype(ILjava/lang/String;)V
    .registers 4
    .param p1, "legacySubtype"    # I
    .param p2, "legacySubtypeName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1208
    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 1209
    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1210
    return-void
.end method

.method public whitelist setLingerDuration(Ljava/time/Duration;)V
    .registers 6
    .param p1, "duration"    # Ljava/time/Duration;

    .line 1620
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 1622
    .local v0, "durationMs":J
    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1d

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1d

    .line 1626
    new-instance v2, Landroid/net/NetworkAgent$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0, v1}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda12;-><init>(J)V

    invoke-direct {p0, v2}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1627
    return-void

    .line 1623
    :cond_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Duration must be within [2000,2147483647]ms"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected greylist-max-o setSignalStrengthThresholds([I)V
    .registers 2
    .param p1, "thresholds"    # [I

    .line 1530
    return-void
.end method

.method public whitelist setTeardownDelayMillis(I)V
    .registers 3
    .param p1, "teardownDelayMillis"    # I

    .line 1152
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1153
    return-void
.end method

.method public whitelist setUnderlyingNetworks(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Network;",
            ">;)V"
        }
    .end annotation

    .line 1099
    .local p1, "underlyingNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/Network;>;"
    if-eqz p1, :cond_8

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1101
    .local v0, "underlyingArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Network;>;"
    :goto_9
    new-instance v1, Landroid/net/NetworkAgent$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda18;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1102
    return-void
.end method

.method protected blacklist startSocketKeepalive(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1443
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, -0x1e

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkAgent;->onSocketKeepaliveEvent(II)V

    .line 1444
    return-void
.end method

.method protected blacklist stopSocketKeepalive(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1458
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, -0x1e

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkAgent;->onSocketKeepaliveEvent(II)V

    .line 1459
    return-void
.end method

.method public whitelist unregister()V
    .registers 4

    .line 1122
    iget-object v0, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v0, p0, Landroid/net/NetworkAgent;->mRegisterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_b
    iget v1, p0, Landroid/net/NetworkAgent;->mState:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_15

    .line 1126
    iget-object v1, p0, Landroid/net/NetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1128
    :cond_15
    const/4 v1, 0x2

    iput v1, p0, Landroid/net/NetworkAgent;->mState:I

    .line 1129
    monitor-exit v0

    .line 1130
    return-void

    .line 1129
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist unregisterAfterReplacement(I)V
    .registers 3
    .param p1, "timeoutMillis"    # I

    .line 1191
    new-instance v0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->send(Landroid/net/NetworkAgent$RegistryAction;)V

    .line 1192
    return-void
.end method

.method protected greylist-max-o unwanted()V
    .registers 1

    .line 1344
    return-void
.end method

.method public blacklist waitForIdle(J)Z
    .registers 6
    .param p1, "timeoutMs"    # J

    .line 1007
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 1008
    .local v0, "cv":Landroid/os/ConditionVariable;
    iget-object v1, p0, Landroid/net/NetworkAgent;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/net/NetworkAgent$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0}, Landroid/net/NetworkAgent$$ExternalSyntheticLambda17;-><init>(Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1009
    invoke-virtual {v0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    return v1
.end method
