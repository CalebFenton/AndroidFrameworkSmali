.class public abstract Landroid/view/CompositionSamplingListener;
.super Ljava/lang/Object;
.source "CompositionSamplingListener.java"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mNativeListener:J


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/view/CompositionSamplingListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 36
    invoke-static {p0}, Landroid/view/CompositionSamplingListener;->nativeCreate(Landroid/view/CompositionSamplingListener;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    .line 37
    return-void
.end method

.method private static blacklist dispatchOnSampleCollected(Landroid/view/CompositionSamplingListener;F)V
    .registers 4
    .param p0, "listener"    # Landroid/view/CompositionSamplingListener;
    .param p1, "medianLuma"    # F

    .line 94
    iget-object v0, p0, Landroid/view/CompositionSamplingListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/CompositionSamplingListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/CompositionSamplingListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/CompositionSamplingListener;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method static synthetic blacklist lambda$dispatchOnSampleCollected$0(Landroid/view/CompositionSamplingListener;F)V
    .registers 2
    .param p0, "listener"    # Landroid/view/CompositionSamplingListener;
    .param p1, "medianLuma"    # F

    .line 94
    invoke-virtual {p0, p1}, Landroid/view/CompositionSamplingListener;->onSampleCollected(F)V

    return-void
.end method

.method private static native blacklist nativeCreate(Landroid/view/CompositionSamplingListener;)J
.end method

.method private static native blacklist nativeDestroy(J)V
.end method

.method private static native blacklist nativeRegister(JJIIII)V
.end method

.method private static native blacklist nativeUnregister(J)V
.end method

.method public static blacklist register(Landroid/view/CompositionSamplingListener;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .registers 16
    .param p0, "listener"    # Landroid/view/CompositionSamplingListener;
    .param p1, "displayId"    # I
    .param p2, "stopLayer"    # Landroid/view/SurfaceControl;
    .param p3, "samplingArea"    # Landroid/graphics/Rect;

    .line 67
    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 68
    return-void

    .line 70
    :cond_9
    if-nez p1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "default display only for now"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 72
    if-eqz p2, :cond_17

    iget-wide v2, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    :cond_17
    move-wide v6, v2

    .line 73
    .local v6, "nativeStopLayerObject":J
    iget-wide v4, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    iget v8, p3, Landroid/graphics/Rect;->left:I

    iget v9, p3, Landroid/graphics/Rect;->top:I

    iget v10, p3, Landroid/graphics/Rect;->right:I

    iget v11, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v4 .. v11}, Landroid/view/CompositionSamplingListener;->nativeRegister(JJIIII)V

    .line 75
    return-void
.end method

.method public static blacklist unregister(Landroid/view/CompositionSamplingListener;)V
    .registers 5
    .param p0, "listener"    # Landroid/view/CompositionSamplingListener;

    .line 81
    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 82
    return-void

    .line 84
    :cond_9
    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/CompositionSamplingListener;->nativeUnregister(J)V

    .line 85
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 5

    .line 40
    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 41
    return-void

    .line 43
    :cond_9
    invoke-static {p0}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    .line 44
    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/CompositionSamplingListener;->nativeDestroy(J)V

    .line 45
    iput-wide v2, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    .line 46
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/view/CompositionSamplingListener;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 53
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 54
    nop

    .line 55
    return-void

    .line 53
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 54
    throw v0
.end method

.method public abstract blacklist onSampleCollected(F)V
.end method
