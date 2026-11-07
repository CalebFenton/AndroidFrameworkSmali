.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda21;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda21;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda21;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda21;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda21;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda21;->f$2:Ljava/util/List;

    check-cast p1, Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->$r8$lambda$mOrfDFelyBKVjIcquZSAW0VzWh8(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/util/List;Ljava/util/List;Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)V

    return-void
.end method
