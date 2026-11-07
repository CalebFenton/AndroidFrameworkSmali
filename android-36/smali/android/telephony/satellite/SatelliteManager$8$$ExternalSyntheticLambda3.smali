.class public final synthetic Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

.field public final synthetic blacklist f$1:Landroid/telephony/satellite/PointingInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;Landroid/telephony/satellite/PointingInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/satellite/PointingInfo;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/satellite/PointingInfo;

    invoke-static {v0, v1}, Landroid/telephony/satellite/SatelliteManager$8;->lambda$onSatellitePositionChanged$0(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;Landroid/telephony/satellite/PointingInfo;)V

    return-void
.end method
