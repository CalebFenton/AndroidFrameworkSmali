.class public Landroid/net/NetworkScoreManager;
.super Ljava/lang/Object;
.source "NetworkScoreManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;,
        Landroid/net/NetworkScoreManager$NetworkScoreCallback;,
        Landroid/net/NetworkScoreManager$RecommendationsEnabledSetting;,
        Landroid/net/NetworkScoreManager$ScoreUpdateFilter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ACTION_CHANGE_ACTIVE:Ljava/lang/String; = "android.net.scoring.CHANGE_ACTIVE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_CUSTOM_ENABLE:Ljava/lang/String; = "android.net.scoring.CUSTOM_ENABLE"

.field public static final whitelist ACTION_RECOMMEND_NETWORKS:Ljava/lang/String; = "android.net.action.RECOMMEND_NETWORKS"

.field public static final whitelist ACTION_SCORER_CHANGED:Ljava/lang/String; = "android.net.scoring.SCORER_CHANGED"

.field public static final whitelist ACTION_SCORE_NETWORKS:Ljava/lang/String; = "android.net.scoring.SCORE_NETWORKS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_NETWORKS_TO_SCORE:Ljava/lang/String; = "networksToScore"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_NEW_SCORER:Ljava/lang/String; = "newScorer"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o NETWORK_AVAILABLE_NOTIFICATION_CHANNEL_ID_META_DATA:Ljava/lang/String; = "android.net.wifi.notification_channel_id_network_available"

.field public static final greylist-max-o RECOMMENDATIONS_ENABLED_FORCED_OFF:I = -0x1

.field public static final greylist-max-o RECOMMENDATIONS_ENABLED_OFF:I = 0x0

.field public static final greylist-max-o RECOMMENDATIONS_ENABLED_ON:I = 0x1

.field public static final greylist-max-o RECOMMENDATION_SERVICE_LABEL_META_DATA:Ljava/lang/String; = "android.net.scoring.recommendation_service_label"

.field public static final whitelist SCORE_FILTER_CURRENT_NETWORK:I = 0x1

.field public static final whitelist SCORE_FILTER_NONE:I = 0x0

.field public static final whitelist SCORE_FILTER_SCAN_RESULTS:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "NetworkScoreManager"

.field public static final greylist-max-o USE_OPEN_WIFI_PACKAGE_META_DATA:Ljava/lang/String; = "android.net.wifi.use_open_wifi_package"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/net/INetworkScoreService;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Landroid/net/NetworkScoreManager;->mContext:Landroid/content/Context;

    .line 235
    nop

    .line 236
    const-string/jumbo v0, "network_score"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkScoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    .line 237
    return-void
.end method


# virtual methods
.method public whitelist clearScores()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 332
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0}, Landroid/net/INetworkScoreService;->clearScores()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 333
    :catch_7
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disableScoring()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 372
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0}, Landroid/net/INetworkScoreService;->disableScoring()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 375
    nop

    .line 376
    return-void

    .line 373
    :catch_7
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getActiveScorer()Landroid/net/NetworkScorerAppData;
    .registers 3

    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0}, Landroid/net/INetworkScoreService;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 273
    :catch_7
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getActiveScorerPackage()Ljava/lang/String;
    .registers 3

    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0}, Landroid/net/INetworkScoreService;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 256
    :catch_7
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getAllValidScorers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .line 289
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0}, Landroid/net/INetworkScoreService;->getAllValidScorers()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 290
    :catch_7
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isCallerActiveScorer(I)Z
    .registers 4
    .param p1, "callingUid"    # I

    .line 582
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0, p1}, Landroid/net/INetworkScoreService;->isCallerActiveScorer(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 583
    :catch_7
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 439
    return-void
.end method

.method public greylist-max-o registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;
    .param p3, "filterType"    # I

    .line 456
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/INetworkScoreService;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 459
    nop

    .line 460
    return-void

    .line 457
    :catch_7
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerNetworkScoreCallback(IILjava/util/concurrent/Executor;Landroid/net/NetworkScoreManager$NetworkScoreCallback;)V
    .registers 7
    .param p1, "networkType"    # I
    .param p2, "filterType"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/net/NetworkScoreManager$NetworkScoreCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 560
    if-eqz p4, :cond_30

    if-eqz p3, :cond_30

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerNetworkScoreCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScoreManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

    invoke-direct {v0, p0, p3, p4}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;-><init>(Landroid/net/NetworkScoreManager;Ljava/util/concurrent/Executor;Landroid/net/NetworkScoreManager$NetworkScoreCallback;)V

    invoke-virtual {p0, p1, v0, p2}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 568
    return-void

    .line 561
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback / executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestScores(Ljava/util/Collection;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/NetworkKey;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 421
    .local p1, "networks":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkKey;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/NetworkKey;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkKey;

    invoke-virtual {p0, v0}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o requestScores([Landroid/net/NetworkKey;)Z
    .registers 4
    .param p1, "networks"    # [Landroid/net/NetworkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 396
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0, p1}, Landroid/net/INetworkScoreService;->requestScores([Landroid/net/NetworkKey;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 397
    :catch_7
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setActiveScorer(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 354
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0, p1}, Landroid/net/INetworkScoreService;->setActiveScorer(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 355
    :catch_7
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;

    .line 475
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkScoreService;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 478
    nop

    .line 479
    return-void

    .line 476
    :catch_7
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateScores([Landroid/net/ScoredNetwork;)Z
    .registers 4
    .param p1, "networks"    # [Landroid/net/ScoredNetwork;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 309
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v0, p1}, Landroid/net/INetworkScoreService;->updateScores([Landroid/net/ScoredNetwork;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 310
    :catch_7
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
