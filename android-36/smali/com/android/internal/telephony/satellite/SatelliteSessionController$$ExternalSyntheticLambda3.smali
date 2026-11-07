.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ILjava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iput p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    check-cast p1, Landroid/telephony/satellite/ISatelliteModemStateCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->$r8$lambda$ee1A9YvnJxi91cm4Gpl93hm6ABQ(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ILjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    return-void
.end method
