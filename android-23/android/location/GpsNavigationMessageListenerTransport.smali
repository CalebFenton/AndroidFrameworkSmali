.class Landroid/location/GpsNavigationMessageListenerTransport;
.super Landroid/location/LocalListenerHelper;
.source "GpsNavigationMessageListenerTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/LocalListenerHelper",
        "<",
        "Landroid/location/GpsNavigationMessageEvent$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListenerTransport:Landroid/location/IGpsNavigationMessageListener;

.field private final mLocationManager:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;

    #@0
    .prologue
    .line 36
    const-string/jumbo v0, "GpsNavigationMessageListenerTransport"

    #@3
    invoke-direct {p0, p1, v0}, Landroid/location/LocalListenerHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@6
    .line 31
    new-instance v0, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {v0, p0, v1}, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;-><init>(Landroid/location/GpsNavigationMessageListenerTransport;Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;)V

    #@c
    iput-object v0, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mListenerTransport:Landroid/location/IGpsNavigationMessageListener;

    #@e
    .line 37
    iput-object p2, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mLocationManager:Landroid/location/ILocationManager;

    #@10
    .line 35
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
    .line 42
    iget-object v0, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mLocationManager:Landroid/location/ILocationManager;

    #@2
    .line 43
    iget-object v1, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mListenerTransport:Landroid/location/IGpsNavigationMessageListener;

    #@4
    .line 44
    invoke-virtual {p0}, Landroid/location/GpsNavigationMessageListenerTransport;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 42
    invoke-interface {v0, v1, v2}, Landroid/location/ILocationManager;->addGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;Ljava/lang/String;)Z

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
    .line 49
    iget-object v0, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mLocationManager:Landroid/location/ILocationManager;

    #@2
    iget-object v1, p0, Landroid/location/GpsNavigationMessageListenerTransport;->mListenerTransport:Landroid/location/IGpsNavigationMessageListener;

    #@4
    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->removeGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;)V

    #@7
    .line 48
    return-void
.end method
