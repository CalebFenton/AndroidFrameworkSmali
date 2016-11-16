.class Landroid/location/LocationManager$GnssStatusListenerTransport$2;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/OnNmeaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;Landroid/os/Handler;)V
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
    .line 1505
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$2;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onNmeaMessage(Ljava/lang/String;J)V
    .locals 2
    .param p1, "nmea"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    #@0
    .prologue
    .line 1508
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$2;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@2
    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get3(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p2, p3, p1}, Landroid/location/GpsStatus$NmeaListener;->onNmeaReceived(JLjava/lang/String;)V

    #@9
    .line 1507
    return-void
.end method
