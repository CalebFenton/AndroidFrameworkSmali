.class public final synthetic Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/satellite/SatelliteDatagramCallback;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:Landroid/telephony/satellite/SatelliteDatagram;

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/satellite/SatelliteDatagramCallback;JLandroid/telephony/satellite/SatelliteDatagram;ILjava/util/function/Consumer;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/satellite/SatelliteDatagramCallback;

    iput-wide p2, p0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;->f$2:Landroid/telephony/satellite/SatelliteDatagram;

    iput p5, p0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;->f$3:I

    iput-object p6, p0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;->f$4:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/satellite/SatelliteDatagramCallback;

    iget-wide v1, p0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;->f$2:Landroid/telephony/satellite/SatelliteDatagram;

    iget v4, p0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;->f$3:I

    iget-object v5, p0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;->f$4:Ljava/util/function/Consumer;

    invoke-static/range {v0 .. v5}, Landroid/telephony/satellite/SatelliteManager$15;->lambda$onSatelliteDatagramReceived$0(Landroid/telephony/satellite/SatelliteDatagramCallback;JLandroid/telephony/satellite/SatelliteDatagram;ILjava/util/function/Consumer;)V

    return-void
.end method
