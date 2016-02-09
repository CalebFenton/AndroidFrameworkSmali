.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedViewport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;
    }
.end annotation


# instance fields
.field private final mBorderWidth:F

.field private final mCircularPath:Landroid/graphics/Path;

.field private final mDrawBorderInset:I

.field private mFullRedrawNeeded:Z

.field private final mHalfBorderWidth:I

.field private final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mMagnifiedBounds:Landroid/graphics/Region;

.field private final mOldMagnifiedBounds:Landroid/graphics/Region;

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)V
    .locals 6
    .param p1, "this$1"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@0
    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 402
    new-instance v1, Landroid/util/SparseArray;

    #@7
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@a
    .line 401
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempWindowStates:Landroid/util/SparseArray;

    #@c
    .line 404
    new-instance v1, Landroid/graphics/RectF;

    #@e
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    #@11
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    #@13
    .line 406
    new-instance v1, Landroid/graphics/Point;

    #@15
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@18
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    #@1a
    .line 408
    new-instance v1, Landroid/graphics/Matrix;

    #@1c
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@1f
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    #@21
    .line 410
    new-instance v1, Landroid/graphics/Region;

    #@23
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    #@26
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnifiedBounds:Landroid/graphics/Region;

    #@28
    .line 411
    new-instance v1, Landroid/graphics/Region;

    #@2a
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    #@2d
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    #@2f
    .line 415
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    #@35
    .line 428
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    #@38
    move-result-object v1

    #@39
    const-string/jumbo v2, "window"

    #@3c
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Landroid/view/WindowManager;

    #@42
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    #@44
    .line 429
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4b
    move-result-object v1

    #@4c
    .line 430
    const v2, 0x1050077

    #@4f
    .line 429
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    #@52
    move-result v1

    #@53
    iput v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    #@55
    .line 431
    iget v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    #@57
    const/high16 v2, 0x40000000    # 2.0f

    #@59
    div-float/2addr v1, v2

    #@5a
    float-to-double v2, v1

    #@5b
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@5e
    move-result-wide v2

    #@5f
    double-to-int v1, v2

    #@60
    iput v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    #@62
    .line 432
    iget v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    #@64
    float-to-int v1, v1

    #@65
    div-int/lit8 v1, v1, 0x2

    #@67
    iput v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@69
    .line 433
    new-instance v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@6b
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    #@6e
    move-result-object v2

    #@6f
    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V

    #@72
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@74
    .line 435
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1}, Landroid/content/res/Configuration;->isScreenRound()Z

    #@83
    move-result v1

    #@84
    if-eqz v1, :cond_0

    #@86
    .line 436
    new-instance v1, Landroid/graphics/Path;

    #@88
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    #@8b
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    #@8d
    .line 437
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    #@8f
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@92
    move-result-object v1

    #@93
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    #@95
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@98
    .line 438
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    #@9a
    iget v1, v1, Landroid/graphics/Point;->x:I

    #@9c
    div-int/lit8 v0, v1, 0x2

    #@9e
    .line 439
    .local v0, "centerXY":I
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    #@a0
    int-to-float v2, v0

    #@a1
    int-to-float v3, v0

    #@a2
    int-to-float v4, v0

    #@a3
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@a5
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    #@a8
    .line 444
    .end local v0    # "centerXY":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    #@ab
    .line 427
    return-void

    #@ac
    .line 441
    :cond_0
    const/4 v1, 0x0

    #@ad
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    #@af
    goto :goto_0
.end method

.method private populateWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 617
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    invoke-static {v5}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@5
    move-result-object v5

    #@6
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@9
    move-result-object v0

    #@a
    .line 619
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@d
    move-result-object v3

    #@e
    .line 620
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@11
    move-result v2

    #@12
    .line 621
    .local v2, "windowCount":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@15
    .line 622
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@1b
    .line 623
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_0

    #@21
    .line 624
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@23
    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    #@25
    if-eqz v5, :cond_1

    #@27
    .line 621
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 625
    :cond_1
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    #@2c
    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2f
    goto :goto_1

    #@30
    .line 616
    .end local v4    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method


# virtual methods
.method public destroyWindow()V
    .locals 1

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->releaseSurface()V

    #@5
    .line 612
    return-void
.end method

.method public drawWindowIfNeededLocked()V
    .locals 1

    #@0
    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    #@3
    .line 609
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->drawIfNeeded()V

    #@8
    .line 607
    return-void
.end method

.method public getMagnificationSpecLocked()Landroid/view/MagnificationSpec;
    .locals 1

    #@0
    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    return-object v0
.end method

.method public getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    .line 593
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnifiedBounds:Landroid/graphics/Region;

    #@4
    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@7
    .line 594
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@9
    neg-float v1, v1

    #@a
    float-to-int v1, v1

    #@b
    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@d
    neg-float v2, v2

    #@e
    float-to-int v2, v2

    #@f
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    #@12
    .line 595
    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    #@14
    const/high16 v2, 0x3f800000    # 1.0f

    #@16
    div-float v1, v2, v1

    #@18
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    #@1b
    .line 591
    return-void
.end method

.method public isMagnifyingLocked()Z
    .locals 2

    #@0
    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    #@4
    const/high16 v1, 0x3f800000    # 1.0f

    #@6
    cmpl-float v0, v0, v1

    #@8
    if-lez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public onRotationChangedLocked()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 571
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 572
    invoke-virtual {p0, v4, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    #@a
    .line 573
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@c
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get3(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)J

    #@f
    move-result-wide v4

    #@10
    long-to-float v3, v4

    #@11
    .line 574
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@13
    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    #@1a
    move-result v4

    #@1b
    .line 573
    mul-float/2addr v3, v4

    #@1c
    float-to-long v0, v3

    #@1d
    .line 575
    .local v0, "delay":J
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@1f
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    #@22
    move-result-object v3

    #@23
    .line 576
    const/4 v4, 0x5

    #@24
    .line 575
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@27
    move-result-object v2

    #@28
    .line 577
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2a
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@31
    .line 579
    .end local v0    # "delay":J
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    #@34
    .line 580
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@36
    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->updateSize()V

    #@39
    .line 566
    return-void
.end method

.method public recomputeBoundsLocked()V
    .locals 29

    #@0
    .prologue
    .line 462
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    #@4
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@7
    move-result-object v3

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    #@c
    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@f
    .line 463
    move-object/from16 v0, p0

    #@11
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    #@13
    iget v5, v3, Landroid/graphics/Point;->x:I

    #@15
    .line 464
    .local v5, "screenWidth":I
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    #@19
    iget v6, v3, Landroid/graphics/Point;->y:I

    #@1b
    .line 466
    .local v6, "screenHeight":I
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnifiedBounds:Landroid/graphics/Region;

    #@1f
    move-object/from16 v19, v0

    #@21
    .line 467
    .local v19, "magnifiedBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x0

    #@23
    const/4 v7, 0x0

    #@24
    const/4 v8, 0x0

    #@25
    move-object/from16 v0, v19

    #@27
    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    #@2a
    .line 469
    move-object/from16 v0, p0

    #@2c
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2e
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get6(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@31
    move-result-object v14

    #@32
    .line 470
    .local v14, "availableBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    #@33
    const/4 v4, 0x0

    #@34
    invoke-virtual {v14, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    #@37
    .line 472
    move-object/from16 v0, p0

    #@39
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    #@3b
    if-eqz v3, :cond_0

    #@3d
    .line 473
    move-object/from16 v0, p0

    #@3f
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    #@41
    invoke-virtual {v14, v3, v14}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    #@44
    .line 476
    :cond_0
    move-object/from16 v0, p0

    #@46
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@48
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get9(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@4b
    move-result-object v21

    #@4c
    .line 477
    .local v21, "nonMagnifiedBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    #@4d
    const/4 v4, 0x0

    #@4e
    const/4 v7, 0x0

    #@4f
    const/4 v8, 0x0

    #@50
    move-object/from16 v0, v21

    #@52
    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    #@55
    .line 479
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempWindowStates:Landroid/util/SparseArray;

    #@59
    move-object/from16 v25, v0

    #@5b
    .line 480
    .local v25, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    #@5e
    .line 481
    move-object/from16 v0, p0

    #@60
    move-object/from16 v1, v25

    #@62
    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->populateWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    #@65
    .line 483
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    #@68
    move-result v24

    #@69
    .line 484
    .local v24, "visibleWindowCount":I
    add-int/lit8 v18, v24, -0x1

    #@6b
    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_3

    #@6d
    .line 485
    move-object/from16 v0, v25

    #@6f
    move/from16 v1, v18

    #@71
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@74
    move-result-object v28

    #@75
    check-cast v28, Lcom/android/server/wm/WindowState;

    #@77
    .line 486
    .local v28, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v28

    #@79
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@7b
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7d
    const/16 v4, 0x7eb

    #@7f
    if-ne v3, v4, :cond_2

    #@81
    .line 484
    :cond_1
    add-int/lit8 v18, v18, -0x1

    #@83
    goto :goto_0

    #@84
    .line 491
    :cond_2
    move-object/from16 v0, p0

    #@86
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@88
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get7(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@8b
    move-result-object v26

    #@8c
    .line 492
    .local v26, "windowBounds":Landroid/graphics/Region;
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    #@90
    move-object/from16 v20, v0

    #@92
    .line 493
    .local v20, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v28

    #@94
    move-object/from16 v1, v20

    #@96
    invoke-static {v0, v1}, Lcom/android/server/wm/AccessibilityController;->-wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    #@99
    .line 494
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    #@9d
    move-object/from16 v27, v0

    #@9f
    .line 496
    .local v27, "windowFrame":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    #@a1
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@a3
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@a6
    move-result-object v3

    #@a7
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@a9
    move-object/from16 v0, v28

    #@ab
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@ad
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    #@af
    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    #@b2
    move-result v3

    #@b3
    if-eqz v3, :cond_5

    #@b5
    .line 497
    move-object/from16 v0, v28

    #@b7
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b9
    move-object/from16 v0, v27

    #@bb
    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@be
    .line 498
    move-object/from16 v0, v27

    #@c0
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@c2
    neg-float v3, v3

    #@c3
    move-object/from16 v0, v27

    #@c5
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@c7
    neg-float v4, v4

    #@c8
    move-object/from16 v0, v27

    #@ca
    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    #@cd
    .line 499
    move-object/from16 v0, v20

    #@cf
    move-object/from16 v1, v27

    #@d1
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@d4
    .line 500
    move-object/from16 v0, v27

    #@d6
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@d8
    float-to-int v3, v3

    #@d9
    move-object/from16 v0, v27

    #@db
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@dd
    float-to-int v4, v4

    #@de
    .line 501
    move-object/from16 v0, v27

    #@e0
    iget v7, v0, Landroid/graphics/RectF;->right:F

    #@e2
    float-to-int v7, v7

    #@e3
    move-object/from16 v0, v27

    #@e5
    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    #@e7
    float-to-int v8, v8

    #@e8
    .line 500
    move-object/from16 v0, v26

    #@ea
    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    #@ed
    .line 502
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@ef
    move-object/from16 v0, v19

    #@f1
    move-object/from16 v1, v26

    #@f3
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@f6
    .line 503
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@f8
    move-object/from16 v0, v19

    #@fa
    invoke-virtual {v0, v14, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@fd
    .line 519
    :goto_1
    move-object/from16 v0, p0

    #@ff
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@101
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get7(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@104
    move-result-object v2

    #@105
    .line 520
    .local v2, "accountedBounds":Landroid/graphics/Region;
    move-object/from16 v0, v19

    #@107
    invoke-virtual {v2, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@10a
    .line 521
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@10c
    move-object/from16 v0, v21

    #@10e
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@111
    .line 522
    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@113
    const/4 v3, 0x0

    #@114
    const/4 v4, 0x0

    #@115
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    #@118
    .line 524
    invoke-virtual {v2}, Landroid/graphics/Region;->isRect()Z

    #@11b
    move-result v3

    #@11c
    if-eqz v3, :cond_1

    #@11e
    .line 525
    move-object/from16 v0, p0

    #@120
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@122
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get5(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    #@125
    move-result-object v13

    #@126
    .line 526
    .local v13, "accountedFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v13}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@129
    .line 527
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    #@12c
    move-result v3

    #@12d
    if-ne v3, v5, :cond_1

    #@12f
    .line 528
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    #@132
    move-result v3

    #@133
    if-ne v3, v6, :cond_1

    #@135
    .line 534
    .end local v2    # "accountedBounds":Landroid/graphics/Region;
    .end local v13    # "accountedFrame":Landroid/graphics/Rect;
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    .end local v26    # "windowBounds":Landroid/graphics/Region;
    .end local v27    # "windowFrame":Landroid/graphics/RectF;
    .end local v28    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    #@138
    .line 536
    move-object/from16 v0, p0

    #@13a
    iget v8, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@13c
    move-object/from16 v0, p0

    #@13e
    iget v9, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@140
    .line 537
    move-object/from16 v0, p0

    #@142
    iget v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@144
    sub-int v10, v5, v3

    #@146
    move-object/from16 v0, p0

    #@148
    iget v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@14a
    sub-int v11, v6, v3

    #@14c
    .line 538
    sget-object v12, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@14e
    move-object/from16 v7, v19

    #@150
    .line 536
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    #@153
    .line 540
    move-object/from16 v0, p0

    #@155
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    #@157
    move-object/from16 v0, v19

    #@159
    invoke-virtual {v3, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    #@15c
    move-result v3

    #@15d
    if-nez v3, :cond_4

    #@15f
    .line 541
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    #@162
    move-result-object v15

    #@163
    .line 542
    .local v15, "bounds":Landroid/graphics/Region;
    move-object/from16 v0, v19

    #@165
    invoke-virtual {v15, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@168
    .line 543
    move-object/from16 v0, p0

    #@16a
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@16c
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    #@16f
    move-result-object v3

    #@170
    const/4 v4, 0x1

    #@171
    invoke-virtual {v3, v4, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@174
    move-result-object v3

    #@175
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@178
    .line 546
    move-object/from16 v0, p0

    #@17a
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@17c
    move-object/from16 v0, v19

    #@17e
    invoke-virtual {v3, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setBounds(Landroid/graphics/Region;)V

    #@181
    .line 547
    move-object/from16 v0, p0

    #@183
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@185
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get5(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    #@188
    move-result-object v16

    #@189
    .line 548
    .local v16, "dirtyRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@18b
    iget-boolean v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    #@18d
    if-eqz v3, :cond_6

    #@18f
    .line 549
    const/4 v3, 0x0

    #@190
    move-object/from16 v0, p0

    #@192
    iput-boolean v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    #@194
    .line 550
    move-object/from16 v0, p0

    #@196
    iget v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@198
    move-object/from16 v0, p0

    #@19a
    iget v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@19c
    .line 551
    move-object/from16 v0, p0

    #@19e
    iget v7, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@1a0
    sub-int v7, v5, v7

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    iget v8, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@1a6
    sub-int v8, v6, v8

    #@1a8
    .line 550
    move-object/from16 v0, v16

    #@1aa
    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    #@1ad
    .line 552
    move-object/from16 v0, p0

    #@1af
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@1b1
    move-object/from16 v0, v16

    #@1b3
    invoke-virtual {v3, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    #@1b6
    .line 562
    :goto_2
    move-object/from16 v0, p0

    #@1b8
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    #@1ba
    move-object/from16 v0, v19

    #@1bc
    invoke-virtual {v3, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@1bf
    .line 461
    .end local v15    # "bounds":Landroid/graphics/Region;
    .end local v16    # "dirtyRect":Landroid/graphics/Rect;
    :cond_4
    return-void

    #@1c0
    .line 505
    .restart local v20    # "matrix":Landroid/graphics/Matrix;
    .restart local v26    # "windowBounds":Landroid/graphics/Region;
    .restart local v27    # "windowFrame":Landroid/graphics/RectF;
    .restart local v28    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_5
    move-object/from16 v0, p0

    #@1c2
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@1c4
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get8(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@1c7
    move-result-object v23

    #@1c8
    .line 506
    .local v23, "touchableRegion":Landroid/graphics/Region;
    move-object/from16 v0, v28

    #@1ca
    move-object/from16 v1, v23

    #@1cc
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@1cf
    .line 507
    move-object/from16 v0, p0

    #@1d1
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@1d3
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get5(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    #@1d6
    move-result-object v22

    #@1d7
    .line 508
    .local v22, "touchableFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v23

    #@1d9
    move-object/from16 v1, v22

    #@1db
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@1de
    .line 509
    move-object/from16 v0, v27

    #@1e0
    move-object/from16 v1, v22

    #@1e2
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@1e5
    .line 510
    move-object/from16 v0, v28

    #@1e7
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@1e9
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@1eb
    neg-int v3, v3

    #@1ec
    int-to-float v3, v3

    #@1ed
    move-object/from16 v0, v28

    #@1ef
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@1f1
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@1f3
    neg-int v4, v4

    #@1f4
    int-to-float v4, v4

    #@1f5
    move-object/from16 v0, v27

    #@1f7
    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    #@1fa
    .line 511
    move-object/from16 v0, v20

    #@1fc
    move-object/from16 v1, v27

    #@1fe
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@201
    .line 512
    move-object/from16 v0, v27

    #@203
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@205
    float-to-int v3, v3

    #@206
    move-object/from16 v0, v27

    #@208
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@20a
    float-to-int v4, v4

    #@20b
    .line 513
    move-object/from16 v0, v27

    #@20d
    iget v7, v0, Landroid/graphics/RectF;->right:F

    #@20f
    float-to-int v7, v7

    #@210
    move-object/from16 v0, v27

    #@212
    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    #@214
    float-to-int v8, v8

    #@215
    .line 512
    move-object/from16 v0, v26

    #@217
    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    #@21a
    .line 514
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@21c
    move-object/from16 v0, v21

    #@21e
    move-object/from16 v1, v26

    #@220
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@223
    .line 515
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@225
    move-object/from16 v0, v26

    #@227
    move-object/from16 v1, v19

    #@229
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@22c
    .line 516
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@22e
    move-object/from16 v0, v26

    #@230
    invoke-virtual {v14, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@233
    goto/16 :goto_1

    #@235
    .line 554
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    .end local v22    # "touchableFrame":Landroid/graphics/Rect;
    .end local v23    # "touchableRegion":Landroid/graphics/Region;
    .end local v26    # "windowBounds":Landroid/graphics/Region;
    .end local v27    # "windowFrame":Landroid/graphics/RectF;
    .end local v28    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v15    # "bounds":Landroid/graphics/Region;
    .restart local v16    # "dirtyRect":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    #@237
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@239
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get8(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@23c
    move-result-object v17

    #@23d
    .line 555
    .local v17, "dirtyRegion":Landroid/graphics/Region;
    move-object/from16 v0, v17

    #@23f
    move-object/from16 v1, v19

    #@241
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@244
    .line 556
    move-object/from16 v0, p0

    #@246
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    #@248
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@24a
    move-object/from16 v0, v17

    #@24c
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@24f
    .line 557
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@251
    move-object/from16 v0, v17

    #@253
    move-object/from16 v1, v21

    #@255
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@258
    .line 558
    move-object/from16 v0, v17

    #@25a
    move-object/from16 v1, v16

    #@25c
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@25f
    .line 559
    move-object/from16 v0, p0

    #@261
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@263
    move-object/from16 v0, v16

    #@265
    invoke-virtual {v3, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    #@268
    goto/16 :goto_2
.end method

.method public setMagnifiedRegionBorderShownLocked(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 584
    if-eqz p1, :cond_0

    #@3
    .line 585
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    #@6
    .line 586
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    #@8
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Region;->set(IIII)Z

    #@b
    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@d
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setShown(ZZ)V

    #@10
    .line 583
    return-void
.end method

.method public updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 448
    if-eqz p1, :cond_1

    #@2
    .line 449
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    #@4
    iget v1, p1, Landroid/view/MagnificationSpec;->scale:F

    #@6
    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    #@8
    iget v3, p1, Landroid/view/MagnificationSpec;->offsetY:F

    #@a
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    #@d
    .line 455
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@f
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    #@12
    move-result-object v0

    #@13
    .line 456
    const/4 v1, 0x5

    #@14
    .line 455
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 457
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    #@1d
    move-result v0

    #@1e
    const/4 v1, 0x1

    #@1f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    #@22
    .line 447
    :cond_0
    return-void

    #@23
    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    #@25
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    #@28
    goto :goto_0
.end method
