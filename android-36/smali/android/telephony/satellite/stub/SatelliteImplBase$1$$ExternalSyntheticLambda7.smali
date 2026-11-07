.class public final synthetic Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/satellite/stub/SatelliteImplBase$1;

.field public final synthetic blacklist f$1:Landroid/telephony/satellite/stub/SatelliteDatagram;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Landroid/telephony/IIntegerConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/satellite/stub/SatelliteImplBase$1;Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/satellite/stub/SatelliteImplBase$1;

    iput-object p2, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda7;->f$1:Landroid/telephony/satellite/stub/SatelliteDatagram;

    iput-boolean p3, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda7;->f$2:Z

    iput-object p4, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda7;->f$3:Landroid/telephony/IIntegerConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/satellite/stub/SatelliteImplBase$1;

    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda7;->f$1:Landroid/telephony/satellite/stub/SatelliteDatagram;

    iget-boolean v2, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda7;->f$2:Z

    iget-object v3, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda7;->f$3:Landroid/telephony/IIntegerConsumer;

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/satellite/stub/SatelliteImplBase$1;->$r8$lambda$xitnKpR2FE_E6kfDxsCqDIsKWK0(Landroid/telephony/satellite/stub/SatelliteImplBase$1;Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V

    return-void
.end method
