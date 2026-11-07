.class public final Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;
.super Ljava/lang/Object;
.source "LocalFloatingToolbarPopup.java"

# interfaces
.implements Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;,
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;,
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;,
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;
    }
.end annotation


# static fields
.field private static final blacklist MAX_OVERFLOW_SIZE:I = 0x4

.field private static final blacklist MIN_OVERFLOW_SIZE:I = 0x2


# instance fields
.field private final blacklist mArrow:Landroid/graphics/drawable/Drawable;

.field private final blacklist mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private final blacklist mContentContainer:Landroid/view/ViewGroup;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mCoordsOnWindow:Landroid/graphics/Point;

.field private final blacklist mDismissAnimation:Landroid/animation/AnimatorSet;

.field private blacklist mDismissed:Z

.field private final blacklist mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mHidden:Z

.field private final blacklist mHideAnimation:Landroid/animation/AnimatorSet;

.field private final blacklist mIconTextSpacing:I

.field private final blacklist mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private blacklist mIsOverflowOpen:Z

.field private final blacklist mLineHeight:I

.field private final blacklist mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mMainPanel:Landroid/view/ViewGroup;

.field private blacklist mMainPanelSize:Landroid/util/Size;

.field private final blacklist mMarginHorizontal:I

.field private final blacklist mMarginVertical:I

.field private final blacklist mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final blacklist mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private blacklist mOpenOverflowUpwards:Z

.field private final blacklist mOverflow:Landroid/graphics/drawable/Drawable;

.field private final blacklist mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final blacklist mOverflowButton:Landroid/widget/ImageButton;

.field private final blacklist mOverflowButtonSize:Landroid/util/Size;

.field private final blacklist mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

.field private blacklist mOverflowPanelSize:Landroid/util/Size;

.field private final blacklist mOverflowPanelViewHelper:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

.field private final blacklist mParent:Landroid/view/View;

.field private final blacklist mPopupWindow:Landroid/widget/PopupWindow;

.field private final blacklist mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

.field private final blacklist mPreviousContentRect:Landroid/graphics/Rect;

.field private final blacklist mShowAnimation:Landroid/animation/AnimatorSet;

.field private blacklist mSuggestedWidth:I

.field private final blacklist mTmpCoords:[I

.field private final blacklist mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final blacklist mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final blacklist mTouchableRegion:Landroid/graphics/Region;

.field private blacklist mTransitionDurationScale:I

.field private final blacklist mViewPortOnScreen:Landroid/graphics/Rect;

.field private blacklist mWidthChanged:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$2MovvN53vEh_bVj4Kqa2QSY0tU4(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Landroid/widget/ImageButton;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->lambda$createOverflowButton$1(Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DTCA0Rxm1hmLW53JUx7Q_Gm5MJw(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->lambda$createOverflowPanel$2(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FIeQiJjFc85jzgiwriKozs8K89s(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentContainer(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainPanel(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainPanelSize(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/util/Size;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMenuItems(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMenuItemClickListener(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpenOverflowUpwards(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowButton(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowButtonSize(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/util/Size;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanel(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanelSize(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/util/Size;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanelViewHelper(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPopupWindow(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misInRTLMode(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misOverflowAnimating(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isOverflowAnimating()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpositionContentYCoordinatesIfOpeningOverflowUpwards(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->positionContentYCoordinatesIfOpeningOverflowUpwards()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetContentAreaAsTouchableSurface(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPanelsStatesAtRestingPosition(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetHeight(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setHeight(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetWidth(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smupdateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    .line 126
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    .line 127
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 142
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$1;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    .line 160
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    .line 162
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$2;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 186
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreviousContentRect:Landroid/graphics/Rect;

    .line 188
    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    .line 197
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    .line 198
    invoke-static {p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 199
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 200
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 201
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 202
    const v2, 0x105018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    .line 203
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 204
    const v2, 0x1050198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 206
    const v2, 0x105018a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 208
    const v2, 0x105018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIconTextSpacing:I

    .line 211
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup-IA;)V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 212
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 214
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 216
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 220
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1080377

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    .line 222
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 223
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1080375

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    .line 225
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 227
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1080376

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 228
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 229
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1080378

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 231
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 234
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createOverflowButton()Landroid/widget/ImageButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 235
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 236
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createMainPanel()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    .line 237
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIconTextSpacing:I

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    .line 238
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createOverflowPanel()Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 241
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 242
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 243
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 244
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$3;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$3;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    const/16 v2, 0x96

    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    .line 257
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$4;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    .line 266
    return-void
.end method

.method private static blacklist applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;
    .registers 5
    .param p0, "originalContext"    # Landroid/content/Context;

    .line 1553
    const v0, 0x1010590

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1554
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 1556
    .local v1, "isLightTheme":Z
    if-eqz v1, :cond_17

    const v2, 0x103012b

    goto :goto_1a

    :cond_17
    const v2, 0x1030128

    .line 1557
    .local v2, "themeId":I
    :goto_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1558
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v3
.end method

.method private blacklist calculateOverflowHeight(I)I
    .registers 6
    .param p1, "maxItemSize"    # I

    .line 1148
    nop

    .line 1151
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 1152
    invoke-virtual {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getCount()I

    move-result v1

    .line 1150
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1148
    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1153
    .local v0, "actualSize":I
    const/4 v1, 0x0

    .line 1154
    .local v1, "extension":I
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 1157
    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 1159
    :cond_25
    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 1160
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 1159
    return v2
.end method

.method private blacklist cancelDismissAndHideAnimations()V
    .registers 2

    .line 582
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 583
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 584
    return-void
.end method

.method private blacklist cancelOverflowAnimations()V
    .registers 2

    .line 587
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 588
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 589
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 590
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 591
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 592
    return-void
.end method

.method private blacklist clearPanels()V
    .registers 3

    .line 1116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 1117
    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 1118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 1119
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1120
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 1121
    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1122
    .local v0, "overflowPanelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/view/MenuItem;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1123
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1124
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1125
    return-void
.end method

.method private blacklist closeOverflow()V
    .registers 17

    .line 672
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 673
    .local v2, "targetWidth":I
    iget-object v0, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 674
    .local v3, "startWidth":I
    iget-object v0, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    .line 675
    .local v4, "left":F
    iget-object v0, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v5, v4, v0

    .line 676
    .local v5, "right":F
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$8;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$8;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIFF)V

    .line 697
    .local v0, "widthAnimation":Landroid/view/animation/Animation;
    iget-object v6, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 698
    .local v6, "targetHeight":I
    iget-object v7, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    .line 699
    .local v7, "startHeight":I
    iget-object v8, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    iget-object v9, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 700
    .local v8, "bottom":F
    new-instance v9, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$9;

    invoke-direct {v9, v1, v6, v7, v8}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$9;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIF)V

    .line 711
    .local v9, "heightAnimation":Landroid/view/animation/Animation;
    iget-object v10, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getX()F

    move-result v10

    .line 713
    .local v10, "overflowButtonStartX":F
    invoke-direct {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v11

    if-eqz v11, :cond_59

    int-to-float v11, v3

    sub-float v11, v10, v11

    iget-object v12, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    goto :goto_63

    .line 714
    :cond_59
    int-to-float v11, v3

    add-float/2addr v11, v10

    iget-object v12, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    :goto_63
    nop

    .line 715
    .local v11, "overflowButtonTargetX":F
    new-instance v12, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;

    invoke-direct {v12, v1, v10, v11, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;FFI)V

    .line 726
    .local v12, "overflowButtonAnimation":Landroid/view/animation/Animation;
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 727
    const/16 v13, 0xfa

    invoke-direct {v1, v13}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v0, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 728
    iget-object v14, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 729
    invoke-direct {v1, v13}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v9, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 730
    iget-object v14, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 731
    invoke-direct {v1, v13}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 732
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v13}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 733
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 734
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v13, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 735
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 736
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v14, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 737
    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 738
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 739
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    iget-object v14, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 740
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 741
    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 742
    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 743
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v13}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 744
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    iget-object v14, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 745
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 746
    const-wide/16 v14, 0x96

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 747
    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 748
    return-void
.end method

.method private static blacklist createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1495
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1496
    const v1, 0x1090080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1497
    .local v0, "contentContainer":Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1499
    const-string v1, "floating_toolbar"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1500
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 1501
    return-object v0
.end method

.method private static blacklist createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .line 1526
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1527
    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_22

    .line 1528
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1527
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1529
    return-object v0

    nop

    :array_22
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static blacklist createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startDelay"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1541
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1542
    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_28

    .line 1543
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1542
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1544
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1545
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1546
    return-object v0

    :array_28
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private blacklist createMainPanel()Landroid/view/ViewGroup;
    .registers 3

    .line 1199
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$11;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$11;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Landroid/content/Context;)V

    .line 1218
    .local v0, "mainPanel":Landroid/view/ViewGroup;
    return-object v0
.end method

.method private static blacklist createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "iconTextSpacing"    # I
    .param p3, "showIcon"    # Z

    .line 1450
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1451
    const v1, 0x1090081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1452
    .local v0, "menuItemButton":Landroid/view/View;
    if-eqz p1, :cond_11

    .line 1453
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    .line 1455
    :cond_11
    return-object v0
.end method

.method private blacklist createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    .line 1275
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    .line 1301
    .local v0, "listener":Landroid/view/animation/Animation$AnimationListener;
    return-object v0
.end method

.method private blacklist createOverflowButton()Landroid/widget/ImageButton;
    .registers 4

    .line 1222
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1223
    const v1, 0x1090083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1224
    .local v0, "overflowButton":Landroid/widget/ImageButton;
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1225
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1236
    return-object v0
.end method

.method private blacklist createOverflowPanel()Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    .registers 5

    .line 1240
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    .line 1241
    .local v0, "overflowPanel":Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1243
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setDividerHeight(I)V

    .line 1246
    new-instance v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$12;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$12;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Landroid/content/Context;I)V

    .line 1254
    .local v2, "adapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1256
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1263
    return-object v0
.end method

.method private static blacklist createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;
    .registers 5
    .param p0, "content"    # Landroid/view/ViewGroup;

    .line 1505
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1506
    .local v0, "popupContentHolder":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 1509
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1510
    const/16 v3, 0x3ed

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1512
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1513
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1514
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1516
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1517
    return-object v1
.end method

.method private blacklist getAdjustedDuration(I)I
    .registers 4
    .param p1, "originalDuration"    # I

    .line 1174
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTransitionDurationScale:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_e

    .line 1176
    add-int/lit8 v0, p1, -0x32

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1177
    :cond_e
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTransitionDurationScale:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_17

    .line 1179
    add-int/lit8 v0, p1, 0x32

    return v0

    .line 1186
    :cond_17
    int-to-float v0, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private blacklist getAdjustedToolbarWidth(I)I
    .registers 6
    .param p1, "suggestedWidth"    # I

    .line 899
    move v0, p1

    .line 900
    .local v0, "width":I
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshViewPort()V

    .line 901
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 902
    const v3, 0x105018b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 903
    .local v1, "maximumWidth":I
    if-gtz v0, :cond_29

    .line 904
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 905
    const v3, 0x1050196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 907
    :cond_29
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private blacklist getOverflowWidth()I
    .registers 6

    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, "overflowWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1138
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_27

    .line 1139
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 1140
    .local v3, "menuItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    .line 1141
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->calculateWidth(Landroid/view/MenuItem;)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1138
    .end local v3    # "menuItem":Landroid/view/MenuItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1143
    .end local v2    # "i":I
    :cond_27
    return v0
.end method

.method private blacklist hasOverflow()Z
    .registers 2

    .line 960
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist isInRTLMode()Z
    .registers 3

    .line 954
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 955
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 954
    :goto_1f
    return v1
.end method

.method private blacklist isLayoutRequired(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .line 320
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->reprEquals(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist isOverflowAnimating()Z
    .registers 5

    .line 1267
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 1268
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 1269
    .local v0, "overflowOpening":Z
    :goto_15
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 1270
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v2

    .line 1271
    .local v3, "overflowClosing":Z
    :goto_28
    if-nez v0, :cond_2e

    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :cond_2e
    :goto_2e
    return v1
.end method

.method private synthetic blacklist lambda$createOverflowButton$1(Landroid/widget/ImageButton;Landroid/view/View;)V
    .registers 4
    .param p1, "overflowButton"    # Landroid/widget/ImageButton;
    .param p2, "v"    # Landroid/view/View;

    .line 1226
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_12

    .line 1227
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1228
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1229
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->closeOverflow()V

    goto :goto_1f

    .line 1231
    :cond_12
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1232
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1233
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->openOverflow()V

    .line 1235
    :goto_1f
    return-void
.end method

.method private synthetic blacklist lambda$createOverflowPanel$2(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "overflowPanel"    # Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 1257
    invoke-virtual {p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 1258
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_13

    .line 1259
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 1261
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 129
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 130
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 131
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 132
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 134
    return-void
.end method

.method private blacklist layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V
    .registers 5
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .param p3, "suggestedWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "I)V"
        }
    .end annotation

    .line 290
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 291
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->clearPanels()V

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 293
    invoke-direct {p0, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedToolbarWidth(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 294
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 296
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->layoutOverflowPanelItems(Ljava/util/List;)V

    .line 298
    :cond_1a
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updatePopupSize()V

    .line 299
    return-void
.end method

.method private blacklist layoutOverflowPanelItems(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 1065
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 1066
    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1067
    .local v0, "overflowPanelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/view/MenuItem;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1068
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1069
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_1e

    .line 1070
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1069
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1072
    .end local v2    # "i":I
    :cond_1e
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1073
    iget-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v2, :cond_2e

    .line 1074
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_3a

    .line 1076
    :cond_2e
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    .line 1079
    :goto_3a
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getOverflowWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1080
    .local v2, "width":I
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v3

    .line 1081
    .local v3, "height":I
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 1082
    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v4, v5}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 1083
    return-void
.end method

.method private blacklist maybeComputeTransitionDurationScale()V
    .registers 7

    .line 1190
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_41

    .line 1191
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1192
    .local v0, "w":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1193
    .local v1, "h":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 1194
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTransitionDurationScale:I

    .line 1196
    .end local v0    # "w":I
    .end local v1    # "h":I
    :cond_41
    return-void
.end method

.method private static blacklist measure(Landroid/view/View;)Landroid/util/Size;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 1305
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1306
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1307
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private blacklist openOverflow()V
    .registers 17

    .line 595
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 596
    .local v2, "targetWidth":I
    iget-object v0, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 597
    .local v6, "targetHeight":I
    iget-object v0, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 598
    .local v3, "startWidth":I
    iget-object v0, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    .line 599
    .local v7, "startHeight":I
    iget-object v0, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    .line 600
    .local v8, "startY":F
    iget-object v0, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    .line 601
    .local v4, "left":F
    iget-object v0, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v5, v4, v0

    .line 602
    .local v5, "right":F
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$5;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$5;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIFF)V

    .line 623
    .local v0, "widthAnimation":Landroid/view/animation/Animation;
    new-instance v9, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;

    invoke-direct {v9, v1, v6, v7, v8}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIF)V

    .line 635
    .local v9, "heightAnimation":Landroid/view/animation/Animation;
    iget-object v10, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getX()F

    move-result v10

    .line 637
    .local v10, "overflowButtonStartX":F
    invoke-direct {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v11

    if-eqz v11, :cond_50

    int-to-float v11, v2

    add-float/2addr v11, v10

    iget-object v12, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    goto :goto_5b

    .line 638
    :cond_50
    int-to-float v11, v2

    sub-float v11, v10, v11

    iget-object v12, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    :goto_5b
    nop

    .line 639
    .local v11, "overflowButtonTargetX":F
    new-instance v12, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$7;

    invoke-direct {v12, v1, v10, v11, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$7;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;FFI)V

    .line 650
    .local v12, "overflowButtonAnimation":Landroid/view/animation/Animation;
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 651
    const/16 v13, 0xfa

    invoke-direct {v1, v13}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v0, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 652
    iget-object v14, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 653
    invoke-direct {v1, v13}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v9, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 654
    iget-object v14, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 655
    invoke-direct {v1, v13}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 656
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v13}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 657
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v13}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 658
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 659
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v13, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 660
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 661
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v14, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 662
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 663
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 664
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    iget-object v14, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 665
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 666
    const-wide/16 v14, 0xfa

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 667
    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 668
    iget-object v13, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    .line 669
    return-void
.end method

.method private blacklist positionContentYCoordinatesIfOpeningOverflowUpwards()V
    .registers 4

    .line 1128
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v0, :cond_3d

    .line 1129
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1130
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setY(F)V

    .line 1131
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    .line 1133
    :cond_3d
    return-void
.end method

.method private blacklist preparePopupContent()V
    .registers 3

    .line 1089
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1093
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1094
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1096
    :cond_12
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1097
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1098
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1100
    :cond_26
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    .line 1101
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    .line 1106
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1107
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1108
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1110
    :cond_3f
    return-void
.end method

.method private blacklist refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .registers 19
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshViewPort()V

    .line 439
    iget-object v2, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x2

    if-le v2, v3, :cond_1b

    .line 441
    iget-object v2, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .local v2, "x":I
    goto :goto_3b

    .line 444
    .end local v2    # "x":I
    :cond_1b
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 445
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    .line 444
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->clamp(JII)I

    move-result v2

    .line 450
    .restart local v2    # "x":I
    :goto_3b
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    .line 452
    .local v3, "availableHeightAboveContent":I
    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 455
    .local v5, "availableHeightBelowContent":I
    iget v6, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    mul-int/2addr v6, v4

    .line 456
    .local v6, "margin":I
    iget v7, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    add-int/2addr v7, v6

    .line 458
    .local v7, "toolbarHeightWithVerticalMargin":I
    invoke-direct {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_7c

    .line 459
    if-lt v3, v7, :cond_5e

    .line 461
    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v7

    .local v4, "y":I
    goto/16 :goto_f1

    .line 462
    .end local v4    # "y":I
    :cond_5e
    if-lt v5, v7, :cond_64

    .line 464
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .restart local v4    # "y":I
    goto/16 :goto_f1

    .line 465
    .end local v4    # "y":I
    :cond_64
    iget v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    if-lt v5, v4, :cond_6f

    .line 467
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    sub-int/2addr v4, v8

    .restart local v4    # "y":I
    goto/16 :goto_f1

    .line 470
    .end local v4    # "y":I
    :cond_6f
    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v7

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .restart local v4    # "y":I
    goto/16 :goto_f1

    .line 476
    .end local v4    # "y":I
    :cond_7c
    nop

    .line 477
    invoke-direct {v0, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v4

    add-int/2addr v4, v6

    .line 478
    .local v4, "minimumOverflowHeightWithMargin":I
    iget-object v8, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v11

    add-int/2addr v8, v7

    .line 481
    .local v8, "availableHeightThroughContentDown":I
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v11, v7

    .line 485
    .local v11, "availableHeightThroughContentUp":I
    if-lt v3, v4, :cond_a6

    .line 488
    sub-int v12, v3, v6

    invoke-direct {v0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 489
    iget v12, v1, Landroid/graphics/Rect;->top:I

    iget-object v13, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    .line 490
    .local v12, "y":I
    iput-boolean v9, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    move v4, v12

    goto :goto_f1

    .line 491
    .end local v12    # "y":I
    :cond_a6
    if-lt v3, v7, :cond_b6

    if-lt v8, v4, :cond_b6

    .line 496
    sub-int v12, v8, v6

    invoke-direct {v0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 497
    iget v12, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v7

    .line 498
    .restart local v12    # "y":I
    iput-boolean v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    move v4, v12

    goto :goto_f1

    .line 499
    .end local v12    # "y":I
    :cond_b6
    if-lt v5, v4, :cond_c3

    .line 502
    sub-int v12, v5, v6

    invoke-direct {v0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 503
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 504
    .restart local v12    # "y":I
    iput-boolean v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    move v4, v12

    goto :goto_f1

    .line 505
    .end local v12    # "y":I
    :cond_c3
    if-lt v5, v7, :cond_e0

    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 506
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-lt v12, v4, :cond_e0

    .line 510
    sub-int v12, v11, v6

    invoke-direct {v0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 511
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v7

    iget-object v13, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 512
    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    .line 513
    .restart local v12    # "y":I
    iput-boolean v9, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    move v4, v12

    goto :goto_f1

    .line 517
    .end local v12    # "y":I
    :cond_e0
    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-direct {v0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 518
    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 519
    .restart local v12    # "y":I
    iput-boolean v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    move v4, v12

    .line 530
    .end local v8    # "availableHeightThroughContentDown":I
    .end local v11    # "availableHeightThroughContentUp":I
    .end local v12    # "y":I
    .local v4, "y":I
    :goto_f1
    iget-object v8, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v8, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 531
    iget-object v8, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    aget v8, v8, v10

    .line 532
    .local v8, "rootViewLeftOnScreen":I
    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    aget v11, v11, v9

    .line 533
    .local v11, "rootViewTopOnScreen":I
    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    iget-object v13, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v12, v13}, Landroid/view/View;->getLocationInWindow([I)V

    .line 534
    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    aget v12, v12, v10

    .line 535
    .local v12, "rootViewLeftOnWindow":I
    iget-object v13, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    aget v9, v13, v9

    .line 536
    .local v9, "rootViewTopOnWindow":I
    sub-int v13, v8, v12

    .line 537
    .local v13, "windowLeftOnScreen":I
    sub-int v14, v11, v9

    .line 549
    .local v14, "windowTopOnScreen":I
    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 550
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v15}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 551
    .local v15, "appBounds":Landroid/graphics/Rect;
    iget-object v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    sub-int v1, v2, v13

    move/from16 v16, v2

    .end local v2    # "x":I
    .local v16, "x":I
    sub-int v2, v4, v14

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 552
    iget-object v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v8

    iget v2, v15, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_144

    .line 553
    iget-object v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 555
    :cond_144
    iget-object v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v11

    iget v2, v15, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_152

    .line 556
    iget-object v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 558
    :cond_152
    return-void
.end method

.method private blacklist refreshViewPort()V
    .registers 3

    .line 895
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 896
    return-void
.end method

.method private blacklist runDismissAnimation()V
    .registers 2

    .line 571
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 572
    return-void
.end method

.method private blacklist runHideAnimation()V
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 579
    return-void
.end method

.method private blacklist runShowAnimation()V
    .registers 2

    .line 564
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 565
    return-void
.end method

.method private blacklist setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .registers 4
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 1165
    invoke-static {p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1166
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    return-void
.end method

.method private blacklist setContentAreaAsTouchableSurface()V
    .registers 8

    .line 922
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_1b

    .line 926
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 928
    .local v0, "width":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .local v1, "height":I
    goto :goto_27

    .line 930
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 931
    .restart local v0    # "width":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 933
    .restart local v1    # "height":I
    :goto_27
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 934
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 935
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 936
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 937
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v1

    .line 933
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 938
    return-void
.end method

.method private static blacklist setHeight(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .line 1330
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1331
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p0, v1, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    .line 1332
    return-void
.end method

.method private blacklist setPanelsStatesAtRestingPosition()V
    .registers 7

    .line 755
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->awakenScrollBars()Z

    .line 758
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_ec

    .line 760
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 761
    .local v0, "containerSize":Landroid/util/Size;
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 762
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 763
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 764
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    .line 765
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    .line 766
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 767
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v3, 0x1040456

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 771
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 772
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 773
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 774
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 775
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 774
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 776
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    goto :goto_98

    .line 778
    :cond_6e
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 779
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 778
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 780
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 781
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setX(F)V

    .line 782
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    .line 786
    :goto_98
    iget-boolean v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_cc

    .line 787
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 788
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    .line 789
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 788
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 790
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 791
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 790
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setY(F)V

    .line 792
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_ea

    .line 795
    :cond_cc
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 796
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 797
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 798
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    .line 800
    .end local v0    # "containerSize":Landroid/util/Size;
    :goto_ea
    goto/16 :goto_1e8

    .line 802
    :cond_ec
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 803
    .restart local v0    # "containerSize":Landroid/util/Size;
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 804
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 805
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 806
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    .line 807
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    .line 808
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 809
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v3, 0x1040457

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 812
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v1

    if-eqz v1, :cond_1ce

    .line 814
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_140

    .line 815
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 816
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 817
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setX(F)V

    .line 818
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    goto :goto_17b

    .line 820
    :cond_140
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 821
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 820
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 822
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 823
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 824
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 823
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 825
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 826
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 825
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    .line 830
    :goto_17b
    iget-boolean v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_1af

    .line 831
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 832
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 833
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 831
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 834
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 835
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 836
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 837
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 836
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_1e8

    .line 840
    :cond_1af
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 841
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 842
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 843
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_1e8

    .line 847
    :cond_1ce
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 848
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 849
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 850
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 853
    .end local v0    # "containerSize":Landroid/util/Size;
    :goto_1e8
    return-void
.end method

.method private static blacklist setSize(Landroid/view/View;II)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1311
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1312
    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1313
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1314
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_13

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_14

    :cond_13
    move-object v1, v0

    .line 1315
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_14
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1316
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1317
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    return-void
.end method

.method private static blacklist setSize(Landroid/view/View;Landroid/util/Size;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "size"    # Landroid/util/Size;

    .line 1321
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    .line 1322
    return-void
.end method

.method private blacklist setTouchableSurfaceInsetsComputer()V
    .registers 3

    .line 946
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 948
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 949
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 950
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 951
    return-void
.end method

.method private static blacklist setWidth(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    .line 1325
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1326
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0, p1, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    .line 1327
    return-void
.end method

.method private blacklist setZeroTouchableSurface()V
    .registers 2

    .line 915
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 916
    return-void
.end method

.method private blacklist show(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 355
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 358
    return-void

    .line 361
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    .line 362
    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    .line 363
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->cancelDismissAndHideAnimations()V

    .line 364
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 366
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 367
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->preparePopupContent()V

    .line 371
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 373
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setTouchableSurfaceInsetsComputer()V

    .line 374
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->runShowAnimation()V

    .line 375
    return-void
.end method

.method private blacklist updateCoordinates(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 418
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_35

    .line 424
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 425
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 426
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->preparePopupContent()V

    .line 430
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 432
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    .line 430
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 433
    return-void

    .line 421
    :cond_35
    :goto_35
    return-void
.end method

.method private static blacklist updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V
    .registers 9
    .param p0, "menuItemButton"    # Landroid/view/View;
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "iconTextSpacing"    # I
    .param p3, "showIcon"    # Z

    .line 1463
    const v0, 0x1020335

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1465
    .local v0, "buttonText":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1466
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    .line 1467
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28

    .line 1469
    :cond_1e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1470
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1472
    :goto_28
    const v1, 0x1020333

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1474
    .local v1, "buttonIcon":Landroid/widget/ImageView;
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4a

    if-nez p3, :cond_3a

    goto :goto_4a

    .line 1480
    :cond_3a
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1481
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1482
    if-eqz v0, :cond_52

    .line 1483
    invoke-virtual {v0, p2, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_52

    .line 1475
    :cond_4a
    :goto_4a
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1476
    if-eqz v0, :cond_52

    .line 1477
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 1486
    :cond_52
    :goto_52
    invoke-interface {p1}, Landroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1487
    .local v2, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 1488
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 1490
    :cond_64
    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1492
    :goto_67
    return-void
.end method

.method private blacklist updateMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .registers 7
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            ")V"
        }
    .end annotation

    .line 309
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 311
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_9

    .line 313
    :cond_1f
    iput-object p2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 314
    return-void
.end method

.method private blacklist updateOverflowHeight(I)V
    .registers 8
    .param p1, "suggestedHeight"    # I

    .line 856
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 857
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 858
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    div-int/2addr v0, v1

    .line 859
    .local v0, "maxItemSize":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v1

    .line 860
    .local v1, "newHeight":I
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_2a

    .line 861
    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 863
    :cond_2a
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 864
    iget-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v2, :cond_62

    .line 865
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 866
    iget-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v2, :cond_69

    .line 867
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    .line 868
    .local v2, "deltaHeight":I
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    int-to-float v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 869
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getY()F

    move-result v4

    int-to-float v5, v2

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 870
    .end local v2    # "deltaHeight":I
    goto :goto_69

    .line 872
    :cond_62
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 874
    :cond_69
    :goto_69
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updatePopupSize()V

    .line 876
    .end local v0    # "maxItemSize":I
    .end local v1    # "newHeight":I
    :cond_6c
    return-void
.end method

.method private blacklist updatePopupSize()V
    .registers 5

    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, "width":I
    const/4 v1, 0x0

    .line 881
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_1a

    .line 882
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 883
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 885
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_32

    .line 886
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 887
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 889
    :cond_32
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 890
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 891
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->maybeComputeTransitionDurationScale()V

    .line 892
    return-void
.end method


# virtual methods
.method public blacklist dismiss()V
    .registers 2

    .line 379
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    if-eqz v0, :cond_5

    .line 380
    return-void

    .line 383
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    .line 385
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 387
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->runDismissAnimation()V

    .line 388
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setZeroTouchableSurface()V

    .line 389
    return-void
.end method

.method public blacklist hide()V
    .registers 2

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 394
    return-void

    .line 397
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    .line 398
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->runHideAnimation()V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setZeroTouchableSurface()V

    .line 400
    return-void
.end method

.method public blacklist isHidden()Z
    .registers 2

    .line 409
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    return v0
.end method

.method public blacklist isShowing()Z
    .registers 2

    .line 404
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;
    .registers 21
    .param p2, "toolbarWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .line 971
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    move/from16 v1, p2

    .line 975
    .local v1, "availableWidth":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v2, "remainingMenuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .local v3, "overflowMenuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const v6, 0x1020041

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MenuItem;

    .line 979
    .local v5, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    if-eq v7, v6, :cond_34

    .line 980
    invoke-interface {v5}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 981
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 983
    :cond_34
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    .end local v5    # "menuItem":Landroid/view/MenuItem;
    :goto_37
    goto :goto_15

    .line 986
    :cond_38
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 988
    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 989
    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 991
    const/4 v4, -0x1

    .line 992
    .local v4, "lastGroupId":I
    const/4 v7, 0x1

    .line 993
    .local v7, "isFirstItem":Z
    :goto_48
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_110

    .line 994
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/MenuItem;

    .line 999
    .local v8, "menuItem":Landroid/view/MenuItem;
    if-nez v7, :cond_60

    invoke-interface {v8}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v9

    if-eqz v9, :cond_60

    .line 1000
    move/from16 v13, p2

    goto/16 :goto_112

    .line 1003
    :cond_60
    const/4 v9, 0x1

    if-eqz v7, :cond_6b

    invoke-interface {v8}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    if-ne v10, v6, :cond_6b

    move v10, v9

    goto :goto_6c

    :cond_6b
    move v10, v5

    .line 1004
    .local v10, "showIcon":Z
    :goto_6c
    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    iget v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIconTextSpacing:I

    invoke-static {v11, v8, v12, v10}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;

    move-result-object v11

    .line 1006
    .local v11, "menuItemButton":Landroid/view/View;
    if-nez v10, :cond_82

    instance-of v12, v11, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_82

    .line 1007
    move-object v12, v11

    check-cast v12, Landroid/widget/LinearLayout;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1011
    :cond_82
    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    if-eqz v7, :cond_a0

    .line 1012
    nop

    .line 1013
    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v12

    double-to-int v14, v14

    .line 1014
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    .line 1015
    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    .line 1016
    move-wide/from16 v16, v12

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    .line 1012
    invoke-virtual {v11, v14, v15, v6, v12}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_a2

    .line 1011
    :cond_a0
    move-wide/from16 v16, v12

    .line 1020
    :goto_a2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v9, :cond_aa

    move v6, v9

    goto :goto_ab

    :cond_aa
    move v6, v5

    .line 1021
    .local v6, "isLastItem":Z
    :goto_ab
    if-eqz v6, :cond_c5

    .line 1022
    nop

    .line 1023
    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v12

    .line 1024
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    .line 1025
    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v14

    int-to-double v14, v14

    mul-double v14, v14, v16

    double-to-int v14, v14

    .line 1026
    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    .line 1022
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1029
    :cond_c5
    invoke-virtual {v11, v5, v5}, Landroid/view/View;->measure(II)V

    .line 1030
    nop

    .line 1031
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 1030
    move/from16 v13, p2

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1034
    .local v12, "menuItemButtonWidth":I
    iget-object v14, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 1035
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v14

    sub-int v14, v1, v14

    if-gt v12, v14, :cond_df

    move v14, v9

    goto :goto_e0

    :cond_df
    move v14, v5

    .line 1036
    .local v14, "canFitWithOverflow":Z
    :goto_e0
    if-eqz v6, :cond_e5

    if-gt v12, v1, :cond_e5

    goto :goto_e6

    :cond_e5
    move v9, v5

    .line 1038
    .local v9, "canFitNoOverflow":Z
    :goto_e6
    if-nez v14, :cond_ea

    if-eqz v9, :cond_112

    .line 1039
    :cond_ea
    invoke-direct {v0, v11, v8}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 1041
    invoke-interface {v8}, Landroid/view/MenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1042
    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1043
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 1044
    .local v15, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v12, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1045
    invoke-virtual {v11, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    sub-int/2addr v1, v12

    .line 1047
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1051
    .end local v15    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-interface {v8}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    .line 1052
    const/4 v7, 0x0

    .line 1053
    .end local v6    # "isLastItem":Z
    .end local v8    # "menuItem":Landroid/view/MenuItem;
    .end local v9    # "canFitNoOverflow":Z
    .end local v10    # "showIcon":Z
    .end local v11    # "menuItemButton":Landroid/view/View;
    .end local v12    # "menuItemButtonWidth":I
    .end local v14    # "canFitWithOverflow":Z
    const v6, 0x1020041

    goto/16 :goto_48

    .line 993
    :cond_110
    move/from16 v13, p2

    .line 1055
    :cond_112
    :goto_112
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_123

    .line 1057
    iget-object v6, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v8, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v6, v5, v5, v8, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1060
    :cond_123
    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 1061
    return-object v2
.end method

.method public blacklist setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)Z
    .registers 6
    .param p1, "outsideTouchable"    # Z
    .param p2, "onDismiss"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isOutsideTouchable()Z

    move-result v1

    xor-int/2addr v1, p1

    if-eqz v1, :cond_1c

    .line 273
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 274
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 276
    const/4 v0, 0x1

    .line 278
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 279
    return v0
.end method

.method public blacklist setSuggestedWidth(I)V
    .registers 9
    .param p1, "suggestedWidth"    # I

    .line 331
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mSuggestedWidth:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 332
    .local v0, "difference":I
    int-to-double v1, v0

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mSuggestedWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    iput-boolean v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    .line 333
    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mSuggestedWidth:I

    .line 334
    return-void
.end method

.method public blacklist setWidthChanged(Z)V
    .registers 2
    .param p1, "widthChanged"    # Z

    .line 325
    iput-boolean p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    .line 326
    return-void
.end method

.method public blacklist show(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/graphics/Rect;)V
    .registers 5
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .param p3, "contentRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 339
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isLayoutRequired(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    if-eqz v0, :cond_b

    goto :goto_f

    .line 343
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_17

    .line 340
    :cond_f
    :goto_f
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->dismiss()V

    .line 341
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mSuggestedWidth:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V

    .line 345
    :goto_17
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_21

    .line 346
    invoke-direct {p0, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->show(Landroid/graphics/Rect;)V

    goto :goto_2c

    .line 347
    :cond_21
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreviousContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 348
    invoke-direct {p0, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateCoordinates(Landroid/graphics/Rect;)V

    .line 350
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreviousContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 352
    return-void
.end method
