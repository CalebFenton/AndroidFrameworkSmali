.class Landroid/telephony/satellite/SatelliteManager$31;
.super Landroid/os/ResultReceiver;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->requestSessionStats(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "this$0"    # Landroid/telephony/satellite/SatelliteManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3485
    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$31;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/satellite/SatelliteManager$31;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;Landroid/telephony/satellite/SatelliteSessionStats;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "stats"    # Landroid/telephony/satellite/SatelliteSessionStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3500
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;Landroid/telephony/satellite/SatelliteSessionStats;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "stats"    # Landroid/telephony/satellite/SatelliteSessionStats;

    .line 3499
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/telephony/satellite/SatelliteSessionStats;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$2(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3510
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$3(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3509
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda5;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$4(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3515
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    invoke-direct {v0, p1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$5(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "resultCode"    # I

    .line 3514
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda4;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 3488
    if-nez p1, :cond_56

    .line 3490
    const-string/jumbo v0, "session_stats"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 3491
    const-class v1, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 3493
    .local v0, "stats":Landroid/telephony/satellite/SatelliteSessionStats;
    const-string/jumbo v1, "session_stats_v2"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3494
    const-class v2, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 3496
    .local v1, "stats1":Landroid/telephony/satellite/SatelliteSessionStats;
    if-eqz v0, :cond_3d

    if-eqz v1, :cond_3d

    .line 3497
    nop

    .line 3498
    invoke-virtual {v1}, Landroid/telephony/satellite/SatelliteSessionStats;->getSatelliteSessionStats()Ljava/util/Map;

    move-result-object v2

    .line 3497
    invoke-virtual {v0, v2}, Landroid/telephony/satellite/SatelliteSessionStats;->setSatelliteSessionStats(Ljava/util/Map;)V

    .line 3499
    iget-object v2, p0, Landroid/telephony/satellite/SatelliteManager$31;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteManager$31;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v4, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, v0}, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/telephony/satellite/SatelliteSessionStats;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3501
    return-void

    .line 3503
    .end local v1    # "stats1":Landroid/telephony/satellite/SatelliteSessionStats;
    :cond_3d
    goto :goto_49

    .line 3504
    :cond_3e
    const-string v1, "KEY_SESSION_STATS_V2 does not exist."

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->-$$Nest$smloge(Ljava/lang/String;)V

    goto :goto_49

    .line 3507
    .end local v0    # "stats":Landroid/telephony/satellite/SatelliteSessionStats;
    :cond_44
    const-string v0, "KEY_SESSION_STATS does not exist."

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 3509
    :goto_49
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$31;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$31;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_62

    .line 3514
    :cond_56
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$31;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$31;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3517
    :goto_62
    return-void
.end method
