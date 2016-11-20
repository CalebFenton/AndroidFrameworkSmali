.class Lcom/android/server/location/GeofenceProxy$3;
.super Landroid/os/Handler;
.source "GeofenceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GeofenceProxy;

    #@0
    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 153
    :goto_0
    return-void

    #@6
    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@8
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get2(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    monitor-enter v1

    #@d
    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@f
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get0(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 158
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@17
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-wrap1(Lcom/android/server/location/GeofenceProxy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    :goto_1
    monitor-exit v1

    #@1b
    goto :goto_0

    #@1c
    .line 156
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0

    #@1f
    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@21
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get2(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    monitor-enter v1

    #@26
    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@28
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get0(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    #@2b
    move-result-object v0

    #@2c
    if-eqz v0, :cond_0

    #@2e
    .line 170
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@30
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-wrap2(Lcom/android/server/location/GeofenceProxy;)V

    #@33
    .line 171
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@35
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-wrap0(Lcom/android/server/location/GeofenceProxy;)V

    #@38
    .line 172
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@3a
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-wrap1(Lcom/android/server/location/GeofenceProxy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3d
    goto :goto_1

    #@3e
    .line 165
    :catchall_1
    move-exception v0

    #@3f
    monitor-exit v1

    #@40
    throw v0

    #@41
    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@43
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get2(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    #@46
    move-result-object v1

    #@47
    monitor-enter v1

    #@48
    .line 178
    :try_start_2
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@4a
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get0(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    #@4d
    move-result-object v0

    #@4e
    if-nez v0, :cond_0

    #@50
    .line 179
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@52
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-wrap1(Lcom/android/server/location/GeofenceProxy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@55
    goto :goto_1

    #@56
    .line 177
    :catchall_2
    move-exception v0

    #@57
    monitor-exit v1

    #@58
    throw v0

    #@59
    .line 154
    nop

    #@5a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
