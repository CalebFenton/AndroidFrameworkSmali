.class Landroid/location/LocationManager$GnssAntennaTransportManager;
.super Lcom/android/internal/listeners/ListenerTransportManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssAntennaTransportManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/listeners/ListenerTransportManager<",
        "Landroid/location/LocationManager$GnssAntennaInfoTransport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 3173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/listeners/ListenerTransportManager;-><init>(Z)V

    .line 3174
    return-void
.end method


# virtual methods
.method protected blacklist registerTransport(Landroid/location/LocationManager$GnssAntennaInfoTransport;)V
    .registers 6
    .param p1, "transport"    # Landroid/location/LocationManager$GnssAntennaInfoTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3179
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/LocationManager$GnssAntennaInfoTransport;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 3180
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssAntennaInfoTransport;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 3181
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssAntennaInfoTransport;->getListener()Landroid/location/GnssAntennaInfo$Listener;

    move-result-object v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3179
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/location/ILocationManager;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
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

    .line 3169
    check-cast p1, Landroid/location/LocationManager$GnssAntennaInfoTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssAntennaTransportManager;->registerTransport(Landroid/location/LocationManager$GnssAntennaInfoTransport;)V

    return-void
.end method

.method protected blacklist unregisterTransport(Landroid/location/LocationManager$GnssAntennaInfoTransport;)V
    .registers 3
    .param p1, "transport"    # Landroid/location/LocationManager$GnssAntennaInfoTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3187
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    .line 3188
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

    .line 3169
    check-cast p1, Landroid/location/LocationManager$GnssAntennaInfoTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssAntennaTransportManager;->unregisterTransport(Landroid/location/LocationManager$GnssAntennaInfoTransport;)V

    return-void
.end method
