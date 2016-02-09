.class public Landroid/net/NetworkScoreManager;
.super Ljava/lang/Object;
.source "NetworkScoreManager.java"


# static fields
.field public static final ACTION_CHANGE_ACTIVE:Ljava/lang/String; = "android.net.scoring.CHANGE_ACTIVE"

.field public static final ACTION_CUSTOM_ENABLE:Ljava/lang/String; = "android.net.scoring.CUSTOM_ENABLE"

.field public static final ACTION_SCORER_CHANGED:Ljava/lang/String; = "android.net.scoring.SCORER_CHANGED"

.field public static final ACTION_SCORE_NETWORKS:Ljava/lang/String; = "android.net.scoring.SCORE_NETWORKS"

.field public static final EXTRA_NETWORKS_TO_SCORE:Ljava/lang/String; = "networksToScore"

.field public static final EXTRA_NEW_SCORER:Ljava/lang/String; = "newScorer"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/net/INetworkScoreService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 130
    iput-object p1, p0, Landroid/net/NetworkScoreManager;->mContext:Landroid/content/Context;

    #@5
    .line 131
    const-string/jumbo v1, "network_score"

    #@8
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    .line 132
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/INetworkScoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreService;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    #@12
    .line 129
    return-void
.end method


# virtual methods
.method public clearScores()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    #@2
    invoke-interface {v1}, Landroid/net/INetworkScoreService;->clearScores()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 187
    :catch_0
    move-exception v0

    #@8
    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public disableScoring()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    #@2
    invoke-interface {v1}, Landroid/net/INetworkScoreService;->disableScoring()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 219
    :goto_0
    return-void

    #@6
    .line 222
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveScorerPackage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 146
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@6
    move-result-object v0

    #@7
    .line 147
    .local v0, "app":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v0, :cond_0

    #@9
    .line 148
    return-object v2

    #@a
    .line 150
    :cond_0
    iget-object v1, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    #@c
    return-object v1
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;

    #@0
    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/INetworkScoreService;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 262
    :goto_0
    return-void

    #@6
    .line 265
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestScores([Landroid/net/NetworkKey;)Z
    .locals 5
    .param p1, "networks"    # [Landroid/net/NetworkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 239
    .local v0, "activeScorer":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 240
    const/4 v2, 0x0

    #@7
    return v2

    #@8
    .line 242
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@a
    const-string/jumbo v2, "android.net.scoring.SCORE_NETWORKS"

    #@d
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 243
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@13
    .line 244
    const/high16 v2, 0x4000000

    #@15
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@18
    .line 245
    const-string/jumbo v2, "networksToScore"

    #@1b
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1e
    .line 248
    iget-object v2, p0, Landroid/net/NetworkScoreManager;->mContext:Landroid/content/Context;

    #@20
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@22
    const-string/jumbo v4, "android.permission.SCORE_NETWORKS"

    #@25
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@28
    .line 249
    const/4 v2, 0x1

    #@29
    return v2
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkScoreService;->setActiveScorer(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 207
    :catch_0
    move-exception v0

    #@8
    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 2
    .param p1, "networks"    # [Landroid/net/ScoredNetwork;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkScoreService;->updateScores([Landroid/net/ScoredNetwork;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 167
    :catch_0
    move-exception v0

    #@8
    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method
