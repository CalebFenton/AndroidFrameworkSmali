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
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;
    }
.end annotation


# static fields
.field private static final MAX_OVERFLOW_SIZE:I = 0x4

.field private static final MIN_OVERFLOW_SIZE:I = 0x2


# instance fields
.field private final mArrow:Landroid/graphics/drawable/Drawable;

.field private final mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private final mContentContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private final mDismissAnimation:Landroid/animation/AnimatorSet;

.field private mDismissed:Z

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHidden:Z

.field private final mHideAnimation:Landroid/animation/AnimatorSet;

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mIsOverflowOpen:Z

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mMainPanel:Landroid/view/ViewGroup;

.field private mMainPanelSize:Landroid/util/Size;

.field private final mMarginHorizontal:I

.field private final mMarginVertical:I

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private mOpenOverflowUpwards:Z

.field private final mOverflow:Landroid/graphics/drawable/Drawable;

.field private final mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mOverflowButton:Landroid/widget/ImageButton;

.field private final mOverflowButtonSize:Landroid/util/Size;

.field private final mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

.field private mOverflowPanelSize:Landroid/util/Size;

.field private final mOverflowPanelViewHelper:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

.field private final mParent:Landroid/view/View;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private final mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

.field private final mShowAnimation:Landroid/animation/AnimatorSet;

.field private final mTmpCoords:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mTouchableRegion:Landroid/graphics/Region;

.field private mTransitionDurationScale:I

.field private final mViewPortOnScreen:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Region;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/ImageButton;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isOverflowAnimating()Z

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
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->positionContentYCoordinatesIfOpeningOverflowUpwards()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setHeight(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setWidth(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 347
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@b
    .line 348
    new-instance v0, Landroid/graphics/Point;

    #@d
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    #@12
    .line 350
    const/4 v0, 0x2

    #@13
    new-array v0, v0, [I

    #@15
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@17
    .line 351
    new-instance v0, Landroid/graphics/Rect;

    #@19
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1c
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpRect:Landroid/graphics/Rect;

    #@1e
    .line 353
    new-instance v0, Landroid/graphics/Region;

    #@20
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@23
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    #@25
    .line 355
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$1;

    #@27
    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@2a
    .line 354
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@2c
    .line 369
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$2;

    #@2e
    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@31
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    #@33
    .line 378
    iput-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    #@35
    .line 389
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;

    #@37
    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@3a
    .line 388
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    #@3c
    .line 412
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/view/View;

    #@42
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@44
    .line 413
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Landroid/content/Context;

    #@4a
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@4c
    .line 414
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap2(Landroid/content/Context;)Landroid/view/ViewGroup;

    #@4f
    move-result-object v0

    #@50
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@52
    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@54
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->-wrap4(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;

    #@57
    move-result-object v0

    #@58
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@5a
    .line 416
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@5d
    move-result-object v0

    #@5e
    .line 417
    const v1, 0x10500b8

    #@61
    .line 416
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@64
    move-result v0

    #@65
    iput v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    #@67
    .line 418
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@6a
    move-result-object v0

    #@6b
    .line 419
    const v1, 0x10500b9

    #@6e
    .line 418
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@71
    move-result v0

    #@72
    iput v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@74
    .line 422
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;

    #@76
    const/4 v1, 0x0

    #@77
    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;)V

    #@7a
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    #@7c
    .line 424
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@7e
    const v1, 0x10c000d

    #@81
    .line 423
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@84
    move-result-object v0

    #@85
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@87
    .line 426
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@89
    const v1, 0x10c000e

    #@8c
    .line 425
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@8f
    move-result-object v0

    #@90
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@92
    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@94
    const v1, 0x10c000f

    #@97
    .line 427
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@9a
    move-result-object v0

    #@9b
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    #@9d
    .line 431
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@9f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a2
    move-result-object v0

    #@a3
    .line 432
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@a5
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@a8
    move-result-object v1

    #@a9
    const v2, 0x10802d1

    #@ac
    .line 431
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@af
    move-result-object v0

    #@b0
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    #@b2
    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    #@b4
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    #@b7
    .line 434
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@b9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@bc
    move-result-object v0

    #@bd
    .line 435
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@bf
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@c2
    move-result-object v1

    #@c3
    const v2, 0x10802cf

    #@c6
    .line 434
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@c9
    move-result-object v0

    #@ca
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    #@cc
    .line 436
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    #@ce
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    #@d1
    .line 437
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@d3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d6
    move-result-object v0

    #@d7
    .line 438
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@d9
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@dc
    move-result-object v1

    #@dd
    const v2, 0x10802d0

    #@e0
    .line 437
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@e3
    move-result-object v0

    #@e4
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@e6
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@e8
    .line 439
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@ea
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    #@ed
    .line 440
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@ef
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f2
    move-result-object v0

    #@f3
    .line 441
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@f5
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@f8
    move-result-object v1

    #@f9
    const v2, 0x10802d2

    #@fc
    .line 440
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@ff
    move-result-object v0

    #@100
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@102
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@104
    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@106
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    #@109
    .line 445
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createOverflowButton()Landroid/widget/ImageButton;

    #@10c
    move-result-object v0

    #@10d
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@10f
    .line 446
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@111
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    #@114
    move-result-object v0

    #@115
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@117
    .line 447
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createMainPanel()Landroid/view/ViewGroup;

    #@11a
    move-result-object v0

    #@11b
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@11d
    .line 448
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    #@11f
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@121
    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;-><init>(Landroid/content/Context;)V

    #@124
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    #@126
    .line 449
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createOverflowPanel()Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@129
    move-result-object v0

    #@12a
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@12c
    .line 452
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    #@12f
    move-result-object v0

    #@130
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@132
    .line 453
    new-instance v0, Landroid/view/animation/AnimationSet;

    #@134
    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@137
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@139
    .line 454
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@13b
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@13d
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@140
    .line 455
    new-instance v0, Landroid/view/animation/AnimationSet;

    #@142
    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@145
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@147
    .line 456
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@149
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    #@14b
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@14e
    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@150
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->-wrap0(Landroid/view/View;)Landroid/animation/AnimatorSet;

    #@153
    move-result-object v0

    #@154
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    #@156
    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@158
    .line 461
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$4;

    #@15a
    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$4;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@15d
    .line 460
    const/16 v2, 0x96

    #@15f
    .line 458
    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap1(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    #@162
    move-result-object v0

    #@163
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    #@165
    .line 469
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@167
    .line 471
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;

    #@169
    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@16c
    .line 470
    const/4 v2, 0x0

    #@16d
    .line 468
    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap1(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    #@170
    move-result-object v0

    #@171
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    #@173
    .line 411
    return-void
.end method

.method private calculateOverflowHeight(I)I
    .locals 4
    .param p1, "maxItemSize"    # I

    #@0
    .prologue
    .line 1252
    const/4 v2, 0x2

    #@1
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v2

    #@5
    .line 1253
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@7
    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getCount()I

    #@a
    move-result v3

    #@b
    .line 1251
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@e
    move-result v2

    #@f
    .line 1250
    const/4 v3, 0x4

    #@10
    .line 1249
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    #@13
    move-result v0

    #@14
    .line 1254
    .local v0, "actualSize":I
    const/4 v1, 0x0

    #@15
    .line 1255
    .local v1, "extension":I
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@17
    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getCount()I

    #@1a
    move-result v2

    #@1b
    if-ge v0, v2, :cond_0

    #@1d
    .line 1258
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@1f
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getLineHeight(Landroid/content/Context;)I

    #@22
    move-result v2

    #@23
    int-to-float v2, v2

    #@24
    const/high16 v3, 0x3f000000    # 0.5f

    #@26
    mul-float/2addr v2, v3

    #@27
    float-to-int v1, v2

    #@28
    .line 1260
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@2a
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getLineHeight(Landroid/content/Context;)I

    #@2d
    move-result v2

    #@2e
    mul-int/2addr v2, v0

    #@2f
    .line 1261
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@31
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    #@34
    move-result v3

    #@35
    .line 1260
    add-int/2addr v2, v3

    #@36
    add-int/2addr v2, v1

    #@37
    return v2
.end method

.method private cancelDismissAndHideAnimations()V
    .locals 1

    #@0
    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    #@2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    #@5
    .line 716
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    #@7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    #@a
    .line 714
    return-void
.end method

.method private cancelOverflowAnimations()V
    .locals 1

    #@0
    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    #@5
    .line 721
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    #@e
    .line 722
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    #@17
    .line 723
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@19
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    #@1c
    .line 724
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@1e
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    #@21
    .line 719
    return-void
.end method

.method private clearPanels()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1217
    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@3
    .line 1218
    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@5
    .line 1219
    const/4 v1, 0x0

    #@6
    iput-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    #@8
    .line 1220
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@a
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    #@d
    .line 1222
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/widget/ArrayAdapter;

    #@15
    .line 1223
    .local v0, "overflowPanelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/view/MenuItem;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    #@18
    .line 1224
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@1a
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    #@1d
    .line 1225
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@1f
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    #@22
    .line 1216
    return-void
.end method

.method private closeOverflow()V
    .locals 18

    #@0
    .prologue
    .line 806
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@4
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    #@7
    move-result v4

    #@8
    .line 807
    .local v4, "targetWidth":I
    move-object/from16 v0, p0

    #@a
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@c
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    #@f
    move-result v5

    #@10
    .line 808
    .local v5, "startWidth":I
    move-object/from16 v0, p0

    #@12
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@14
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    #@17
    move-result v6

    #@18
    .line 809
    .local v6, "left":F
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@1c
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    #@1f
    move-result v3

    #@20
    int-to-float v3, v3

    #@21
    add-float v7, v6, v3

    #@23
    .line 810
    .local v7, "right":F
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;

    #@25
    move-object/from16 v3, p0

    #@27
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    #@2a
    .line 831
    .local v2, "widthAnimation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@2c
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@2e
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    #@31
    move-result v14

    #@32
    .line 832
    .local v14, "targetHeight":I
    move-object/from16 v0, p0

    #@34
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@36
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    #@39
    move-result v13

    #@3a
    .line 833
    .local v13, "startHeight":I
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@3e
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    #@41
    move-result v3

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@46
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getHeight()I

    #@49
    move-result v15

    #@4a
    int-to-float v15, v15

    #@4b
    add-float v8, v3, v15

    #@4d
    .line 834
    .local v8, "bottom":F
    new-instance v9, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;

    #@4f
    move-object/from16 v0, p0

    #@51
    invoke-direct {v9, v0, v14, v13, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIF)V

    #@54
    .line 845
    .local v9, "heightAnimation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@58
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getX()F

    #@5b
    move-result v11

    #@5c
    .line 846
    .local v11, "overflowButtonStartX":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_0

    #@62
    .line 847
    int-to-float v3, v5

    #@63
    sub-float v3, v11, v3

    #@65
    move-object/from16 v0, p0

    #@67
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@69
    invoke-virtual {v15}, Landroid/widget/ImageButton;->getWidth()I

    #@6c
    move-result v15

    #@6d
    int-to-float v15, v15

    #@6e
    add-float v12, v3, v15

    #@70
    .line 849
    .local v12, "overflowButtonTargetX":F
    :goto_0
    new-instance v10, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;

    #@72
    move-object/from16 v0, p0

    #@74
    invoke-direct {v10, v0, v11, v12, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FFI)V

    #@77
    .line 861
    .local v10, "overflowButtonAnimation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@79
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@7b
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@7e
    .line 862
    const/16 v3, 0xfa

    #@80
    move-object/from16 v0, p0

    #@82
    invoke-direct {v0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    #@85
    move-result v3

    #@86
    int-to-long v0, v3

    #@87
    move-wide/from16 v16, v0

    #@89
    move-wide/from16 v0, v16

    #@8b
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@8e
    .line 863
    move-object/from16 v0, p0

    #@90
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    #@92
    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@95
    .line 864
    const/16 v3, 0xfa

    #@97
    move-object/from16 v0, p0

    #@99
    invoke-direct {v0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    #@9c
    move-result v3

    #@9d
    int-to-long v0, v3

    #@9e
    move-wide/from16 v16, v0

    #@a0
    move-wide/from16 v0, v16

    #@a2
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@a5
    .line 865
    move-object/from16 v0, p0

    #@a7
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@a9
    invoke-virtual {v10, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@ac
    .line 866
    const/16 v3, 0xfa

    #@ae
    move-object/from16 v0, p0

    #@b0
    invoke-direct {v0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    #@b3
    move-result v3

    #@b4
    int-to-long v0, v3

    #@b5
    move-wide/from16 v16, v0

    #@b7
    move-wide/from16 v0, v16

    #@b9
    invoke-virtual {v10, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@bc
    .line 867
    move-object/from16 v0, p0

    #@be
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@c0
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@c3
    move-result-object v3

    #@c4
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@c7
    .line 868
    move-object/from16 v0, p0

    #@c9
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@cb
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@ce
    .line 869
    move-object/from16 v0, p0

    #@d0
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@d2
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@d5
    .line 870
    move-object/from16 v0, p0

    #@d7
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@d9
    invoke-virtual {v3, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@dc
    .line 871
    move-object/from16 v0, p0

    #@de
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@e4
    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    #@e7
    .line 872
    const/4 v3, 0x0

    #@e8
    move-object/from16 v0, p0

    #@ea
    iput-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    #@ec
    .line 873
    move-object/from16 v0, p0

    #@ee
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@f0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    #@f3
    move-result-object v3

    #@f4
    .line 874
    const/high16 v15, 0x3f800000    # 1.0f

    #@f6
    .line 873
    invoke-virtual {v3, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@f9
    move-result-object v3

    #@fa
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    #@fd
    move-result-object v3

    #@fe
    .line 875
    move-object/from16 v0, p0

    #@100
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    #@102
    .line 873
    invoke-virtual {v3, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@105
    move-result-object v3

    #@106
    .line 876
    const-wide/16 v16, 0x64

    #@108
    .line 873
    move-wide/from16 v0, v16

    #@10a
    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@10d
    move-result-object v3

    #@10e
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    #@111
    .line 878
    move-object/from16 v0, p0

    #@113
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@115
    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    #@118
    move-result-object v3

    #@119
    .line 879
    const/4 v15, 0x0

    #@11a
    .line 878
    invoke-virtual {v3, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@11d
    move-result-object v3

    #@11e
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    #@121
    move-result-object v3

    #@122
    .line 880
    move-object/from16 v0, p0

    #@124
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@126
    .line 878
    invoke-virtual {v3, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@129
    move-result-object v3

    #@12a
    .line 881
    const-wide/16 v16, 0x96

    #@12c
    .line 878
    move-wide/from16 v0, v16

    #@12e
    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@131
    move-result-object v3

    #@132
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    #@135
    .line 805
    return-void

    #@136
    .line 848
    .end local v10    # "overflowButtonAnimation":Landroid/view/animation/Animation;
    .end local v12    # "overflowButtonTargetX":F
    :cond_0
    int-to-float v3, v5

    #@137
    add-float/2addr v3, v11

    #@138
    move-object/from16 v0, p0

    #@13a
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@13c
    invoke-virtual {v15}, Landroid/widget/ImageButton;->getWidth()I

    #@13f
    move-result v15

    #@140
    int-to-float v15, v15

    #@141
    sub-float v12, v3, v15

    #@143
    .restart local v12    # "overflowButtonTargetX":F
    goto/16 :goto_0
.end method

.method private createMainPanel()Landroid/view/ViewGroup;
    .locals 2

    #@0
    .prologue
    .line 1304
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$12;

    #@2
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$12;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;)V

    #@7
    .line 1323
    .local v0, "mainPanel":Landroid/view/ViewGroup;
    return-object v0
.end method

.method private createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    #@0
    .prologue
    .line 1396
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@5
    .line 1425
    .local v0, "listener":Landroid/view/animation/Animation$AnimationListener;
    return-object v0
.end method

.method private createOverflowButton()Landroid/widget/ImageButton;
    .locals 4

    #@0
    .prologue
    .line 1327
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@5
    move-result-object v1

    #@6
    .line 1328
    const v2, 0x1090060

    #@9
    const/4 v3, 0x0

    #@a
    .line 1327
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/widget/ImageButton;

    #@10
    .line 1329
    .local v0, "overflowButton":Landroid/widget/ImageButton;
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@15
    .line 1330
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;

    #@17
    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/widget/ImageButton;)V

    #@1a
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@1d
    .line 1344
    return-object v0
.end method

.method private createOverflowPanel()Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 1348
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@4
    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    #@7
    .line 1349
    .local v1, "overflowPanel":Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    #@9
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@c
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@f
    .line 1351
    const/4 v2, 0x0

    #@10
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setDivider(Landroid/graphics/drawable/Drawable;)V

    #@13
    .line 1352
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setDividerHeight(I)V

    #@16
    .line 1355
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;

    #@18
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@1a
    invoke-direct {v0, p0, v2, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;I)V

    #@1d
    .line 1372
    .local v0, "adapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    #@20
    .line 1374
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;

    #@22
    invoke-direct {v2, p0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;)V

    #@25
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@28
    .line 1384
    return-object v1
.end method

.method private getAdjustedDuration(I)I
    .locals 2
    .param p1, "originalDuration"    # I

    #@0
    .prologue
    .line 1279
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTransitionDurationScale:I

    #@2
    const/16 v1, 0x96

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 1281
    add-int/lit8 v0, p1, -0x32

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@c
    move-result v0

    #@d
    return v0

    #@e
    .line 1282
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTransitionDurationScale:I

    #@10
    const/16 v1, 0x12c

    #@12
    if-le v0, v1, :cond_1

    #@14
    .line 1284
    add-int/lit8 v0, p1, 0x32

    #@16
    return v0

    #@17
    .line 1291
    :cond_1
    int-to-float v0, p1

    #@18
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    #@1b
    move-result v1

    #@1c
    mul-float/2addr v0, v1

    #@1d
    float-to-int v0, v0

    #@1e
    return v0
.end method

.method private getAdjustedToolbarWidth(I)I
    .locals 5
    .param p1, "suggestedWidth"    # I

    #@0
    .prologue
    .line 1036
    move v1, p1

    #@1
    .line 1037
    .local v1, "width":I
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    #@4
    .line 1038
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
    .line 1039
    const v4, 0x10500b8

    #@13
    .line 1038
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@16
    move-result v3

    #@17
    mul-int/lit8 v3, v3, 0x2

    #@19
    sub-int v0, v2, v3

    #@1b
    .line 1040
    .local v0, "maximumWidth":I
    if-gtz p1, :cond_0

    #@1d
    .line 1041
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@1f
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v2

    #@23
    .line 1042
    const v3, 0x10500b5

    #@26
    .line 1041
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@29
    move-result v1

    #@2a
    .line 1044
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@2d
    move-result v2

    #@2e
    return v2
.end method

.method private static getLineHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1459
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    const v1, 0x10500ad

    #@7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private getOverflowWidth()I
    .locals 5

    #@0
    .prologue
    .line 1237
    const/4 v3, 0x0

    #@1
    .line 1238
    .local v3, "overflowWidth":I
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@3
    invoke-virtual {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    #@6
    move-result-object v4

    #@7
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    #@a
    move-result v0

    #@b
    .line 1239
    .local v0, "count":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@e
    .line 1240
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@10
    invoke-virtual {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    #@13
    move-result-object v4

    #@14
    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/view/MenuItem;

    #@1a
    .line 1242
    .local v2, "menuItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    #@1c
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->calculateWidth(Landroid/view/MenuItem;)I

    #@1f
    move-result v4

    #@20
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@23
    move-result v3

    #@24
    .line 1239
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1244
    .end local v2    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    return v3
.end method

.method private hasOverflow()Z
    .locals 1

    #@0
    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private isInRTLMode()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1091
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 1092
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@1b
    move-result v2

    #@1c
    if-ne v2, v0, :cond_0

    #@1e
    .line 1091
    :goto_0
    return v0

    #@1f
    :cond_0
    move v0, v1

    #@20
    .line 1092
    goto :goto_0

    #@21
    :cond_1
    move v0, v1

    #@22
    .line 1091
    goto :goto_0
.end method

.method private isOverflowAnimating()Z
    .locals 3

    #@0
    .prologue
    .line 1388
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@2
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 1389
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@a
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    const/4 v1, 0x0

    #@11
    .line 1390
    .local v1, "overflowOpening":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@13
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_3

    #@19
    .line 1391
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@1b
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_2

    #@21
    const/4 v0, 0x0

    #@22
    .line 1392
    .local v0, "overflowClosing":Z
    :goto_1
    if-nez v1, :cond_4

    #@24
    .end local v0    # "overflowClosing":Z
    :goto_2
    return v0

    #@25
    .line 1389
    .end local v1    # "overflowOpening":Z
    :cond_0
    const/4 v1, 0x1

    #@26
    .restart local v1    # "overflowOpening":Z
    goto :goto_0

    #@27
    .line 1388
    .end local v1    # "overflowOpening":Z
    :cond_1
    const/4 v1, 0x0

    #@28
    .restart local v1    # "overflowOpening":Z
    goto :goto_0

    #@29
    .line 1391
    :cond_2
    const/4 v0, 0x1

    #@2a
    .restart local v0    # "overflowClosing":Z
    goto :goto_1

    #@2b
    .line 1390
    .end local v0    # "overflowClosing":Z
    :cond_3
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "overflowClosing":Z
    goto :goto_1

    #@2d
    .line 1392
    :cond_4
    const/4 v0, 0x1

    #@2e
    goto :goto_2
.end method

.method private layoutOverflowPanelItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1167
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@2
    invoke-virtual {v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Landroid/widget/ArrayAdapter;

    #@8
    .line 1168
    .local v2, "overflowPanelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/view/MenuItem;>;"
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    #@b
    .line 1169
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@e
    move-result v3

    #@f
    .line 1170
    .local v3, "size":I
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@12
    .line 1171
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    check-cast v5, Landroid/view/MenuItem;

    #@18
    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    #@1b
    .line 1170
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1173
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@20
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    #@23
    .line 1174
    iget-boolean v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    #@25
    if-eqz v5, :cond_1

    #@27
    .line 1175
    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@29
    const/4 v6, 0x0

    #@2a
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    #@2d
    .line 1180
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getOverflowWidth()I

    #@30
    move-result v5

    #@31
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@33
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    #@36
    move-result v6

    #@37
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@3a
    move-result v4

    #@3b
    .line 1181
    .local v4, "width":I
    const/4 v5, 0x4

    #@3c
    invoke-direct {p0, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    #@3f
    move-result v0

    #@40
    .line 1182
    .local v0, "height":I
    new-instance v5, Landroid/util/Size;

    #@42
    invoke-direct {v5, v4, v0}, Landroid/util/Size;-><init>(II)V

    #@45
    iput-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@47
    .line 1183
    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@49
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@4b
    invoke-static {v5, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    #@4e
    .line 1165
    return-void

    #@4f
    .line 1177
    .end local v0    # "height":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@51
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@53
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    #@56
    move-result v6

    #@57
    int-to-float v6, v6

    #@58
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    #@5b
    goto :goto_1
.end method

.method private maybeComputeTransitionDurationScale()V
    .locals 6

    #@0
    .prologue
    .line 1295
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1296
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@a
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@d
    move-result v2

    #@e
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@10
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    #@13
    move-result v3

    #@14
    sub-int v1, v2, v3

    #@16
    .line 1297
    .local v1, "w":I
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@18
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@1b
    move-result v2

    #@1c
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@1e
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    #@21
    move-result v3

    #@22
    sub-int v0, v2, v3

    #@24
    .line 1298
    .local v0, "h":I
    mul-int v2, v1, v1

    #@26
    mul-int v3, v0, v0

    #@28
    add-int/2addr v2, v3

    #@29
    int-to-double v2, v2

    #@2a
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@2d
    move-result-wide v2

    #@2e
    .line 1299
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@30
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3b
    move-result-object v4

    #@3c
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    #@3e
    float-to-double v4, v4

    #@3f
    .line 1298
    div-double/2addr v2, v4

    #@40
    double-to-int v2, v2

    #@41
    iput v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTransitionDurationScale:I

    #@43
    .line 1294
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    return-void
.end method

.method private static measure(Landroid/view/View;)Landroid/util/Size;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1429
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@4
    move-result-object v0

    #@5
    if-nez v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@b
    .line 1430
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    #@e
    .line 1431
    new-instance v0, Landroid/util/Size;

    #@10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@13
    move-result v1

    #@14
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@17
    move-result v2

    #@18
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@1b
    return-object v0

    #@1c
    :cond_0
    move v0, v1

    #@1d
    .line 1429
    goto :goto_0
.end method

.method private openOverflow()V
    .locals 18

    #@0
    .prologue
    .line 728
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@4
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    #@7
    move-result v4

    #@8
    .line 729
    .local v4, "targetWidth":I
    move-object/from16 v0, p0

    #@a
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@c
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    #@f
    move-result v14

    #@10
    .line 730
    .local v14, "targetHeight":I
    move-object/from16 v0, p0

    #@12
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@14
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    #@17
    move-result v5

    #@18
    .line 731
    .local v5, "startWidth":I
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@1c
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    #@1f
    move-result v12

    #@20
    .line 732
    .local v12, "startHeight":I
    move-object/from16 v0, p0

    #@22
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@24
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    #@27
    move-result v13

    #@28
    .line 733
    .local v13, "startY":F
    move-object/from16 v0, p0

    #@2a
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@2c
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    #@2f
    move-result v6

    #@30
    .line 734
    .local v6, "left":F
    move-object/from16 v0, p0

    #@32
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@34
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    #@37
    move-result v3

    #@38
    int-to-float v3, v3

    #@39
    add-float v7, v6, v3

    #@3b
    .line 735
    .local v7, "right":F
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;

    #@3d
    move-object/from16 v3, p0

    #@3f
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    #@42
    .line 756
    .local v2, "widthAnimation":Landroid/view/animation/Animation;
    new-instance v8, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;

    #@44
    move-object/from16 v0, p0

    #@46
    invoke-direct {v8, v0, v14, v12, v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIF)V

    #@49
    .line 768
    .local v8, "heightAnimation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@4b
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@4d
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getX()F

    #@50
    move-result v10

    #@51
    .line 769
    .local v10, "overflowButtonStartX":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    #@54
    move-result v3

    #@55
    if-eqz v3, :cond_0

    #@57
    .line 770
    int-to-float v3, v4

    #@58
    add-float/2addr v3, v10

    #@59
    move-object/from16 v0, p0

    #@5b
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@5d
    invoke-virtual {v15}, Landroid/widget/ImageButton;->getWidth()I

    #@60
    move-result v15

    #@61
    int-to-float v15, v15

    #@62
    sub-float v11, v3, v15

    #@64
    .line 772
    .local v11, "overflowButtonTargetX":F
    :goto_0
    new-instance v9, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$8;

    #@66
    move-object/from16 v0, p0

    #@68
    invoke-direct {v9, v0, v10, v11, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$8;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FFI)V

    #@6b
    .line 784
    .local v9, "overflowButtonAnimation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@6d
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    #@6f
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@72
    .line 785
    const/16 v3, 0xfa

    #@74
    move-object/from16 v0, p0

    #@76
    invoke-direct {v0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    #@79
    move-result v3

    #@7a
    int-to-long v0, v3

    #@7b
    move-wide/from16 v16, v0

    #@7d
    move-wide/from16 v0, v16

    #@7f
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@82
    .line 786
    move-object/from16 v0, p0

    #@84
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@86
    invoke-virtual {v8, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@89
    .line 787
    const/16 v3, 0xfa

    #@8b
    move-object/from16 v0, p0

    #@8d
    invoke-direct {v0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    #@90
    move-result v3

    #@91
    int-to-long v0, v3

    #@92
    move-wide/from16 v16, v0

    #@94
    move-wide/from16 v0, v16

    #@96
    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@99
    .line 788
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@9d
    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@a0
    .line 789
    const/16 v3, 0xfa

    #@a2
    move-object/from16 v0, p0

    #@a4
    invoke-direct {v0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    #@a7
    move-result v3

    #@a8
    int-to-long v0, v3

    #@a9
    move-wide/from16 v16, v0

    #@ab
    move-wide/from16 v0, v16

    #@ad
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@b0
    .line 790
    move-object/from16 v0, p0

    #@b2
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@b4
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@b7
    move-result-object v3

    #@b8
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@bb
    .line 791
    move-object/from16 v0, p0

    #@bd
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@bf
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@c2
    move-result-object v3

    #@c3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@c6
    .line 792
    move-object/from16 v0, p0

    #@c8
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@ca
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@cd
    .line 793
    move-object/from16 v0, p0

    #@cf
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@d1
    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@d4
    .line 794
    move-object/from16 v0, p0

    #@d6
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@d8
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@db
    .line 795
    move-object/from16 v0, p0

    #@dd
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@df
    move-object/from16 v0, p0

    #@e1
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    #@e3
    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    #@e6
    .line 796
    const/4 v3, 0x1

    #@e7
    move-object/from16 v0, p0

    #@e9
    iput-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    #@eb
    .line 797
    move-object/from16 v0, p0

    #@ed
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@ef
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    #@f2
    move-result-object v3

    #@f3
    .line 798
    const/4 v15, 0x0

    #@f4
    .line 797
    invoke-virtual {v3, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@f7
    move-result-object v3

    #@f8
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    #@fb
    move-result-object v3

    #@fc
    .line 799
    move-object/from16 v0, p0

    #@fe
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@100
    .line 797
    invoke-virtual {v3, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@103
    move-result-object v3

    #@104
    .line 800
    const-wide/16 v16, 0xfa

    #@106
    .line 797
    move-wide/from16 v0, v16

    #@108
    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@10b
    move-result-object v3

    #@10c
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    #@10f
    .line 802
    move-object/from16 v0, p0

    #@111
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@113
    const/high16 v15, 0x3f800000    # 1.0f

    #@115
    invoke-virtual {v3, v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    #@118
    .line 727
    return-void

    #@119
    .line 771
    .end local v9    # "overflowButtonAnimation":Landroid/view/animation/Animation;
    .end local v11    # "overflowButtonTargetX":F
    :cond_0
    int-to-float v3, v4

    #@11a
    sub-float v3, v10, v3

    #@11c
    move-object/from16 v0, p0

    #@11e
    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@120
    invoke-virtual {v15}, Landroid/widget/ImageButton;->getWidth()I

    #@123
    move-result v15

    #@124
    int-to-float v15, v15

    #@125
    add-float v11, v3, v15

    #@127
    .restart local v11    # "overflowButtonTargetX":F
    goto/16 :goto_0
.end method

.method private positionContentYCoordinatesIfOpeningOverflowUpwards()V
    .locals 3

    #@0
    .prologue
    .line 1229
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1230
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@6
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    #@b
    move-result v1

    #@c
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@e
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@11
    move-result v2

    #@12
    sub-int/2addr v1, v2

    #@13
    int-to-float v1, v1

    #@14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    #@17
    .line 1231
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@19
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@1b
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    #@1e
    move-result v1

    #@1f
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@21
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    #@24
    move-result v2

    #@25
    sub-int/2addr v1, v2

    #@26
    int-to-float v1, v1

    #@27
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setY(F)V

    #@2a
    .line 1232
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@2c
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@2e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    #@31
    move-result v1

    #@32
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@34
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@37
    move-result v2

    #@38
    sub-int/2addr v1, v2

    #@39
    int-to-float v1, v1

    #@3a
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    #@3d
    .line 1228
    :cond_0
    return-void
.end method

.method private preparePopupContent()V
    .locals 2

    #@0
    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    #@5
    .line 1194
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1195
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@d
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@f
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@12
    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@14
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@19
    .line 1198
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 1199
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@21
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@26
    .line 1201
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    #@29
    .line 1202
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    #@2c
    .line 1207
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_2

    #@32
    .line 1208
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@34
    const/4 v1, 0x0

    #@35
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    #@38
    .line 1209
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@3a
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    #@3c
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    #@3f
    .line 1189
    :cond_2
    return-void
.end method

.method private refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .locals 21
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 593
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    #@3
    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    #@6
    move-result v17

    #@7
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@b
    move-object/from16 v18, v0

    #@d
    invoke-virtual/range {v18 .. v18}, Landroid/widget/PopupWindow;->getWidth()I

    #@10
    move-result v18

    #@11
    div-int/lit8 v18, v18, 0x2

    #@13
    sub-int v17, v17, v18

    #@15
    .line 599
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@19
    move-object/from16 v18, v0

    #@1b
    move-object/from16 v0, v18

    #@1d
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@1f
    move/from16 v18, v0

    #@21
    move-object/from16 v0, p0

    #@23
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@25
    move-object/from16 v19, v0

    #@27
    invoke-virtual/range {v19 .. v19}, Landroid/widget/PopupWindow;->getWidth()I

    #@2a
    move-result v19

    #@2b
    sub-int v18, v18, v19

    #@2d
    .line 597
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    #@30
    move-result v15

    #@31
    .line 604
    .local v15, "x":I
    move-object/from16 v0, p1

    #@33
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@35
    move/from16 v17, v0

    #@37
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@3b
    move-object/from16 v18, v0

    #@3d
    move-object/from16 v0, v18

    #@3f
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@41
    move/from16 v18, v0

    #@43
    sub-int v2, v17, v18

    #@45
    .line 606
    .local v2, "availableHeightAboveContent":I
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@49
    move-object/from16 v17, v0

    #@4b
    move-object/from16 v0, v17

    #@4d
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@4f
    move/from16 v17, v0

    #@51
    move-object/from16 v0, p1

    #@53
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@55
    move/from16 v18, v0

    #@57
    sub-int v3, v17, v18

    #@59
    .line 608
    .local v3, "availableHeightBelowContent":I
    move-object/from16 v0, p0

    #@5b
    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@5d
    move/from16 v17, v0

    #@5f
    mul-int/lit8 v6, v17, 0x2

    #@61
    .line 609
    .local v6, "margin":I
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@65
    move-object/from16 v17, v0

    #@67
    invoke-static/range {v17 .. v17}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getLineHeight(Landroid/content/Context;)I

    #@6a
    move-result v17

    #@6b
    add-int v12, v17, v6

    #@6d
    .line 611
    .local v12, "toolbarHeightWithVerticalMargin":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    #@70
    move-result v17

    #@71
    if-nez v17, :cond_3

    #@73
    .line 612
    if-lt v2, v12, :cond_0

    #@75
    .line 614
    move-object/from16 v0, p1

    #@77
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@79
    move/from16 v17, v0

    #@7b
    sub-int v16, v17, v12

    #@7d
    .line 681
    .local v16, "y":I
    :goto_0
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@81
    move-object/from16 v17, v0

    #@83
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@86
    move-result-object v17

    #@87
    move-object/from16 v0, p0

    #@89
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@8b
    move-object/from16 v18, v0

    #@8d
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getLocationOnScreen([I)V

    #@90
    .line 682
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@94
    move-object/from16 v17, v0

    #@96
    const/16 v18, 0x0

    #@98
    aget v8, v17, v18

    #@9a
    .line 683
    .local v8, "rootViewLeftOnScreen":I
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@9e
    move-object/from16 v17, v0

    #@a0
    const/16 v18, 0x1

    #@a2
    aget v10, v17, v18

    #@a4
    .line 684
    .local v10, "rootViewTopOnScreen":I
    move-object/from16 v0, p0

    #@a6
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@a8
    move-object/from16 v17, v0

    #@aa
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@ad
    move-result-object v17

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@b2
    move-object/from16 v18, v0

    #@b4
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getLocationInWindow([I)V

    #@b7
    .line 685
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@bb
    move-object/from16 v17, v0

    #@bd
    const/16 v18, 0x0

    #@bf
    aget v9, v17, v18

    #@c1
    .line 686
    .local v9, "rootViewLeftOnWindow":I
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    #@c5
    move-object/from16 v17, v0

    #@c7
    const/16 v18, 0x1

    #@c9
    aget v11, v17, v18

    #@cb
    .line 687
    .local v11, "rootViewTopOnWindow":I
    sub-int v13, v8, v9

    #@cd
    .line 688
    .local v13, "windowLeftOnScreen":I
    sub-int v14, v10, v11

    #@cf
    .line 689
    .local v14, "windowTopOnScreen":I
    move-object/from16 v0, p0

    #@d1
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    #@d3
    move-object/from16 v17, v0

    #@d5
    .line 690
    sub-int v18, v15, v13

    #@d7
    const/16 v19, 0x0

    #@d9
    move/from16 v0, v19

    #@db
    move/from16 v1, v18

    #@dd
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@e0
    move-result v18

    #@e1
    sub-int v19, v16, v14

    #@e3
    const/16 v20, 0x0

    #@e5
    move/from16 v0, v20

    #@e7
    move/from16 v1, v19

    #@e9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@ec
    move-result v19

    #@ed
    .line 689
    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Point;->set(II)V

    #@f0
    .line 592
    return-void

    #@f1
    .line 615
    .end local v8    # "rootViewLeftOnScreen":I
    .end local v9    # "rootViewLeftOnWindow":I
    .end local v10    # "rootViewTopOnScreen":I
    .end local v11    # "rootViewTopOnWindow":I
    .end local v13    # "windowLeftOnScreen":I
    .end local v14    # "windowTopOnScreen":I
    .end local v16    # "y":I
    :cond_0
    if-lt v3, v12, :cond_1

    #@f3
    .line 617
    move-object/from16 v0, p1

    #@f5
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@f7
    move/from16 v16, v0

    #@f9
    .restart local v16    # "y":I
    goto :goto_0

    #@fa
    .line 618
    .end local v16    # "y":I
    :cond_1
    move-object/from16 v0, p0

    #@fc
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@fe
    move-object/from16 v17, v0

    #@100
    invoke-static/range {v17 .. v17}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getLineHeight(Landroid/content/Context;)I

    #@103
    move-result v17

    #@104
    move/from16 v0, v17

    #@106
    if-lt v3, v0, :cond_2

    #@108
    .line 620
    move-object/from16 v0, p1

    #@10a
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@10c
    move/from16 v17, v0

    #@10e
    move-object/from16 v0, p0

    #@110
    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@112
    move/from16 v18, v0

    #@114
    sub-int v16, v17, v18

    #@116
    .restart local v16    # "y":I
    goto/16 :goto_0

    #@118
    .line 624
    .end local v16    # "y":I
    :cond_2
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@11c
    move-object/from16 v17, v0

    #@11e
    move-object/from16 v0, v17

    #@120
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@122
    move/from16 v17, v0

    #@124
    .line 625
    move-object/from16 v0, p1

    #@126
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@128
    move/from16 v18, v0

    #@12a
    sub-int v18, v18, v12

    #@12c
    .line 623
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    #@12f
    move-result v16

    #@130
    .restart local v16    # "y":I
    goto/16 :goto_0

    #@132
    .line 630
    .end local v16    # "y":I
    :cond_3
    const/16 v17, 0x2

    #@134
    move-object/from16 v0, p0

    #@136
    move/from16 v1, v17

    #@138
    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    #@13b
    move-result v17

    #@13c
    add-int v7, v17, v6

    #@13e
    .line 631
    .local v7, "minimumOverflowHeightWithMargin":I
    move-object/from16 v0, p0

    #@140
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@142
    move-object/from16 v17, v0

    #@144
    move-object/from16 v0, v17

    #@146
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@148
    move/from16 v17, v0

    #@14a
    .line 632
    move-object/from16 v0, p1

    #@14c
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@14e
    move/from16 v18, v0

    #@150
    .line 631
    sub-int v17, v17, v18

    #@152
    add-int v4, v17, v12

    #@154
    .line 633
    .local v4, "availableHeightThroughContentDown":I
    move-object/from16 v0, p1

    #@156
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@158
    move/from16 v17, v0

    #@15a
    .line 634
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@15e
    move-object/from16 v18, v0

    #@160
    move-object/from16 v0, v18

    #@162
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@164
    move/from16 v18, v0

    #@166
    .line 633
    sub-int v17, v17, v18

    #@168
    add-int v5, v17, v12

    #@16a
    .line 636
    .local v5, "availableHeightThroughContentUp":I
    if-lt v2, v7, :cond_4

    #@16c
    .line 639
    sub-int v17, v2, v6

    #@16e
    move-object/from16 v0, p0

    #@170
    move/from16 v1, v17

    #@172
    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    #@175
    .line 640
    move-object/from16 v0, p1

    #@177
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@179
    move/from16 v17, v0

    #@17b
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@17f
    move-object/from16 v18, v0

    #@181
    invoke-virtual/range {v18 .. v18}, Landroid/widget/PopupWindow;->getHeight()I

    #@184
    move-result v18

    #@185
    sub-int v16, v17, v18

    #@187
    .line 641
    .restart local v16    # "y":I
    const/16 v17, 0x1

    #@189
    move/from16 v0, v17

    #@18b
    move-object/from16 v1, p0

    #@18d
    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    #@18f
    goto/16 :goto_0

    #@191
    .line 642
    .end local v16    # "y":I
    :cond_4
    if-lt v2, v12, :cond_5

    #@193
    .line 643
    if-lt v4, v7, :cond_5

    #@195
    .line 647
    sub-int v17, v4, v6

    #@197
    move-object/from16 v0, p0

    #@199
    move/from16 v1, v17

    #@19b
    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    #@19e
    .line 648
    move-object/from16 v0, p1

    #@1a0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@1a2
    move/from16 v17, v0

    #@1a4
    sub-int v16, v17, v12

    #@1a6
    .line 649
    .restart local v16    # "y":I
    const/16 v17, 0x0

    #@1a8
    move/from16 v0, v17

    #@1aa
    move-object/from16 v1, p0

    #@1ac
    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    #@1ae
    goto/16 :goto_0

    #@1b0
    .line 650
    .end local v16    # "y":I
    :cond_5
    if-lt v3, v7, :cond_6

    #@1b2
    .line 653
    sub-int v17, v3, v6

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    move/from16 v1, v17

    #@1b8
    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    #@1bb
    .line 654
    move-object/from16 v0, p1

    #@1bd
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@1bf
    move/from16 v16, v0

    #@1c1
    .line 655
    .restart local v16    # "y":I
    const/16 v17, 0x0

    #@1c3
    move/from16 v0, v17

    #@1c5
    move-object/from16 v1, p0

    #@1c7
    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    #@1c9
    goto/16 :goto_0

    #@1cb
    .line 656
    .end local v16    # "y":I
    :cond_6
    if-lt v3, v12, :cond_7

    #@1cd
    .line 657
    move-object/from16 v0, p0

    #@1cf
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@1d1
    move-object/from16 v17, v0

    #@1d3
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    #@1d6
    move-result v17

    #@1d7
    move/from16 v0, v17

    #@1d9
    if-lt v0, v7, :cond_7

    #@1db
    .line 661
    sub-int v17, v5, v6

    #@1dd
    move-object/from16 v0, p0

    #@1df
    move/from16 v1, v17

    #@1e1
    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    #@1e4
    .line 662
    move-object/from16 v0, p1

    #@1e6
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@1e8
    move/from16 v17, v0

    #@1ea
    add-int v17, v17, v12

    #@1ec
    .line 663
    move-object/from16 v0, p0

    #@1ee
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@1f0
    move-object/from16 v18, v0

    #@1f2
    invoke-virtual/range {v18 .. v18}, Landroid/widget/PopupWindow;->getHeight()I

    #@1f5
    move-result v18

    #@1f6
    .line 662
    sub-int v16, v17, v18

    #@1f8
    .line 664
    .restart local v16    # "y":I
    const/16 v17, 0x1

    #@1fa
    move/from16 v0, v17

    #@1fc
    move-object/from16 v1, p0

    #@1fe
    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    #@200
    goto/16 :goto_0

    #@202
    .line 668
    .end local v16    # "y":I
    :cond_7
    move-object/from16 v0, p0

    #@204
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@206
    move-object/from16 v17, v0

    #@208
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    #@20b
    move-result v17

    #@20c
    sub-int v17, v17, v6

    #@20e
    move-object/from16 v0, p0

    #@210
    move/from16 v1, v17

    #@212
    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    #@215
    .line 669
    move-object/from16 v0, p0

    #@217
    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@219
    move-object/from16 v17, v0

    #@21b
    move-object/from16 v0, v17

    #@21d
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@21f
    move/from16 v16, v0

    #@221
    .line 670
    .restart local v16    # "y":I
    const/16 v17, 0x0

    #@223
    move/from16 v0, v17

    #@225
    move-object/from16 v1, p0

    #@227
    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    #@229
    goto/16 :goto_0
.end method

.method private refreshViewPort()V
    .locals 2

    #@0
    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@2
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@7
    .line 1031
    return-void
.end method

.method private runDismissAnimation()V
    .locals 1

    #@0
    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    #@2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@5
    .line 703
    return-void
.end method

.method private runHideAnimation()V
    .locals 1

    #@0
    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    #@2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@5
    .line 710
    return-void
.end method

.method private runShowAnimation()V
    .locals 1

    #@0
    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    #@2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@5
    .line 696
    return-void
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1266
    move-object v0, p1

    #@1
    .line 1267
    .local v0, "button":Landroid/view/View;
    invoke-static {p2}, Lcom/android/internal/widget/FloatingToolbar;->-wrap5(Landroid/view/MenuItem;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1268
    const v1, 0x102005b

    #@a
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 1270
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@11
    .line 1271
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    #@13
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@16
    .line 1265
    return-void
.end method

.method private setContentAreaAsTouchableSurface()V
    .locals 7

    #@0
    .prologue
    .line 1059
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@2
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 1062
    iget-boolean v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1063
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@b
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 1064
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@10
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@13
    move-result v1

    #@14
    .line 1065
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@16
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@19
    move-result v0

    #@1a
    .line 1070
    .local v0, "height":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    #@1c
    .line 1071
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@1e
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    #@21
    move-result v3

    #@22
    float-to-int v3, v3

    #@23
    .line 1072
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@25
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    #@28
    move-result v4

    #@29
    float-to-int v4, v4

    #@2a
    .line 1073
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
    .line 1074
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
    .line 1070
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    #@3d
    .line 1058
    return-void

    #@3e
    .line 1067
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@40
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@43
    move-result v1

    #@44
    .line 1068
    .restart local v1    # "width":I
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@46
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@49
    move-result v0

    #@4a
    .restart local v0    # "height":I
    goto :goto_0
.end method

.method private static setHeight(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    #@0
    .prologue
    .line 1454
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 1455
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@6
    invoke-static {p0, v1, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    #@9
    .line 1453
    return-void
.end method

.method private setPanelsStatesAtRestingPosition()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x0

    #@2
    const/high16 v3, 0x3f800000    # 1.0f

    #@4
    const/4 v4, 0x0

    #@5
    .line 890
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@7
    const/4 v2, 0x1

    #@8
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@b
    .line 891
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->awakenScrollBars()Z

    #@10
    .line 893
    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 895
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@16
    .line 896
    .local v0, "containerSize":Landroid/util/Size;
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@18
    invoke-static {v1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    #@1b
    .line 897
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@1d
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    #@20
    .line 898
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@22
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@25
    .line 899
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@27
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    #@2a
    .line 900
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@2c
    invoke-virtual {v1, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    #@2f
    .line 901
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@31
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    #@33
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@36
    .line 902
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@38
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@3a
    .line 903
    const v3, 0x10405d8

    #@3d
    .line 902
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@44
    .line 906
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_0

    #@4a
    .line 907
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@4c
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    #@4e
    int-to-float v2, v2

    #@4f
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    #@52
    .line 908
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@54
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    #@57
    .line 909
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@59
    .line 910
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    #@5c
    move-result v2

    #@5d
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@5f
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    #@62
    move-result v3

    #@63
    sub-int/2addr v2, v3

    #@64
    int-to-float v2, v2

    #@65
    .line 909
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    #@68
    .line 911
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@6a
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    #@6d
    .line 922
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    #@6f
    if-eqz v1, :cond_1

    #@71
    .line 923
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@73
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@75
    int-to-float v2, v2

    #@76
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    #@79
    .line 924
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@7b
    .line 925
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    #@7e
    move-result v2

    #@7f
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@81
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    #@84
    move-result v3

    #@85
    sub-int/2addr v2, v3

    #@86
    int-to-float v2, v2

    #@87
    .line 924
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    #@8a
    .line 926
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@8c
    .line 927
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    #@8f
    move-result v2

    #@90
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@92
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    #@95
    move-result v3

    #@96
    sub-int/2addr v2, v3

    #@97
    int-to-float v2, v2

    #@98
    .line 926
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setY(F)V

    #@9b
    .line 928
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@9d
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    #@a0
    .line 889
    :goto_1
    return-void

    #@a1
    .line 913
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@a3
    .line 914
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@a5
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    #@a8
    move-result v2

    #@a9
    .line 915
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    #@ac
    move-result v3

    #@ad
    .line 914
    sub-int/2addr v2, v3

    #@ae
    .line 915
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    #@b0
    .line 914
    sub-int/2addr v2, v3

    #@b1
    int-to-float v2, v2

    #@b2
    .line 913
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    #@b5
    .line 916
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@b7
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@b9
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    #@bc
    move-result v2

    #@bd
    neg-float v2, v2

    #@be
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    #@c1
    .line 917
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@c3
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setX(F)V

    #@c6
    .line 918
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@c8
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    #@cb
    goto :goto_0

    #@cc
    .line 931
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@ce
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@d0
    int-to-float v2, v2

    #@d1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    #@d4
    .line 932
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@d6
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    #@d9
    .line 933
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@db
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    #@de
    .line 934
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@e0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@e2
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@e5
    move-result v2

    #@e6
    int-to-float v2, v2

    #@e7
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    #@ea
    goto :goto_1

    #@eb
    .line 938
    .end local v0    # "containerSize":Landroid/util/Size;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@ed
    .line 939
    .restart local v0    # "containerSize":Landroid/util/Size;
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@ef
    invoke-static {v1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    #@f2
    .line 940
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@f4
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    #@f7
    .line 941
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@f9
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@fc
    .line 942
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@fe
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    #@101
    .line 943
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@103
    invoke-virtual {v1, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    #@106
    .line 944
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@108
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    #@10a
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@10d
    .line 945
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@10f
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@111
    .line 946
    const v3, 0x10405d7

    #@114
    .line 945
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@117
    move-result-object v2

    #@118
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@11b
    .line 948
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    #@11e
    move-result v1

    #@11f
    if-eqz v1, :cond_5

    #@121
    .line 950
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    #@124
    move-result v1

    #@125
    if-eqz v1, :cond_3

    #@127
    .line 951
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@129
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    #@12b
    int-to-float v2, v2

    #@12c
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    #@12f
    .line 952
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@131
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    #@134
    .line 953
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@136
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setX(F)V

    #@139
    .line 954
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@13b
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    #@13e
    .line 967
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    #@140
    if-eqz v1, :cond_4

    #@142
    .line 968
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@144
    .line 969
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@146
    .line 970
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@148
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    #@14b
    move-result v3

    #@14c
    .line 969
    add-int/2addr v2, v3

    #@14d
    .line 970
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    #@150
    move-result v3

    #@151
    .line 969
    sub-int/2addr v2, v3

    #@152
    int-to-float v2, v2

    #@153
    .line 968
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    #@156
    .line 971
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@158
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    #@15b
    .line 972
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@15d
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    #@160
    .line 973
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@162
    .line 974
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    #@165
    move-result v2

    #@166
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@168
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    #@16b
    move-result v3

    #@16c
    sub-int/2addr v2, v3

    #@16d
    int-to-float v2, v2

    #@16e
    .line 973
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    #@171
    goto/16 :goto_1

    #@173
    .line 956
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@175
    .line 957
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@177
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    #@17a
    move-result v2

    #@17b
    .line 958
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    #@17e
    move-result v3

    #@17f
    .line 957
    sub-int/2addr v2, v3

    #@180
    .line 958
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    #@182
    .line 957
    sub-int/2addr v2, v3

    #@183
    int-to-float v2, v2

    #@184
    .line 956
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    #@187
    .line 959
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@189
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    #@18c
    .line 960
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@18e
    .line 961
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    #@191
    move-result v2

    #@192
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@194
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    #@197
    move-result v3

    #@198
    sub-int/2addr v2, v3

    #@199
    int-to-float v2, v2

    #@19a
    .line 960
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    #@19d
    .line 962
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@19f
    .line 963
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    #@1a2
    move-result v2

    #@1a3
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@1a5
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    #@1a8
    move-result v3

    #@1a9
    sub-int/2addr v2, v3

    #@1aa
    int-to-float v2, v2

    #@1ab
    .line 962
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    #@1ae
    goto :goto_2

    #@1af
    .line 977
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@1b1
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@1b3
    int-to-float v2, v2

    #@1b4
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    #@1b7
    .line 978
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@1b9
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    #@1bc
    .line 979
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@1be
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    #@1c1
    .line 980
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@1c3
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@1c5
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@1c8
    move-result v2

    #@1c9
    int-to-float v2, v2

    #@1ca
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    #@1cd
    goto/16 :goto_1

    #@1cf
    .line 984
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@1d1
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    #@1d3
    int-to-float v2, v2

    #@1d4
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    #@1d7
    .line 985
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@1d9
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@1db
    int-to-float v2, v2

    #@1dc
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    #@1df
    .line 986
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@1e1
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    #@1e4
    .line 987
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@1e6
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    #@1e9
    goto/16 :goto_1
.end method

.method private static setSize(Landroid/view/View;II)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1435
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    #@4
    .line 1436
    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    #@7
    .line 1437
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a
    move-result-object v0

    #@b
    .line 1438
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    #@d
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@f
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@12
    .line 1439
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@14
    .line 1440
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@16
    .line 1441
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@19
    .line 1434
    return-void
.end method

.method private static setSize(Landroid/view/View;Landroid/util/Size;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "size"    # Landroid/util/Size;

    #@0
    .prologue
    .line 1445
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    #@7
    move-result v1

    #@8
    invoke-static {p0, v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    #@b
    .line 1444
    return-void
.end method

.method private setTouchableSurfaceInsetsComputer()V
    .locals 2

    #@0
    .prologue
    .line 1083
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
    .line 1086
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    #@13
    .line 1087
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    #@18
    .line 1082
    return-void
.end method

.method private static setWidth(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    #@0
    .prologue
    .line 1449
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 1450
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@6
    invoke-static {p0, p1, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    #@9
    .line 1448
    return-void
.end method

.method private setZeroTouchableSurface()V
    .locals 1

    #@0
    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    #@5
    .line 1051
    return-void
.end method

.method private updateOverflowHeight(I)V
    .locals 6
    .param p1, "suggestedHeight"    # I

    #@0
    .prologue
    .line 993
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_2

    #@6
    .line 994
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@8
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    #@b
    move-result v3

    #@c
    sub-int v3, p1, v3

    #@e
    .line 995
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@10
    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getLineHeight(Landroid/content/Context;)I

    #@13
    move-result v4

    #@14
    .line 994
    div-int v1, v3, v4

    #@16
    .line 996
    .local v1, "maxItemSize":I
    invoke-direct {p0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    #@19
    move-result v2

    #@1a
    .line 997
    .local v2, "newHeight":I
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@1c
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    #@1f
    move-result v3

    #@20
    if-eq v3, v2, :cond_0

    #@22
    .line 998
    new-instance v3, Landroid/util/Size;

    #@24
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@26
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    #@29
    move-result v4

    #@2a
    invoke-direct {v3, v4, v2}, Landroid/util/Size;-><init>(II)V

    #@2d
    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@2f
    .line 1000
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    #@31
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@33
    invoke-static {v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    #@36
    .line 1001
    iget-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    #@38
    if-eqz v3, :cond_3

    #@3a
    .line 1002
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@3c
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@3e
    invoke-static {v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    #@41
    .line 1003
    iget-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    #@43
    if-eqz v3, :cond_1

    #@45
    .line 1004
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@47
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    #@4a
    move-result v3

    #@4b
    sub-int v0, v3, v2

    #@4d
    .line 1005
    .local v0, "deltaHeight":I
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@4f
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@51
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    #@54
    move-result v4

    #@55
    int-to-float v5, v0

    #@56
    add-float/2addr v4, v5

    #@57
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setY(F)V

    #@5a
    .line 1006
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@5c
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    #@5e
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getY()F

    #@61
    move-result v4

    #@62
    int-to-float v5, v0

    #@63
    sub-float/2addr v4, v5

    #@64
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setY(F)V

    #@67
    .line 1011
    .end local v0    # "deltaHeight":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    #@6a
    .line 992
    .end local v1    # "maxItemSize":I
    .end local v2    # "newHeight":I
    :cond_2
    return-void

    #@6b
    .line 1009
    .restart local v1    # "maxItemSize":I
    .restart local v2    # "newHeight":I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    #@6d
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@6f
    invoke-static {v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    #@72
    goto :goto_0
.end method

.method private updatePopupSize()V
    .locals 4

    #@0
    .prologue
    .line 1016
    const/4 v1, 0x0

    #@1
    .line 1017
    .local v1, "width":I
    const/4 v0, 0x0

    #@2
    .line 1018
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1019
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@8
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@b
    move-result v2

    #@c
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v1

    #@10
    .line 1020
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@12
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@15
    move-result v2

    #@16
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@19
    move-result v0

    #@1a
    .line 1022
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 1023
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@20
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@23
    move-result v2

    #@24
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@27
    move-result v1

    #@28
    .line 1024
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    #@2a
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@2d
    move-result v2

    #@2e
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@31
    move-result v0

    #@32
    .line 1026
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@34
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    #@36
    mul-int/lit8 v3, v3, 0x2

    #@38
    add-int/2addr v3, v1

    #@39
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@3c
    .line 1027
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@3e
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    #@40
    mul-int/lit8 v3, v3, 0x2

    #@42
    add-int/2addr v3, v0

    #@43
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@46
    .line 1028
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->maybeComputeTransitionDurationScale()V

    #@49
    .line 1015
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 530
    return-void

    #@5
    .line 533
    :cond_0
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    #@8
    .line 534
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    #@b
    .line 535
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    #@d
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    #@10
    .line 537
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->runDismissAnimation()V

    #@13
    .line 538
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    #@16
    .line 528
    return-void
.end method

.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 547
    return-void

    #@7
    .line 550
    :cond_0
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    #@a
    .line 551
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->runHideAnimation()V

    #@d
    .line 552
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    #@10
    .line 545
    return-void
.end method

.method public isHidden()Z
    .locals 1

    #@0
    .prologue
    .line 566
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
    .line 559
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

.method public layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;
    .locals 18
    .param p2, "toolbarWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1108
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1110
    move/from16 v2, p2

    #@5
    .line 1111
    .local v2, "availableWidth":I
    new-instance v10, Ljava/util/LinkedList;

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-direct {v10, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    #@c
    .line 1113
    .local v10, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    move-object/from16 v0, p0

    #@e
    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@10
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    #@13
    .line 1114
    move-object/from16 v0, p0

    #@15
    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@17
    const/4 v12, 0x0

    #@18
    const/4 v13, 0x0

    #@19
    const/4 v14, 0x0

    #@1a
    const/4 v15, 0x0

    #@1b
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    #@1e
    .line 1116
    const/4 v5, 0x1

    #@1f
    .line 1117
    .local v5, "isFirstItem":Z
    :goto_0
    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    #@22
    move-result v11

    #@23
    if-nez v11, :cond_6

    #@25
    .line 1118
    invoke-virtual {v10}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    #@28
    move-result-object v6

    #@29
    check-cast v6, Landroid/view/MenuItem;

    #@2b
    .line 1119
    .local v6, "menuItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    #@2d
    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    #@2f
    invoke-static {v11, v6}, Lcom/android/internal/widget/FloatingToolbar;->-wrap3(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    #@32
    move-result-object v7

    #@33
    .line 1122
    .local v7, "menuItemButton":Landroid/view/View;
    if-eqz v5, :cond_0

    #@35
    .line 1124
    invoke-virtual {v7}, Landroid/view/View;->getPaddingStart()I

    #@38
    move-result v11

    #@39
    int-to-double v12, v11

    #@3a
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    #@3c
    mul-double/2addr v12, v14

    #@3d
    double-to-int v11, v12

    #@3e
    .line 1125
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    #@41
    move-result v12

    #@42
    .line 1126
    invoke-virtual {v7}, Landroid/view/View;->getPaddingEnd()I

    #@45
    move-result v13

    #@46
    .line 1127
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    #@49
    move-result v14

    #@4a
    .line 1123
    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/view/View;->setPaddingRelative(IIII)V

    #@4d
    .line 1128
    const/4 v5, 0x0

    #@4e
    .line 1132
    :cond_0
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    #@51
    move-result v11

    #@52
    const/4 v12, 0x1

    #@53
    if-ne v11, v12, :cond_1

    #@55
    .line 1134
    invoke-virtual {v7}, Landroid/view/View;->getPaddingStart()I

    #@58
    move-result v11

    #@59
    .line 1135
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    #@5c
    move-result v12

    #@5d
    .line 1136
    invoke-virtual {v7}, Landroid/view/View;->getPaddingEnd()I

    #@60
    move-result v13

    #@61
    int-to-double v14, v13

    #@62
    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    #@64
    mul-double v14, v14, v16

    #@66
    double-to-int v13, v14

    #@67
    .line 1137
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    #@6a
    move-result v14

    #@6b
    .line 1133
    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/view/View;->setPaddingRelative(IIII)V

    #@6e
    .line 1140
    :cond_1
    const/4 v11, 0x0

    #@6f
    const/4 v12, 0x0

    #@70
    invoke-virtual {v7, v11, v12}, Landroid/view/View;->measure(II)V

    #@73
    .line 1141
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    #@76
    move-result v11

    #@77
    move/from16 v0, p2

    #@79
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    #@7c
    move-result v8

    #@7d
    .line 1144
    .local v8, "menuItemButtonWidth":I
    move-object/from16 v0, p0

    #@7f
    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@81
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    #@84
    move-result v11

    #@85
    sub-int v11, v2, v11

    #@87
    if-gt v8, v11, :cond_3

    #@89
    const/4 v4, 0x1

    #@8a
    .line 1146
    .local v4, "canFitWithOverflow":Z
    :goto_1
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    #@8d
    move-result v11

    #@8e
    const/4 v12, 0x1

    #@8f
    if-ne v11, v12, :cond_4

    #@91
    if-gt v8, v2, :cond_4

    #@93
    const/4 v3, 0x1

    #@94
    .line 1147
    .local v3, "canFitNoOverflow":Z
    :goto_2
    if-nez v4, :cond_2

    #@96
    if-eqz v3, :cond_5

    #@98
    .line 1148
    :cond_2
    move-object/from16 v0, p0

    #@9a
    invoke-direct {v0, v7, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    #@9d
    .line 1149
    move-object/from16 v0, p0

    #@9f
    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@a1
    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@a4
    .line 1150
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a7
    move-result-object v9

    #@a8
    .line 1151
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v8, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@aa
    .line 1152
    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@ad
    .line 1153
    sub-int/2addr v2, v8

    #@ae
    .line 1154
    invoke-virtual {v10}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    #@b1
    goto/16 :goto_0

    #@b3
    .line 1144
    .end local v3    # "canFitNoOverflow":Z
    .end local v4    # "canFitWithOverflow":Z
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v4, 0x0

    #@b4
    .restart local v4    # "canFitWithOverflow":Z
    goto :goto_1

    #@b5
    .line 1146
    :cond_4
    const/4 v3, 0x0

    #@b6
    .restart local v3    # "canFitNoOverflow":Z
    goto :goto_2

    #@b7
    .line 1157
    :cond_5
    move-object/from16 v0, p0

    #@b9
    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@bb
    move-object/from16 v0, p0

    #@bd
    iget-object v12, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    #@bf
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    #@c2
    move-result v12

    #@c3
    const/4 v13, 0x0

    #@c4
    const/4 v14, 0x0

    #@c5
    const/4 v15, 0x0

    #@c6
    invoke-virtual {v11, v13, v14, v12, v15}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    #@c9
    .line 1161
    .end local v3    # "canFitNoOverflow":Z
    .end local v4    # "canFitWithOverflow":Z
    .end local v6    # "menuItem":Landroid/view/MenuItem;
    .end local v7    # "menuItemButton":Landroid/view/View;
    .end local v8    # "menuItemButtonWidth":I
    :cond_6
    move-object/from16 v0, p0

    #@cb
    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    #@cd
    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    #@d0
    move-result-object v11

    #@d1
    move-object/from16 v0, p0

    #@d3
    iput-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    #@d5
    .line 1162
    return-object v10
.end method

.method public layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V
    .locals 1
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
    .line 487
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iput-object p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@2
    .line 488
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    #@5
    .line 489
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->clearPanels()V

    #@8
    .line 490
    invoke-direct {p0, p3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedToolbarWidth(I)I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;

    #@f
    move-result-object p1

    #@10
    .line 491
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 493
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->layoutOverflowPanelItems(Ljava/util/List;)V

    #@19
    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    #@1c
    .line 486
    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 503
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 505
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 506
    return-void

    #@b
    .line 509
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    #@d
    .line 510
    iput-boolean v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    #@f
    .line 511
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelDismissAndHideAnimations()V

    #@12
    .line 512
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    #@15
    .line 514
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    #@18
    .line 515
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    #@1b
    .line 519
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@1d
    .line 520
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    #@1f
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    #@21
    iget v2, v2, Landroid/graphics/Point;->x:I

    #@23
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    #@25
    iget v3, v3, Landroid/graphics/Point;->y:I

    #@27
    .line 519
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    #@2a
    .line 521
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setTouchableSurfaceInsetsComputer()V

    #@2d
    .line 522
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->runShowAnimation()V

    #@30
    .line 502
    return-void
.end method

.method public updateCoordinates(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 575
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 577
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
    .line 581
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    #@14
    .line 582
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    #@17
    .line 583
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    #@1a
    .line 587
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@1c
    .line 588
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    #@1e
    iget v1, v1, Landroid/graphics/Point;->x:I

    #@20
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    #@22
    iget v2, v2, Landroid/graphics/Point;->y:I

    #@24
    .line 589
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@26
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    #@29
    move-result v3

    #@2a
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@2c
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    #@2f
    move-result v4

    #@30
    .line 587
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    #@33
    .line 574
    return-void

    #@34
    .line 578
    :cond_0
    return-void
.end method
