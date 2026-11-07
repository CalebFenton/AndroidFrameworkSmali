.class public final synthetic Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/satellite/SatelliteProvisionStateCallback;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/satellite/SatelliteProvisionStateCallback;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/satellite/SatelliteProvisionStateCallback;

    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/satellite/SatelliteProvisionStateCallback;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/telephony/satellite/SatelliteManager$12;->lambda$onSatelliteSubscriptionProvisionStateChanged$3(Landroid/telephony/satellite/SatelliteProvisionStateCallback;Ljava/util/List;)V

    return-void
.end method
