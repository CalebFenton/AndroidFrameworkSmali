.class Landroid/hardware/camera2/impl/CameraDeviceImpl$2;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_6
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v2

    if-nez v2, :cond_10

    monitor-exit v1

    return-void

    .line 213
    :cond_10
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmSessionStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v2

    move-object v0, v2

    .line 214
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_2b

    .line 215
    if-eqz v0, :cond_1f

    .line 216
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    .line 218
    :cond_1f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmDeviceCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    .line 219
    return-void

    .line 214
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2
.end method
