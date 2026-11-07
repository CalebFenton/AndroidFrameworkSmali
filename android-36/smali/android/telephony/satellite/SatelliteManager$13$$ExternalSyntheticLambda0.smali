.class public final synthetic Landroid/telephony/satellite/SatelliteManager$13$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$13$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iput-boolean p2, p0, Landroid/telephony/satellite/SatelliteManager$13$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$13$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteManager$13$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Landroid/telephony/satellite/SatelliteManager$13;->lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;Z)V

    return-void
.end method
