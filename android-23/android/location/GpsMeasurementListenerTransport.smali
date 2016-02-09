.class Landroid/location/GpsMeasurementListenerTransport;
.super Landroid/location/LocalListenerHelper;
.source "GpsMeasurementListenerTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/LocalListenerHelper",
        "<",
        "Landroid/location/GpsMeasurementsEvent$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListenerTransport:Landroid/location/IGpsMeasurementsListener;

.field private final mLocationManager:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;

    #@0
    .prologue
    .line 34
    const-string/jumbo v0, "GpsMeasurementListenerTransport"

    #@3
    invoke-direct {p0, p1, v0}, Landroid/location/LocalListenerHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@6
    .line 31
    new-instance v0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {v0, p0, v1}, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;-><init>(Landroid/location/GpsMeasurementListenerTransport;Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;)V

    #@c
    iput-object v0, p0, Landroid/location/GpsMeasurementListenerTransport;->mListenerTransport:Landroid/location/IGpsMeasurementsListener;

    #@e
    .line 35
    iput-object p2, p0, Landroid/location/GpsMeasurementListenerTransport;->mLocationManager:Landroid/location/ILocationManager;

    #@10
    .line 33
    return-void
.end method


# virtual methods
.method protected registerWithServer()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Landroid/location/GpsMeasurementListenerTransport;->mLocationManager:Landroid/location/ILocationManager;

    #@2
    .line 41
    iget-object v1, p0, Landroid/location/GpsMeasurementListenerTransport;->mListenerTransport:Landroid/location/IGpsMeasurementsListener;

    #@4
    .line 42
    invoke-virtual {p0}, Landroid/location/GpsMeasurementListenerTransport;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 40
    invoke-interface {v0, v1, v2}, Landroid/location/ILocationManager;->addGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method protected unregisterFromServer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Landroid/location/GpsMeasurementListenerTransport;->mLocationManager:Landroid/location/ILocationManager;

    #@2
    iget-object v1, p0, Landroid/location/GpsMeasurementListenerTransport;->mListenerTransport:Landroid/location/IGpsMeasurementsListener;

    #@4
    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->removeGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;)V

    #@7
    .line 46
    return-void
.end method
