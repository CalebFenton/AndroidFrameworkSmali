.class public Lcom/android/server/NetworkScoreService;
.super Landroid/net/INetworkScoreService$Stub;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkScoreService$1;,
        Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;,
        Lcom/android/server/NetworkScoreService$ScoringServiceConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkScoreService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackageMonitorLock"
    .end annotation
.end field

.field private final mPackageMonitorLock:Ljava/lang/Object;

.field private final mScoreCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/INetworkScoreCache;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/NetworkScoreService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService;->setScorerInternal(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/NetworkScoreService;Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;)V
    .locals 0
    .param p1, "scorerData"    # Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/NetworkScoreService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService;->onUserUnlocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/NetworkScoreService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 154
    invoke-direct {p0}, Landroid/net/INetworkScoreService$Stub;-><init>()V

    #@4
    .line 66
    const/4 v0, 0x0

    #@5
    new-array v0, v0, [Ljava/lang/Object;

    #@7
    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    #@9
    .line 72
    new-instance v0, Lcom/android/server/NetworkScoreService$1;

    #@b
    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$1;-><init>(Lcom/android/server/NetworkScoreService;)V

    #@e
    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@10
    .line 155
    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@12
    .line 156
    new-instance v0, Ljava/util/HashMap;

    #@14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    #@19
    .line 157
    new-instance v3, Landroid/content/IntentFilter;

    #@1b
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    #@1e
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@21
    .line 159
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@23
    .line 160
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@25
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@27
    move-object v5, v4

    #@28
    .line 159
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@2b
    .line 154
    return-void
.end method

.method private bindToScoringServiceIfNeeded()V
    .locals 2

    #@0
    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@5
    move-result-object v0

    #@6
    .line 224
    .local v0, "scorerData":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;)V

    #@9
    .line 221
    return-void
.end method

.method private bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;)V
    .locals 3
    .param p1, "scorerData"    # Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@0
    .prologue
    .line 229
    if-eqz p1, :cond_3

    #@2
    iget-object v1, p1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScoringServiceClassName:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_3

    #@6
    .line 231
    new-instance v0, Landroid/content/ComponentName;

    #@8
    iget-object v1, p1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    #@a
    iget-object v2, p1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScoringServiceClassName:Ljava/lang/String;

    #@c
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 233
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 234
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    #@15
    invoke-static {v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->-get0(Lcom/android/server/NetworkScoreService$ScoringServiceConnection;)Landroid/content/ComponentName;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 239
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    #@21
    if-nez v1, :cond_1

    #@23
    .line 240
    new-instance v1, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    #@25
    invoke-direct {v1, v0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;-><init>(Landroid/content/ComponentName;)V

    #@28
    iput-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    #@2a
    .line 244
    :cond_1
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    #@2c
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2e
    invoke-virtual {v1, v2}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->connect(Landroid/content/Context;)V

    #@31
    .line 227
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :goto_1
    return-void

    #@32
    .line 235
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    #@35
    goto :goto_0

    #@36
    .line 246
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    #@39
    goto :goto_1
.end method

.method private clearInternal()V
    .locals 6

    #@0
    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCaches()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 386
    .local v0, "cachesToClear":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/INetworkScoreCache;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v3

    #@8
    .local v3, "scoreCache$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/net/INetworkScoreCache;

    #@14
    .line 388
    .local v2, "scoreCache":Landroid/net/INetworkScoreCache;
    :try_start_0
    invoke-interface {v2}, Landroid/net/INetworkScoreCache;->clearScores()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    goto :goto_0

    #@18
    .line 389
    :catch_0
    move-exception v1

    #@19
    .line 390
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NetworkScoreService"

    #@1c
    const/4 v5, 0x2

    #@1d
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 391
    const-string/jumbo v4, "NetworkScoreService"

    #@26
    const-string/jumbo v5, "Unable to clear scores"

    #@29
    invoke-static {v4, v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_0

    #@2d
    .line 383
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "scoreCache":Landroid/net/INetworkScoreCache;
    :cond_1
    return-void
.end method

.method private getScoreCaches()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/INetworkScoreCache;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 445
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    #@5
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    #@7
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    .line 444
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method private onUserUnlocked(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageMonitorIfNeeded()V

    #@3
    .line 190
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded()V

    #@6
    .line 188
    return-void
.end method

.method private registerPackageMonitorIfNeeded()V
    .locals 7

    #@0
    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@5
    move-result-object v0

    #@6
    .line 196
    .local v0, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 203
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    #@f
    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->unregister()V

    #@12
    .line 204
    const/4 v1, 0x0

    #@13
    iput-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    #@15
    .line 208
    :cond_0
    if-eqz v0, :cond_1

    #@17
    .line 209
    new-instance v1, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    #@19
    iget-object v3, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-direct {v1, p0, v3, v4}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;)V

    #@1f
    iput-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    #@21
    .line 211
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    #@23
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@25
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@27
    const/4 v5, 0x0

    #@28
    .line 212
    const/4 v6, 0x0

    #@29
    .line 211
    invoke-virtual {v1, v3, v5, v4, v6}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_1
    monitor-exit v2

    #@2d
    .line 193
    return-void

    #@2e
    .line 196
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
.end method

.method private setScorerInternal(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v4

    #@4
    .line 347
    .local v4, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    #@7
    .line 351
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    #@a
    .line 353
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@c
    invoke-static {v3}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@f
    move-result-object v1

    #@10
    .line 354
    .local v1, "prevScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@12
    invoke-static {v3, p1}, Landroid/net/NetworkScorerAppManager;->setActiveScorer(Landroid/content/Context;Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    .line 358
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded()V

    #@19
    .line 359
    if-eqz v2, :cond_1

    #@1b
    .line 360
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageMonitorIfNeeded()V

    #@1e
    .line 362
    new-instance v0, Landroid/content/Intent;

    #@20
    const-string/jumbo v3, "android.net.scoring.SCORER_CHANGED"

    #@23
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@26
    .line 363
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    #@28
    .line 364
    iget-object v3, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    #@2a
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@2d
    .line 366
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2f
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@31
    invoke-virtual {v3, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@34
    .line 369
    :cond_0
    if-eqz p1, :cond_1

    #@36
    .line 370
    const-string/jumbo v3, "newScorer"

    #@39
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    .line 371
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@3f
    .line 373
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@41
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@43
    invoke-virtual {v3, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 378
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@49
    .line 376
    return v2

    #@4a
    .line 377
    .end local v1    # "prevScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .end local v2    # "result":Z
    :catchall_0
    move-exception v3

    #@4b
    .line 378
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 377
    throw v3
.end method

.method private unbindFromScoringServiceIfNeeded()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 252
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 253
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    #@7
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->disconnect(Landroid/content/Context;)V

    #@c
    .line 255
    :cond_0
    iput-object v2, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    #@e
    .line 250
    return-void
.end method


# virtual methods
.method public clearScores()Z
    .locals 2

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, v1}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 300
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v1, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    #@1a
    .line 303
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    .line 305
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    #@1e
    .line 306
    const-string/jumbo v1, "Caller is neither the active scorer nor the scorer manager."

    #@21
    .line 305
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method public disableScoring()V
    .locals 2

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, v1}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 330
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v1, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 335
    :cond_0
    const/4 v0, 0x0

    #@18
    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->setScorerInternal(Ljava/lang/String;)Z

    #@1b
    .line 326
    return-void

    #@1c
    .line 337
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    #@1e
    .line 338
    const-string/jumbo v1, "Caller is neither the active scorer nor the scorer manager."

    #@21
    .line 337
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 411
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.DUMP"

    #@5
    const-string/jumbo v6, "NetworkScoreService"

    #@8
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 412
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@d
    invoke-static {v4}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@10
    move-result-object v0

    #@11
    .line 413
    .local v0, "currentScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v0, :cond_0

    #@13
    .line 414
    const-string/jumbo v4, "Scoring is disabled."

    #@16
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 415
    return-void

    #@1a
    .line 417
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Current scorer: "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    iget-object v5, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33
    .line 419
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCaches()Ljava/util/Set;

    #@36
    move-result-object v4

    #@37
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v3

    #@3b
    .local v3, "scoreCache$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_2

    #@41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Landroid/net/INetworkScoreCache;

    #@47
    .line 421
    .local v2, "scoreCache":Landroid/net/INetworkScoreCache;
    :try_start_0
    invoke-interface {v2}, Landroid/net/INetworkScoreCache;->asBinder()Landroid/os/IBinder;

    #@4a
    move-result-object v4

    #@4b
    invoke-interface {v4, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    goto :goto_0

    #@4f
    .line 422
    :catch_0
    move-exception v1

    #@50
    .line 423
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "Unable to dump score cache"

    #@53
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@56
    .line 424
    const-string/jumbo v4, "NetworkScoreService"

    #@59
    const/4 v5, 0x2

    #@5a
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_1

    #@60
    .line 425
    const-string/jumbo v4, "NetworkScoreService"

    #@63
    const-string/jumbo v5, "Unable to dump score cache"

    #@66
    invoke-static {v4, v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@69
    goto :goto_0

    #@6a
    .line 429
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "scoreCache":Landroid/net/INetworkScoreCache;
    :cond_2
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    #@6c
    if-eqz v4, :cond_3

    #@6e
    .line 430
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    #@70
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@73
    .line 434
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@76
    .line 410
    return-void

    #@77
    .line 432
    :cond_3
    const-string/jumbo v4, "ScoringServiceConnection: null"

    #@7a
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    goto :goto_1
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    #@5
    const-string/jumbo v2, "NetworkScoreService"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 400
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    #@d
    monitor-enter v1

    #@e
    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Score cache already registered for type "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 402
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 400
    :catchall_0
    move-exception v0

    #@35
    monitor-exit v1

    #@36
    throw v0

    #@37
    .line 405
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    #@39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v2

    #@3d
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    monitor-exit v1

    #@41
    .line 398
    return-void
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.SCORE_NETWORKS"

    #@5
    const-string/jumbo v2, "NetworkScoreService"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 322
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService;->setScorerInternal(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method systemReady()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 167
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    .line 168
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "network_scoring_provisioned"

    #@a
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_1

    #@10
    .line 171
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15
    move-result-object v2

    #@16
    .line 172
    const v3, 0x1040064

    #@19
    .line 171
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 173
    .local v1, "defaultPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_0

    #@23
    .line 174
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@25
    invoke-static {v2, v1}, Landroid/net/NetworkScorerAppManager;->setActiveScorer(Landroid/content/Context;Ljava/lang/String;)Z

    #@28
    .line 176
    :cond_0
    const-string/jumbo v2, "network_scoring_provisioned"

    #@2b
    const/4 v3, 0x1

    #@2c
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@2f
    .line 179
    .end local v1    # "defaultPackage":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageMonitorIfNeeded()V

    #@32
    .line 165
    return-void
.end method

.method systemRunning()V
    .locals 0

    #@0
    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded()V

    #@3
    .line 183
    return-void
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 11
    .param p1, "networks"    # [Landroid/net/ScoredNetwork;

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    .line 260
    iget-object v7, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@3
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    #@6
    move-result v8

    #@7
    invoke-static {v7, v8}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    #@a
    move-result v7

    #@b
    if-nez v7, :cond_0

    #@d
    .line 261
    new-instance v7, Ljava/lang/SecurityException;

    #@f
    new-instance v8, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v9, "Caller with UID "

    #@17
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v8

    #@1b
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    #@1e
    move-result v9

    #@1f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    .line 262
    const-string/jumbo v9, " is not the active scorer."

    #@26
    .line 261
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v8

    #@2a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v8

    #@2e
    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@31
    throw v7

    #@32
    .line 266
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    #@34
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@37
    .line 267
    .local v5, "networksByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    const/4 v7, 0x0

    #@38
    array-length v8, p1

    #@39
    :goto_0
    if-ge v7, v8, :cond_2

    #@3b
    aget-object v3, p1, v7

    #@3d
    .line 268
    .local v3, "network":Landroid/net/ScoredNetwork;
    iget-object v9, v3, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@3f
    iget v9, v9, Landroid/net/NetworkKey;->type:I

    #@41
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v9

    #@45
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    check-cast v4, Ljava/util/List;

    #@4b
    .line 269
    .local v4, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    if-nez v4, :cond_1

    #@4d
    .line 270
    new-instance v4, Ljava/util/ArrayList;

    #@4f
    .end local v4    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@52
    .line 271
    .restart local v4    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    iget-object v9, v3, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@54
    iget v9, v9, Landroid/net/NetworkKey;->type:I

    #@56
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v9

    #@5a
    invoke-interface {v5, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 273
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@60
    .line 267
    add-int/lit8 v7, v7, 0x1

    #@62
    goto :goto_0

    #@63
    .line 277
    .end local v3    # "network":Landroid/net/ScoredNetwork;
    .end local v4    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@66
    move-result-object v7

    #@67
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v2

    #@6b
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v7

    #@6f
    if-eqz v7, :cond_5

    #@71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v1

    #@75
    check-cast v1, Ljava/util/Map$Entry;

    #@77
    .line 278
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    iget-object v7, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    #@79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@7c
    move-result-object v8

    #@7d
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    move-result-object v6

    #@81
    check-cast v6, Landroid/net/INetworkScoreCache;

    #@83
    .line 279
    .local v6, "scoreCache":Landroid/net/INetworkScoreCache;
    if-eqz v6, :cond_4

    #@85
    .line 281
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@88
    move-result-object v7

    #@89
    check-cast v7, Ljava/util/List;

    #@8b
    invoke-interface {v6, v7}, Landroid/net/INetworkScoreCache;->updateScores(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8e
    goto :goto_1

    #@8f
    .line 282
    :catch_0
    move-exception v0

    #@90
    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "NetworkScoreService"

    #@93
    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@96
    move-result v7

    #@97
    if-eqz v7, :cond_3

    #@99
    .line 284
    const-string/jumbo v7, "NetworkScoreService"

    #@9c
    new-instance v8, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v9, "Unable to update scores of type "

    #@a4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@ab
    move-result-object v9

    #@ac
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v8

    #@b0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v8

    #@b4
    invoke-static {v7, v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b7
    goto :goto_1

    #@b8
    .line 287
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v7, "NetworkScoreService"

    #@bb
    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@be
    move-result v7

    #@bf
    if-eqz v7, :cond_3

    #@c1
    .line 288
    const-string/jumbo v7, "NetworkScoreService"

    #@c4
    new-instance v8, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v9, "No scorer registered for type "

    #@cc
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v8

    #@d0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d3
    move-result-object v9

    #@d4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v8

    #@d8
    const-string/jumbo v9, ", discarding"

    #@db
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v8

    #@df
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v8

    #@e3
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e6
    goto :goto_1

    #@e7
    .line 292
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    .end local v6    # "scoreCache":Landroid/net/INetworkScoreCache;
    :cond_5
    const/4 v7, 0x1

    #@e8
    return v7
.end method
