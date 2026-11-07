.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;ZLjava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda17;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda17;->f$1:Z

    iput-object p3, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda17;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda17;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda17;->f$1:Z

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda17;->f$2:Ljava/util/List;

    check-cast p1, Lcom/android/internal/telephony/IBooleanConsumer;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->$r8$lambda$YcvP3sjq7h5uCpVy1UJSDwA2q1A(Lcom/android/internal/telephony/satellite/SatelliteController;ZLjava/util/List;Lcom/android/internal/telephony/IBooleanConsumer;)V

    return-void
.end method
