.class Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;
.super Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiConnectedNetworkScorerProxy"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mScorer:Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$7EugCkZ2hXwK5EarSEvpv_-bmnM(Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->lambda$onNetworkSwitchAccepted$3(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9omuXD1kl4zugUF9b6moXBVLnTo(Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;Landroid/net/wifi/IScoreUpdateObserver;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->lambda$onSetScoreUpdateObserver$2(Landroid/net/wifi/IScoreUpdateObserver;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HhCFysoeJoxCPqjzqJuHwX2AICM(Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->lambda$onStop$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Qg5KbEBeGBL5dAoMrmyFmoBJmEE(Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;Landroid/net/wifi/WifiConnectedSessionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->lambda$onStart$0(Landroid/net/wifi/WifiConnectedSessionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xWrDorzOK5-fU1CfzNyzIuoMr-4(Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->lambda$onNetworkSwitchRejected$4(IILjava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "scorer"    # Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 10740
    iput-object p1, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub;-><init>()V

    .line 10741
    iput-object p2, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 10742
    iput-object p3, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->mScorer:Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;

    .line 10743
    return-void
.end method

.method private synthetic blacklist lambda$onNetworkSwitchAccepted$3(IILjava/lang/String;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "targetNetworkId"    # I
    .param p3, "targetBssid"    # Ljava/lang/String;

    .line 10784
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->mScorer:Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;->onNetworkSwitchAccepted(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onNetworkSwitchRejected$4(IILjava/lang/String;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "targetNetworkId"    # I
    .param p3, "targetBssid"    # Ljava/lang/String;

    .line 10797
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->mScorer:Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;->onNetworkSwitchRejected(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSetScoreUpdateObserver$2(Landroid/net/wifi/IScoreUpdateObserver;)V
    .registers 6
    .param p1, "observerImpl"    # Landroid/net/wifi/IScoreUpdateObserver;

    .line 10770
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->mScorer:Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;

    new-instance v1, Landroid/net/wifi/WifiManager$ScoreUpdateObserverProxy;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->this$0:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Landroid/net/wifi/WifiManager$ScoreUpdateObserverProxy;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/IScoreUpdateObserver;Landroid/net/wifi/WifiManager-IA;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;->onSetScoreUpdateObserver(Landroid/net/wifi/WifiManager$ScoreUpdateObserver;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStart$0(Landroid/net/wifi/WifiConnectedSessionInfo;)V
    .registers 3
    .param p1, "sessionInfo"    # Landroid/net/wifi/WifiConnectedSessionInfo;

    .line 10751
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->mScorer:Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;->onStart(Landroid/net/wifi/WifiConnectedSessionInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStop$1(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 10760
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->mScorer:Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;->onStop(I)V

    return-void
.end method


# virtual methods
.method public blacklist onNetworkSwitchAccepted(IILjava/lang/String;)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "targetNetworkId"    # I
    .param p3, "targetBssid"    # Ljava/lang/String;

    .line 10777
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 10778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConnectedNetworkScorer: onNetworkSwitchAccepted: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetBssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10783
    :cond_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10784
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10786
    return-void
.end method

.method public blacklist onNetworkSwitchRejected(IILjava/lang/String;)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "targetNetworkId"    # I
    .param p3, "targetBssid"    # Ljava/lang/String;

    .line 10790
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 10791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConnectedNetworkScorer: onNetworkSwitchRejected: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetBssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10796
    :cond_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10797
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10799
    return-void
.end method

.method public blacklist onSetScoreUpdateObserver(Landroid/net/wifi/IScoreUpdateObserver;)V
    .registers 4
    .param p1, "observerImpl"    # Landroid/net/wifi/IScoreUpdateObserver;

    .line 10765
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 10766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConnectedNetworkScorer: onSetScoreUpdateObserver: observerImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10769
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10770
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;Landroid/net/wifi/IScoreUpdateObserver;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10772
    return-void
.end method

.method public blacklist onStart(Landroid/net/wifi/WifiConnectedSessionInfo;)V
    .registers 4
    .param p1, "sessionInfo"    # Landroid/net/wifi/WifiConnectedSessionInfo;

    .line 10747
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 10748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConnectedNetworkScorer: onStart: sessionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10750
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10751
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;Landroid/net/wifi/WifiConnectedSessionInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10752
    return-void
.end method

.method public blacklist onStop(I)V
    .registers 4
    .param p1, "sessionId"    # I

    .line 10756
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 10757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConnectedNetworkScorer: onStop: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10759
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10760
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10761
    return-void
.end method
