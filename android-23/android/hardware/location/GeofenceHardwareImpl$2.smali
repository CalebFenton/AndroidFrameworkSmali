.class Landroid/hardware/location/GeofenceHardwareImpl$2;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    #@0
    .prologue
    .line 704
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 711
    iget v7, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v7, :pswitch_data_0

    #@5
    .line 706
    :cond_0
    :goto_0
    return-void

    #@6
    .line 713
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v5, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    #@a
    .line 714
    .local v5, "event":Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@c
    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->-get1(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v5}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->getMonitoringType()I

    #@13
    move-result v8

    #@14
    aget-object v3, v7, v8

    #@16
    .line 715
    .local v3, "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-eqz v3, :cond_2

    #@18
    .line 716
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-get0()Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_1

    #@1e
    const-string/jumbo v7, "GeofenceHardwareImpl"

    #@21
    new-instance v8, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v9, "MonitoringSystemChangeCallback: "

    #@29
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 718
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v1

    #@3c
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v7

    #@40
    if-eqz v7, :cond_2

    #@42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@48
    .line 720
    .local v0, "c":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    :try_start_0
    invoke-interface {v0, v5}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    goto :goto_1

    #@4c
    .line 721
    :catch_0
    move-exception v4

    #@4d
    .line 722
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GeofenceHardwareImpl"

    #@50
    const-string/jumbo v8, "Error reporting onMonitoringSystemChange."

    #@53
    invoke-static {v7, v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@56
    goto :goto_1

    #@57
    .line 726
    .end local v0    # "c":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@59
    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V

    #@5c
    goto :goto_0

    #@5d
    .line 729
    .end local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    .end local v5    # "event":Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@5f
    .line 730
    .local v6, "monitoringType":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@61
    check-cast v2, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@63
    .line 731
    .local v2, "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@65
    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->-get1(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    #@68
    move-result-object v7

    #@69
    aget-object v3, v7, v6

    #@6b
    .line 732
    .restart local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-nez v3, :cond_3

    #@6d
    .line 733
    new-instance v3, Ljava/util/ArrayList;

    #@6f
    .end local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@72
    .line 734
    .restart local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@74
    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->-get1(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    #@77
    move-result-object v7

    #@78
    aput-object v3, v7, v6

    #@7a
    .line 736
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@7d
    move-result v7

    #@7e
    if-nez v7, :cond_0

    #@80
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@83
    goto :goto_0

    #@84
    .line 739
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    .end local v6    # "monitoringType":I
    :pswitch_2
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@86
    .line 740
    .restart local v6    # "monitoringType":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@88
    check-cast v2, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@8a
    .line 741
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@8c
    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->-get1(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    #@8f
    move-result-object v7

    #@90
    aget-object v3, v7, v6

    #@92
    .line 742
    .restart local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-eqz v3, :cond_0

    #@94
    .line 743
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@97
    goto/16 :goto_0

    #@99
    .line 747
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    .end local v6    # "monitoringType":I
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9b
    check-cast v2, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@9d
    .line 748
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-get0()Z

    #@a0
    move-result v7

    #@a1
    if-eqz v7, :cond_4

    #@a3
    const-string/jumbo v7, "GeofenceHardwareImpl"

    #@a6
    new-instance v8, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v9, "Monitor callback reaped:"

    #@ae
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v8

    #@b2
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v8

    #@b6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v8

    #@ba
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    .line 749
    :cond_4
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@bf
    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->-get1(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    #@c2
    move-result-object v7

    #@c3
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@c5
    aget-object v3, v7, v8

    #@c7
    .line 750
    .restart local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-eqz v3, :cond_0

    #@c9
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@cc
    move-result v7

    #@cd
    if-eqz v7, :cond_0

    #@cf
    .line 751
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@d2
    goto/16 :goto_0

    #@d4
    .line 711
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
