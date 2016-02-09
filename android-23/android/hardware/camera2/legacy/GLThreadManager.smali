.class public Landroid/hardware/camera2/legacy/GLThreadManager;
.super Ljava/lang/Object;
.source "GLThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;,
        Landroid/hardware/camera2/legacy/GLThreadManager$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_ALLOW_FRAMES:I = 0x5

.field private static final MSG_CLEANUP:I = 0x3

.field private static final MSG_DROP_FRAMES:I = 0x4

.field private static final MSG_NEW_CONFIGURATION:I = 0x1

.field private static final MSG_NEW_FRAME:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private final mGLHandlerCb:Landroid/os/Handler$Callback;

.field private final mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

.field private final mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

.field private final mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/legacy/GLThreadManager;Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@2
    return-object p1
.end method

.method public constructor <init>(IILandroid/hardware/camera2/legacy/CameraDeviceState;)V
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "facing"    # I
    .param p3, "state"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@0
    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    new-instance v0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    #@5
    const-string/jumbo v1, "GL Preview Producer"

    #@8
    invoke-direct {v0, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;-><init>(Ljava/lang/String;)V

    #@b
    .line 54
    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    #@d
    .line 73
    new-instance v0, Landroid/hardware/camera2/legacy/GLThreadManager$1;

    #@f
    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/GLThreadManager$1;-><init>(Landroid/hardware/camera2/legacy/GLThreadManager;)V

    #@12
    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerCb:Landroid/os/Handler$Callback;

    #@14
    .line 141
    new-instance v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    #@16
    invoke-direct {v0, p2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;-><init>(I)V

    #@19
    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    #@1b
    .line 142
    const-string/jumbo v0, "CameraDeviceGLThread-%d"

    #@1e
    const/4 v1, 0x1

    #@1f
    new-array v1, v1, [Ljava/lang/Object;

    #@21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v2

    #@25
    const/4 v3, 0x0

    #@26
    aput-object v2, v1, v3

    #@28
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    #@2e
    .line 143
    new-instance v0, Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@30
    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    #@32
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerCb:Landroid/os/Handler$Callback;

    #@34
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    #@37
    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@39
    .line 144
    iput-object p3, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@3b
    .line 140
    return-void
.end method


# virtual methods
.method public allowNewFrames()V
    .locals 2

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x5

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 261
    return-void
.end method

.method public getCurrentSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public ignoreNewFrames()V
    .locals 2

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 247
    return-void
.end method

.method public queueNewFrame()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 190
    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@3
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    #@6
    move-result-object v0

    #@7
    .line 196
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 197
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@14
    .line 189
    :goto_0
    return-void

    #@15
    .line 199
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    #@17
    const-string/jumbo v2, "GLThread dropping frame.  Not consuming frames quickly enough!"

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    goto :goto_0
.end method

.method public quit()V
    .locals 8

    #@0
    .prologue
    .line 173
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    .line 174
    .local v1, "handler":Landroid/os/Handler;
    const/4 v2, 0x3

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@e
    .line 175
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@10
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->quitSafely()Z

    #@13
    .line 177
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@15
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 172
    :goto_0
    return-void

    #@19
    .line 178
    :catch_0
    move-exception v0

    #@1a
    .line 179
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    #@1c
    const-string/jumbo v3, "Thread %s (%d) interrupted while quitting."

    #@1f
    const/4 v4, 0x2

    #@20
    new-array v4, v4, [Ljava/lang/Object;

    #@22
    .line 180
    iget-object v5, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@24
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getName()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    const/4 v6, 0x0

    #@29
    aput-object v5, v4, v6

    #@2b
    iget-object v5, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2d
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getId()J

    #@30
    move-result-wide v6

    #@31
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@34
    move-result-object v5

    #@35
    const/4 v6, 0x1

    #@36
    aput-object v5, v4, v6

    #@38
    .line 179
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    goto :goto_0
.end method

.method public setConfigurationAndWait(Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .locals 6
    .param p2, "collector"    # Landroid/hardware/camera2/legacy/CaptureCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;",
            "Landroid/hardware/camera2/legacy/CaptureCollector;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    const/4 v5, 0x0

    #@1
    .line 213
    const-string/jumbo v4, "collector must not be null"

    #@4
    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 214
    iget-object v4, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@9
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    #@c
    move-result-object v2

    #@d
    .line 216
    .local v2, "handler":Landroid/os/Handler;
    new-instance v0, Landroid/os/ConditionVariable;

    #@f
    invoke-direct {v0, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    #@12
    .line 217
    .local v0, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;

    #@14
    invoke-direct {v1, v0, p1, p2}, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;-><init>(Landroid/os/ConditionVariable;Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V

    #@17
    .line 219
    .local v1, "configure":Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;
    const/4 v4, 0x1

    #@18
    invoke-virtual {v2, v4, v5, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1b
    move-result-object v3

    #@1c
    .line 220
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1f
    .line 223
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    #@22
    .line 212
    return-void
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->start()V

    #@5
    .line 154
    return-void
.end method

.method public waitUntilIdle()V
    .locals 1

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilIdle()V

    #@5
    .line 254
    return-void
.end method

.method public waitUntilStarted()V
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilStarted()V

    #@5
    .line 161
    return-void
.end method
