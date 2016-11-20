.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@0
    .prologue
    .line 1184
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$1:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 1187
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$1:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@2
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    #@5
    move-result-object v0

    #@6
    .line 1188
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_0

    #@8
    .line 1189
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$1:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@a
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->-get0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    monitor-enter v2

    #@f
    .line 1193
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$1:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@11
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->-wrap0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v2

    #@15
    .line 1186
    :cond_0
    return-void

    #@16
    .line 1189
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method
