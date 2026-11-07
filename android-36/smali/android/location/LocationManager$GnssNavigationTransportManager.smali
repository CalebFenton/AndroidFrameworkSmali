.class Landroid/location/LocationManager$GnssNavigationTransportManager;
.super Lcom/android/internal/listeners/ListenerTransportManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssNavigationTransportManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/listeners/ListenerTransportManager<",
        "Landroid/location/LocationManager$GnssNavigationTransport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 3195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/listeners/ListenerTransportManager;-><init>(Z)V

    .line 3196
    return-void
.end method


# virtual methods
.method protected blacklist registerTransport(Landroid/location/LocationManager$GnssNavigationTransport;)V
    .registers 6
    .param p1, "transport"    # Landroid/location/LocationManager$GnssNavigationTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3201
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    .line 3202
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssNavigationTransport;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/LocationManager$GnssNavigationTransport;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 3203
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssNavigationTransport;->getListener()Landroid/location/GnssNavigationMessage$Callback;

    move-result-object v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3201
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/location/ILocationManager;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3204
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

    .line 3191
    check-cast p1, Landroid/location/LocationManager$GnssNavigationTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssNavigationTransportManager;->registerTransport(Landroid/location/LocationManager$GnssNavigationTransport;)V

    return-void
.end method

.method protected blacklist unregisterTransport(Landroid/location/LocationManager$GnssNavigationTransport;)V
    .registers 3
    .param p1, "transport"    # Landroid/location/LocationManager$GnssNavigationTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3209
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    .line 3210
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

    .line 3191
    check-cast p1, Landroid/location/LocationManager$GnssNavigationTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssNavigationTransportManager;->unregisterTransport(Landroid/location/LocationManager$GnssNavigationTransport;)V

    return-void
.end method
