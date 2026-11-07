.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;
.super Ljava/lang/Object;
.source "CameraCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbortDrainListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 989
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onDrained()V
    .registers 3

    .line 993
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmDeviceImpl(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1005
    :try_start_9
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmSkipUnconfigure(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1006
    monitor-exit v0

    return-void

    .line 1008
    :cond_13
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmIdleDrainer(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->beginDrain()V

    .line 1009
    monitor-exit v0

    .line 1010
    return-void

    .line 1009
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw v1
.end method
