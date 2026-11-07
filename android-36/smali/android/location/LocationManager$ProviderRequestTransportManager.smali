.class Landroid/location/LocationManager$ProviderRequestTransportManager;
.super Lcom/android/internal/listeners/ListenerTransportManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderRequestTransportManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/listeners/ListenerTransportManager<",
        "Landroid/location/LocationManager$ProviderRequestTransport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 3217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/listeners/ListenerTransportManager;-><init>(Z)V

    .line 3218
    return-void
.end method


# virtual methods
.method protected blacklist registerTransport(Landroid/location/LocationManager$ProviderRequestTransport;)V
    .registers 3
    .param p1, "transport"    # Landroid/location/LocationManager$ProviderRequestTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3223
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    .line 3224
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

    .line 3213
    check-cast p1, Landroid/location/LocationManager$ProviderRequestTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$ProviderRequestTransportManager;->registerTransport(Landroid/location/LocationManager$ProviderRequestTransport;)V

    return-void
.end method

.method protected blacklist unregisterTransport(Landroid/location/LocationManager$ProviderRequestTransport;)V
    .registers 3
    .param p1, "transport"    # Landroid/location/LocationManager$ProviderRequestTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3229
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    .line 3230
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

    .line 3213
    check-cast p1, Landroid/location/LocationManager$ProviderRequestTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$ProviderRequestTransportManager;->unregisterTransport(Landroid/location/LocationManager$ProviderRequestTransport;)V

    return-void
.end method
