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
.field final synthetic blacklist this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 705
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 712
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "GeofenceHardwareImpl"

    packed-switch v0, :pswitch_data_ce

    goto/16 :goto_cc

    .line 748
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 749
    .local v0, "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Monitor callback reaped:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_29
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmCallbacks(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    .line 751
    .local v1, "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-eqz v1, :cond_cc

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 752
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_cc

    .line 740
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v1    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    :pswitch_40
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 741
    .local v0, "monitoringType":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 742
    .local v1, "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmCallbacks(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v2

    aget-object v2, v2, v0

    .line 743
    .local v2, "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-eqz v2, :cond_cc

    .line 744
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_cc

    .line 730
    .end local v0    # "monitoringType":I
    .end local v1    # "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v2    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    :pswitch_55
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 731
    .restart local v0    # "monitoringType":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 732
    .restart local v1    # "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmCallbacks(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v2

    aget-object v2, v2, v0

    .line 733
    .restart local v2    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-nez v2, :cond_73

    .line 734
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 735
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmCallbacks(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v3

    aput-object v2, v3, v0

    .line 737
    :cond_73
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cc

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    .line 714
    .end local v0    # "monitoringType":I
    .end local v1    # "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v2    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    :pswitch_7d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    .line 715
    .local v0, "event":Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmCallbacks(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->getMonitoringType()I

    move-result v3

    aget-object v2, v2, v3

    .line 716
    .restart local v2    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-eqz v2, :cond_c6

    .line 717
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_ab

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MonitoringSystemChangeCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_ab
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_af
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 721
    .local v4, "c":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    :try_start_bb
    invoke-interface {v4, v0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_be} :catch_bf

    .line 724
    goto :goto_c5

    .line 722
    :catch_bf
    move-exception v5

    .line 723
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Error reporting onMonitoringSystemChange."

    invoke-static {v1, v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    .end local v4    # "c":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_c5
    goto :goto_af

    .line 727
    :cond_c6
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$mreleaseWakeLock(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 728
    nop

    .line 755
    .end local v0    # "event":Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    .end local v2    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    :cond_cc
    :goto_cc
    return-void

    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_55
        :pswitch_40
        :pswitch_9
    .end packed-switch
.end method
