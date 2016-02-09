.class Landroid/view/SurfaceView$MyWindow;
.super Lcom/android/internal/view/BaseIWindow;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWindow"
.end annotation


# instance fields
.field mCurHeight:I

.field mCurWidth:I

.field private final mSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 653
    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    #@4
    .line 706
    iput v0, p0, Landroid/view/SurfaceView$MyWindow;->mCurWidth:I

    #@6
    .line 707
    iput v0, p0, Landroid/view/SurfaceView$MyWindow;->mCurHeight:I

    #@8
    .line 654
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@a
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@d
    iput-object v0, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    #@f
    .line 653
    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 684
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 4

    #@0
    .prologue
    .line 690
    iget-object v2, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/view/SurfaceView;

    #@8
    .line 691
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    if-eqz v1, :cond_0

    #@a
    .line 692
    iget-object v2, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@c
    const/4 v3, 0x2

    #@d
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    .line 693
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@13
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 689
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "out"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 703
    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 661
    iget-object v1, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/SurfaceView;

    #@8
    .line 662
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    if-eqz v0, :cond_1

    #@a
    .line 666
    iget-object v1, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@f
    .line 668
    if-eqz p7, :cond_2

    #@11
    .line 669
    const/4 v1, 0x1

    #@12
    :try_start_0
    iput-boolean v1, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    #@14
    .line 670
    const/4 v1, 0x1

    #@15
    iput-boolean v1, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    #@17
    .line 671
    iget-object v1, v0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@19
    const/4 v2, 0x3

    #@1a
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 678
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1f
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 660
    :cond_1
    return-void

    #@23
    .line 672
    :cond_2
    :try_start_1
    iget-object v1, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@25
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@28
    move-result v1

    #@29
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@2c
    move-result v2

    #@2d
    if-ne v1, v2, :cond_3

    #@2f
    .line 673
    iget-object v1, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@31
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@34
    move-result v1

    #@35
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@38
    move-result v2

    #@39
    if-eq v1, v2, :cond_0

    #@3b
    .line 674
    :cond_3
    const/4 v1, 0x1

    #@3c
    iput-boolean v1, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    #@3e
    .line 675
    iget-object v1, v0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@40
    const/4 v2, 0x3

    #@41
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 677
    :catchall_0
    move-exception v1

    #@46
    .line 678
    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@48
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@4b
    .line 677
    throw v1
.end method

.method public windowFocusChanged(ZZ)V
    .locals 3
    .param p1, "hasFocus"    # Z
    .param p2, "touchEnabled"    # Z

    #@0
    .prologue
    .line 699
    const-string/jumbo v0, "SurfaceView"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Unexpected focus in surface: focus="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, ", touchEnabled="

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 698
    return-void
.end method
