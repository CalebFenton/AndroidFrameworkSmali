.class public Lcom/android/server/NetworkScoreService;
.super Landroid/net/INetworkScoreService$Stub;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkScoreService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mReceiverLock"
    .end annotation
.end field

.field private mReceiverLock:Ljava/lang/Object;

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Landroid/net/INetworkScoreService$Stub;-><init>()V

    #@3
    .line 64
    const/4 v0, 0x0

    #@4
    new-array v0, v0, [Ljava/lang/Object;

    #@6
    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mReceiverLock:Ljava/lang/Object;

    #@8
    .line 93
    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@a
    .line 94
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    #@11
    .line 92
    return-void
.end method

.method private clearInternal()V
    .locals 6

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCaches()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 254
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
    .line 256
    .local v2, "scoreCache":Landroid/net/INetworkScoreCache;
    :try_start_0
    invoke-interface {v2}, Landroid/net/INetworkScoreCache;->clearScores()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    goto :goto_0

    #@18
    .line 257
    :catch_0
    move-exception v1

    #@19
    .line 258
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
    .line 259
    const-string/jumbo v4, "NetworkScoreService"

    #@26
    const-string/jumbo v5, "Unable to clear scores"

    #@29
    invoke-static {v4, v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_0

    #@2d
    .line 251
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
    .line 307
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 308
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
    .line 307
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method private registerPackageReceiverIfNeeded()V
    .locals 8

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@5
    move-result-object v6

    #@6
    .line 116
    .local v6, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v7, p0, Lcom/android/server/NetworkScoreService;->mReceiverLock:Ljava/lang/Object;

    #@8
    monitor-enter v7

    #@9
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 119
    const-string/jumbo v0, "NetworkScoreService"

    #@10
    const/4 v1, 0x2

    #@11
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 120
    const-string/jumbo v0, "NetworkScoreService"

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "Unregistering receiver for "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    #@28
    iget-object v2, v2, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->mRegisteredPackage:Ljava/lang/String;

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@37
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    #@39
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@3c
    .line 123
    const/4 v0, 0x0

    #@3d
    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    #@3f
    .line 127
    :cond_1
    if-eqz v6, :cond_2

    #@41
    .line 128
    new-instance v3, Landroid/content/IntentFilter;

    #@43
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@46
    .line 129
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    #@49
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@4c
    .line 130
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    #@4f
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@52
    .line 131
    const-string/jumbo v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    #@55
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@58
    .line 132
    const-string/jumbo v0, "package"

    #@5b
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@5e
    .line 133
    iget-object v0, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    #@60
    .line 134
    const/4 v1, 0x0

    #@61
    .line 133
    invoke-virtual {v3, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@64
    .line 135
    new-instance v0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    #@66
    iget-object v1, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    #@68
    invoke-direct {v0, p0, v1}, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V

    #@6b
    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    #@6d
    .line 137
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@6f
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    #@71
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@73
    const/4 v4, 0x0

    #@74
    const/4 v5, 0x0

    #@75
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@78
    .line 138
    const-string/jumbo v0, "NetworkScoreService"

    #@7b
    const/4 v1, 0x2

    #@7c
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7f
    move-result v0

    #@80
    if-eqz v0, :cond_2

    #@82
    .line 139
    const-string/jumbo v0, "NetworkScoreService"

    #@85
    new-instance v1, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v2, "Registered receiver for "

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    iget-object v2, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    #@93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v1

    #@9b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9e
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_2
    monitor-exit v7

    #@9f
    .line 114
    return-void

    #@a0
    .line 116
    :catchall_0
    move-exception v0

    #@a1
    monitor-exit v7

    #@a2
    throw v0
.end method

.method private setScorerInternal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 231
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 236
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    #@7
    .line 237
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@9
    invoke-static {v4, p1}, Landroid/net/NetworkScorerAppManager;->setActiveScorer(Landroid/content/Context;Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    .line 238
    .local v1, "result":Z
    if-eqz v1, :cond_0

    #@f
    .line 239
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageReceiverIfNeeded()V

    #@12
    .line 240
    new-instance v0, Landroid/content/Intent;

    #@14
    const-string/jumbo v4, "android.net.scoring.SCORER_CHANGED"

    #@17
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a
    .line 241
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "newScorer"

    #@1d
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@20
    .line 242
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@22
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@24
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 246
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 244
    return v1

    #@2b
    .line 245
    .end local v1    # "result":Z
    :catchall_0
    move-exception v4

    #@2c
    .line 246
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 245
    throw v4
.end method


# virtual methods
.method public clearScores()Z
    .locals 2

    #@0
    .prologue
    .line 186
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
    .line 187
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
    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    #@1a
    .line 190
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    .line 192
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    #@1e
    .line 193
    const-string/jumbo v1, "Caller is neither the active scorer nor the scorer manager."

    #@21
    .line 192
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method public disableScoring()V
    .locals 2

    #@0
    .prologue
    .line 216
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
    .line 217
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
    .line 222
    :cond_0
    const/4 v0, 0x0

    #@18
    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->setScorerInternal(Ljava/lang/String;)Z

    #@1b
    .line 213
    return-void

    #@1c
    .line 224
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    #@1e
    .line 225
    const-string/jumbo v1, "Caller is neither the active scorer nor the scorer manager."

    #@21
    .line 224
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
    .line 279
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.DUMP"

    #@5
    const-string/jumbo v6, "NetworkScoreService"

    #@8
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 280
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@d
    invoke-static {v4}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@10
    move-result-object v0

    #@11
    .line 281
    .local v0, "currentScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v0, :cond_0

    #@13
    .line 282
    const-string/jumbo v4, "Scoring is disabled."

    #@16
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 283
    return-void

    #@1a
    .line 285
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
    .line 286
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@36
    .line 288
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCaches()Ljava/util/Set;

    #@39
    move-result-object v4

    #@3a
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v3

    #@3e
    .local v3, "scoreCache$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_2

    #@44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v2

    #@48
    check-cast v2, Landroid/net/INetworkScoreCache;

    #@4a
    .line 290
    .local v2, "scoreCache":Landroid/net/INetworkScoreCache;
    :try_start_0
    invoke-interface {v2}, Landroid/net/INetworkScoreCache;->asBinder()Landroid/os/IBinder;

    #@4d
    move-result-object v4

    #@4e
    invoke-interface {v4, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    goto :goto_0

    #@52
    .line 291
    :catch_0
    move-exception v1

    #@53
    .line 292
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "Unable to dump score cache"

    #@56
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59
    .line 293
    const-string/jumbo v4, "NetworkScoreService"

    #@5c
    const/4 v5, 0x2

    #@5d
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_1

    #@63
    .line 294
    const-string/jumbo v4, "NetworkScoreService"

    #@66
    const-string/jumbo v5, "Unable to dump score cache"

    #@69
    invoke-static {v4, v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6c
    goto :goto_0

    #@6d
    .line 278
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "scoreCache":Landroid/net/INetworkScoreCache;
    :cond_2
    return-void
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    #@5
    const-string/jumbo v2, "NetworkScoreService"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 268
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    #@d
    monitor-enter v1

    #@e
    .line 269
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
    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    .line 271
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
    .line 270
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 268
    :catchall_0
    move-exception v0

    #@35
    monitor-exit v1

    #@36
    throw v0

    #@37
    .line 273
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
    .line 266
    return-void
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.SCORE_NETWORKS"

    #@5
    const-string/jumbo v2, "NetworkScoreService"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 209
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
    .line 99
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    .line 100
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "network_scoring_provisioned"

    #@a
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_1

    #@10
    .line 103
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15
    move-result-object v2

    #@16
    .line 104
    const v3, 0x1040049

    #@19
    .line 103
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 105
    .local v1, "defaultPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_0

    #@23
    .line 106
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    #@25
    invoke-static {v2, v1}, Landroid/net/NetworkScorerAppManager;->setActiveScorer(Landroid/content/Context;Ljava/lang/String;)Z

    #@28
    .line 108
    :cond_0
    const-string/jumbo v2, "network_scoring_provisioned"

    #@2b
    const/4 v3, 0x1

    #@2c
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@2f
    .line 111
    .end local v1    # "defaultPackage":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageReceiverIfNeeded()V

    #@32
    .line 98
    return-void
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 11
    .param p1, "networks"    # [Landroid/net/ScoredNetwork;

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    .line 147
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
    .line 148
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
    .line 149
    const-string/jumbo v9, " is not the active scorer."

    #@26
    .line 148
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
    .line 153
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    #@34
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@37
    .line 154
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
    .line 155
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
    .line 156
    .local v4, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    if-nez v4, :cond_1

    #@4d
    .line 157
    new-instance v4, Ljava/util/ArrayList;

    #@4f
    .end local v4    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@52
    .line 158
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
    .line 160
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@60
    .line 154
    add-int/lit8 v7, v7, 0x1

    #@62
    goto :goto_0

    #@63
    .line 164
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
    .line 165
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
    .line 166
    .local v6, "scoreCache":Landroid/net/INetworkScoreCache;
    if-eqz v6, :cond_4

    #@85
    .line 168
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
    .line 169
    :catch_0
    move-exception v0

    #@90
    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "NetworkScoreService"

    #@93
    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@96
    move-result v7

    #@97
    if-eqz v7, :cond_3

    #@99
    .line 171
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
    .line 174
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
    .line 175
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
    .line 179
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    .end local v6    # "scoreCache":Landroid/net/INetworkScoreCache;
    :cond_5
    const/4 v7, 0x1

    #@e8
    return v7
.end method
