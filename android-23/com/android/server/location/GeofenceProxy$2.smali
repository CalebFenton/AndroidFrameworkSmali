.class Lcom/android/server/location/GeofenceProxy$2;
.super Ljava/lang/Object;
.source "GeofenceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 100
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@2
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get2(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@9
    invoke-static {p2}, Landroid/hardware/location/IGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardware;

    #@c
    move-result-object v2

    #@d
    invoke-static {v0, v2}, Lcom/android/server/location/GeofenceProxy;->-set0(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;

    #@10
    .line 105
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@12
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get1(Lcom/android/server/location/GeofenceProxy;)Landroid/os/Handler;

    #@15
    move-result-object v0

    #@16
    const/4 v2, 0x2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 102
    return-void

    #@1c
    .line 103
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@2
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get2(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, v2}, Lcom/android/server/location/GeofenceProxy;->-set0(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;

    #@d
    .line 113
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@f
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get1(Lcom/android/server/location/GeofenceProxy;)Landroid/os/Handler;

    #@12
    move-result-object v0

    #@13
    const/4 v2, 0x3

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 110
    return-void

    #@19
    .line 111
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method
