.class public final synthetic Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;IIII)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    iput p2, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    iget v1, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/telephony/satellite/SatelliteManager$8;->lambda$onSendDatagramStateChanged$2(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;IIII)V

    return-void
.end method
