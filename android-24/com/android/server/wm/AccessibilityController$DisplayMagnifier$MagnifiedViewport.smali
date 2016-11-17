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

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mOldMagnificationRegion:Landroid/graphics/Region;

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
    .line 444
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 419
    new-instance v1, Landroid/util/SparseArray;

    #@7
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@a
    .line 418
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempWindowStates:Landroid/util/SparseArray;

    #@c
    .line 421
    new-instance v1, Landroid/graphics/RectF;

    #@e
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    #@11
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    #@13
    .line 423
    new-instance v1, Landroid/graphics/Point;

    #@15
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@18
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    #@1a
    .line 425
    new-instance v1, Landroid/graphics/Matrix;

    #@1c
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@1f
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    #@21
    .line 427
    new-instance v1, Landroid/graphics/Region;

    #@23
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    #@26
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@28
    .line 428
    new-instance v1, Landroid/graphics/Region;

    #@2a
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    #@2d
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    #@2f
    .line 432
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    #@35
    .line 445
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
    .line 446
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4b
    move-result-object v1

    #@4c
    .line 447
    const v2, 0x105008e

    #@4f
    .line 446
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    #@52
    move-result v1

    #@53
    iput v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    #@55
    .line 448
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
    .line 449
    iget v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    #@64
    float-to-int v1, v1

    #@65
    div-int/lit8 v1, v1, 0x2

    #@67
    iput v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@69
    .line 450
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
    .line 452
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
    .line 453
    new-instance v1, Landroid/graphics/Path;

    #@88
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    #@8b
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    #@8d
    .line 454
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
    .line 455
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    #@9a
    iget v1, v1, Landroid/graphics/Point;->x:I

    #@9c
    div-int/lit8 v0, v1, 0x2

    #@9e
    .line 456
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
    .line 461
    .end local v0    # "centerXY":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    #@ab
    .line 444
    return-void

    #@ac
    .line 458
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
    .line 640
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
    .line 642
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@d
    move-result-object v3

    #@e
    .line 643
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@11
    move-result v2

    #@12
    .line 644
    .local v2, "windowCount":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@15
    .line 645
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@1b
    .line 646
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_0

    #@21
    .line 647
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@23
    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    #@25
    if-eqz v5, :cond_1

    #@27
    .line 644
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 648
    :cond_1
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    #@2c
    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2f
    goto :goto_1

    #@30
    .line 639
    .end local v4    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method


# virtual methods
.method public destroyWindow()V
    .locals 1

    #@0
    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->releaseSurface()V

    #@5
    .line 635
    return-void
.end method

.method public drawWindowIfNeededLocked()V
    .locals 1

    #@0
    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    #@3
    .line 632
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->drawIfNeeded()V

    #@8
    .line 630
    return-void
.end method

.method public getMagnificationRegionLocked(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "outMagnificationRegion"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@5
    .line 464
    return-void
.end method

.method public getMagnificationSpecLocked()Landroid/view/MagnificationSpec;
    .locals 1

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    return-object v0
.end method

.method public getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    .line 616
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@4
    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@7
    .line 617
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
    .line 618
    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    #@14
    const/high16 v2, 0x3f800000    # 1.0f

    #@16
    div-float v1, v2, v1

    #@18
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    #@1b
    .line 614
    return-void
.end method

.method public isMagnifyingLocked()Z
    .locals 2

    #@0
    .prologue
    .line 622
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
    .line 594
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 595
    invoke-virtual {p0, v4, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    #@a
    .line 596
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@c
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get3(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)J

    #@f
    move-result-wide v4

    #@10
    long-to-float v3, v4

    #@11
    .line 597
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
    .line 596
    mul-float/2addr v3, v4

    #@1c
    float-to-long v0, v3

    #@1d
    .line 598
    .local v0, "delay":J
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@1f
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    #@22
    move-result-object v3

    #@23
    .line 599
    const/4 v4, 0x5

    #@24
    .line 598
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@27
    move-result-object v2

    #@28
    .line 600
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2a
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@31
    .line 602
    .end local v0    # "delay":J
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    #@34
    .line 603
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@36
    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->updateSize()V

    #@39
    .line 589
    return-void
.end method

.method public recomputeBoundsLocked()V
    .locals 30

    #@0
    .prologue
    .line 483
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
    .line 484
    move-object/from16 v0, p0

    #@11
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    #@13
    iget v5, v3, Landroid/graphics/Point;->x:I

    #@15
    .line 485
    .local v5, "screenWidth":I
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    #@19
    iget v6, v3, Landroid/graphics/Point;->y:I

    #@1b
    .line 487
    .local v6, "screenHeight":I
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@1f
    const/4 v4, 0x0

    #@20
    const/4 v7, 0x0

    #@21
    const/4 v8, 0x0

    #@22
    const/4 v9, 0x0

    #@23
    invoke-virtual {v3, v4, v7, v8, v9}, Landroid/graphics/Region;->set(IIII)Z

    #@26
    .line 488
    move-object/from16 v0, p0

    #@28
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2a
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get6(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@2d
    move-result-object v15

    #@2e
    .line 489
    .local v15, "availableBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-virtual {v15, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    #@33
    .line 491
    move-object/from16 v0, p0

    #@35
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    #@37
    if-eqz v3, :cond_0

    #@39
    .line 492
    move-object/from16 v0, p0

    #@3b
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    #@3d
    invoke-virtual {v15, v3, v15}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    #@40
    .line 495
    :cond_0
    move-object/from16 v0, p0

    #@42
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@44
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get9(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@47
    move-result-object v21

    #@48
    .line 496
    .local v21, "nonMagnifiedBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    #@49
    const/4 v4, 0x0

    #@4a
    const/4 v7, 0x0

    #@4b
    const/4 v8, 0x0

    #@4c
    move-object/from16 v0, v21

    #@4e
    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    #@51
    .line 498
    move-object/from16 v0, p0

    #@53
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempWindowStates:Landroid/util/SparseArray;

    #@55
    move-object/from16 v26, v0

    #@57
    .line 499
    .local v26, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->clear()V

    #@5a
    .line 500
    move-object/from16 v0, p0

    #@5c
    move-object/from16 v1, v26

    #@5e
    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->populateWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    #@61
    .line 502
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    #@64
    move-result v25

    #@65
    .line 503
    .local v25, "visibleWindowCount":I
    add-int/lit8 v18, v25, -0x1

    #@67
    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_3

    #@69
    .line 504
    move-object/from16 v0, v26

    #@6b
    move/from16 v1, v18

    #@6d
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@70
    move-result-object v29

    #@71
    check-cast v29, Lcom/android/server/wm/WindowState;

    #@73
    .line 505
    .local v29, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v29

    #@75
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@77
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@79
    const/16 v4, 0x7eb

    #@7b
    if-ne v3, v4, :cond_2

    #@7d
    .line 503
    :cond_1
    add-int/lit8 v18, v18, -0x1

    #@7f
    goto :goto_0

    #@80
    .line 511
    :cond_2
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    #@84
    move-object/from16 v20, v0

    #@86
    .line 512
    .local v20, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v29

    #@88
    move-object/from16 v1, v20

    #@8a
    invoke-static {v0, v1}, Lcom/android/server/wm/AccessibilityController;->-wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    #@8d
    .line 513
    move-object/from16 v0, p0

    #@8f
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@91
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get8(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@94
    move-result-object v24

    #@95
    .line 514
    .local v24, "touchableRegion":Landroid/graphics/Region;
    move-object/from16 v0, v29

    #@97
    move-object/from16 v1, v24

    #@99
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@9c
    .line 515
    move-object/from16 v0, p0

    #@9e
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@a0
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get5(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    #@a3
    move-result-object v23

    #@a4
    .line 516
    .local v23, "touchableFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v24

    #@a6
    move-object/from16 v1, v23

    #@a8
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@ab
    .line 517
    move-object/from16 v0, p0

    #@ad
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    #@af
    move-object/from16 v28, v0

    #@b1
    .line 518
    .local v28, "windowFrame":Landroid/graphics/RectF;
    move-object/from16 v0, v28

    #@b3
    move-object/from16 v1, v23

    #@b5
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@b8
    .line 519
    move-object/from16 v0, v29

    #@ba
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@bc
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@be
    neg-int v3, v3

    #@bf
    int-to-float v3, v3

    #@c0
    move-object/from16 v0, v29

    #@c2
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@c4
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@c6
    neg-int v4, v4

    #@c7
    int-to-float v4, v4

    #@c8
    move-object/from16 v0, v28

    #@ca
    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    #@cd
    .line 520
    move-object/from16 v0, v20

    #@cf
    move-object/from16 v1, v28

    #@d1
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@d4
    .line 521
    move-object/from16 v0, p0

    #@d6
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@d8
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get7(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@db
    move-result-object v27

    #@dc
    .line 522
    .local v27, "windowBounds":Landroid/graphics/Region;
    move-object/from16 v0, v28

    #@de
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@e0
    float-to-int v3, v3

    #@e1
    move-object/from16 v0, v28

    #@e3
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@e5
    float-to-int v4, v4

    #@e6
    .line 523
    move-object/from16 v0, v28

    #@e8
    iget v7, v0, Landroid/graphics/RectF;->right:F

    #@ea
    float-to-int v7, v7

    #@eb
    move-object/from16 v0, v28

    #@ed
    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    #@ef
    float-to-int v8, v8

    #@f0
    .line 522
    move-object/from16 v0, v27

    #@f2
    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    #@f5
    .line 525
    move-object/from16 v0, p0

    #@f7
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@f9
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get8(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@fc
    move-result-object v22

    #@fd
    .line 526
    .local v22, "portionOfWindowAlreadyAccountedFor":Landroid/graphics/Region;
    move-object/from16 v0, p0

    #@ff
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@101
    move-object/from16 v0, v22

    #@103
    invoke-virtual {v0, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@106
    .line 527
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@108
    move-object/from16 v0, v22

    #@10a
    move-object/from16 v1, v21

    #@10c
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@10f
    .line 528
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@111
    move-object/from16 v0, v27

    #@113
    move-object/from16 v1, v22

    #@115
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@118
    .line 530
    move-object/from16 v0, p0

    #@11a
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@11c
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@11f
    move-result-object v3

    #@120
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@122
    move-object/from16 v0, v29

    #@124
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@126
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    #@128
    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    #@12b
    move-result v3

    #@12c
    if-eqz v3, :cond_5

    #@12e
    .line 531
    move-object/from16 v0, p0

    #@130
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@132
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@134
    move-object/from16 v0, v27

    #@136
    invoke-virtual {v3, v0, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@139
    .line 532
    move-object/from16 v0, p0

    #@13b
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@13d
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@13f
    invoke-virtual {v3, v15, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@142
    .line 539
    :goto_1
    move-object/from16 v0, p0

    #@144
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@146
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get7(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@149
    move-result-object v2

    #@14a
    .line 540
    .local v2, "accountedBounds":Landroid/graphics/Region;
    move-object/from16 v0, p0

    #@14c
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@14e
    invoke-virtual {v2, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@151
    .line 541
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@153
    move-object/from16 v0, v21

    #@155
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@158
    .line 542
    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@15a
    const/4 v3, 0x0

    #@15b
    const/4 v4, 0x0

    #@15c
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    #@15f
    .line 544
    invoke-virtual {v2}, Landroid/graphics/Region;->isRect()Z

    #@162
    move-result v3

    #@163
    if-eqz v3, :cond_1

    #@165
    .line 545
    move-object/from16 v0, p0

    #@167
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@169
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get5(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    #@16c
    move-result-object v13

    #@16d
    .line 546
    .local v13, "accountedFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v13}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@170
    .line 547
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    #@173
    move-result v3

    #@174
    if-ne v3, v5, :cond_1

    #@176
    .line 548
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    #@179
    move-result v3

    #@17a
    if-ne v3, v6, :cond_1

    #@17c
    .line 554
    .end local v2    # "accountedBounds":Landroid/graphics/Region;
    .end local v13    # "accountedFrame":Landroid/graphics/Rect;
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    .end local v22    # "portionOfWindowAlreadyAccountedFor":Landroid/graphics/Region;
    .end local v23    # "touchableFrame":Landroid/graphics/Rect;
    .end local v24    # "touchableRegion":Landroid/graphics/Region;
    .end local v27    # "windowBounds":Landroid/graphics/Region;
    .end local v28    # "windowFrame":Landroid/graphics/RectF;
    .end local v29    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_3
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->clear()V

    #@17f
    .line 556
    move-object/from16 v0, p0

    #@181
    iget-object v7, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@183
    move-object/from16 v0, p0

    #@185
    iget v8, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@187
    move-object/from16 v0, p0

    #@189
    iget v9, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@18b
    .line 557
    move-object/from16 v0, p0

    #@18d
    iget v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@18f
    sub-int v10, v5, v3

    #@191
    move-object/from16 v0, p0

    #@193
    iget v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@195
    sub-int v11, v6, v3

    #@197
    .line 558
    sget-object v12, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@199
    .line 556
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    #@19c
    .line 561
    move-object/from16 v0, p0

    #@19e
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@1a4
    invoke-virtual {v3, v4}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    #@1a7
    move-result v3

    #@1a8
    if-eqz v3, :cond_6

    #@1aa
    const/16 v19, 0x0

    #@1ac
    .line 562
    .local v19, "magnifiedChanged":Z
    :goto_2
    if-eqz v19, :cond_4

    #@1ae
    .line 563
    move-object/from16 v0, p0

    #@1b0
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@1b6
    invoke-virtual {v3, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setBounds(Landroid/graphics/Region;)V

    #@1b9
    .line 564
    move-object/from16 v0, p0

    #@1bb
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@1bd
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get5(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    #@1c0
    move-result-object v16

    #@1c1
    .line 565
    .local v16, "dirtyRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@1c3
    iget-boolean v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    #@1c5
    if-eqz v3, :cond_7

    #@1c7
    .line 566
    const/4 v3, 0x0

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    iput-boolean v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    #@1cc
    .line 567
    move-object/from16 v0, p0

    #@1ce
    iget v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    iget v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@1d4
    .line 568
    move-object/from16 v0, p0

    #@1d6
    iget v7, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@1d8
    sub-int v7, v5, v7

    #@1da
    .line 569
    move-object/from16 v0, p0

    #@1dc
    iget v8, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    #@1de
    sub-int v8, v6, v8

    #@1e0
    .line 567
    move-object/from16 v0, v16

    #@1e2
    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    #@1e5
    .line 570
    move-object/from16 v0, p0

    #@1e7
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@1e9
    move-object/from16 v0, v16

    #@1eb
    invoke-virtual {v3, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    #@1ee
    .line 580
    :goto_3
    move-object/from16 v0, p0

    #@1f0
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    #@1f2
    move-object/from16 v0, p0

    #@1f4
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@1f6
    invoke-virtual {v3, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@1f9
    .line 581
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@1fc
    move-result-object v14

    #@1fd
    .line 582
    .local v14, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    #@1ff
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@201
    invoke-static {v3}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    #@204
    move-result-object v3

    #@205
    iput-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@207
    .line 583
    move-object/from16 v0, p0

    #@209
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@20b
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    #@20e
    move-result-object v3

    #@20f
    .line 584
    const/4 v4, 0x1

    #@210
    .line 583
    invoke-virtual {v3, v4, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@213
    move-result-object v3

    #@214
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@217
    .line 482
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v16    # "dirtyRect":Landroid/graphics/Rect;
    :cond_4
    return-void

    #@218
    .line 534
    .end local v19    # "magnifiedChanged":Z
    .restart local v20    # "matrix":Landroid/graphics/Matrix;
    .restart local v22    # "portionOfWindowAlreadyAccountedFor":Landroid/graphics/Region;
    .restart local v23    # "touchableFrame":Landroid/graphics/Rect;
    .restart local v24    # "touchableRegion":Landroid/graphics/Region;
    .restart local v27    # "windowBounds":Landroid/graphics/Region;
    .restart local v28    # "windowFrame":Landroid/graphics/RectF;
    .restart local v29    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_5
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@21a
    move-object/from16 v0, v21

    #@21c
    move-object/from16 v1, v27

    #@21e
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@221
    .line 535
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@223
    move-object/from16 v0, v27

    #@225
    invoke-virtual {v15, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@228
    goto/16 :goto_1

    #@22a
    .line 561
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    .end local v22    # "portionOfWindowAlreadyAccountedFor":Landroid/graphics/Region;
    .end local v23    # "touchableFrame":Landroid/graphics/Rect;
    .end local v24    # "touchableRegion":Landroid/graphics/Region;
    .end local v27    # "windowBounds":Landroid/graphics/Region;
    .end local v28    # "windowFrame":Landroid/graphics/RectF;
    .end local v29    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_6
    const/16 v19, 0x1

    #@22c
    goto :goto_2

    #@22d
    .line 572
    .restart local v16    # "dirtyRect":Landroid/graphics/Rect;
    .restart local v19    # "magnifiedChanged":Z
    :cond_7
    move-object/from16 v0, p0

    #@22f
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@231
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get8(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    #@234
    move-result-object v17

    #@235
    .line 573
    .local v17, "dirtyRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    #@237
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    #@239
    move-object/from16 v0, v17

    #@23b
    invoke-virtual {v0, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@23e
    .line 574
    move-object/from16 v0, p0

    #@240
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    #@242
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@244
    move-object/from16 v0, v17

    #@246
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@249
    .line 575
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@24b
    move-object/from16 v0, v17

    #@24d
    move-object/from16 v1, v21

    #@24f
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@252
    .line 576
    move-object/from16 v0, v17

    #@254
    move-object/from16 v1, v16

    #@256
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@259
    .line 577
    move-object/from16 v0, p0

    #@25b
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@25d
    move-object/from16 v0, v16

    #@25f
    invoke-virtual {v3, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    #@262
    goto :goto_3
.end method

.method public setMagnifiedRegionBorderShownLocked(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 607
    if-eqz p1, :cond_0

    #@3
    .line 608
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    #@6
    .line 609
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    #@8
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Region;->set(IIII)Z

    #@b
    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@d
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setShown(ZZ)V

    #@10
    .line 606
    return-void
.end method

.method public updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 469
    if-eqz p1, :cond_1

    #@2
    .line 470
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
    .line 476
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@f
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    #@12
    move-result-object v0

    #@13
    .line 477
    const/4 v1, 0x5

    #@14
    .line 476
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 478
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    #@1d
    move-result v0

    #@1e
    const/4 v1, 0x1

    #@1f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    #@22
    .line 468
    :cond_0
    return-void

    #@23
    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    #@25
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    #@28
    goto :goto_0
.end method
