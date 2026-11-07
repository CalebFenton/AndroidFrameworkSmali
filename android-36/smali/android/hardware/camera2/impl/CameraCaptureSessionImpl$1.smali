.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;
.super Landroid/hardware/camera2/impl/CaptureCallback;
.source "CameraCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

.field final synthetic blacklist val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$-rSGqLYVnY7Pev5aN4GTX_s2kdA(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureBufferLost$8(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4YFjiiZ3jewL058zjm976_NzLcw(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;IJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureSequenceCompleted$6(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AUNuR3_M1WaWvHmZwd_miTBgiks(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureStarted$0(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CKqOMRKAL_8ik1sfAB6FpcXEWwQ(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCapturePartial$2(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GUm4K2I0ssp97MCVLpod9r_1qio(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureSequenceAborted$7(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KRJ4fbynuW7-k4oTMo2JmYMEw6w(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureProgressed$3(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kcFIfLOxdjFd2lwODqwuX1oXXxk(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onReadoutStarted$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nSI43m0hRmskZUsAoDo3H_ITffg(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureFailed$5(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oAh73-fY7KfurUWjiXDM7qKCt-8(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureCompleted$4(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 667
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CaptureCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureBufferLost$8(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 12
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "frameNumber"    # J

    .line 790
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .end local p1    # "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "target":Landroid/view/Surface;
    .end local p4    # "frameNumber":J
    .local v0, "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v3, "target":Landroid/view/Surface;
    .local v4, "frameNumber":J
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureCompleted$4(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 732
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureFailed$5(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 746
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCapturePartial$2(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 704
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCapturePartial(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureProgressed$3(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 718
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureSequenceAborted$7(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "sequenceId"    # I

    .line 775
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureSequenceCompleted$6(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;IJ)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 760
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureStarted$0(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 14
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 674
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    move-object v0, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "timestamp":J
    .end local p5    # "frameNumber":J
    .local v0, "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v3, "timestamp":J
    .local v5, "frameNumber":J
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onReadoutStarted$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 14
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 689
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    move-object v0, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "timestamp":J
    .end local p5    # "frameNumber":J
    .local v0, "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v3, "timestamp":J
    .local v5, "frameNumber":J
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onReadoutStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method


# virtual methods
.method public blacklist onCaptureBufferLost(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 16
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "frameNumber"    # J

    .line 787
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_2c

    .line 788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 790
    .local v1, "ident":J
    :try_start_c
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_23

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-wide v8, p4

    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "target":Landroid/view/Surface;
    .end local p4    # "frameNumber":J
    .local v6, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v7, "target":Landroid/view/Surface;
    .local v8, "frameNumber":J
    :try_start_16
    invoke-direct/range {v3 .. v9}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_20

    .line 793
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 794
    goto :goto_2f

    .line 793
    :catchall_20
    move-exception v0

    move-object p2, v0

    goto :goto_28

    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v7    # "target":Landroid/view/Surface;
    .end local v8    # "frameNumber":J
    .restart local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p3    # "target":Landroid/view/Surface;
    .restart local p4    # "frameNumber":J
    :catchall_23
    move-exception v0

    move-object v6, p2

    move-object v7, p3

    move-wide v8, p4

    move-object p2, v0

    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "target":Landroid/view/Surface;
    .end local p4    # "frameNumber":J
    .restart local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v7    # "target":Landroid/view/Surface;
    .restart local v8    # "frameNumber":J
    :goto_28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 794
    throw p2

    .line 787
    .end local v1    # "ident":J
    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v7    # "target":Landroid/view/Surface;
    .end local v8    # "frameNumber":J
    .restart local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p3    # "target":Landroid/view/Surface;
    .restart local p4    # "frameNumber":J
    :cond_2c
    move-object v6, p2

    move-object v7, p3

    move-wide v8, p4

    .line 796
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "target":Landroid/view/Surface;
    .end local p4    # "frameNumber":J
    .restart local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v7    # "target":Landroid/view/Surface;
    .restart local v8    # "frameNumber":J
    :goto_2f
    return-void
.end method

.method public blacklist onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 9
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 729
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_21

    .line 730
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 732
    .local v0, "ident":J
    :try_start_c
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v3, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 735
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 736
    goto :goto_21

    .line 735
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 736
    throw v2

    .line 738
    .end local v0    # "ident":J
    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 9
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 743
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_21

    .line 744
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 746
    .local v0, "ident":J
    :try_start_c
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v3, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 749
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 750
    goto :goto_21

    .line 749
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 750
    throw v2

    .line 752
    .end local v0    # "ident":J
    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist onCapturePartial(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 9
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 701
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_21

    .line 702
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 704
    .local v0, "ident":J
    :try_start_c
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v3, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 707
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    goto :goto_21

    .line 707
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    throw v2

    .line 710
    .end local v0    # "ident":J
    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist onCaptureProgressed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 9
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 715
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_21

    .line 716
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 718
    .local v0, "ident":J
    :try_start_c
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 721
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 722
    goto :goto_21

    .line 721
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 722
    throw v2

    .line 724
    .end local v0    # "ident":J
    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 8
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "sequenceId"    # I

    .line 772
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_21

    .line 773
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 775
    .local v0, "ident":J
    :try_start_c
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 778
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    goto :goto_21

    .line 778
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    throw v2

    .line 781
    .end local v0    # "ident":J
    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$mfinishPendingSequence(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V

    .line 782
    return-void
.end method

.method public blacklist onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V
    .registers 14
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 757
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_2b

    .line 758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 760
    .local v1, "ident":J
    :try_start_c
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda4;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_22

    move-object v4, p0

    move v6, p2

    move-wide v7, p3

    .end local p2    # "sequenceId":I
    .end local p3    # "frameNumber":J
    .local v6, "sequenceId":I
    .local v7, "frameNumber":J
    :try_start_15
    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;IJ)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1f

    .line 763
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 764
    goto :goto_2e

    .line 763
    :catchall_1f
    move-exception v0

    move-object p2, v0

    goto :goto_27

    .end local v6    # "sequenceId":I
    .end local v7    # "frameNumber":J
    .restart local p2    # "sequenceId":I
    .restart local p3    # "frameNumber":J
    :catchall_22
    move-exception v0

    move-object v4, p0

    move v6, p2

    move-wide v7, p3

    move-object p2, v0

    .end local p2    # "sequenceId":I
    .end local p3    # "frameNumber":J
    .restart local v6    # "sequenceId":I
    .restart local v7    # "frameNumber":J
    :goto_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 764
    throw p2

    .line 757
    .end local v1    # "ident":J
    .end local v6    # "sequenceId":I
    .end local v7    # "frameNumber":J
    .restart local p2    # "sequenceId":I
    .restart local p3    # "frameNumber":J
    :cond_2b
    move-object v4, p0

    move v6, p2

    move-wide v7, p3

    .line 766
    .end local p2    # "sequenceId":I
    .end local p3    # "frameNumber":J
    .restart local v6    # "sequenceId":I
    .restart local v7    # "frameNumber":J
    :goto_2e
    iget-object p2, v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {p2, v6}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$mfinishPendingSequence(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V

    .line 767
    return-void
.end method

.method public blacklist onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 18
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 671
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_26

    .line 672
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 674
    .local v1, "ident":J
    :try_start_c
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda8;

    move-object v4, p0

    move-object v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_21

    .line 678
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 679
    goto :goto_26

    .line 678
    :catchall_21
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 679
    throw v0

    .line 681
    .end local v1    # "ident":J
    :cond_26
    :goto_26
    return-void
.end method

.method public blacklist onReadoutStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 18
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 686
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_26

    .line 687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 689
    .local v1, "ident":J
    :try_start_c
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda1;

    move-object v4, p0

    move-object v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_21

    .line 693
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    goto :goto_26

    .line 693
    :catchall_21
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    throw v0

    .line 696
    .end local v1    # "ident":J
    :cond_26
    :goto_26
    return-void
.end method
