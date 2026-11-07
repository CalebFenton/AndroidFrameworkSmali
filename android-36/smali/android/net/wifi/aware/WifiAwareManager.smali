.class public Landroid/net/wifi/aware/WifiAwareManager;
.super Ljava/lang/Object;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;,
        Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;,
        Landroid/net/wifi/aware/WifiAwareManager$InstantModeBand;,
        Landroid/net/wifi/aware/WifiAwareManager$SessionResumptionFailedReasonCode;,
        Landroid/net/wifi/aware/WifiAwareManager$SessionSuspensionFailedReasonCode;,
        Landroid/net/wifi/aware/WifiAwareManager$DiscoveryLostReasonCode;,
        Landroid/net/wifi/aware/WifiAwareManager$DataPathRole;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_WIFI_AWARE_RESOURCE_CHANGED:Ljava/lang/String; = "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

.field public static final whitelist ACTION_WIFI_AWARE_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED"

.field private static final greylist-max-o DBG:Z = false

.field public static final whitelist EXTRA_AWARE_RESOURCES:Ljava/lang/String; = "android.net.wifi.aware.extra.AWARE_RESOURCES"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiAwareManager"

.field private static final greylist-max-o VDBG:Z = false

.field public static final whitelist WIFI_AWARE_DATA_PATH_ROLE_INITIATOR:I = 0x0

.field public static final whitelist WIFI_AWARE_DATA_PATH_ROLE_RESPONDER:I = 0x1

.field public static final whitelist WIFI_AWARE_DISCOVERY_LOST_REASON_PEER_NOT_VISIBLE:I = 0x1

.field public static final whitelist WIFI_AWARE_DISCOVERY_LOST_REASON_UNKNOWN:I = 0x0

.field public static final whitelist WIFI_AWARE_RESUME_INTERNAL_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AWARE_RESUME_INVALID_SESSION:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AWARE_RESUME_REDUNDANT_REQUEST:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AWARE_SUSPEND_CANNOT_SUSPEND:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AWARE_SUSPEND_INTERNAL_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AWARE_SUSPEND_INVALID_SESSION:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AWARE_SUSPEND_REDUNDANT_REQUEST:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mService:Landroid/net/wifi/aware/IWifiAwareManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/wifi/aware/IWifiAwareManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/aware/IWifiAwareManager;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mLock:Ljava/lang/Object;

    .line 311
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    .line 312
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    .line 313
    return-void
.end method


# virtual methods
.method public whitelist attach(Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;Landroid/os/Handler;)V
    .registers 11
    .param p1, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p2, "identityChangedListener"    # Landroid/net/wifi/aware/IdentityChangedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 523
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v1, p3

    .end local p1    # "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .end local p2    # "identityChangedListener":Landroid/net/wifi/aware/IdentityChangedListener;
    .end local p3    # "handler":Landroid/os/Handler;
    .local v1, "handler":Landroid/os/Handler;
    .local v3, "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .local v4, "identityChangedListener":Landroid/net/wifi/aware/IdentityChangedListener;
    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;ZLjava/util/concurrent/Executor;)V

    .line 524
    return-void
.end method

.method public whitelist attach(Landroid/net/wifi/aware/AttachCallback;Landroid/os/Handler;)V
    .registers 10
    .param p1, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 473
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v1, p2

    .end local p1    # "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    .local v1, "handler":Landroid/os/Handler;
    .local v3, "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;ZLjava/util/concurrent/Executor;)V

    .line 474
    return-void
.end method

.method public whitelist attach(Landroid/net/wifi/aware/ConfigRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .registers 13
    .param p1, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p4, "identityChangedListener"    # Landroid/net/wifi/aware/IdentityChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 552
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 555
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v7, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .end local p4    # "identityChangedListener":Landroid/net/wifi/aware/IdentityChangedListener;
    .local v3, "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .local v4, "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .local v5, "identityChangedListener":Landroid/net/wifi/aware/IdentityChangedListener;
    .local v7, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual/range {v1 .. v7}, Landroid/net/wifi/aware/WifiAwareManager;->attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;ZLjava/util/concurrent/Executor;)V

    .line 558
    return-void

    .line 553
    .end local v3    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .end local v4    # "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .end local v5    # "identityChangedListener":Landroid/net/wifi/aware/IdentityChangedListener;
    .end local v7    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .restart local p4    # "identityChangedListener":Landroid/net/wifi/aware/IdentityChangedListener;
    :cond_17
    move-object v3, p1

    .end local p1    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .restart local v3    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;ZLjava/util/concurrent/Executor;)V
    .registers 23
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p3, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p4, "identityChangedListener"    # Landroid/net/wifi/aware/IdentityChangedListener;
    .param p5, "forOffloading"    # Z
    .param p6, "executor"    # Ljava/util/concurrent/Executor;

    .line 571
    move-object/from16 v1, p0

    if-eqz p3, :cond_6f

    .line 575
    iget-object v6, v1, Landroid/net/wifi/aware/WifiAwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 576
    move-object/from16 v0, p6

    .line 577
    .local v0, "localExecutor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_20

    .line 578
    :try_start_b
    new-instance v2, Lcom/android/wifi/x/com/android/modules/utils/HandlerExecutor;

    if-nez p1, :cond_19

    .line 579
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1b

    :cond_19
    move-object/from16 v3, p1

    :goto_1b
    invoke-direct {v2, v3}, Lcom/android/wifi/x/com/android/modules/utils/HandlerExecutor;-><init>(Landroid/os/Handler;)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_65

    move-object v0, v2

    goto :goto_21

    .line 577
    :cond_20
    move-object v2, v0

    .line 583
    .end local v0    # "localExecutor":Ljava/util/concurrent/Executor;
    .local v2, "localExecutor":Ljava/util/concurrent/Executor;
    :goto_21
    :try_start_21
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 584
    .local v3, "binder":Landroid/os/Binder;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 585
    .local v14, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 586
    const-string v0, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    .line 587
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 586
    invoke-virtual {v14, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 589
    :cond_3c
    iget-object v7, v1, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v0, v1, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v1, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Ljava/util/concurrent/Executor;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    if-eqz p4, :cond_58

    const/4 v0, 0x1

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    move v13, v0

    move-object/from16 v12, p2

    move/from16 v15, p5

    move-object v8, v3

    .end local v3    # "binder":Landroid/os/Binder;
    .local v8, "binder":Landroid/os/Binder;
    invoke-interface/range {v7 .. v15}, Landroid/net/wifi/aware/IWifiAwareManager;->connect(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;ZLandroid/os/Bundle;Z)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_62} :catch_67
    .catchall {:try_start_21 .. :try_end_62} :catchall_65

    .line 595
    .end local v8    # "binder":Landroid/os/Binder;
    .end local v14    # "extras":Landroid/os/Bundle;
    nop

    .line 596
    .end local v2    # "localExecutor":Ljava/util/concurrent/Executor;
    :try_start_63
    monitor-exit v6

    .line 597
    return-void

    .line 596
    :catchall_65
    move-exception v0

    goto :goto_6d

    .line 593
    .restart local v2    # "localExecutor":Ljava/util/concurrent/Executor;
    :catch_67
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/net/wifi/aware/WifiAwareManager;
    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .end local p3    # "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .end local p4    # "identityChangedListener":Landroid/net/wifi/aware/IdentityChangedListener;
    .end local p5    # "forOffloading":Z
    .end local p6    # "executor":Ljava/util/concurrent/Executor;
    throw v1

    .line 596
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "localExecutor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/net/wifi/aware/WifiAwareManager;
    .restart local p1    # "handler":Landroid/os/Handler;
    .restart local p2    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .restart local p3    # "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .restart local p4    # "identityChangedListener":Landroid/net/wifi/aware/IdentityChangedListener;
    .restart local p5    # "forOffloading":Z
    .restart local p6    # "executor":Ljava/util/concurrent/Executor;
    :goto_6d
    monitor-exit v6
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_65

    throw v0

    .line 572
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null callback provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist attachOffload(Ljava/util/concurrent/Executor;Landroid/net/wifi/aware/AttachCallback;)V
    .registers 10
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1435
    if-eqz p1, :cond_d

    .line 1438
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v3, p2

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .local v3, "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .local v6, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;ZLjava/util/concurrent/Executor;)V

    .line 1439
    return-void

    .line 1436
    .end local v3    # "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    :cond_d
    move-object v6, p1

    move-object v3, p2

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .restart local v3    # "attachCallback":Landroid/net/wifi/aware/AttachCallback;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null executor provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .registers 19
    .param p1, "clientId"    # I
    .param p2, "role"    # I
    .param p3, "sessionId"    # I
    .param p4, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p5, "pmk"    # [B
    .param p6, "passphrase"    # Ljava/lang/String;

    .line 843
    move-object/from16 v11, p4

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Landroid/net/wifi/aware/WifiAwareUtils;->isLegacyVersion(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 848
    const/4 v0, 0x1

    if-eqz p2, :cond_1a

    if-ne p2, v0, :cond_12

    goto :goto_1a

    .line 850
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createNetworkSpecifier: Invalid \'role\' argument when creating a network specifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_1a
    :goto_1a
    if-eqz p2, :cond_26

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    const/16 v3, 0x1c

    invoke-static {v1, v3}, Landroid/net/wifi/aware/WifiAwareUtils;->isLegacyVersion(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 856
    :cond_26
    if-eqz v11, :cond_43

    .line 862
    :cond_28
    move v1, v0

    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 863
    const/4 v3, 0x0

    if-nez v11, :cond_2f

    goto :goto_30

    .line 864
    :cond_2f
    move v1, v3

    .line 868
    :goto_30
    if-eqz v11, :cond_34

    iget v3, v11, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    :cond_34
    move v5, v3

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v6, 0x0

    move v3, p1

    move v2, p2

    move v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[B[BLjava/lang/String;II)V

    .line 862
    return-object v0

    .line 857
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createNetworkSpecifier: Invalid peer handle - cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_4b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "API deprecated - use WifiAwareNetworkSpecifier.Builder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .registers 17
    .param p1, "clientId"    # I
    .param p2, "role"    # I
    .param p3, "peer"    # [B
    .param p4, "pmk"    # [B
    .param p5, "passphrase"    # Ljava/lang/String;

    .line 885
    if-eqz p2, :cond_e

    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    goto :goto_e

    .line 887
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createNetworkSpecifier: Invalid \'role\' argument when creating a network specifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_e
    :goto_e
    if-eqz p2, :cond_1a

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Landroid/net/wifi/aware/WifiAwareUtils;->isLegacyVersion(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 893
    :cond_1a
    if-eqz p3, :cond_40

    .line 898
    :cond_1c
    if-eqz p3, :cond_2b

    array-length v0, p3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_23

    goto :goto_2b

    .line 899
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createNetworkSpecifier: Invalid peer MAC address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_2b
    :goto_2b
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 903
    if-nez p3, :cond_31

    const/4 v1, 0x3

    goto :goto_32

    .line 904
    :cond_31
    const/4 v1, 0x2

    :goto_32
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[B[BLjava/lang/String;II)V

    .line 902
    return-object v0

    .line 894
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createNetworkSpecifier: Invalid peer MAC - cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o disconnect(ILandroid/os/Binder;)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "binder"    # Landroid/os/Binder;

    .line 604
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/aware/IWifiAwareManager;->disconnect(ILandroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 607
    nop

    .line 608
    return-void

    .line 605
    :catch_7
    move-exception v0

    .line 606
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist enableInstantCommunicationMode(Z)V
    .registers 4
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 381
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 385
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/net/wifi/aware/IWifiAwareManager;->enableInstantCommunicationMode(Ljava/lang/String;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    .line 388
    nop

    .line 389
    return-void

    .line 386
    :catch_13
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 382
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getAvailableAwareResources()Landroid/net/wifi/aware/AwareResources;
    .registers 3

    .line 444
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0}, Landroid/net/wifi/aware/IWifiAwareManager;->getAvailableAwareResources()Landroid/net/wifi/aware/AwareResources;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 445
    :catch_7
    move-exception v0

    .line 446
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCharacteristics()Landroid/net/wifi/aware/Characteristics;
    .registers 3

    .line 424
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0}, Landroid/net/wifi/aware/IWifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 425
    :catch_7
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMasterPreference(ILandroid/os/Binder;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "clientId"    # I
    .param p2, "binder"    # Landroid/os/Binder;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Binder;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 626
    .local p4, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 627
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 629
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$1;

    invoke-direct {v1, p0, p3, p4}, Landroid/net/wifi/aware/WifiAwareManager$1;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/net/wifi/aware/IWifiAwareManager;->getMasterPreference(ILandroid/os/IBinder;Landroid/net/wifi/IIntegerListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 638
    nop

    .line 639
    return-void

    .line 636
    :catch_16
    move-exception v0

    .line 637
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPairedDevices(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1381
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1382
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1384
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    .line 1385
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/aware/WifiAwareManager$3;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager$3;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1384
    invoke-interface {v0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager;->getPairedDevices(Ljava/lang/String;Landroid/net/wifi/IListListener;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1c

    .line 1394
    nop

    .line 1395
    return-void

    .line 1392
    :catch_1c
    move-exception v0

    .line 1393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist initiateBootStrappingSetupRequest(IILandroid/net/wifi/aware/PeerHandle;I)V
    .registers 7
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p4, "method"    # I

    .line 806
    if-eqz p3, :cond_11

    .line 815
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget v1, p3, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-interface {v0, p1, p2, v1, p4}, Landroid/net/wifi/aware/IWifiAwareManager;->initiateBootStrappingSetupRequest(IIII)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_b

    .line 819
    nop

    .line 820
    return-void

    .line 817
    :catch_b
    move-exception v0

    .line 818
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 807
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initiateBootStrappingSetupRequest: invalid peerHandle - must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist initiateNanPairingSetupRequest(IILandroid/net/wifi/aware/PeerHandle;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "pairingDeviceAlias"    # Ljava/lang/String;
    .param p6, "cipherSuite"    # I

    .line 763
    if-eqz p3, :cond_1f

    .line 772
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget v3, p3, Landroid/net/wifi/aware/PeerHandle;->peerId:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_13

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .end local p1    # "clientId":I
    .end local p2    # "sessionId":I
    .end local p4    # "password":Ljava/lang/String;
    .end local p5    # "pairingDeviceAlias":Ljava/lang/String;
    .end local p6    # "cipherSuite":I
    .local v1, "clientId":I
    .local v2, "sessionId":I
    .local v4, "password":Ljava/lang/String;
    .local v5, "pairingDeviceAlias":Ljava/lang/String;
    .local v6, "cipherSuite":I
    :try_start_b
    invoke-interface/range {v0 .. v6}, Landroid/net/wifi/aware/IWifiAwareManager;->initiateNanPairingSetupRequest(IIILjava/lang/String;Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 776
    nop

    .line 777
    return-void

    .line 774
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v1    # "clientId":I
    .end local v2    # "sessionId":I
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "pairingDeviceAlias":Ljava/lang/String;
    .end local v6    # "cipherSuite":I
    .restart local p1    # "clientId":I
    .restart local p2    # "sessionId":I
    .restart local p4    # "password":Ljava/lang/String;
    .restart local p5    # "pairingDeviceAlias":Ljava/lang/String;
    .restart local p6    # "cipherSuite":I
    :catch_13
    move-exception v0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object p1, v0

    .line 775
    .end local p2    # "sessionId":I
    .end local p4    # "password":Ljava/lang/String;
    .end local p5    # "pairingDeviceAlias":Ljava/lang/String;
    .end local p6    # "cipherSuite":I
    .restart local v1    # "clientId":I
    .restart local v2    # "sessionId":I
    .restart local v4    # "password":Ljava/lang/String;
    .restart local v5    # "pairingDeviceAlias":Ljava/lang/String;
    .restart local v6    # "cipherSuite":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 764
    .end local v1    # "clientId":I
    .end local v2    # "sessionId":I
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "pairingDeviceAlias":Ljava/lang/String;
    .end local v6    # "cipherSuite":I
    .local p1, "clientId":I
    .restart local p2    # "sessionId":I
    .restart local p4    # "password":Ljava/lang/String;
    .restart local p5    # "pairingDeviceAlias":Ljava/lang/String;
    .restart local p6    # "cipherSuite":I
    :cond_1f
    move v1, p1

    move v2, p2

    .end local p1    # "clientId":I
    .end local p2    # "sessionId":I
    .restart local v1    # "clientId":I
    .restart local v2    # "sessionId":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "initiateNanPairingRequest: invalid peerHandle - must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isAvailable()Z
    .registers 3

    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0}, Landroid/net/wifi/aware/IWifiAwareManager;->isUsageEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 327
    :catch_7
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceAttached()Z
    .registers 3

    .line 343
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0}, Landroid/net/wifi/aware/IWifiAwareManager;->isDeviceAttached()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 344
    :catch_7
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isInstantCommunicationModeEnabled()Z
    .registers 3

    .line 400
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 404
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0}, Landroid/net/wifi/aware/IWifiAwareManager;->isInstantCommunicationModeEnabled()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 405
    :catch_d
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 401
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isOpportunisticModeEnabled(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1324
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1325
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1328
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/aware/WifiAwareManager$2;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager$2;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager;->isOpportunisticModeEnabled(Ljava/lang/String;Landroid/net/wifi/IBooleanListener;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1c

    .line 1340
    nop

    .line 1341
    return-void

    .line 1338
    :catch_1c
    move-exception v0

    .line 1339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSetChannelOnDataPathSupported()Z
    .registers 3

    .line 359
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0}, Landroid/net/wifi/aware/IWifiAwareManager;->isSetChannelOnDataPathSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 360
    :catch_7
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o publish(ILandroid/os/Looper;Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V
    .registers 15
    .param p1, "clientId"    # I
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .param p4, "callback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;

    .line 646
    if-eqz p4, :cond_42

    .line 651
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 652
    .local v7, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 653
    const-string v0, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    .line 654
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 653
    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 656
    :cond_19
    iget-object v6, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    const/4 v3, 0x1

    move-object v1, p0

    move v5, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V

    move v4, p1

    move-object v5, p3

    move-object v1, v6

    move-object v2, v8

    move-object v3, v9

    move-object v6, v0

    invoke-interface/range {v1 .. v7}, Landroid/net/wifi/aware/IWifiAwareManager;->publish(Ljava/lang/String;Ljava/lang/String;ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;Landroid/os/Bundle;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_3a} :catch_3c

    .line 662
    .end local v7    # "extras":Landroid/os/Bundle;
    nop

    .line 663
    return-void

    .line 660
    :catch_3c
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 647
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null callback provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removePairedDevice(Ljava/lang/String;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 1366
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/net/wifi/aware/IWifiAwareManager;->removePairedDevice(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1369
    nop

    .line 1370
    return-void

    .line 1367
    :catch_d
    move-exception v0

    .line 1368
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestMacAddresses(I[ILandroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "peerIds"    # [I
    .param p3, "callback"    # Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;

    .line 827
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/aware/IWifiAwareManager;->requestMacAddresses(I[ILandroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 830
    nop

    .line 831
    return-void

    .line 828
    :catch_7
    move-exception v0

    .line 829
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist resetPairedDevices()V
    .registers 3

    .line 1351
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/aware/IWifiAwareManager;->resetPairedDevices(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1354
    nop

    .line 1355
    return-void

    .line 1352
    :catch_d
    move-exception v0

    .line 1353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist responseNanPairingSetupRequest(IILandroid/net/wifi/aware/PeerHandle;ILjava/lang/String;Ljava/lang/String;ZI)V
    .registers 18
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p4, "requestId"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "pairingDeviceAlias"    # Ljava/lang/String;
    .param p7, "accept"    # Z
    .param p8, "cipherSuite"    # I

    .line 785
    if-eqz p3, :cond_1a

    .line 794
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget v3, p3, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    move v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/net/wifi/aware/IWifiAwareManager;->responseNanPairingSetupRequest(IIIILjava/lang/String;Ljava/lang/String;ZI)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_14

    .line 798
    nop

    .line 799
    return-void

    .line 796
    :catch_14
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 786
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initiateNanPairingRequest: invalid peerHandle - must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist resume(II)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I

    .line 1413
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/aware/IWifiAwareManager;->resume(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1416
    nop

    .line 1417
    return-void

    .line 1414
    :catch_7
    move-exception v0

    .line 1415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o sendMessage(IILandroid/net/wifi/aware/PeerHandle;[BII)V
    .registers 14
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p4, "message"    # [B
    .param p5, "messageId"    # I
    .param p6, "retryCount"    # I

    .line 739
    if-eqz p3, :cond_1f

    .line 751
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget v3, p3, Landroid/net/wifi/aware/PeerHandle;->peerId:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_13

    move v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "clientId":I
    .end local p2    # "sessionId":I
    .end local p4    # "message":[B
    .end local p5    # "messageId":I
    .end local p6    # "retryCount":I
    .local v1, "clientId":I
    .local v2, "sessionId":I
    .local v4, "message":[B
    .local v5, "messageId":I
    .local v6, "retryCount":I
    :try_start_b
    invoke-interface/range {v0 .. v6}, Landroid/net/wifi/aware/IWifiAwareManager;->sendMessage(III[BII)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 755
    nop

    .line 756
    return-void

    .line 753
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v1    # "clientId":I
    .end local v2    # "sessionId":I
    .end local v4    # "message":[B
    .end local v5    # "messageId":I
    .end local v6    # "retryCount":I
    .restart local p1    # "clientId":I
    .restart local p2    # "sessionId":I
    .restart local p4    # "message":[B
    .restart local p5    # "messageId":I
    .restart local p6    # "retryCount":I
    :catch_13
    move-exception v0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object p1, v0

    .line 754
    .end local p2    # "sessionId":I
    .end local p4    # "message":[B
    .end local p5    # "messageId":I
    .end local p6    # "retryCount":I
    .restart local v1    # "clientId":I
    .restart local v2    # "sessionId":I
    .restart local v4    # "message":[B
    .restart local v5    # "messageId":I
    .restart local v6    # "retryCount":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 740
    .end local v1    # "clientId":I
    .end local v2    # "sessionId":I
    .end local v4    # "message":[B
    .end local v5    # "messageId":I
    .end local v6    # "retryCount":I
    .local p1, "clientId":I
    .restart local p2    # "sessionId":I
    .restart local p4    # "message":[B
    .restart local p5    # "messageId":I
    .restart local p6    # "retryCount":I
    :cond_1f
    move v1, p1

    move v2, p2

    .end local p1    # "clientId":I
    .end local p2    # "sessionId":I
    .restart local v1    # "clientId":I
    .restart local v2    # "sessionId":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sendMessage: invalid peerHandle - must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setAwareParams(Landroid/net/wifi/aware/AwareParams;)V
    .registers 4
    .param p1, "params"    # Landroid/net/wifi/aware/AwareParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1291
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/aware/IWifiAwareManager;->setAwareParams(Landroid/net/wifi/aware/AwareParams;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1294
    nop

    .line 1295
    return-void

    .line 1292
    :catch_7
    move-exception v0

    .line 1293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMasterPreference(ILandroid/os/Binder;I)V
    .registers 6
    .param p1, "clientId"    # I
    .param p2, "binder"    # Landroid/os/Binder;
    .param p3, "mp"    # I

    .line 615
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/aware/IWifiAwareManager;->setMasterPreference(ILandroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 618
    nop

    .line 619
    return-void

    .line 616
    :catch_7
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOpportunisticModeEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1308
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/net/wifi/aware/IWifiAwareManager;->setOpportunisticModeEnabled(Ljava/lang/String;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1311
    nop

    .line 1312
    return-void

    .line 1309
    :catch_d
    move-exception v0

    .line 1310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o subscribe(ILandroid/os/Looper;Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V
    .registers 15
    .param p1, "clientId"    # I
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p4, "callback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;

    .line 689
    if-eqz p4, :cond_42

    .line 694
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 695
    .local v7, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 696
    const-string v0, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    .line 697
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 696
    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 699
    :cond_19
    iget-object v6, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    const/4 v3, 0x0

    move-object v1, p0

    move v5, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V

    move v4, p1

    move-object v5, p3

    move-object v1, v6

    move-object v2, v8

    move-object v3, v9

    move-object v6, v0

    invoke-interface/range {v1 .. v7}, Landroid/net/wifi/aware/IWifiAwareManager;->subscribe(Ljava/lang/String;Ljava/lang/String;ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;Landroid/os/Bundle;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_3a} :catch_3c

    .line 705
    .end local v7    # "extras":Landroid/os/Bundle;
    nop

    .line 706
    return-void

    .line 703
    :catch_3c
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 690
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null callback provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist suspend(II)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I

    .line 1402
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/aware/IWifiAwareManager;->suspend(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1405
    nop

    .line 1406
    return-void

    .line 1403
    :catch_7
    move-exception v0

    .line 1404
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o terminateSession(II)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I

    .line 730
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/aware/IWifiAwareManager;->terminateSession(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 733
    nop

    .line 734
    return-void

    .line 731
    :catch_7
    move-exception v0

    .line 732
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    .registers 6
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;

    .line 673
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/aware/IWifiAwareManager;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 676
    nop

    .line 677
    return-void

    .line 674
    :catch_7
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    .registers 6
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;

    .line 716
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/aware/IWifiAwareManager;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 719
    nop

    .line 720
    return-void

    .line 717
    :catch_7
    move-exception v0

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
