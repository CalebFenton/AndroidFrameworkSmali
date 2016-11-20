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
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    #@0
    .prologue
    .line 758
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 766
    iget v6, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v6, :pswitch_data_0

    #@5
    .line 760
    :cond_0
    :goto_0
    return-void

    #@6
    .line 768
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    #@a
    .line 769
    .local v1, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@c
    .line 770
    .local v4, "monitoringType":I
    new-instance v5, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    #@e
    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@10
    invoke-direct {v5, v6, v1, v4}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V

    #@13
    .line 771
    .local v5, "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@15
    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1c
    move-result v6

    #@1d
    if-nez v6, :cond_0

    #@1f
    .line 772
    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@21
    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 773
    invoke-interface {v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v0

    #@2c
    .line 775
    .local v0, "b":Landroid/os/IBinder;
    const/4 v6, 0x0

    #@2d
    :try_start_0
    invoke-interface {v0, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    goto :goto_0

    #@31
    .line 776
    :catch_0
    move-exception v2

    #@32
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@33
    .line 780
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "monitoringType":I
    .end local v5    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@35
    check-cast v3, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@37
    .line 781
    .local v3, "monitorCallback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@39
    .line 783
    .restart local v4    # "monitoringType":I
    new-instance v5, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    #@3b
    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@3d
    invoke-direct {v5, v6, v3, v4}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V

    #@40
    .line 784
    .restart local v5    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@42
    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@49
    move-result v6

    #@4a
    if-nez v6, :cond_0

    #@4c
    .line 785
    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@4e
    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@55
    .line 786
    invoke-interface {v3}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    #@58
    move-result-object v0

    #@59
    .line 788
    .restart local v0    # "b":Landroid/os/IBinder;
    const/4 v6, 0x0

    #@5a
    :try_start_1
    invoke-interface {v0, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@5d
    goto :goto_0

    #@5e
    .line 789
    :catch_1
    move-exception v2

    #@5f
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    #@60
    .line 793
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "monitorCallback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v4    # "monitoringType":I
    .end local v5    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@62
    check-cast v5, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    #@64
    .line 794
    .restart local v5    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@66
    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6d
    goto :goto_0

    #@6e
    .line 766
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
