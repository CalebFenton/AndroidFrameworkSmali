.class Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
.super Ljava/lang/Object;
.source "CameraDeviceUserShim.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraCallbackThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;
    }
.end annotation


# static fields
.field private static final CAMERA_ERROR:I = 0x0

.field private static final CAMERA_IDLE:I = 0x1

.field private static final CAPTURE_STARTED:I = 0x2

.field private static final PREPARED:I = 0x4

.field private static final REPEATING_REQUEST_ERROR:I = 0x5

.field private static final RESULT_RECEIVED:I = 0x3


# instance fields
.field private final mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/hardware/camera2/ICameraDeviceCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@0
    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 216
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@5
    .line 218
    new-instance v0, Landroid/os/HandlerThread;

    #@7
    const-string/jumbo v1, "LegacyCameraCallback"

    #@a
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@d
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandlerThread:Landroid/os/HandlerThread;

    #@f
    .line 219
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandlerThread:Landroid/os/HandlerThread;

    #@11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@14
    .line 215
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandler:Landroid/os/Handler;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 282
    new-instance v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;

    #@6
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandlerThread:Landroid/os/HandlerThread;

    #@8
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;Landroid/os/Looper;)V

    #@f
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandler:Landroid/os/Handler;

    #@11
    .line 284
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandler:Landroid/os/Handler;

    #@13
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 277
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mHandlerThread:Landroid/os/HandlerThread;

    #@2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    #@5
    .line 222
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .locals 8
    .param p1, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p2, "timestamp"    # J

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 242
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    #@8
    move-result-object v1

    #@9
    .line 243
    and-long v2, p2, v6

    #@b
    long-to-int v2, v2

    #@c
    .line 244
    const/16 v3, 0x20

    #@e
    shr-long v4, p2, v3

    #@10
    and-long/2addr v4, v6

    #@11
    long-to-int v3, v4

    #@12
    .line 242
    const/4 v4, 0x2

    #@13
    invoke-virtual {v1, v4, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@16
    move-result-object v0

    #@17
    .line 246
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1e
    .line 241
    return-void
.end method

.method public onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 228
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1, v2, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 231
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 227
    return-void
.end method

.method public onDeviceIdle()V
    .locals 3

    #@0
    .prologue
    .line 236
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 237
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 235
    return-void
.end method

.method public onPrepared(I)V
    .locals 4
    .param p1, "streamId"    # I

    #@0
    .prologue
    .line 260
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x4

    #@5
    .line 261
    const/4 v3, 0x0

    #@6
    .line 260
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    .line 262
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 259
    return-void
.end method

.method public onRepeatingRequestError(J)V
    .locals 9
    .param p1, "lastFrameNumber"    # J

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 268
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    #@8
    move-result-object v1

    #@9
    .line 269
    and-long v2, p1, v6

    #@b
    long-to-int v2, v2

    #@c
    .line 270
    const/16 v3, 0x20

    #@e
    shr-long v4, p1, v3

    #@10
    and-long/2addr v4, v6

    #@11
    long-to-int v3, v4

    #@12
    .line 268
    const/4 v4, 0x5

    #@13
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@16
    move-result-object v0

    #@17
    .line 271
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1e
    .line 267
    return-void
.end method

.method public onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 4
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@0
    .prologue
    .line 252
    const/4 v2, 0x2

    #@1
    new-array v1, v2, [Ljava/lang/Object;

    #@3
    const/4 v2, 0x0

    #@4
    aput-object p1, v1, v2

    #@6
    const/4 v2, 0x1

    #@7
    aput-object p2, v1, v2

    #@9
    .line 253
    .local v1, "resultArray":[Ljava/lang/Object;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    #@c
    move-result-object v2

    #@d
    const/4 v3, 0x3

    #@e
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v0

    #@12
    .line 255
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->getHandler()Landroid/os/Handler;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 251
    return-void
.end method
