.class public final synthetic Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/location/GnssMeasurementsEvent;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda0;->f$0:Landroid/location/GnssMeasurementsEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda0;->f$0:Landroid/location/GnssMeasurementsEvent;

    check-cast p1, Landroid/location/GnssMeasurementsEvent$Callback;

    invoke-static {v0, p1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->lambda$onGnssMeasurementsReceived$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/GnssMeasurementsEvent$Callback;)V

    return-void
.end method
