.class Landroid/location/LocationManager$GnssStatusTransportManager;
.super Lcom/android/internal/listeners/ListenerTransportManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssStatusTransportManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/listeners/ListenerTransportManager<",
        "Landroid/location/LocationManager$GnssStatusTransport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 3107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/listeners/ListenerTransportManager;-><init>(Z)V

    .line 3108
    return-void
.end method


# virtual methods
.method protected blacklist registerTransport(Landroid/location/LocationManager$GnssStatusTransport;)V
    .registers 6
    .param p1, "transport"    # Landroid/location/LocationManager$GnssStatusTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3113
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/LocationManager$GnssStatusTransport;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 3114
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssStatusTransport;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 3115
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssStatusTransport;->getListener()Landroid/location/GnssStatus$Callback;

    move-result-object v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3113
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/location/ILocationManager;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3116
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

    .line 3103
    check-cast p1, Landroid/location/LocationManager$GnssStatusTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssStatusTransportManager;->registerTransport(Landroid/location/LocationManager$GnssStatusTransport;)V

    return-void
.end method

.method protected blacklist unregisterTransport(Landroid/location/LocationManager$GnssStatusTransport;)V
    .registers 3
    .param p1, "transport"    # Landroid/location/LocationManager$GnssStatusTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3121
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    .line 3122
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

    .line 3103
    check-cast p1, Landroid/location/LocationManager$GnssStatusTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssStatusTransportManager;->unregisterTransport(Landroid/location/LocationManager$GnssStatusTransport;)V

    return-void
.end method
