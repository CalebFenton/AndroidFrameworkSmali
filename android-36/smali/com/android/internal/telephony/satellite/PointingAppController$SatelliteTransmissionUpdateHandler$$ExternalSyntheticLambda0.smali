.class public final synthetic Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/satellite/PointingInfo;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/satellite/PointingInfo;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/satellite/PointingInfo;

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/satellite/PointingInfo;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->$r8$lambda$REbvDwlblbSaxAJeNWZNkuAhJmU(Landroid/telephony/satellite/PointingInfo;Ljava/util/List;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    return-void
.end method
