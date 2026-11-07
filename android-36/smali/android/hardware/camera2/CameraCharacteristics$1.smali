.class Landroid/hardware/camera2/CameraCharacteristics$1;
.super Ljava/lang/Object;
.source "CameraCharacteristics.java"

# interfaces
.implements Landroid/hardware/camera2/CameraManager$DeviceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraCharacteristics;->getDeviceStateListener()Landroid/hardware/camera2/CameraManager$DeviceStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 250
    iput-object p1, p0, Landroid/hardware/camera2/CameraCharacteristics$1;->this$0:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist onDeviceStateChanged(Z)V
    .registers 4
    .param p1, "folded"    # Z

    .line 253
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics$1;->this$0:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0}, Landroid/hardware/camera2/CameraCharacteristics;->-$$Nest$fgetmLock(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 254
    :try_start_7
    iget-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics$1;->this$0:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v1, p1}, Landroid/hardware/camera2/CameraCharacteristics;->-$$Nest$fputmFoldedDeviceState(Landroid/hardware/camera2/CameraCharacteristics;Z)V

    .line 255
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
