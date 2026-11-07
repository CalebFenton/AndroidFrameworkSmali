.class public final synthetic Landroid/telephony/satellite/SatelliteManager$6$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:Landroid/telephony/satellite/SatelliteCapabilities;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;Landroid/telephony/satellite/SatelliteCapabilities;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$6$$ExternalSyntheticLambda5;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$6$$ExternalSyntheticLambda5;->f$1:Landroid/telephony/satellite/SatelliteCapabilities;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$6$$ExternalSyntheticLambda5;->f$0:Landroid/os/OutcomeReceiver;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$6$$ExternalSyntheticLambda5;->f$1:Landroid/telephony/satellite/SatelliteCapabilities;

    invoke-static {v0, v1}, Landroid/telephony/satellite/SatelliteManager$6;->lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;Landroid/telephony/satellite/SatelliteCapabilities;)V

    return-void
.end method
