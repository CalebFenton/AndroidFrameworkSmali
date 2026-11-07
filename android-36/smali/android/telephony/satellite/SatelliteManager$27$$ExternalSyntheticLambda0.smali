.class public final synthetic Landroid/telephony/satellite/SatelliteManager$27$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/satellite/NtnSignalStrengthCallback;

.field public final synthetic blacklist f$1:Landroid/telephony/satellite/NtnSignalStrength;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/satellite/NtnSignalStrengthCallback;Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$27$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/satellite/NtnSignalStrengthCallback;

    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$27$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/satellite/NtnSignalStrength;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$27$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/satellite/NtnSignalStrengthCallback;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$27$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/satellite/NtnSignalStrength;

    invoke-static {v0, v1}, Landroid/telephony/satellite/SatelliteManager$27;->lambda$onNtnSignalStrengthChanged$0(Landroid/telephony/satellite/NtnSignalStrengthCallback;Landroid/telephony/satellite/NtnSignalStrength;)V

    return-void
.end method
