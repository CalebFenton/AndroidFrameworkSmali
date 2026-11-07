.class Landroid/telephony/satellite/SatelliteManager$4;
.super Landroid/os/ResultReceiver;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->requestIsEmergencyModeEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 1104
    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/satellite/SatelliteManager$4;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;Z)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "isEmergencyModeEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1112
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;Z)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "isEmergencyModeEnabled"    # Z

    .line 1111
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda5;-><init>(Landroid/os/OutcomeReceiver;Z)V

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

    .line 1116
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$3(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 1115
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;)V

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

    .line 1121
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    invoke-direct {v0, p1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$5(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "resultCode"    # I

    .line 1120
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda4;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 1107
    if-nez p1, :cond_2e

    .line 1108
    const-string v0, "emergency_mode_enabled"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1109
    nop

    .line 1110
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1111
    .local v0, "isEmergencyModeEnabled":Z
    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteManager$4;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Z)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1113
    .end local v0    # "isEmergencyModeEnabled":Z
    goto :goto_3a

    .line 1114
    :cond_1c
    const-string v0, "KEY_EMERGENCY_MODE_ENABLED does not exist."

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$4;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3a

    .line 1120
    :cond_2e
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$4;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1123
    :goto_3a
    return-void
.end method
