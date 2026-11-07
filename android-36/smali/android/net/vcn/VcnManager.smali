.class public Landroid/net/vcn/VcnManager;
.super Ljava/lang/Object;
.source "VcnManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;,
        Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;,
        Landroid/net/vcn/VcnManager$VcnStatusCallback;,
        Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;,
        Landroid/net/vcn/VcnManager$VcnErrorCode;,
        Landroid/net/vcn/VcnManager$VcnStatusCode;,
        Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;
    }
.end annotation


# static fields
.field private static final blacklist REGISTERED_POLICY_LISTENERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;",
            "Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final whitelist VCN_ERROR_CODE_CONFIG_ERROR:I = 0x1

.field public static final whitelist VCN_ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final whitelist VCN_ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final blacklist VCN_MANAGEMENT_SERVICE_STRING:Ljava/lang/String; = "vcn_management"

.field public static final blacklist VCN_NETWORK_SELECTION_IPSEC_PACKET_LOSS_PERCENT_THRESHOLD_KEY:Ljava/lang/String; = "vcn_network_selection_ipsec_packet_loss_percent_threshold"

.field public static final blacklist VCN_NETWORK_SELECTION_MAX_SEQ_NUM_INCREASE_PER_SECOND_KEY:Ljava/lang/String; = "vcn_network_selection_max_seq_num_increase_per_second"

.field public static final blacklist VCN_NETWORK_SELECTION_PENALTY_TIMEOUT_MINUTES_LIST_KEY:Ljava/lang/String; = "vcn_network_selection_penalty_timeout_minutes_list"

.field public static final blacklist VCN_NETWORK_SELECTION_POLL_IPSEC_STATE_INTERVAL_SECONDS_KEY:Ljava/lang/String; = "vcn_network_selection_poll_ipsec_state_interval_seconds"

.field public static final blacklist VCN_NETWORK_SELECTION_WIFI_ENTRY_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "vcn_network_selection_wifi_entry_rssi_threshold"

.field public static final blacklist VCN_NETWORK_SELECTION_WIFI_EXIT_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "vcn_network_selection_wifi_exit_rssi_threshold"

.field public static final blacklist VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

.field public static final blacklist VCN_RESTRICTED_TRANSPORTS_INT_ARRAY_KEY:Ljava/lang/String; = "vcn_restricted_transports"

.field public static final blacklist VCN_SAFE_MODE_TIMEOUT_SECONDS_KEY:Ljava/lang/String; = "vcn_safe_mode_timeout_seconds_key"

.field public static final whitelist VCN_STATUS_CODE_ACTIVE:I = 0x2

.field public static final whitelist VCN_STATUS_CODE_INACTIVE:I = 0x1

.field public static final whitelist VCN_STATUS_CODE_NOT_CONFIGURED:I = 0x0

.field public static final whitelist VCN_STATUS_CODE_SAFE_MODE:I = 0x3

.field public static final blacklist VCN_TUNNEL_AGGREGATION_SA_COUNT_MAX_KEY:Ljava/lang/String; = "vcn_tunnel_aggregation_sa_count_max"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/net/vcn/IVcnManagementService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 82
    const-class v0, Landroid/net/vcn/VcnManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/VcnManager;->TAG:Ljava/lang/String;

    .line 197
    const-string v8, "vcn_safe_mode_timeout_seconds_key"

    const-string v9, "vcn_tunnel_aggregation_sa_count_max"

    const-string v1, "vcn_network_selection_wifi_entry_rssi_threshold"

    const-string v2, "vcn_network_selection_wifi_exit_rssi_threshold"

    const-string v3, "vcn_network_selection_poll_ipsec_state_interval_seconds"

    const-string v4, "vcn_network_selection_ipsec_packet_loss_percent_threshold"

    const-string v5, "vcn_network_selection_max_seq_num_increase_per_second"

    const-string v6, "vcn_network_selection_penalty_timeout_minutes_list"

    const-string v7, "vcn_restricted_transports"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/VcnManager;->VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/vcn/IVcnManagementService;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/vcn/IVcnManagementService;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const-string v0, "missing context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    .line 227
    const-string v0, "missing service"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/IVcnManagementService;

    iput-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    .line 228
    return-void
.end method

.method public static blacklist getAllPolicyListeners()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;",
            "Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;",
            ">;"
        }
    .end annotation

    .line 239
    sget-object v0, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 435
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 436
    const-string v0, "listener must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 438
    new-instance v0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;-><init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;Landroid/net/vcn/VcnManager-IA;)V

    .line 440
    .local v0, "binder":Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;
    sget-object v1, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 445
    :try_start_18
    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-interface {v1, v0}, Landroid/net/vcn/IVcnManagementService;->addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1f

    .line 449
    nop

    .line 450
    return-void

    .line 446
    :catch_1f
    move-exception v1

    .line 447
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 441
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "listener is already registered with VcnManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist addVcnUnderlyingNetworkPolicyListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;

    .line 345
    invoke-virtual {p0, p1, p2}, Landroid/net/vcn/VcnManager;->addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 346
    return-void
.end method

.method public whitelist applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;
    .registers 7
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 502
    const-string v0, "networkCapabilities must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 503
    const-string v0, "linkProperties must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 505
    nop

    .line 506
    invoke-virtual {p0, p1, p2}, Landroid/net/vcn/VcnManager;->getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object v0

    .line 507
    .local v0, "policy":Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    new-instance v1, Landroid/net/vcn/VcnNetworkPolicyResult;

    .line 508
    invoke-virtual {v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->isTeardownRequested()Z

    move-result v2

    invoke-virtual {v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->getMergedNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/net/vcn/VcnNetworkPolicyResult;-><init>(ZLandroid/net/NetworkCapabilities;)V

    .line 507
    return-object v1
.end method

.method public whitelist clearVcnConfig(Landroid/os/ParcelUuid;)V
    .registers 4
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    const-string v0, "subscriptionGroup was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    :try_start_5
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/vcn/IVcnManagementService;->clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_10} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_12

    .line 296
    nop

    .line 297
    return-void

    .line 294
    :catch_12
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getConfiguredSubscriptionGroups()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/vcn/IVcnManagementService;->getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 316
    :catch_d
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .registers 5
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 382
    const-string v0, "networkCapabilities must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 383
    const-string v0, "linkProperties must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 386
    :try_start_a
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-interface {v0, p1, p2}, Landroid/net/vcn/IVcnManagementService;->getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    .line 387
    :catch_11
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerVcnStatusCallback(Landroid/os/ParcelUuid;Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnStatusCallback;)V
    .registers 7
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/vcn/VcnManager$VcnStatusCallback;

    .line 648
    const-string v0, "subscriptionGroup must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 649
    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 650
    const-string v0, "callback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 652
    monitor-enter p3

    .line 653
    :try_start_10
    invoke-static {p3}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 656
    new-instance v0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    invoke-direct {v0, p2, p3}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;-><init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnStatusCallback;)V

    invoke-static {p3, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_42

    .line 659
    :try_start_1e
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-static {p3}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    .line 660
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 659
    invoke-interface {v0, p1, v1, v2}, Landroid/net/vcn/IVcnManagementService;->registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2d} :catch_30
    .catchall {:try_start_1e .. :try_end_2d} :catchall_42

    .line 664
    nop

    .line 665
    :try_start_2e
    monitor-exit p3

    .line 666
    return-void

    .line 661
    :catch_30
    move-exception v0

    .line 662
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    invoke-static {p3, v1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V

    .line 663
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/net/vcn/VcnManager;
    .end local p1    # "subscriptionGroup":Landroid/os/ParcelUuid;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    throw v1

    .line 654
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/vcn/VcnManager;
    .restart local p1    # "subscriptionGroup":Landroid/os/ParcelUuid;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback is already registered with VcnManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/vcn/VcnManager;
    .end local p1    # "subscriptionGroup":Landroid/os/ParcelUuid;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    throw v0

    .line 665
    .restart local p0    # "this":Landroid/net/vcn/VcnManager;
    .restart local p1    # "subscriptionGroup":Landroid/os/ParcelUuid;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    :catchall_42
    move-exception v0

    monitor-exit p3
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_42

    throw v0
.end method

.method public whitelist removeVcnNetworkPolicyChangeListener(Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 465
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 467
    sget-object v0, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    .line 468
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;

    .line 469
    .local v0, "binder":Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;
    if-nez v0, :cond_10

    .line 470
    return-void

    .line 474
    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-interface {v1, v0}, Landroid/net/vcn/IVcnManagementService;->removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_17

    .line 477
    nop

    .line 478
    return-void

    .line 475
    :catch_17
    move-exception v1

    .line 476
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;

    .line 358
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnManager;->removeVcnNetworkPolicyChangeListener(Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 359
    return-void
.end method

.method public whitelist setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .registers 5
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "config"    # Landroid/net/vcn/VcnConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const-string v0, "subscriptionGroup was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    const-string v0, "config was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    :try_start_a
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/net/vcn/IVcnManagementService;->setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_15} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_17

    .line 270
    nop

    .line 271
    return-void

    .line 268
    :catch_17
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 266
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1d
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist unregisterVcnStatusCallback(Landroid/net/vcn/VcnManager$VcnStatusCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/net/vcn/VcnManager$VcnStatusCallback;

    .line 677
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 679
    monitor-enter p1

    .line 680
    :try_start_6
    invoke-static {p1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v0

    if-nez v0, :cond_e

    .line 682
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_2b

    return-void

    .line 686
    :cond_e
    const/4 v0, 0x0

    :try_start_f
    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-static {p1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/vcn/IVcnManagementService;->unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_20
    .catchall {:try_start_f .. :try_end_18} :catchall_1e

    .line 690
    :try_start_18
    invoke-static {p1, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V

    .line 691
    nop

    .line 692
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_2b

    .line 693
    return-void

    .line 690
    :catchall_1e
    move-exception v1

    goto :goto_26

    .line 687
    :catch_20
    move-exception v1

    .line 688
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_21
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/vcn/VcnManager;
    .end local p1    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    throw v2
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    .line 690
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/vcn/VcnManager;
    .restart local p1    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    :goto_26
    :try_start_26
    invoke-static {p1, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V

    .line 691
    nop

    .end local p0    # "this":Landroid/net/vcn/VcnManager;
    .end local p1    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    throw v1

    .line 692
    .restart local p0    # "this":Landroid/net/vcn/VcnManager;
    .restart local p1    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    :catchall_2b
    move-exception v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw v0
.end method
