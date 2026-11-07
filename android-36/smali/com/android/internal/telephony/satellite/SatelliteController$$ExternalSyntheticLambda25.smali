.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

.field public final synthetic blacklist f$1:Landroid/telephony/satellite/NtnSignalStrength;

.field public final synthetic blacklist f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;Landroid/telephony/satellite/NtnSignalStrength;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda25;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda25;->f$1:Landroid/telephony/satellite/NtnSignalStrength;

    iput-object p3, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda25;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda25;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda25;->f$1:Landroid/telephony/satellite/NtnSignalStrength;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda25;->f$2:Ljava/util/List;

    check-cast p1, Landroid/telephony/satellite/INtnSignalStrengthCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->$r8$lambda$mCv6pUZyHVGkYVX4zZ2L68peeGY(Lcom/android/internal/telephony/satellite/SatelliteController;Landroid/telephony/satellite/NtnSignalStrength;Ljava/util/List;Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    return-void
.end method
