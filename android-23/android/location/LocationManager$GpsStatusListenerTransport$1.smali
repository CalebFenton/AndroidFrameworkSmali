.class Landroid/location/LocationManager$GpsStatusListenerTransport$1;
.super Landroid/os/Handler;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GpsStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@0
    .prologue
    .line 1481
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1484
    iget v3, p1, Landroid/os/Message;->what:I

    #@2
    const/16 v4, 0x3e8

    #@4
    if-ne v3, v4, :cond_1

    #@6
    .line 1485
    iget-object v3, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@8
    invoke-static {v3}, Landroid/location/LocationManager$GpsStatusListenerTransport;->-get1(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;

    #@b
    move-result-object v4

    #@c
    monitor-enter v4

    #@d
    .line 1486
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@f
    invoke-static {v3}, Landroid/location/LocationManager$GpsStatusListenerTransport;->-get1(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v1

    #@17
    .line 1487
    .local v1, "length":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@1a
    .line 1488
    iget-object v3, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@1c
    invoke-static {v3}, Landroid/location/LocationManager$GpsStatusListenerTransport;->-get1(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;

    #@26
    .line 1489
    .local v2, "nmea":Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
    iget-object v3, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@28
    invoke-static {v3}, Landroid/location/LocationManager$GpsStatusListenerTransport;->-get2(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;

    #@2b
    move-result-object v3

    #@2c
    iget-wide v6, v2, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->mTimestamp:J

    #@2e
    iget-object v5, v2, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    #@30
    invoke-interface {v3, v6, v7, v5}, Landroid/location/GpsStatus$NmeaListener;->onNmeaReceived(JLjava/lang/String;)V

    #@33
    .line 1487
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 1491
    .end local v2    # "nmea":Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
    :cond_0
    iget-object v3, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@38
    invoke-static {v3}, Landroid/location/LocationManager$GpsStatusListenerTransport;->-get1(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit v4

    #@40
    .line 1483
    .end local v0    # "i":I
    .end local v1    # "length":I
    :goto_1
    return-void

    #@41
    .line 1485
    :catchall_0
    move-exception v3

    #@42
    monitor-exit v4

    #@43
    throw v3

    #@44
    .line 1495
    :cond_1
    iget-object v3, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@46
    iget-object v3, v3, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@48
    invoke-static {v3}, Landroid/location/LocationManager;->-get0(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    #@4b
    move-result-object v4

    #@4c
    monitor-enter v4

    #@4d
    .line 1496
    :try_start_1
    iget-object v3, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@4f
    invoke-static {v3}, Landroid/location/LocationManager$GpsStatusListenerTransport;->-get0(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$Listener;

    #@52
    move-result-object v3

    #@53
    iget v5, p1, Landroid/os/Message;->what:I

    #@55
    invoke-interface {v3, v5}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@58
    monitor-exit v4

    #@59
    goto :goto_1

    #@5a
    .line 1495
    :catchall_1
    move-exception v3

    #@5b
    monitor-exit v4

    #@5c
    throw v3
.end method
