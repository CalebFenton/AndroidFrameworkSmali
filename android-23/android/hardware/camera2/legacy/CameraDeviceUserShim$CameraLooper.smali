.class Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
.super Ljava/lang/Object;
.source "CameraDeviceUserShim.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraLooper"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private final mCameraId:I

.field private volatile mInitErrors:I

.field private mLooper:Landroid/os/Looper;

.field private final mStartDone:Landroid/os/ConditionVariable;

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "cameraId"    # I

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    invoke-static {}, Landroid/hardware/Camera;->openUninitialized()Landroid/hardware/Camera;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    #@9
    .line 103
    new-instance v0, Landroid/os/ConditionVariable;

    #@b
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    #@e
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mStartDone:Landroid/os/ConditionVariable;

    #@10
    .line 116
    iput p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCameraId:I

    #@12
    .line 118
    new-instance v0, Ljava/lang/Thread;

    #@14
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@17
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mThread:Ljava/lang/Thread;

    #@19
    .line 119
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mThread:Ljava/lang/Thread;

    #@1b
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@1e
    .line 115
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 144
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 145
    return-void

    #@6
    .line 148
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    #@8
    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    #@b
    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mThread:Ljava/lang/Thread;

    #@d
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 155
    iput-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    #@12
    .line 143
    return-void

    #@13
    .line 151
    :catch_0
    move-exception v0

    #@14
    .line 152
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@16
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@19
    throw v1
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    #@2
    return-object v0
.end method

.method public run()V
    .locals 2

    #@0
    .prologue
    .line 129
    invoke-static {}, Landroid/os/Looper;->prepare()V

    #@3
    .line 133
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    #@9
    .line 134
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    #@b
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCameraId:I

    #@d
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->cameraInitUnspecified(I)I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mInitErrors:I

    #@13
    .line 135
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mStartDone:Landroid/os/ConditionVariable;

    #@15
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    #@18
    .line 136
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@1b
    .line 127
    return-void
.end method

.method public waitForOpen(I)I
    .locals 4
    .param p1, "timeoutMs"    # I

    #@0
    .prologue
    .line 169
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mStartDone:Landroid/os/ConditionVariable;

    #@2
    int-to-long v2, p1

    #@3
    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 170
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@c
    const-string/jumbo v2, "waitForOpen - Camera failed to open after timeout of 5000 ms"

    #@f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    #@14
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 178
    :goto_0
    new-instance v1, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@19
    const/4 v2, 0x3

    #@1a
    invoke-direct {v1, v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    #@1d
    throw v1

    #@1e
    .line 174
    :catch_0
    move-exception v0

    #@1f
    .line 175
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@22
    const-string/jumbo v2, "connectBinderShim - Failed to release camera after timeout "

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0

    #@29
    .line 181
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mInitErrors:I

    #@2b
    return v1
.end method
