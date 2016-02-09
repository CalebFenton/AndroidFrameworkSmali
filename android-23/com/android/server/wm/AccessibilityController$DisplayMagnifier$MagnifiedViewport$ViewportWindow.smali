.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewportWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;
    }
.end annotation


# static fields
.field private static final SURFACE_TITLE:Ljava/lang/String; = "Magnification Overlay"


# instance fields
.field private mAlpha:I

.field private final mAnimationController:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;

.field private final mBounds:Landroid/graphics/Region;

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private mInvalidated:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mShown:Z

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field final synthetic this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V
    .locals 13
    .param p1, "this$2"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 647
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 633
    new-instance v1, Landroid/graphics/Region;

    #@9
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    #@c
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    #@e
    .line 634
    new-instance v1, Landroid/graphics/Rect;

    #@10
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@13
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    #@15
    .line 635
    new-instance v1, Landroid/graphics/Paint;

    #@17
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@1a
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    #@1c
    .line 638
    new-instance v1, Landroid/view/Surface;

    #@1e
    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    #@21
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    #@23
    .line 648
    const/4 v9, 0x0

    #@24
    .line 650
    .local v9, "surfaceControl":Landroid/view/SurfaceControl;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->-get3(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;

    #@27
    move-result-object v1

    #@28
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@33
    .line 651
    new-instance v0, Landroid/view/SurfaceControl;

    #@35
    iget-object v1, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@37
    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@3a
    move-result-object v1

    #@3b
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    #@3d
    .line 652
    const-string/jumbo v2, "Magnification Overlay"

    #@40
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    #@43
    move-result-object v3

    #@44
    iget v3, v3, Landroid/graphics/Point;->x:I

    #@46
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    #@49
    move-result-object v4

    #@4a
    iget v4, v4, Landroid/graphics/Point;->y:I

    #@4c
    const/4 v5, -0x3

    #@4d
    .line 653
    const/4 v6, 0x4

    #@4e
    .line 651
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    .line 657
    .end local v9    # "surfaceControl":Landroid/view/SurfaceControl;
    .local v0, "surfaceControl":Landroid/view/SurfaceControl;
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@53
    .line 658
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@55
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->-get3(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;

    #@58
    move-result-object v2

    #@59
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    #@60
    move-result v2

    #@61
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@64
    .line 660
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@66
    iget-object v2, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@68
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@6b
    move-result-object v2

    #@6c
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@6e
    .line 661
    const/16 v3, 0x7eb

    #@70
    .line 660
    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    #@73
    move-result v2

    #@74
    mul-int/lit16 v2, v2, 0x2710

    #@76
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@79
    .line 663
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@7b
    invoke-virtual {v1, v11, v11}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@7e
    .line 664
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    #@80
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@82
    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    #@85
    .line 666
    new-instance v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;

    #@87
    .line 667
    iget-object v2, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@89
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@8c
    move-result-object v2

    #@8d
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@8f
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    #@92
    move-result-object v2

    #@93
    .line 666
    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;Landroid/content/Context;Landroid/os/Looper;)V

    #@96
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAnimationController:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;

    #@98
    .line 669
    new-instance v10, Landroid/util/TypedValue;

    #@9a
    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    #@9d
    .line 670
    .local v10, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@a0
    move-result-object v1

    #@a1
    const v2, 0x1010390

    #@a4
    invoke-virtual {v1, v2, v10, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@a7
    .line 672
    iget v1, v10, Landroid/util/TypedValue;->resourceId:I

    #@a9
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    #@ac
    move-result v7

    #@ad
    .line 674
    .local v7, "borderColor":I
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    #@af
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@b1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@b4
    .line 675
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    #@b6
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)F

    #@b9
    move-result v2

    #@ba
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@bd
    .line 676
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    #@bf
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    #@c2
    .line 678
    iput-boolean v12, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    #@c4
    .line 647
    return-void

    #@c5
    .line 654
    .end local v0    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v7    # "borderColor":I
    .end local v10    # "typedValue":Landroid/util/TypedValue;
    .restart local v9    # "surfaceControl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v8

    #@c6
    .local v8, "oore":Landroid/view/Surface$OutOfResourcesException;
    move-object v0, v9

    #@c7
    .restart local v0    # "surfaceControl":Landroid/view/SurfaceControl;
    goto :goto_0
.end method


# virtual methods
.method public drawIfNeeded()V
    .locals 8

    #@0
    .prologue
    .line 748
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    iget-object v4, v4, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@4
    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@7
    move-result-object v4

    #@8
    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@a
    monitor-enter v5

    #@b
    .line 749
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-nez v4, :cond_0

    #@f
    monitor-exit v5

    #@10
    .line 750
    return-void

    #@11
    .line 752
    :cond_0
    const/4 v4, 0x0

    #@12
    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    .line 753
    const/4 v0, 0x0

    #@15
    .line 756
    .local v0, "canvas":Landroid/graphics/Canvas;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    #@17
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 757
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    #@1f
    iget-object v6, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    #@21
    invoke-virtual {v4, v6}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@24
    .line 759
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    #@26
    iget-object v6, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@28
    invoke-static {v6}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->-get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)I

    #@2b
    move-result v6

    #@2c
    neg-int v6, v6

    #@2d
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2f
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->-get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)I

    #@32
    move-result v7

    #@33
    neg-int v7, v7

    #@34
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->inset(II)V

    #@37
    .line 760
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    #@39
    iget-object v6, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    #@3b
    invoke-virtual {v4, v6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    move-result-object v0

    #@3f
    .line 769
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    if-nez v0, :cond_2

    #@41
    monitor-exit v5

    #@42
    .line 770
    return-void

    #@43
    .line 775
    :cond_2
    :try_start_3
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@45
    const/4 v6, 0x0

    #@46
    invoke-virtual {v0, v6, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@49
    .line 776
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    #@4b
    iget v6, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    #@4d
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    #@50
    .line 777
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    #@52
    invoke-virtual {v4}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    #@55
    move-result-object v3

    #@56
    .line 778
    .local v3, "path":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    #@58
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@5b
    .line 780
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    #@5d
    invoke-virtual {v4, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    #@60
    .line 782
    iget v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    #@62
    if-lez v4, :cond_3

    #@64
    .line 783
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@66
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@69
    :goto_1
    monitor-exit v5

    #@6a
    .line 747
    return-void

    #@6b
    .line 785
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@6d
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->hide()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@70
    goto :goto_1

    #@71
    .line 748
    .end local v3    # "path":Landroid/graphics/Path;
    :catchall_0
    move-exception v4

    #@72
    monitor-exit v5

    #@73
    throw v4

    #@74
    .line 764
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    #@75
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@76
    .line 766
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    #@77
    .local v2, "oore":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_0
.end method

.method public getAlpha()I
    .locals 2

    #@0
    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@4
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@7
    move-result-object v0

    #@8
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@a
    monitor-enter v0

    #@b
    .line 698
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v0

    #@e
    return v1

    #@f
    .line 697
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v0

    #@11
    throw v1
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "dirtyRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 737
    if-eqz p1, :cond_0

    #@2
    .line 738
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7
    .line 742
    :goto_0
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    #@a
    .line 743
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@c
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@e
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@15
    .line 736
    return-void

    #@16
    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    #@18
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@1b
    goto :goto_0
.end method

.method public releaseSurface()V
    .locals 1

    #@0
    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    #@5
    .line 792
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    #@7
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    #@a
    .line 790
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@4
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@7
    move-result-object v0

    #@8
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@a
    monitor-enter v1

    #@b
    .line 704
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-ne v0, p1, :cond_0

    #@f
    monitor-exit v1

    #@10
    .line 705
    return-void

    #@11
    .line 707
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    #@13
    .line 708
    const/4 v0, 0x0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 702
    return-void

    #@19
    .line 703
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public setBounds(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@4
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@7
    move-result-object v0

    #@8
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@a
    monitor-enter v1

    #@b
    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    #@d
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    monitor-exit v1

    #@14
    .line 718
    return-void

    #@15
    .line 720
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    #@17
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@1a
    .line 721
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    #@1c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 715
    return-void

    #@21
    .line 716
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method public setShown(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@4
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@7
    move-result-object v0

    #@8
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@a
    monitor-enter v1

    #@b
    .line 683
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-ne v0, p1, :cond_0

    #@f
    monitor-exit v1

    #@10
    .line 684
    return-void

    #@11
    .line 686
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShown:Z

    #@13
    .line 687
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAnimationController:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;

    #@15
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->onFrameShownStateChanged(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 681
    return-void

    #@1a
    .line 682
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public updateSize()V
    .locals 4

    #@0
    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@4
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@7
    move-result-object v0

    #@8
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@a
    monitor-enter v1

    #@b
    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@d
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->-get3(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@14
    move-result-object v0

    #@15
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@17
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@1e
    .line 731
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@20
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@22
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    #@25
    move-result-object v2

    #@26
    iget v2, v2, Landroid/graphics/Point;->x:I

    #@28
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@2a
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    #@2d
    move-result-object v3

    #@2e
    iget v3, v3, Landroid/graphics/Point;->y:I

    #@30
    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setSize(II)V

    #@33
    .line 732
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    #@35
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    monitor-exit v1

    #@39
    .line 728
    return-void

    #@3a
    .line 729
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v1

    #@3c
    throw v0
.end method
