.class public Lcom/android/internal/view/SurfaceCallbackHelper;
.super Ljava/lang/Object;
.source "SurfaceCallbackHelper.java"


# static fields
.field private static final blacklist LOGTAG_SURFACEVIEW_CALLBACK:I = 0xea66


# instance fields
.field blacklist mFinishDrawingCollected:I

.field blacklist mFinishDrawingExpected:I

.field private blacklist mFinishDrawingRunnable:Ljava/lang/Runnable;

.field blacklist mRunnable:Ljava/lang/Runnable;

.field private blacklist mSurfaceRedrawImplemented:Z

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceRedrawImplemented(Lcom/android/internal/view/SurfaceCallbackHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mSurfaceRedrawImplemented:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Lcom/android/internal/view/SurfaceCallbackHelper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "callbacksCollected"    # Ljava/lang/Runnable;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5
    .param p1, "callbacksCollected"    # Ljava/lang/Runnable;
    .param p2, "tag"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    .line 29
    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    .line 31
    new-instance v1, Lcom/android/internal/view/SurfaceCallbackHelper$1;

    invoke-direct {v1, p0}, Lcom/android/internal/view/SurfaceCallbackHelper$1;-><init>(Lcom/android/internal/view/SurfaceCallbackHelper;)V

    iput-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    .line 55
    iput-object p2, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mTag:Ljava/lang/String;

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mSurfaceRedrawImplemented:Z

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    .registers 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;

    .line 60
    if-eqz p2, :cond_2f

    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_2f

    .line 65
    :cond_6
    monitor-enter p0

    .line 66
    :try_start_7
    array-length v0, p2

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    .line 68
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_2c

    .line 70
    array-length v1, p2

    :goto_f
    if-ge v0, v1, :cond_2b

    aget-object v2, p2, v0

    .line 71
    .local v2, "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v3, v2, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v3, :cond_23

    .line 72
    move-object v3, v2

    check-cast v3, Landroid/view/SurfaceHolder$Callback2;

    iget-object v4, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-interface {v3, p1, v4}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V

    .line 74
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mSurfaceRedrawImplemented:Z

    goto :goto_28

    .line 76
    :cond_23
    iget-object v3, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 70
    .end local v2    # "c":Landroid/view/SurfaceHolder$Callback;
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 79
    :cond_2b
    return-void

    .line 68
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    .line 61
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 62
    return-void
.end method
