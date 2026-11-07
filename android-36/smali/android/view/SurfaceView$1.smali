.class Landroid/view/SurfaceView$1;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field final synthetic blacklist this$0:Landroid/view/SurfaceView;


# direct methods
.method public static synthetic blacklist $r8$lambda$sQIVqchgpq2KNhytJcKOMckeEDM(Landroid/view/SurfaceView$1;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView$1;->lambda$setKeepScreenOn$0(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/SurfaceView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/SurfaceView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1893
    iput-object p1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;
    .registers 10
    .param p1, "dirty"    # Landroid/graphics/Rect;
    .param p2, "hardware"    # Z

    .line 2010
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2015
    const/4 v0, 0x0

    .line 2016
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-boolean v1, v1, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-nez v1, :cond_32

    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_32

    .line 2018
    if-eqz p2, :cond_20

    .line 2019
    :try_start_16
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "c":Landroid/graphics/Canvas;
    .local v1, "c":Landroid/graphics/Canvas;
    goto :goto_29

    .line 2021
    .end local v1    # "c":Landroid/graphics/Canvas;
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :cond_20
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_2a

    move-object v0, v1

    .line 2025
    :goto_29
    goto :goto_32

    .line 2023
    :catch_2a
    move-exception v1

    .line 2024
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SurfaceHolder"

    const-string v3, "Exception locking surface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2029
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_32
    :goto_32
    if-eqz v0, :cond_3d

    .line 2030
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 2031
    return-object v0

    .line 2037
    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2038
    .local v1, "now":J
    iget-object v3, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-wide v3, v3, Landroid/view/SurfaceView;->mLastLockTime:J

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    .line 2039
    .local v3, "nextTime":J
    cmp-long v5, v3, v1

    if-lez v5, :cond_57

    .line 2041
    sub-long v5, v3, v1

    :try_start_4e
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_51} :catch_52

    .line 2043
    goto :goto_53

    .line 2042
    :catch_52
    move-exception v5

    .line 2044
    :goto_53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2046
    :cond_57
    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iput-wide v1, v5, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 2047
    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v5, v5, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2049
    const/4 v5, 0x0

    return-object v5
.end method

.method private synthetic blacklist lambda$setKeepScreenOn$0(Z)V
    .registers 3
    .param p1, "screenOn"    # Z

    .line 1967
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    return-void
.end method


# virtual methods
.method public whitelist addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .line 1903
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1906
    :try_start_5
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1907
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1909
    :cond_16
    monitor-exit v0

    .line 1910
    return-void

    .line 1909
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 2

    .line 2069
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist getSurfaceFrame()Landroid/graphics/Rect;
    .registers 2

    .line 2074
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist isCreating()Z
    .registers 2

    .line 1898
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    return v0
.end method

.method public whitelist lockCanvas()Landroid/graphics/Canvas;
    .registers 3

    .line 1981
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView$1;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3
    .param p1, "inOutDirty"    # Landroid/graphics/Rect;

    .line 2001
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView$1;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockHardwareCanvas()Landroid/graphics/Canvas;
    .registers 3

    .line 2006
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView$1;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .line 1914
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1915
    :try_start_5
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1916
    monitor-exit v0

    .line 1917
    return-void

    .line 1916
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist setFixedSize(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1921
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, p1, :cond_c

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, p2, :cond_19

    .line 1927
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1928
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1929
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 1931
    :cond_19
    return-void
.end method

.method public whitelist setFormat(I)V
    .registers 3
    .param p1, "format"    # I

    .line 1949
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 1950
    const/4 p1, 0x4

    .line 1952
    :cond_4
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 1953
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    .line 1954
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 1956
    :cond_13
    return-void
.end method

.method public whitelist setKeepScreenOn(Z)V
    .registers 4
    .param p1, "screenOn"    # Z

    .line 1967
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    new-instance v1, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView$1;Z)V

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->-$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 1968
    return-void
.end method

.method public whitelist setSizeFromLayout()V
    .registers 4

    .line 1935
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_1a

    .line 1940
    :cond_d
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v2, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iput v1, v2, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1941
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 1943
    :cond_1a
    return-void
.end method

.method public whitelist setType(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1963
    return-void
.end method

.method public whitelist unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2061
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_10

    .line 2063
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2064
    nop

    .line 2065
    return-void

    .line 2063
    :catchall_10
    move-exception v0

    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2064
    throw v0
.end method
