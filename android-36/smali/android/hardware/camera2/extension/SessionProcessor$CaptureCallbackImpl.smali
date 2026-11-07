.class final Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;
.super Ljava/lang/Object;
.source "SessionProcessor.java"

# interfaces
.implements Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/SessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

.field private blacklist mVendorId:J


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V
    .registers 6
    .param p1, "cb"    # Landroid/hardware/camera2/extension/ICaptureCallback;
    .param p2, "vendorId"    # J

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mVendorId:J

    .line 456
    iput-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    .line 457
    iput-wide p2, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mVendorId:J

    .line 458
    return-void
.end method


# virtual methods
.method public whitelist onCaptureCompleted(JILjava/util/Map;)V
    .registers 10
    .param p1, "shutterTimestamp"    # J
    .param p3, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 508
    .local p4, "results":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;>;"
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 509
    .local v0, "captureResults":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-wide v1, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mVendorId:J

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    .line 510
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 511
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 512
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;>;"
    goto :goto_12

    .line 514
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {v1, p1, p2, p3, v0}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureCompleted(JILandroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32

    .line 517
    goto :goto_3a

    .line 515
    :catch_32
    move-exception v1

    .line 516
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SessionProcessor"

    const-string v3, "Failed to notify capture complete due to remote exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3a
    return-void
.end method

.method public whitelist onCaptureFailed(II)V
    .registers 6
    .param p1, "captureSequenceId"    # I
    .param p2, "failure"    # I

    .line 481
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureProcessFailed(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 484
    goto :goto_e

    .line 482
    :catch_6
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionProcessor"

    const-string v2, "Failed to notify capture failure start due to remote exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist onCaptureProcessStarted(I)V
    .registers 5
    .param p1, "captureSequenceId"    # I

    .line 472
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureProcessStarted(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 475
    goto :goto_e

    .line 473
    :catch_6
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionProcessor"

    const-string v2, "Failed to notify process start due to remote exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist onCaptureSequenceAborted(I)V
    .registers 5
    .param p1, "captureSequenceId"    # I

    .line 499
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureSequenceAborted(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 502
    goto :goto_e

    .line 500
    :catch_6
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionProcessor"

    const-string v2, "Failed to notify capture sequence abort due to remote exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist onCaptureSequenceCompleted(I)V
    .registers 5
    .param p1, "captureSequenceId"    # I

    .line 490
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureSequenceCompleted(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 493
    goto :goto_e

    .line 491
    :catch_6
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionProcessor"

    const-string v2, "Failed to notify capture sequence done due to remote exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist onCaptureStarted(IJ)V
    .registers 7
    .param p1, "captureSequenceId"    # I
    .param p2, "timestamp"    # J

    .line 463
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureStarted(IJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 466
    goto :goto_e

    .line 464
    :catch_6
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionProcessor"

    const-string v2, "Failed to notify capture start due to remote exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
