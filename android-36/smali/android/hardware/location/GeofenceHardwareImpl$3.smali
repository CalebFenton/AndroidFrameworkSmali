.class Landroid/hardware/location/GeofenceHardwareImpl$3;
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

    .line 759
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 767
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_70

    goto :goto_6f

    .line 794
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 795
    .local v0, "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 781
    .end local v0    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 782
    .local v0, "monitorCallback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 784
    .local v2, "monitoringType":I
    new-instance v3, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v3, v4, v0, v2}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V

    .line 785
    .local v3, "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 786
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 789
    .local v4, "b":Landroid/os/IBinder;
    :try_start_3b
    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 790
    :goto_3e
    goto :goto_41

    :catch_3f
    move-exception v1

    goto :goto_3e

    .line 791
    .end local v4    # "b":Landroid/os/IBinder;
    :goto_41
    goto :goto_6f

    .line 769
    .end local v0    # "monitorCallback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v2    # "monitoringType":I
    .end local v3    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :pswitch_42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 770
    .local v0, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 771
    .restart local v2    # "monitoringType":I
    new-instance v3, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v3, v4, v0, v2}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V

    .line 772
    .restart local v3    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 773
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 776
    .restart local v4    # "b":Landroid/os/IBinder;
    :try_start_68
    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 777
    :goto_6b
    goto :goto_6e

    :catch_6c
    move-exception v1

    goto :goto_6b

    .line 778
    .end local v4    # "b":Landroid/os/IBinder;
    :goto_6e
    nop

    .line 797
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v2    # "monitoringType":I
    .end local v3    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :cond_6f
    :goto_6f
    return-void

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_42
        :pswitch_15
        :pswitch_7
    .end packed-switch
.end method
