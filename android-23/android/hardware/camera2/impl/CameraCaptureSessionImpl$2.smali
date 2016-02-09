.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;
.super Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.source "CameraCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mActive:Z

.field private mBusy:Z

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

.field final synthetic val$session:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
    .param p2, "val$session"    # Landroid/hardware/camera2/CameraCaptureSession;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 497
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@3
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    #@5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;-><init>()V

    #@8
    .line 498
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    #@a
    .line 499
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    #@c
    .line 497
    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get4(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    #@9
    .line 521
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    #@c
    .line 524
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@e
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get6(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    #@14
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    #@17
    .line 519
    return-void
.end method

.method public onBusy(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 567
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    #@3
    .line 566
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    #@5
    .line 507
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    #@0
    .prologue
    .line 515
    const-string/jumbo v0, "CameraCaptureSession"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@a
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get3(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "Got device error "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 513
    return-void
.end method

.method public onIdle(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 532
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    #@3
    monitor-enter v2

    #@4
    .line 533
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@6
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get1(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    .local v0, "isAborting":Z
    monitor-exit v2

    #@b
    .line 547
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 548
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@13
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    #@1a
    .line 550
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    #@1c
    monitor-enter v2

    #@1d
    .line 551
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@1f
    const/4 v3, 0x0

    #@20
    invoke-static {v1, v3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-set0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@23
    monitor-exit v2

    #@24
    .line 555
    :cond_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 556
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2a
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get4(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    #@31
    .line 559
    :cond_1
    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    #@33
    .line 560
    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    #@35
    .line 562
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@37
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get6(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@3a
    move-result-object v1

    #@3b
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    #@3d
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    #@40
    .line 528
    return-void

    #@41
    .line 532
    .end local v0    # "isAborting":Z
    :catchall_0
    move-exception v1

    #@42
    monitor-exit v2

    #@43
    throw v1

    #@44
    .line 550
    .restart local v0    # "isAborting":Z
    :catchall_1
    move-exception v1

    #@45
    monitor-exit v2

    #@46
    throw v1
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 503
    new-instance v0, Ljava/lang/AssertionError;

    #@2
    const-string/jumbo v1, "Camera must already be open before creating a session"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@8
    throw v0
.end method

.method public onSurfacePrepared(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 583
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get6(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    #@b
    .line 581
    return-void
.end method

.method public onUnconfigured(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 576
    return-void
.end method
