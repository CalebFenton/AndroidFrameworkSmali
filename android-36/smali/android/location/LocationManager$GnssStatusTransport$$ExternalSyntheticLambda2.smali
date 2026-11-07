.class public final synthetic Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/location/GnssStatus;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/location/GnssStatus;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda2;->f$0:Landroid/location/GnssStatus;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda2;->f$0:Landroid/location/GnssStatus;

    check-cast p1, Landroid/location/GnssStatus$Callback;

    invoke-static {v0, p1}, Landroid/location/LocationManager$GnssStatusTransport;->lambda$onSvStatusChanged$1(Landroid/location/GnssStatus;Landroid/location/GnssStatus$Callback;)V

    return-void
.end method
