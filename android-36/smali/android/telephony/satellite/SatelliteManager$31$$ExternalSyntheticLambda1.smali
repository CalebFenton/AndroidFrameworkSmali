.class public final synthetic Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:Landroid/telephony/satellite/SatelliteSessionStats;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;Landroid/telephony/satellite/SatelliteSessionStats;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda1;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/satellite/SatelliteSessionStats;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda1;->f$0:Landroid/os/OutcomeReceiver;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$31$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-static {v0, v1}, Landroid/telephony/satellite/SatelliteManager$31;->lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;Landroid/telephony/satellite/SatelliteSessionStats;)V

    return-void
.end method
