.class Landroid/location/LocationManager$GnssMeasurementsTransportManager;
.super Lcom/android/internal/listeners/ListenerTransportManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssMeasurementsTransportManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/listeners/ListenerTransportManager<",
        "Landroid/location/LocationManager$GnssMeasurementsTransport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 3151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/listeners/ListenerTransportManager;-><init>(Z)V

    .line 3152
    return-void
.end method


# virtual methods
.method protected blacklist registerTransport(Landroid/location/LocationManager$GnssMeasurementsTransport;)V
    .registers 8
    .param p1, "transport"    # Landroid/location/LocationManager$GnssMeasurementsTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3157
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->getRequest()Landroid/location/GnssMeasurementRequest;

    move-result-object v1

    .line 3158
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 3159
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->getListener()Landroid/location/GnssMeasurementsEvent$Callback;

    move-result-object v2

    invoke-static {v2}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3157
    move-object v2, p1

    .end local p1    # "transport":Landroid/location/LocationManager$GnssMeasurementsTransport;
    .local v2, "transport":Landroid/location/LocationManager$GnssMeasurementsTransport;
    invoke-interface/range {v0 .. v5}, Landroid/location/ILocationManager;->addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3160
    return-void
.end method

.method protected bridge synthetic blacklist registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3147
    check-cast p1, Landroid/location/LocationManager$GnssMeasurementsTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssMeasurementsTransportManager;->registerTransport(Landroid/location/LocationManager$GnssMeasurementsTransport;)V

    return-void
.end method

.method protected blacklist unregisterTransport(Landroid/location/LocationManager$GnssMeasurementsTransport;)V
    .registers 3
    .param p1, "transport"    # Landroid/location/LocationManager$GnssMeasurementsTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3165
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    .line 3166
    return-void
.end method

.method protected bridge synthetic blacklist unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3147
    check-cast p1, Landroid/location/LocationManager$GnssMeasurementsTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssMeasurementsTransportManager;->unregisterTransport(Landroid/location/LocationManager$GnssMeasurementsTransport;)V

    return-void
.end method
