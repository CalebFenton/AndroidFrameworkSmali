.class public final synthetic Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:Ljava/lang/IllegalArgumentException;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;Ljava/lang/IllegalArgumentException;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda2;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/IllegalArgumentException;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda2;->f$0:Landroid/os/OutcomeReceiver;

    iget-object v1, p0, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/IllegalArgumentException;

    invoke-static {v0, v1}, Landroid/os/health/SystemHealthManager;->lambda$getPowerMonitorReadings$2(Landroid/os/OutcomeReceiver;Ljava/lang/IllegalArgumentException;)V

    return-void
.end method
