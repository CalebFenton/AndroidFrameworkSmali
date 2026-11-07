.class public final synthetic Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;III)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    iput p2, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda6;->f$2:I

    iput p4, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda6;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    iget v1, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda6;->f$1:I

    iget v2, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda6;->f$2:I

    iget v3, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda6;->f$3:I

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/satellite/SatelliteManager$8;->lambda$onSendDatagramStateChanged$5(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;III)V

    return-void
.end method
