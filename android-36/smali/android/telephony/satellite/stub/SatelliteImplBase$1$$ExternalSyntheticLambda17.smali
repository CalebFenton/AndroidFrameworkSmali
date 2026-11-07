.class public final synthetic Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/satellite/stub/SatelliteImplBase$1;

.field public final synthetic blacklist f$1:Landroid/telephony/satellite/stub/ISatelliteListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/satellite/stub/SatelliteImplBase$1;Landroid/telephony/satellite/stub/ISatelliteListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda17;->f$0:Landroid/telephony/satellite/stub/SatelliteImplBase$1;

    iput-object p2, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda17;->f$1:Landroid/telephony/satellite/stub/ISatelliteListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda17;->f$0:Landroid/telephony/satellite/stub/SatelliteImplBase$1;

    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda17;->f$1:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-static {v0, v1}, Landroid/telephony/satellite/stub/SatelliteImplBase$1;->$r8$lambda$PrTJdOOmLRMhoNCw_hWP9OkQSk4(Landroid/telephony/satellite/stub/SatelliteImplBase$1;Landroid/telephony/satellite/stub/ISatelliteListener;)V

    return-void
.end method
