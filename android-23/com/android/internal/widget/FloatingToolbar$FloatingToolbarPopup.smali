.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarPopup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$1;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$2;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$4;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;
    }
.end annotation


# static fields
.field public static final OVERFLOW_DIRECTION_DOWN:I = 0x1

.field public static final OVERFLOW_DIRECTION_UP:I


# instance fields
.field private final mCloseOverflow:Ljava/lang/Runnable;

.field private final mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private final mContentContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private final mDismissAnimation:Landroid/animation/AnimatorSet;

.field private mDismissed:Z

.field private mHidden:Z

.field private final mHideAnimation:Landroid/animation/AnimatorSet;

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

.field private final mMarginHorizontal:I

.field private final mMarginVertical:I

.field private final mOnOverflowClosed:Landroid/view/animation/Animation$AnimationListener;

.field private final mOnOverflowOpened:Landroid/view/animation/Animation$AnimationListener;

.field private final mOpenOverflow:Ljava/lang/Runnable;

.field private final mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private mOverflowDirection:I

.field private mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

.field private final mParent:Landroid/view/View;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private final mTmpCoords:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchableRegion:Landroid/graphics/Region;

.field private final mViewPortOnScreen:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Region;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isRTL()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->viewPortHasChanged()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->closeOverflow()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->openOverflow()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setMainPanelAsContent()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setOverflowPanelAsContent()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 294
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$1;

    #@6
    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@9
    .line 293
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnOverflowOpened:Landroid/view/animation/Animation$AnimationListener;

    #@b
    .line 308
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$2;

    #@d
    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@10
    .line 307
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnOverflowClosed:Landroid/view/animation/Animation$AnimationListener;

    #@12
    .line 324
    new-instance v0, Landroid/view/animation/AnimationSet;

    #@14
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@17
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@19
    .line 325
    new-instance v0, Landroid/view/animation/AnimationSet;

    #@1b
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@20
    .line 327
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;

    #@22
    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@25
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflow:Ljava/lang/Runnable;

    #@27
    .line 333
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$4;

    #@29
    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$4;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@2c
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflow:Ljava/lang/Runnable;

    #@2e
    .line 340
    new-instance v0, Landroid/graphics/Rect;

    #@30
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@33
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@35
    .line 341
    new-instance v0, Landroid/graphics/Point;

    #@37
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@3a
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    #@3c
    .line 342
    const/4 v0, 0x2

    #@3d
    new-array v0, v0, [I

    #@3f
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@41
    .line 343
    new-instance v0, Landroid/graphics/Rect;

    #@43
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@46
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpRect:Landroid/graphics/Rect;

    #@48
    .line 345
    new-instance v0, Landroid/graphics/Region;

    #@4a
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@4d
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    #@4f
    .line 347
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;

    #@51
    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@54
    .line 346
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@56
    .line 358
    iput-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    #@58
    .line 372
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    move-result-object v0

    #@5c
    check-cast v0, Landroid/view/View;

    #@5e
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@60
    .line 373
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Landroid/content/Context;

    #@66
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@68
    .line 374
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap2(Landroid/content/Context;)Landroid/view/ViewGroup;

    #@6b
    move-result-object v0

    #@6c
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@6e
    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@70
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->-wrap4(Landroid/view/View;)Landroid/widget/PopupWindow;

    #@73
    move-result-object v0

    #@74
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@76
    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@78
    .line 379
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;

    #@7a
    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@7d
    .line 378
    const/16 v2, 0x96

    #@7f
    .line 376
    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap1(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    #@82
    move-result-object v0

    #@83
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    #@85
    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@87
    .line 389
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;

    #@89
    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@8c
    .line 388
    const/4 v2, 0x0

    #@8d
    .line 386
    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap1(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    #@90
    move-result-object v0

    #@91
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    #@93
    .line 395
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@96
    move-result-object v0

    #@97
    .line 396
    const v1, 0x10500a0

    #@9a
    .line 395
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@9d
    move-result v0

    #@9e
    iput v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    #@a0
    .line 397
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@a3
    move-result-object v0

    #@a4
    .line 398
    const v1, 0x10500a1

    #@a7
    .line 397
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@aa
    move-result v0

    #@ab
    iput v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@ad
    .line 371
    return-void
.end method

.method private cancelDismissAndHideAnimations()V
    .locals 1

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    #@2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    #@5
    .line 667
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    #@7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    #@a
    .line 665
    return-void
.end method

.method private cancelOverflowAnimations()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 671
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@3
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 672
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@b
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 680
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@13
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 681
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@1b
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 670
    :cond_1
    :goto_1
    return-void

    #@22
    .line 676
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@24
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@27
    .line 677
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@29
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    #@2c
    .line 678
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnOverflowOpened:Landroid/view/animation/Animation$AnimationListener;

    #@2e
    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    #@31
    goto :goto_0

    #@32
    .line 685
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@34
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@37
    .line 686
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@39
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    #@3c
    .line 687
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnOverflowClosed:Landroid/view/animation/Animation$AnimationListener;

    #@3e
    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    #@41
    goto :goto_1
.end method

.method private closeOverflow()V
    .locals 18

    #@0
    .prologue
    .line 757
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@4
    if-eqz v3, :cond_0

    #@6
    const/4 v3, 0x1

    #@7
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@a
    .line 758
    move-object/from16 v0, p0

    #@c
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@e
    if-eqz v3, :cond_1

    #@10
    const/4 v3, 0x1

    #@11
    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@14
    .line 760
    move-object/from16 v0, p0

    #@16
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@18
    const/4 v9, 0x1

    #@19
    invoke-virtual {v3, v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->fadeOut(Z)V

    #@1c
    .line 761
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@20
    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->measure()Landroid/util/Size;

    #@23
    move-result-object v14

    #@24
    .line 762
    .local v14, "mainPanelSize":Landroid/util/Size;
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    #@27
    move-result v4

    #@28
    .line 763
    .local v4, "targetWidth":I
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    #@2b
    move-result v10

    #@2c
    .line 764
    .local v10, "targetHeight":I
    move-object/from16 v0, p0

    #@2e
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@30
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    #@33
    move-result v5

    #@34
    .line 765
    .local v5, "startWidth":I
    move-object/from16 v0, p0

    #@36
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@38
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    #@3b
    move-result v11

    #@3c
    .line 766
    .local v11, "startHeight":I
    move-object/from16 v0, p0

    #@3e
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@40
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    #@43
    move-result v3

    #@44
    move-object/from16 v0, p0

    #@46
    iget-object v9, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@48
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    #@4b
    move-result v9

    #@4c
    int-to-float v9, v9

    #@4d
    add-float v13, v3, v9

    #@4f
    .line 767
    .local v13, "bottom":F
    move-object/from16 v0, p0

    #@51
    iget v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowDirection:I

    #@53
    if-nez v3, :cond_2

    #@55
    const/4 v12, 0x1

    #@56
    .line 768
    .local v12, "morphedUpwards":Z
    :goto_2
    move-object/from16 v0, p0

    #@58
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@5a
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    #@5d
    move-result v6

    #@5e
    .line 769
    .local v6, "left":F
    move-object/from16 v0, p0

    #@60
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@62
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    #@65
    move-result v3

    #@66
    int-to-float v3, v3

    #@67
    add-float v7, v6, v3

    #@69
    .line 770
    .local v7, "right":F
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;

    #@6b
    move-object/from16 v3, p0

    #@6d
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    #@70
    .line 784
    .local v2, "widthAnimation":Landroid/view/animation/Animation;
    new-instance v8, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;

    #@72
    move-object/from16 v9, p0

    #@74
    invoke-direct/range {v8 .. v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIZF)V

    #@77
    .line 796
    .local v8, "heightAnimation":Landroid/view/animation/Animation;
    const-wide/16 v16, 0x96

    #@79
    move-wide/from16 v0, v16

    #@7b
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@7e
    .line 797
    const-wide/16 v16, 0x96

    #@80
    move-wide/from16 v0, v16

    #@82
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    #@85
    .line 798
    const-wide/16 v16, 0xd2

    #@87
    move-wide/from16 v0, v16

    #@89
    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@8c
    .line 799
    move-object/from16 v0, p0

    #@8e
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@90
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@93
    move-result-object v3

    #@94
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@97
    .line 800
    move-object/from16 v0, p0

    #@99
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v9, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnOverflowClosed:Landroid/view/animation/Animation$AnimationListener;

    #@9f
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@a2
    .line 801
    move-object/from16 v0, p0

    #@a4
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@a6
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@a9
    .line 802
    move-object/from16 v0, p0

    #@ab
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@ad
    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@b0
    .line 803
    move-object/from16 v0, p0

    #@b2
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@b4
    move-object/from16 v0, p0

    #@b6
    iget-object v9, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@b8
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    #@bb
    .line 756
    return-void

    #@bc
    .line 757
    .end local v2    # "widthAnimation":Landroid/view/animation/Animation;
    .end local v4    # "targetWidth":I
    .end local v5    # "startWidth":I
    .end local v6    # "left":F
    .end local v7    # "right":F
    .end local v8    # "heightAnimation":Landroid/view/animation/Animation;
    .end local v10    # "targetHeight":I
    .end local v11    # "startHeight":I
    .end local v12    # "morphedUpwards":Z
    .end local v13    # "bottom":F
    .end local v14    # "mainPanelSize":Landroid/util/Size;
    :cond_0
    const/4 v3, 0x0

    #@bd
    goto/16 :goto_0

    #@bf
    .line 758
    :cond_1
    const/4 v3, 0x0

    #@c0
    goto/16 :goto_1

    #@c2
    .line 767
    .restart local v4    # "targetWidth":I
    .restart local v5    # "startWidth":I
    .restart local v10    # "targetHeight":I
    .restart local v11    # "startHeight":I
    .restart local v13    # "bottom":F
    .restart local v14    # "mainPanelSize":Landroid/util/Size;
    :cond_2
    const/4 v12, 0x0

    #@c3
    .restart local v12    # "morphedUpwards":Z
    goto :goto_2
.end method

.method private getToolbarHeightWithVerticalMargin()I
    .locals 2

    #@0
    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->-wrap8(Landroid/content/Context;)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@8
    mul-int/lit8 v1, v1, 0x2

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method private getToolbarWidth(I)I
    .locals 5
    .param p1, "suggestedWidth"    # I

    #@0
    .prologue
    .line 949
    move v1, p1

    #@1
    .line 950
    .local v1, "width":I
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    #@4
    .line 951
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@6
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@9
    move-result v2

    #@a
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@c
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v3

    #@10
    .line 952
    const v4, 0x10500a0

    #@13
    .line 951
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@16
    move-result v3

    #@17
    mul-int/lit8 v3, v3, 0x2

    #@19
    sub-int v0, v2, v3

    #@1b
    .line 953
    .local v0, "maximumWidth":I
    if-gtz v1, :cond_0

    #@1d
    .line 954
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@1f
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v2

    #@23
    .line 955
    const v3, 0x105009d

    #@26
    .line 954
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@29
    move-result v1

    #@2a
    .line 957
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@2d
    move-result v2

    #@2e
    return v2
.end method

.method private isMainPanelContent()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 828
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 829
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@7
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@d
    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getView()Landroid/view/View;

    #@10
    move-result-object v2

    #@11
    if-ne v1, v2, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 828
    :cond_0
    return v0
.end method

.method private isOverflowPanelContent()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 833
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 834
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@7
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@d
    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->getView()Landroid/view/View;

    #@10
    move-result-object v2

    #@11
    if-ne v1, v2, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 833
    :cond_0
    return v0
.end method

.method private isRTL()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 998
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    #@6
    move-result v1

    #@7
    if-ne v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private openOverflow()V
    .locals 18

    #@0
    .prologue
    .line 699
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@4
    if-eqz v3, :cond_0

    #@6
    const/4 v3, 0x1

    #@7
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@a
    .line 700
    move-object/from16 v0, p0

    #@c
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@e
    if-eqz v3, :cond_1

    #@10
    const/4 v3, 0x1

    #@11
    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@14
    .line 702
    move-object/from16 v0, p0

    #@16
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@18
    const/4 v9, 0x1

    #@19
    invoke-virtual {v3, v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->fadeOut(Z)V

    #@1c
    .line 703
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@20
    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->measure()Landroid/util/Size;

    #@23
    move-result-object v14

    #@24
    .line 704
    .local v14, "overflowPanelSize":Landroid/util/Size;
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    #@27
    move-result v4

    #@28
    .line 705
    .local v4, "targetWidth":I
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    #@2b
    move-result v10

    #@2c
    .line 706
    .local v10, "targetHeight":I
    move-object/from16 v0, p0

    #@2e
    iget v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowDirection:I

    #@30
    if-nez v3, :cond_2

    #@32
    const/4 v12, 0x1

    #@33
    .line 707
    .local v12, "morphUpwards":Z
    :goto_2
    move-object/from16 v0, p0

    #@35
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@37
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    #@3a
    move-result v5

    #@3b
    .line 708
    .local v5, "startWidth":I
    move-object/from16 v0, p0

    #@3d
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@3f
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    #@42
    move-result v11

    #@43
    .line 709
    .local v11, "startHeight":I
    move-object/from16 v0, p0

    #@45
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@47
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    #@4a
    move-result v13

    #@4b
    .line 710
    .local v13, "startY":F
    move-object/from16 v0, p0

    #@4d
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@4f
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    #@52
    move-result v6

    #@53
    .line 711
    .local v6, "left":F
    move-object/from16 v0, p0

    #@55
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@57
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    #@5a
    move-result v3

    #@5b
    int-to-float v3, v3

    #@5c
    add-float v7, v6, v3

    #@5e
    .line 712
    .local v7, "right":F
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$8;

    #@60
    move-object/from16 v3, p0

    #@62
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$8;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    #@65
    .line 726
    .local v2, "widthAnimation":Landroid/view/animation/Animation;
    new-instance v8, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;

    #@67
    move-object/from16 v9, p0

    #@69
    invoke-direct/range {v8 .. v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIZF)V

    #@6c
    .line 739
    .local v8, "heightAnimation":Landroid/view/animation/Animation;
    const-wide/16 v16, 0xf0

    #@6e
    move-wide/from16 v0, v16

    #@70
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@73
    .line 740
    const-wide/16 v16, 0xb4

    #@75
    move-wide/from16 v0, v16

    #@77
    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@7a
    .line 741
    const-wide/16 v16, 0x3c

    #@7c
    move-wide/from16 v0, v16

    #@7e
    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    #@81
    .line 742
    move-object/from16 v0, p0

    #@83
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@85
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@88
    move-result-object v3

    #@89
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@8c
    .line 743
    move-object/from16 v0, p0

    #@8e
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@90
    move-object/from16 v0, p0

    #@92
    iget-object v9, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnOverflowOpened:Landroid/view/animation/Animation$AnimationListener;

    #@94
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@97
    .line 744
    move-object/from16 v0, p0

    #@99
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@9b
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@9e
    .line 745
    move-object/from16 v0, p0

    #@a0
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@a2
    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@a5
    .line 746
    move-object/from16 v0, p0

    #@a7
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@a9
    move-object/from16 v0, p0

    #@ab
    iget-object v9, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@ad
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    #@b0
    .line 698
    return-void

    #@b1
    .line 699
    .end local v2    # "widthAnimation":Landroid/view/animation/Animation;
    .end local v4    # "targetWidth":I
    .end local v5    # "startWidth":I
    .end local v6    # "left":F
    .end local v7    # "right":F
    .end local v8    # "heightAnimation":Landroid/view/animation/Animation;
    .end local v10    # "targetHeight":I
    .end local v11    # "startHeight":I
    .end local v12    # "morphUpwards":Z
    .end local v13    # "startY":F
    .end local v14    # "overflowPanelSize":Landroid/util/Size;
    :cond_0
    const/4 v3, 0x0

    #@b2
    goto/16 :goto_0

    #@b4
    .line 700
    :cond_1
    const/4 v3, 0x0

    #@b5
    goto/16 :goto_1

    #@b7
    .line 706
    .restart local v4    # "targetWidth":I
    .restart local v10    # "targetHeight":I
    .restart local v14    # "overflowPanelSize":Landroid/util/Size;
    :cond_2
    const/4 v12, 0x0

    #@b8
    .restart local v12    # "morphUpwards":Z
    goto/16 :goto_2
.end method

.method private positionMainPanel()V
    .locals 4

    #@0
    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@2
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 874
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@7
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    #@9
    int-to-float v2, v2

    #@a
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    #@d
    .line 876
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@f
    int-to-float v0, v1

    #@10
    .line 877
    .local v0, "y":F
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowDirection:I

    #@12
    if-nez v1, :cond_0

    #@14
    .line 878
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getHeight()I

    #@17
    move-result v1

    #@18
    .line 879
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@1a
    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getView()Landroid/view/View;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@21
    move-result v2

    #@22
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@24
    add-int/2addr v2, v3

    #@25
    .line 878
    sub-int/2addr v1, v2

    #@26
    int-to-float v0, v1

    #@27
    .line 881
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@29
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setY(F)V

    #@2c
    .line 882
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    #@2f
    .line 872
    return-void
.end method

.method private positionOverflowPanel()V
    .locals 4

    #@0
    .prologue
    .line 889
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@2
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 891
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isRTL()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 892
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    #@d
    int-to-float v0, v1

    #@e
    .line 897
    .local v0, "x":F
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@10
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setX(F)V

    #@13
    .line 898
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@15
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@17
    int-to-float v2, v2

    #@18
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    #@1b
    .line 899
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    #@1e
    .line 888
    return-void

    #@1f
    .line 894
    .end local v0    # "x":F
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@21
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    #@24
    move-result v1

    #@25
    .line 895
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@27
    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->getView()Landroid/view/View;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@2e
    move-result v2

    #@2f
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    #@31
    add-int/2addr v2, v3

    #@32
    .line 894
    sub-int/2addr v1, v2

    #@33
    int-to-float v0, v1

    #@34
    .restart local v0    # "x":F
    goto :goto_0
.end method

.method private preparePopupContent()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 811
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 812
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->fadeIn(Z)V

    #@a
    .line 814
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 815
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@10
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->fadeIn(Z)V

    #@13
    .line 819
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isMainPanelContent()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 820
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->positionMainPanel()V

    #@1c
    .line 822
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isOverflowPanelContent()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 823
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->positionOverflowPanel()V

    #@25
    .line 809
    :cond_3
    return-void
.end method

.method private refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 548
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    #@3
    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    #@6
    move-result v15

    #@7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getWidth()I

    #@a
    move-result v16

    #@b
    div-int/lit8 v16, v16, 0x2

    #@d
    sub-int v13, v15, v16

    #@f
    .line 552
    .local v13, "x":I
    move-object/from16 v0, p0

    #@11
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@13
    iget v15, v15, Landroid/graphics/Rect;->right:I

    #@15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getWidth()I

    #@18
    move-result v16

    #@19
    sub-int v15, v15, v16

    #@1b
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    #@1e
    move-result v15

    #@1f
    const/16 v16, 0x0

    #@21
    move/from16 v0, v16

    #@23
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    #@26
    move-result v13

    #@27
    .line 556
    move-object/from16 v0, p1

    #@29
    iget v15, v0, Landroid/graphics/Rect;->top:I

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@2f
    move-object/from16 v16, v0

    #@31
    move-object/from16 v0, v16

    #@33
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@35
    move/from16 v16, v0

    #@37
    sub-int v1, v15, v16

    #@39
    .line 557
    .local v1, "availableHeightAboveContent":I
    move-object/from16 v0, p0

    #@3b
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@3d
    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    #@3f
    move-object/from16 v0, p1

    #@41
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@43
    move/from16 v16, v0

    #@45
    sub-int v2, v15, v16

    #@47
    .line 559
    .local v2, "availableHeightBelowContent":I
    move-object/from16 v0, p0

    #@49
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@4b
    if-nez v15, :cond_3

    #@4d
    .line 560
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getToolbarHeightWithVerticalMargin()I

    #@50
    move-result v15

    #@51
    if-lt v1, v15, :cond_0

    #@53
    .line 562
    move-object/from16 v0, p1

    #@55
    iget v15, v0, Landroid/graphics/Rect;->top:I

    #@57
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getToolbarHeightWithVerticalMargin()I

    #@5a
    move-result v16

    #@5b
    sub-int v14, v15, v16

    #@5d
    .line 629
    .local v14, "y":I
    :goto_0
    move-object/from16 v0, p0

    #@5f
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@61
    invoke-virtual {v15}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@64
    move-result-object v15

    #@65
    move-object/from16 v0, p0

    #@67
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@69
    move-object/from16 v16, v0

    #@6b
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->getLocationOnScreen([I)V

    #@6e
    .line 630
    move-object/from16 v0, p0

    #@70
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@72
    const/16 v16, 0x0

    #@74
    aget v7, v15, v16

    #@76
    .line 631
    .local v7, "rootViewLeftOnScreen":I
    move-object/from16 v0, p0

    #@78
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@7a
    const/16 v16, 0x1

    #@7c
    aget v9, v15, v16

    #@7e
    .line 632
    .local v9, "rootViewTopOnScreen":I
    move-object/from16 v0, p0

    #@80
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@82
    invoke-virtual {v15}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@85
    move-result-object v15

    #@86
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@8a
    move-object/from16 v16, v0

    #@8c
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->getLocationInWindow([I)V

    #@8f
    .line 633
    move-object/from16 v0, p0

    #@91
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@93
    const/16 v16, 0x0

    #@95
    aget v8, v15, v16

    #@97
    .line 634
    .local v8, "rootViewLeftOnWindow":I
    move-object/from16 v0, p0

    #@99
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@9b
    const/16 v16, 0x1

    #@9d
    aget v10, v15, v16

    #@9f
    .line 635
    .local v10, "rootViewTopOnWindow":I
    sub-int v11, v7, v8

    #@a1
    .line 636
    .local v11, "windowLeftOnScreen":I
    sub-int v12, v9, v10

    #@a3
    .line 637
    .local v12, "windowTopOnScreen":I
    move-object/from16 v0, p0

    #@a5
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    #@a7
    sub-int v16, v13, v11

    #@a9
    sub-int v17, v14, v12

    #@ab
    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Point;->set(II)V

    #@ae
    .line 547
    return-void

    #@af
    .line 563
    .end local v7    # "rootViewLeftOnScreen":I
    .end local v8    # "rootViewLeftOnWindow":I
    .end local v9    # "rootViewTopOnScreen":I
    .end local v10    # "rootViewTopOnWindow":I
    .end local v11    # "windowLeftOnScreen":I
    .end local v12    # "windowTopOnScreen":I
    .end local v14    # "y":I
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getToolbarHeightWithVerticalMargin()I

    #@b2
    move-result v15

    #@b3
    if-lt v2, v15, :cond_1

    #@b5
    .line 565
    move-object/from16 v0, p1

    #@b7
    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    #@b9
    .restart local v14    # "y":I
    goto :goto_0

    #@ba
    .line 566
    .end local v14    # "y":I
    :cond_1
    move-object/from16 v0, p0

    #@bc
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@be
    invoke-static {v15}, Lcom/android/internal/widget/FloatingToolbar;->-wrap8(Landroid/content/Context;)I

    #@c1
    move-result v15

    #@c2
    if-lt v2, v15, :cond_2

    #@c4
    .line 568
    move-object/from16 v0, p1

    #@c6
    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@cc
    move/from16 v16, v0

    #@ce
    sub-int v14, v15, v16

    #@d0
    .restart local v14    # "y":I
    goto :goto_0

    #@d1
    .line 572
    .end local v14    # "y":I
    :cond_2
    move-object/from16 v0, p0

    #@d3
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@d5
    iget v15, v15, Landroid/graphics/Rect;->top:I

    #@d7
    .line 573
    move-object/from16 v0, p1

    #@d9
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@db
    move/from16 v16, v0

    #@dd
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getToolbarHeightWithVerticalMargin()I

    #@e0
    move-result v17

    #@e1
    sub-int v16, v16, v17

    #@e3
    .line 571
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    #@e6
    move-result v14

    #@e7
    .restart local v14    # "y":I
    goto/16 :goto_0

    #@e9
    .line 576
    .end local v14    # "y":I
    :cond_3
    move-object/from16 v0, p0

    #@eb
    iget v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@ed
    mul-int/lit8 v5, v15, 0x2

    #@ef
    .line 577
    .local v5, "margin":I
    move-object/from16 v0, p0

    #@f1
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@f3
    invoke-virtual {v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->getMinimumHeight()I

    #@f6
    move-result v15

    #@f7
    add-int v6, v15, v5

    #@f9
    .line 578
    .local v6, "minimumOverflowHeightWithMargin":I
    move-object/from16 v0, p0

    #@fb
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@fd
    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    #@ff
    .line 579
    move-object/from16 v0, p1

    #@101
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@103
    move/from16 v16, v0

    #@105
    .line 578
    sub-int v15, v15, v16

    #@107
    .line 579
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getToolbarHeightWithVerticalMargin()I

    #@10a
    move-result v16

    #@10b
    .line 578
    add-int v3, v15, v16

    #@10d
    .line 580
    .local v3, "availableHeightThroughContentDown":I
    move-object/from16 v0, p1

    #@10f
    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    #@111
    .line 581
    move-object/from16 v0, p0

    #@113
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@115
    move-object/from16 v16, v0

    #@117
    move-object/from16 v0, v16

    #@119
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@11b
    move/from16 v16, v0

    #@11d
    .line 580
    sub-int v15, v15, v16

    #@11f
    .line 581
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getToolbarHeightWithVerticalMargin()I

    #@122
    move-result v16

    #@123
    .line 580
    add-int v4, v15, v16

    #@125
    .line 583
    .local v4, "availableHeightThroughContentUp":I
    if-lt v1, v6, :cond_4

    #@127
    .line 586
    sub-int v15, v1, v5

    #@129
    move-object/from16 v0, p0

    #@12b
    invoke-direct {v0, v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    #@12e
    .line 587
    move-object/from16 v0, p1

    #@130
    iget v15, v0, Landroid/graphics/Rect;->top:I

    #@132
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getHeight()I

    #@135
    move-result v16

    #@136
    sub-int v14, v15, v16

    #@138
    .line 588
    .restart local v14    # "y":I
    const/4 v15, 0x0

    #@139
    move-object/from16 v0, p0

    #@13b
    iput v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowDirection:I

    #@13d
    .line 619
    :goto_1
    move-object/from16 v0, p0

    #@13f
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@141
    move-object/from16 v0, p0

    #@143
    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowDirection:I

    #@145
    move/from16 v16, v0

    #@147
    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setOverflowDirection(I)V

    #@14a
    goto/16 :goto_0

    #@14c
    .line 589
    .end local v14    # "y":I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getToolbarHeightWithVerticalMargin()I

    #@14f
    move-result v15

    #@150
    if-lt v1, v15, :cond_5

    #@152
    .line 590
    if-lt v3, v6, :cond_5

    #@154
    .line 594
    sub-int v15, v3, v5

    #@156
    move-object/from16 v0, p0

    #@158
    invoke-direct {v0, v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    #@15b
    .line 595
    move-object/from16 v0, p1

    #@15d
    iget v15, v0, Landroid/graphics/Rect;->top:I

    #@15f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getToolbarHeightWithVerticalMargin()I

    #@162
    move-result v16

    #@163
    sub-int v14, v15, v16

    #@165
    .line 596
    .restart local v14    # "y":I
    const/4 v15, 0x1

    #@166
    move-object/from16 v0, p0

    #@168
    iput v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowDirection:I

    #@16a
    goto :goto_1

    #@16b
    .line 597
    .end local v14    # "y":I
    :cond_5
    if-lt v2, v6, :cond_6

    #@16d
    .line 600
    sub-int v15, v2, v5

    #@16f
    move-object/from16 v0, p0

    #@171
    invoke-direct {v0, v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    #@174
    .line 601
    move-object/from16 v0, p1

    #@176
    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    #@178
    .line 602
    .restart local v14    # "y":I
    const/4 v15, 0x1

    #@179
    move-object/from16 v0, p0

    #@17b
    iput v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowDirection:I

    #@17d
    goto :goto_1

    #@17e
    .line 603
    .end local v14    # "y":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getToolbarHeightWithVerticalMargin()I

    #@181
    move-result v15

    #@182
    if-lt v2, v15, :cond_7

    #@184
    .line 604
    move-object/from16 v0, p0

    #@186
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@188
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    #@18b
    move-result v15

    #@18c
    if-lt v15, v6, :cond_7

    #@18e
    .line 608
    sub-int v15, v4, v5

    #@190
    move-object/from16 v0, p0

    #@192
    invoke-direct {v0, v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    #@195
    .line 609
    move-object/from16 v0, p1

    #@197
    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    #@199
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getToolbarHeightWithVerticalMargin()I

    #@19c
    move-result v16

    #@19d
    add-int v15, v15, v16

    #@19f
    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getHeight()I

    #@1a2
    move-result v16

    #@1a3
    .line 609
    sub-int v14, v15, v16

    #@1a5
    .line 611
    .restart local v14    # "y":I
    const/4 v15, 0x0

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iput v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowDirection:I

    #@1aa
    goto :goto_1

    #@1ab
    .line 615
    .end local v14    # "y":I
    :cond_7
    move-object/from16 v0, p0

    #@1ad
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@1af
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    #@1b2
    move-result v15

    #@1b3
    sub-int/2addr v15, v5

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    invoke-direct {v0, v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    #@1b9
    .line 616
    move-object/from16 v0, p0

    #@1bb
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@1bd
    iget v14, v15, Landroid/graphics/Rect;->top:I

    #@1bf
    .line 617
    .restart local v14    # "y":I
    const/4 v15, 0x1

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iput v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowDirection:I

    #@1c4
    goto/16 :goto_1
.end method

.method private refreshViewPort()V
    .locals 2

    #@0
    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@2
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@7
    .line 939
    return-void
.end method

.method private runDismissAnimation()V
    .locals 1

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    #@2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@5
    .line 654
    return-void
.end method

.method private runHideAnimation()V
    .locals 1

    #@0
    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    #@2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@5
    .line 661
    return-void
.end method

.method private runShowAnimation()V
    .locals 1

    #@0
    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@2
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->-wrap0(Landroid/view/View;)Landroid/animation/AnimatorSet;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@9
    .line 647
    return-void
.end method

.method private setContentAreaAsTouchableSurface()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 972
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@3
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 973
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@b
    invoke-virtual {v2, v3, v3}, Landroid/view/ViewGroup;->measure(II)V

    #@e
    .line 975
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@10
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    #@13
    move-result v1

    #@14
    .line 976
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@16
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    #@19
    move-result v0

    #@1a
    .line 977
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    #@1c
    .line 978
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@1e
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    #@21
    move-result v3

    #@22
    float-to-int v3, v3

    #@23
    .line 979
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@25
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    #@28
    move-result v4

    #@29
    float-to-int v4, v4

    #@2a
    .line 980
    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@2c
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    #@2f
    move-result v5

    #@30
    float-to-int v5, v5

    #@31
    add-int/2addr v5, v1

    #@32
    .line 981
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@34
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    #@37
    move-result v6

    #@38
    float-to-int v6, v6

    #@39
    add-int/2addr v6, v0

    #@3a
    .line 977
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    #@3d
    .line 971
    return-void
.end method

.method private setMainPanelAsContent()V
    .locals 4

    #@0
    .prologue
    .line 842
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@2
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 843
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    #@a
    .line 844
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@c
    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->measure()Landroid/util/Size;

    #@f
    move-result-object v0

    #@10
    .line 845
    .local v0, "mainPanelSize":Landroid/util/Size;
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@12
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v1

    #@16
    .line 846
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    #@19
    move-result v2

    #@1a
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@1c
    .line 847
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    #@1f
    move-result v2

    #@20
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@22
    .line 848
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@24
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@27
    .line 849
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@29
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@2b
    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getView()Landroid/view/View;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@32
    .line 850
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    #@35
    .line 840
    return-void
.end method

.method private setOverflowPanelAsContent()V
    .locals 4

    #@0
    .prologue
    .line 858
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@2
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 859
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    #@a
    .line 860
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@c
    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->measure()Landroid/util/Size;

    #@f
    move-result-object v0

    #@10
    .line 861
    .local v0, "overflowPanelSize":Landroid/util/Size;
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@12
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v1

    #@16
    .line 862
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    #@19
    move-result v2

    #@1a
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@1c
    .line 863
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    #@1f
    move-result v2

    #@20
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@22
    .line 864
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@24
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@27
    .line 865
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@29
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@2b
    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->getView()Landroid/view/View;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@32
    .line 866
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    #@35
    .line 856
    return-void
.end method

.method private setTouchableSurfaceInsetsComputer()V
    .locals 2

    #@0
    .prologue
    .line 990
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@d
    move-result-object v0

    #@e
    .line 993
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    #@13
    .line 994
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    #@18
    .line 989
    return-void
.end method

.method private setZeroTouchableSurface()V
    .locals 1

    #@0
    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    #@5
    .line 964
    return-void
.end method

.method private updateOverflowHeight(I)V
    .locals 3
    .param p1, "height"    # I

    #@0
    .prologue
    .line 903
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 904
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@6
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setSuggestedHeight(I)V

    #@9
    .line 907
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isMainPanelContent()Z

    #@c
    move-result v0

    #@d
    .line 908
    .local v0, "mainPanelContent":Z
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isOverflowPanelContent()Z

    #@10
    move-result v1

    #@11
    .line 909
    .local v1, "overflowPanelContent":Z
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@13
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    #@16
    .line 910
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    #@19
    .line 912
    if-eqz v0, :cond_0

    #@1b
    .line 913
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setMainPanelAsContent()V

    #@1e
    .line 915
    :cond_0
    if-eqz v1, :cond_1

    #@20
    .line 916
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setOverflowPanelAsContent()V

    #@23
    .line 902
    .end local v0    # "mainPanelContent":Z
    .end local v1    # "overflowPanelContent":Z
    :cond_1
    return-void
.end method

.method private updatePopupSize()V
    .locals 6

    #@0
    .prologue
    .line 922
    const/4 v3, 0x0

    #@1
    .line 923
    .local v3, "width":I
    const/4 v0, 0x0

    #@2
    .line 924
    .local v0, "height":I
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 925
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@8
    invoke-virtual {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->measure()Landroid/util/Size;

    #@b
    move-result-object v1

    #@c
    .line 926
    .local v1, "mainPanelSize":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    #@f
    move-result v3

    #@10
    .line 927
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    #@13
    move-result v0

    #@14
    .line 929
    .end local v1    # "mainPanelSize":Landroid/util/Size;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 930
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@1a
    invoke-virtual {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->measure()Landroid/util/Size;

    #@1d
    move-result-object v2

    #@1e
    .line 931
    .local v2, "overflowPanelSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@21
    move-result v4

    #@22
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v3

    #@26
    .line 932
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@29
    move-result v4

    #@2a
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v0

    #@2e
    .line 934
    .end local v2    # "overflowPanelSize":Landroid/util/Size;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@30
    iget v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    #@32
    mul-int/lit8 v5, v5, 0x2

    #@34
    add-int/2addr v5, v3

    #@35
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@38
    .line 935
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@3a
    iget v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@3c
    mul-int/lit8 v5, v5, 0x2

    #@3e
    add-int/2addr v5, v0

    #@3f
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@42
    .line 921
    return-void
.end method

.method private viewPortHasChanged()Z
    .locals 2

    #@0
    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@2
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpRect:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@7
    .line 945
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpRect:Landroid/graphics/Rect;

    #@9
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@b
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    const/4 v0, 0x0

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 467
    return-void

    #@5
    .line 470
    :cond_0
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    #@8
    .line 471
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    #@b
    .line 472
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    #@d
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    #@10
    .line 473
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->runDismissAnimation()V

    #@13
    .line 474
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    #@16
    .line 465
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 483
    return-void

    #@7
    .line 486
    :cond_0
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    #@a
    .line 487
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->runHideAnimation()V

    #@d
    .line 488
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    #@10
    .line 481
    return-void
.end method

.method public isHidden()Z
    .locals 1

    #@0
    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    #@2
    return v0
.end method

.method public isShowing()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 495
    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V
    .locals 4
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .param p3, "suggestedWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 408
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 410
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    #@8
    .line 411
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@a
    if-nez v1, :cond_0

    #@c
    .line 412
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@e
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@10
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflow:Ljava/lang/Runnable;

    #@12
    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    #@15
    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@17
    .line 415
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@19
    invoke-direct {p0, p3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getToolbarWidth(I)I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->layoutMenuItems(Ljava/util/List;I)Ljava/util/List;

    #@20
    move-result-object v0

    #@21
    .line 416
    .local v0, "overflowMenuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@23
    invoke-virtual {v1, p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    #@26
    .line 417
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@29
    move-result v1

    #@2a
    if-nez v1, :cond_2

    #@2c
    .line 418
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@2e
    if-nez v1, :cond_1

    #@30
    .line 420
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@32
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@34
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflow:Ljava/lang/Runnable;

    #@36
    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    #@39
    .line 419
    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@3b
    .line 422
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@3d
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setMenuItems(Ljava/util/List;)V

    #@40
    .line 423
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@42
    invoke-virtual {v1, p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    #@45
    .line 425
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    #@48
    .line 407
    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 433
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 435
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 436
    return-void

    #@b
    .line 439
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    #@d
    .line 440
    iput-boolean v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    #@f
    .line 441
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelDismissAndHideAnimations()V

    #@12
    .line 442
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    #@15
    .line 445
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 446
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setMainPanelAsContent()V

    #@20
    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@22
    const/4 v1, 0x0

    #@23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    #@26
    .line 451
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    #@29
    .line 452
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    #@2c
    .line 456
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@2e
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@30
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    #@32
    iget v2, v2, Landroid/graphics/Point;->x:I

    #@34
    .line 457
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    #@36
    iget v3, v3, Landroid/graphics/Point;->y:I

    #@38
    .line 456
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    #@3b
    .line 458
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setTouchableSurfaceInsetsComputer()V

    #@3e
    .line 459
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->runShowAnimation()V

    #@41
    .line 432
    return-void
.end method

.method public updateCoordinates(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 511
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 513
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@b
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 517
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    #@14
    .line 518
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    #@17
    .line 519
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    #@1a
    .line 523
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@1c
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    #@1e
    iget v1, v1, Landroid/graphics/Point;->x:I

    #@20
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    #@22
    iget v2, v2, Landroid/graphics/Point;->y:I

    #@24
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getWidth()I

    #@27
    move-result v3

    #@28
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getHeight()I

    #@2b
    move-result v4

    #@2c
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    #@2f
    .line 510
    return-void

    #@30
    .line 514
    :cond_0
    return-void
.end method
