.class public final synthetic Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->$r8$lambda$XiUSexeVbMSU1Yo4o-lbwge1vNs(Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;Landroid/os/IBinder;)V

    return-void
.end method
