.class Landroid/location/LocationManager$GnssStatusListenerTransport$1;
.super Landroid/location/GnssStatus$Callback;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@0
    .prologue
    .line 1468
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@2
    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 2
    .param p1, "ttff"    # I

    #@0
    .prologue
    .line 1481
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@2
    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get2(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    #@a
    .line 1480
    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 2
    .param p1, "status"    # Landroid/location/GnssStatus;

    #@0
    .prologue
    .line 1486
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@2
    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get2(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    #@a
    .line 1485
    return-void
.end method

.method public onStarted()V
    .locals 2

    #@0
    .prologue
    .line 1471
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@2
    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get2(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    #@a
    .line 1470
    return-void
.end method

.method public onStopped()V
    .locals 2

    #@0
    .prologue
    .line 1476
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@2
    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get2(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    #@a
    .line 1475
    return-void
.end method
