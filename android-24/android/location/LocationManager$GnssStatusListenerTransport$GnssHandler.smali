.class Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;
.super Landroid/os/Handler;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$1"    # Landroid/location/LocationManager$GnssStatusListenerTransport;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1407
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@2
    .line 1408
    if-eqz p2, :cond_0

    #@4
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    :goto_0
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@b
    .line 1407
    return-void

    #@c
    .line 1408
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@f
    move-result-object v0

    #@10
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1413
    iget v3, p1, Landroid/os/Message;->what:I

    #@2
    sparse-switch v3, :sswitch_data_0

    #@5
    .line 1412
    :goto_0
    return-void

    #@6
    .line 1415
    :sswitch_0
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@8
    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    #@b
    move-result-object v4

    #@c
    monitor-enter v4

    #@d
    .line 1416
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@f
    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v1

    #@17
    .line 1417
    .local v1, "length":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    #@1a
    .line 1418
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@1c
    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;

    #@26
    .line 1419
    .local v2, "nmea":Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@28
    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get1(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/OnNmeaMessageListener;

    #@2b
    move-result-object v3

    #@2c
    iget-object v5, v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    #@2e
    iget-wide v6, v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mTimestamp:J

    #@30
    invoke-interface {v3, v5, v6, v7}, Landroid/location/OnNmeaMessageListener;->onNmeaMessage(Ljava/lang/String;J)V

    #@33
    .line 1417
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_1

    #@36
    .line 1421
    .end local v2    # "nmea":Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;
    :cond_0
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@38
    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit v4

    #@40
    goto :goto_0

    #@41
    .line 1415
    .end local v0    # "i":I
    .end local v1    # "length":I
    :catchall_0
    move-exception v3

    #@42
    monitor-exit v4

    #@43
    throw v3

    #@44
    .line 1425
    :sswitch_1
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@46
    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Landroid/location/GnssStatus$Callback;->onStarted()V

    #@4d
    goto :goto_0

    #@4e
    .line 1428
    :sswitch_2
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@50
    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Landroid/location/GnssStatus$Callback;->onStopped()V

    #@57
    goto :goto_0

    #@58
    .line 1431
    :sswitch_3
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@5a
    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    #@5d
    move-result-object v3

    #@5e
    iget-object v4, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@60
    iget-object v4, v4, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@62
    invoke-static {v4}, Landroid/location/LocationManager;->-get2(Landroid/location/LocationManager;)I

    #@65
    move-result v4

    #@66
    invoke-virtual {v3, v4}, Landroid/location/GnssStatus$Callback;->onFirstFix(I)V

    #@69
    goto :goto_0

    #@6a
    .line 1434
    :sswitch_4
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@6c
    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    #@6f
    move-result-object v3

    #@70
    iget-object v4, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    #@72
    iget-object v4, v4, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@74
    invoke-static {v4}, Landroid/location/LocationManager;->-get0(Landroid/location/LocationManager;)Landroid/location/GnssStatus;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v3, v4}, Landroid/location/GnssStatus$Callback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    #@7b
    goto :goto_0

    #@7c
    .line 1413
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
