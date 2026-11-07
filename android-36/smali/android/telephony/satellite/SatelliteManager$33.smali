.class Landroid/telephony/satellite/SatelliteManager$33;
.super Landroid/os/ResultReceiver;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->requestSatelliteDisplayName(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 3622
    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$33;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/satellite/SatelliteManager$33;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "satelliteDisplayName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3630
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "satelliteDisplayName"    # Ljava/lang/CharSequence;

    .line 3629
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$33$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$33$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/CharSequence;)V

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

    .line 3634
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$3(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3633
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$33$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$33$$ExternalSyntheticLambda5;-><init>(Landroid/os/OutcomeReceiver;)V

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

    .line 3639
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    invoke-direct {v0, p1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$5(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "resultCode"    # I

    .line 3638
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$33$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$33$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 3625
    if-nez p1, :cond_2f

    .line 3626
    const-string/jumbo v0, "satellite_display_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3627
    nop

    .line 3628
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3629
    .local v0, "satelliteDisplayName":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$33;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteManager$33;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/telephony/satellite/SatelliteManager$33$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v0}, Landroid/telephony/satellite/SatelliteManager$33$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/CharSequence;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3631
    .end local v0    # "satelliteDisplayName":Ljava/lang/CharSequence;
    goto :goto_3b

    .line 3632
    :cond_1d
    const-string v0, "KEY_SATELLITE_DISPLAY_NAME does not exist."

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 3633
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$33;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$33;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$33$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Landroid/telephony/satellite/SatelliteManager$33$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3b

    .line 3638
    :cond_2f
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$33;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$33;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$33$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$33$$ExternalSyntheticLambda4;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3641
    :goto_3b
    return-void
.end method
