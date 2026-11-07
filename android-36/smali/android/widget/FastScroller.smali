.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# static fields
.field private static greylist-max-o BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DURATION_CROSS_FADE:I = 0x32

.field private static final greylist-max-o DURATION_FADE_IN:I = 0x96

.field private static final greylist-max-o DURATION_FADE_OUT:I = 0x12c

.field private static final greylist-max-o DURATION_RESIZE:I = 0x64

.field private static final greylist-max-o FADE_TIMEOUT:J = 0x5dcL

.field private static greylist-max-o LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MIN_PAGES:I = 0x4

.field private static final greylist-max-o OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final greylist-max-o OVERLAY_AT_THUMB:I = 0x1

.field private static final greylist-max-o OVERLAY_FLOATING:I = 0x0

.field private static final greylist-max-o PREVIEW_LEFT:I = 0x0

.field private static final greylist-max-o PREVIEW_RIGHT:I = 0x1

.field private static greylist-max-o RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STATE_DRAGGING:I = 0x2

.field private static final greylist-max-o STATE_NONE:I = 0x0

.field private static final greylist-max-o STATE_VISIBLE:I = 0x1

.field private static final greylist-max-o TAP_TIMEOUT:J

.field private static final greylist-max-o THUMB_POSITION_INSIDE:I = 0x1

.field private static final greylist-max-o THUMB_POSITION_MIDPOINT:I

.field private static greylist-max-o TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAlwaysShow:Z

.field private final greylist mContainerRect:Landroid/graphics/Rect;

.field private greylist-max-o mCurrentSection:I

.field private greylist-max-o mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final greylist-max-o mDeferHide:Ljava/lang/Runnable;

.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mFirstVisibleItem:I

.field private greylist mHeaderCount:I

.field private greylist-max-o mInitialTouchY:F

.field private greylist-max-o mLayoutFromRight:Z

.field private final greylist-max-o mList:Landroid/widget/AbsListView;

.field private greylist-max-o mListAdapter:Landroid/widget/Adapter;

.field private greylist mLongList:Z

.field private greylist-max-o mMatchDragPosition:Z

.field private final greylist mMinimumTouchTarget:I

.field private greylist-max-o mOldChildCount:I

.field private greylist-max-o mOldItemCount:I

.field private final greylist-max-o mOverlay:Landroid/view/ViewGroupOverlay;

.field private greylist-max-o mOverlayPosition:I

.field private greylist-max-o mPendingDrag:J

.field private greylist-max-o mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final greylist-max-o mPreviewImage:Landroid/view/View;

.field private greylist-max-o mPreviewMinHeight:I

.field private greylist-max-o mPreviewMinWidth:I

.field private greylist-max-o mPreviewPadding:I

.field private final greylist-max-o mPreviewResId:[I

.field private final greylist-max-o mPrimaryText:Landroid/widget/TextView;

.field private greylist-max-o mScaledTouchSlop:I

.field private greylist-max-o mScrollBarStyle:I

.field private greylist-max-o mScrollCompleted:Z

.field private greylist-max-o mScrollbarPosition:I

.field private final greylist-max-o mSecondaryText:Landroid/widget/TextView;

.field private greylist-max-o mSectionIndexer:Landroid/widget/SectionIndexer;

.field private greylist-max-o mSections:[Ljava/lang/Object;

.field private greylist-max-o mShowingPreview:Z

.field private greylist-max-o mShowingPrimary:Z

.field private greylist-max-o mState:I

.field private final greylist-max-o mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final greylist-max-o mTempBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mTempMargins:Landroid/graphics/Rect;

.field private greylist-max-o mTextAppearance:I

.field private greylist-max-o mTextColor:Landroid/content/res/ColorStateList;

.field private greylist-max-o mTextSize:F

.field private greylist mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final greylist mThumbImage:Landroid/widget/ImageView;

.field private greylist-max-o mThumbMinHeight:I

.field private greylist-max-o mThumbMinWidth:I

.field private greylist-max-o mThumbOffset:F

.field private greylist-max-o mThumbPosition:I

.field private greylist-max-o mThumbRange:F

.field private greylist-max-r mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final greylist mTrackImage:Landroid/widget/ImageView;

.field private greylist-max-o mUpdatingLayout:Z

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmShowingPrimary(Landroid/widget/FastScroller;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowingPrimary(Landroid/widget/FastScroller;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Landroid/widget/FastScroller;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 98
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    .line 1626
    new-instance v0, Landroid/widget/FastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    .line 1642
    new-instance v0, Landroid/widget/FastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    .line 1658
    new-instance v0, Landroid/widget/FastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    .line 1674
    new-instance v0, Landroid/widget/FastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor greylist <init>(Landroid/widget/AbsListView;I)V
    .registers 7
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "styleResId"    # I

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 178
    iput v0, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 231
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 240
    new-instance v0, Landroid/widget/FastScroller$1;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    iput-object v0, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 250
    new-instance v0, Landroid/widget/FastScroller$2;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller$2;-><init>(Landroid/widget/FastScroller;)V

    iput-object v0, p0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 259
    iput-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 260
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 261
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 263
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 264
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    .line 265
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 268
    iput v1, p0, Landroid/widget/FastScroller;->mState:I

    .line 269
    nop

    .line 270
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_67

    goto :goto_68

    :cond_67
    const/4 v1, 0x0

    :goto_68
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    .line 272
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 273
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 274
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 275
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 276
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 277
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 279
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 280
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 282
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    .line 285
    invoke-virtual {p0, p2}, Landroid/widget/FastScroller;->setStyle(I)V

    .line 287
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 288
    .local v1, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v1, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 289
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 290
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 291
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 292
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 293
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 295
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 296
    iget v2, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    iget v3, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    invoke-direct {p0, v2, v3}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 297
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 298
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 299
    return-void
.end method

.method private static greylist-max-o animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .line 1619
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .registers 8
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1690
    sget-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1691
    .local v0, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v1, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1692
    .local v1, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v2, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1693
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1694
    .local v3, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static greylist-max-o animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .line 1612
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 614
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 615
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 616
    return-void
.end method

.method private greylist-max-o beginDrag()V
    .registers 3

    .line 1380
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 1382
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 1384
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_13

    .line 1385
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1388
    :cond_13
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_22

    .line 1389
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1390
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1393
    :cond_22
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 1394
    return-void
.end method

.method private greylist-max-o cancelFling()V
    .registers 9

    .line 1356
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1358
    .local v0, "cancelFling":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1359
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1360
    return-void
.end method

.method private greylist-max-o cancelPendingDrag()V
    .registers 3

    .line 1368
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 1369
    return-void
.end method

.method private greylist-max-o createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 554
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 556
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 557
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 559
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 560
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 561
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 564
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 566
    return-object v1
.end method

.method private greylist-max-o getPosFromItemCount(III)F
    .registers 22
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 1263
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1264
    .local v4, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v4, :cond_10

    iget-object v5, v0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_13

    .line 1265
    :cond_10
    invoke-direct {v0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1268
    :cond_13
    const/4 v5, 0x0

    if-eqz v2, :cond_fb

    if-nez v3, :cond_1a

    goto/16 :goto_fb

    .line 1273
    :cond_1a
    const/4 v6, 0x0

    if-eqz v4, :cond_28

    iget-object v7, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v7, :cond_28

    iget-object v7, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v7, v7

    if-lez v7, :cond_28

    const/4 v7, 0x1

    goto :goto_29

    :cond_28
    move v7, v6

    .line 1275
    .local v7, "hasSections":Z
    :goto_29
    if-eqz v7, :cond_f2

    iget-boolean v8, v0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    if-nez v8, :cond_31

    goto/16 :goto_f2

    .line 1285
    :cond_31
    iget v8, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int/2addr v1, v8

    .line 1286
    .end local p1    # "firstVisibleItem":I
    .local v1, "firstVisibleItem":I
    if-gez v1, :cond_37

    .line 1287
    return v5

    .line 1289
    :cond_37
    iget v5, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int/2addr v3, v5

    .line 1292
    .end local p3    # "totalItemCount":I
    .local v3, "totalItemCount":I
    iget-object v5, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1294
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_5c

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_49

    goto :goto_5c

    .line 1297
    :cond_49
    iget-object v6, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    .local v6, "incrementalPos":F
    goto :goto_5d

    .line 1295
    .end local v6    # "incrementalPos":F
    :cond_5c
    :goto_5c
    const/4 v6, 0x0

    .line 1301
    .restart local v6    # "incrementalPos":F
    :goto_5d
    invoke-interface {v4, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v8

    .line 1302
    .local v8, "section":I
    invoke-interface {v4, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1303
    .local v9, "sectionPos":I
    iget-object v10, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v10, v10

    .line 1305
    .local v10, "sectionCount":I
    add-int/lit8 v11, v10, -0x1

    if-ge v8, v11, :cond_7b

    .line 1307
    add-int/lit8 v11, v8, 0x1

    if-ge v11, v10, :cond_77

    .line 1308
    add-int/lit8 v11, v8, 0x1

    invoke-interface {v4, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .local v11, "nextSectionPos":I
    goto :goto_79

    .line 1310
    .end local v11    # "nextSectionPos":I
    :cond_77
    add-int/lit8 v11, v3, -0x1

    .line 1312
    .restart local v11    # "nextSectionPos":I
    :goto_79
    sub-int/2addr v11, v9

    .line 1313
    .local v11, "positionsInSection":I
    goto :goto_7d

    .line 1314
    .end local v11    # "positionsInSection":I
    :cond_7b
    sub-int v11, v3, v9

    .line 1319
    .restart local v11    # "positionsInSection":I
    :goto_7d
    if-nez v11, :cond_81

    .line 1320
    const/4 v12, 0x0

    .local v12, "posWithinSection":F
    goto :goto_87

    .line 1322
    .end local v12    # "posWithinSection":F
    :cond_81
    int-to-float v12, v1

    add-float/2addr v12, v6

    int-to-float v13, v9

    sub-float/2addr v12, v13

    int-to-float v13, v11

    div-float/2addr v12, v13

    .line 1326
    .restart local v12    # "posWithinSection":F
    :goto_87
    int-to-float v13, v8

    add-float/2addr v13, v12

    int-to-float v14, v10

    div-float/2addr v13, v14

    .line 1331
    .local v13, "result":F
    if-lez v1, :cond_ed

    add-int v14, v1, v2

    if-ne v14, v3, :cond_ed

    .line 1332
    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1333
    .local v14, "lastChild":Landroid/view/View;
    iget-object v15, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v15

    .line 1336
    .local v15, "bottomPadding":I
    move/from16 p1, v1

    .end local v1    # "firstVisibleItem":I
    .restart local p1    # "firstVisibleItem":I
    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 1337
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1338
    .local v1, "maxSize":I
    move/from16 p3, v1

    .end local v1    # "maxSize":I
    .local p3, "maxSize":I
    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v1, v1, v16

    move/from16 v0, p3

    .local v1, "currentVisibleSize":I
    goto :goto_d4

    .line 1340
    .end local v1    # "currentVisibleSize":I
    .end local p3    # "maxSize":I
    :cond_bf
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v15

    .line 1341
    .local v1, "maxSize":I
    move/from16 p3, v1

    .end local v1    # "maxSize":I
    .restart local p3    # "maxSize":I
    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v1, v1, v16

    move/from16 v0, p3

    .line 1343
    .end local p3    # "maxSize":I
    .local v0, "maxSize":I
    .local v1, "currentVisibleSize":I
    :goto_d4
    if-lez v1, :cond_e8

    if-lez v0, :cond_e8

    .line 1344
    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v13

    move/from16 p3, v3

    .end local v3    # "totalItemCount":I
    .local p3, "totalItemCount":I
    int-to-float v3, v1

    move/from16 v17, v1

    .end local v1    # "currentVisibleSize":I
    .local v17, "currentVisibleSize":I
    int-to-float v1, v0

    div-float/2addr v3, v1

    mul-float v16, v16, v3

    add-float v13, v13, v16

    goto :goto_f1

    .line 1343
    .end local v17    # "currentVisibleSize":I
    .end local p3    # "totalItemCount":I
    .restart local v1    # "currentVisibleSize":I
    .restart local v3    # "totalItemCount":I
    :cond_e8
    move/from16 v17, v1

    move/from16 p3, v3

    .end local v1    # "currentVisibleSize":I
    .end local v3    # "totalItemCount":I
    .restart local v17    # "currentVisibleSize":I
    .restart local p3    # "totalItemCount":I
    goto :goto_f1

    .line 1331
    .end local v0    # "maxSize":I
    .end local v14    # "lastChild":Landroid/view/View;
    .end local v15    # "bottomPadding":I
    .end local v17    # "currentVisibleSize":I
    .end local p1    # "firstVisibleItem":I
    .end local p3    # "totalItemCount":I
    .local v1, "firstVisibleItem":I
    .restart local v3    # "totalItemCount":I
    :cond_ed
    move/from16 p1, v1

    move/from16 p3, v3

    .line 1348
    .end local v1    # "firstVisibleItem":I
    .end local v3    # "totalItemCount":I
    .restart local p1    # "firstVisibleItem":I
    .restart local p3    # "totalItemCount":I
    :goto_f1
    return v13

    .line 1276
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "incrementalPos":F
    .end local v8    # "section":I
    .end local v9    # "sectionPos":I
    .end local v10    # "sectionCount":I
    .end local v11    # "positionsInSection":I
    .end local v12    # "posWithinSection":F
    .end local v13    # "result":F
    :cond_f2
    :goto_f2
    if-ne v2, v3, :cond_f5

    .line 1278
    return v5

    .line 1280
    :cond_f5
    int-to-float v0, v1

    sub-int v5, v3, v2

    int-to-float v5, v5

    div-float/2addr v0, v5

    return v0

    .line 1270
    .end local v7    # "hasSections":Z
    :cond_fb
    :goto_fb
    return v5
.end method

.method private greylist-max-o getPosFromMotionEvent(F)F
    .registers 5
    .param p1, "y"    # F

    .line 1246
    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    .line 1247
    return v1

    .line 1250
    :cond_8
    iget v0, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    sub-float v0, p1, v0

    iget v2, p0, Landroid/widget/FastScroller;->mThumbRange:F

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private greylist-max-o getSectionsFromIndexer()V
    .registers 4

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 970
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 971
    .local v1, "adapter":Landroid/widget/Adapter;
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_1d

    .line 972
    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 973
    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 976
    :cond_1d
    instance-of v2, v1, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_3c

    .line 977
    move-object v0, v1

    check-cast v0, Landroid/widget/ExpandableListConnector;

    .line 978
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 979
    .local v0, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3b

    .line 980
    move-object v2, v0

    check-cast v2, Landroid/widget/SectionIndexer;

    iput-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 981
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 982
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 984
    .end local v0    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    :cond_3b
    goto :goto_54

    :cond_3c
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_50

    .line 985
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 986
    move-object v0, v1

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 987
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_54

    .line 989
    :cond_50
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 990
    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 992
    :goto_54
    return-void
.end method

.method private static varargs blacklist groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .registers 10
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1593
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1594
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .line 1596
    .local v1, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_23

    .line 1597
    aget-object v4, p2, v2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1598
    .local v4, "anim":Landroid/animation/Animator;
    if-nez v1, :cond_1d

    .line 1599
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_20

    .line 1601
    :cond_1d
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1596
    .end local v4    # "anim":Landroid/animation/Animator;
    :goto_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1605
    .end local v2    # "i":I
    :cond_23
    return-object v0
.end method

.method private greylist-max-o isPointInside(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1550
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_10

    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private greylist-max-o isPointInsideX(F)Z
    .registers 10
    .param p1, "x"    # F

    .line 1554
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    .line 1555
    .local v0, "offset":F
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1556
    .local v1, "left":F
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 1559
    .local v2, "right":F
    iget v3, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    int-to-float v3, v3

    sub-float v4, v2, v1

    sub-float/2addr v3, v4

    .line 1560
    .local v3, "targetSizeDiff":F
    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_22

    move v4, v3

    .line 1562
    .local v4, "adjust":F
    :cond_22
    iget-boolean v5, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_37

    .line 1563
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_35

    goto :goto_36

    :cond_35
    move v6, v7

    :goto_36
    return v6

    .line 1565
    :cond_37
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_44

    goto :goto_45

    :cond_44
    move v6, v7

    :goto_45
    return v6
.end method

.method private greylist-max-o isPointInsideY(F)Z
    .registers 8
    .param p1, "y"    # F

    .line 1570
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    .line 1571
    .local v0, "offset":F
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1572
    .local v1, "top":F
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 1575
    .local v2, "bottom":F
    iget v3, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    int-to-float v3, v3

    sub-float v4, v2, v1

    sub-float/2addr v3, v4

    .line 1576
    .local v3, "targetSizeDiff":F
    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_25

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    .line 1578
    .local v4, "adjust":F
    :cond_25
    sub-float v5, v1, v4

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_33

    add-float v5, v2, v4

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_33

    const/4 v5, 0x1

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    :goto_34
    return v5
.end method

.method private greylist-max-o layoutThumb()V
    .registers 4

    .line 772
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 773
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 774
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 775
    return-void
.end method

.method private greylist-max-o layoutTrack()V
    .registers 13

    .line 782
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 783
    .local v0, "track":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 784
    .local v1, "thumb":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 785
    .local v2, "container":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 786
    .local v3, "maxWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 787
    .local v5, "maxHeight":I
    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 788
    .local v6, "widthMeasureSpec":I
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 790
    .local v4, "heightMeasureSpec":I
    invoke-virtual {v0, v6, v4}, Landroid/view/View;->measure(II)V

    .line 794
    iget v7, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2e

    .line 795
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 796
    .local v7, "top":I
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    .local v8, "bottom":I
    goto :goto_3c

    .line 798
    .end local v7    # "top":I
    .end local v8    # "bottom":I
    :cond_2e
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 799
    .local v7, "thumbHalfHeight":I
    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v7

    .line 800
    .local v8, "top":I
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v7

    move v7, v8

    move v8, v9

    .line 803
    .local v7, "top":I
    .local v8, "bottom":I
    :goto_3c
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 804
    .local v9, "trackWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v11, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    .line 805
    .local v10, "left":I
    add-int v11, v10, v9

    .line 806
    .local v11, "right":I
    invoke-virtual {v0, v10, v7, v11, v8}, Landroid/view/View;->layout(IIII)V

    .line 807
    return-void
.end method

.method private greylist-max-o measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 22
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .line 706
    move-object/from16 v0, p2

    if-nez v0, :cond_8

    .line 707
    const/4 v1, 0x0

    .line 708
    .local v1, "marginLeft":I
    const/4 v2, 0x0

    .line 709
    .local v2, "marginTop":I
    const/4 v3, 0x0

    .local v3, "marginRight":I
    goto :goto_e

    .line 711
    .end local v1    # "marginLeft":I
    .end local v2    # "marginTop":I
    .end local v3    # "marginRight":I
    :cond_8
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 712
    .restart local v1    # "marginLeft":I
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 713
    .restart local v2    # "marginTop":I
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 716
    .restart local v3    # "marginRight":I
    :goto_e
    move-object/from16 v4, p0

    iget-object v5, v4, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 717
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 718
    .local v6, "containerWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 719
    .local v7, "adjMaxHeight":I
    sub-int v9, v6, v1

    sub-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 720
    .local v9, "adjMaxWidth":I
    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 721
    .local v10, "widthMeasureSpec":I
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    .line 723
    .local v8, "heightMeasureSpec":I
    move-object/from16 v11, p1

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    .line 726
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 727
    .local v12, "containerHeight":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 728
    .local v13, "width":I
    div-int/lit8 v14, v12, 0xa

    add-int/2addr v14, v2

    iget v15, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v15

    .line 729
    .local v14, "top":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v14

    .line 730
    .local v15, "bottom":I
    sub-int v16, v6, v13

    div-int/lit8 v16, v16, 0x2

    iget v0, v5, Landroid/graphics/Rect;->left:I

    add-int v0, v16, v0

    .line 731
    .local v0, "left":I
    move/from16 v16, v1

    .end local v1    # "marginLeft":I
    .local v16, "marginLeft":I
    add-int v1, v0, v13

    .line 732
    .local v1, "right":I
    move/from16 v17, v2

    move-object/from16 v2, p3

    .end local v2    # "marginTop":I
    .local v17, "marginTop":I
    invoke-virtual {v2, v0, v14, v1, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 733
    return-void
.end method

.method private greylist-max-o measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 628
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 629
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 630
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 631
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 632
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 634
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    if-nez v1, :cond_2a

    .line 635
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_2f

    .line 637
    :cond_2a
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 639
    :goto_2f
    return-void
.end method

.method private greylist-max-o measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .line 656
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_a

    .line 657
    const/4 v2, 0x0

    .line 658
    .local v2, "marginLeft":I
    const/4 v3, 0x0

    .line 659
    .local v3, "marginTop":I
    const/4 v4, 0x0

    .local v4, "marginRight":I
    goto :goto_10

    .line 661
    .end local v2    # "marginLeft":I
    .end local v3    # "marginTop":I
    .end local v4    # "marginRight":I
    :cond_a
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 662
    .restart local v2    # "marginLeft":I
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 663
    .restart local v3    # "marginTop":I
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 666
    .restart local v4    # "marginRight":I
    :goto_10
    iget-object v5, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 667
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 669
    .local v6, "containerWidth":I
    if-nez p2, :cond_1a

    .line 670
    move v7, v6

    .local v7, "maxWidth":I
    goto :goto_29

    .line 671
    .end local v7    # "maxWidth":I
    :cond_1a
    iget-boolean v7, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v7, :cond_23

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    .restart local v7    # "maxWidth":I
    goto :goto_29

    .line 674
    .end local v7    # "maxWidth":I
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v6, v7

    .line 677
    .restart local v7    # "maxWidth":I
    :goto_29
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 678
    .local v8, "adjMaxHeight":I
    sub-int v10, v7, v2

    sub-int/2addr v10, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 679
    .local v10, "adjMaxWidth":I
    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 680
    .local v11, "widthMeasureSpec":I
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v9

    .line 682
    .local v9, "heightMeasureSpec":I
    move-object/from16 v12, p1

    invoke-virtual {v12, v11, v9}, Landroid/view/View;->measure(II)V

    .line 685
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 688
    .local v13, "width":I
    iget-boolean v14, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v14, :cond_61

    .line 689
    if-nez p2, :cond_59

    iget v14, v5, Landroid/graphics/Rect;->right:I

    goto :goto_5d

    :cond_59
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v14

    :goto_5d
    sub-int/2addr v14, v4

    .line 690
    .local v14, "right":I
    sub-int v15, v14, v13

    .local v15, "left":I
    goto :goto_6e

    .line 692
    .end local v14    # "right":I
    .end local v15    # "left":I
    :cond_61
    if-nez p2, :cond_66

    iget v14, v5, Landroid/graphics/Rect;->left:I

    goto :goto_6a

    :cond_66
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v14

    :goto_6a
    add-int v15, v14, v2

    .line 693
    .restart local v15    # "left":I
    add-int v14, v15, v13

    .line 697
    .restart local v14    # "right":I
    :goto_6e
    move/from16 v16, v3

    .line 698
    .local v16, "top":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v0, v16, v17

    .line 699
    .local v0, "bottom":I
    move/from16 v1, v16

    move/from16 v16, v2

    move v2, v1

    move-object/from16 v1, p4

    .local v2, "top":I
    .local v16, "marginLeft":I
    invoke-virtual {v1, v15, v2, v14, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 700
    return-void
.end method

.method private greylist-max-o onStateDependencyChanged(Z)V
    .registers 4
    .param p1, "peekIfEnabled"    # Z

    .line 457
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 458
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 459
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    goto :goto_25

    .line 460
    :cond_11
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v1, :cond_19

    .line 461
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_25

    .line 462
    :cond_19
    if-eqz p1, :cond_25

    .line 463
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 464
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_25

    .line 467
    :cond_22
    invoke-virtual {p0}, Landroid/widget/FastScroller;->stop()V

    .line 470
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 471
    return-void
.end method

.method private greylist-max-o postAutoHide()V
    .registers 5

    .line 939
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 940
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 941
    return-void
.end method

.method private greylist-max-o refreshDrawablePressedState()V
    .registers 3

    .line 865
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 866
    .local v0, "isPressed":Z
    :goto_8
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 867
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 868
    return-void
.end method

.method private greylist-max-o scrollTo(F)V
    .registers 22
    .param p1, "position"    # F

    .line 1003
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 1005
    iget-object v2, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    .line 1006
    .local v2, "count":I
    iget-object v3, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 1007
    .local v3, "sections":[Ljava/lang/Object;
    if-nez v3, :cond_11

    move v4, v1

    goto :goto_12

    :cond_11
    array-length v4, v3

    .line 1009
    .local v4, "sectionCount":I
    :goto_12
    if-eqz v3, :cond_d3

    const/4 v5, 0x1

    if-le v4, v5, :cond_d3

    .line 1010
    int-to-float v5, v4

    mul-float v5, v5, p1

    float-to-int v5, v5

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v1, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 1012
    .local v5, "exactSection":I
    move v6, v5

    .line 1013
    .local v6, "targetSection":I
    iget-object v7, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 1014
    .local v7, "targetIndex":I
    move v8, v6

    .line 1022
    .local v8, "sectionIndex":I
    move v9, v2

    .line 1023
    .local v9, "nextIndex":I
    move v10, v7

    .line 1024
    .local v10, "prevIndex":I
    move v11, v6

    .line 1025
    .local v11, "prevSection":I
    add-int/lit8 v12, v6, 0x1

    .line 1028
    .local v12, "nextSection":I
    add-int/lit8 v13, v4, -0x1

    if-ge v6, v13, :cond_3a

    .line 1029
    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v6, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1033
    :cond_3a
    if-ne v9, v7, :cond_4f

    .line 1035
    :cond_3c
    if-lez v6, :cond_4f

    .line 1036
    add-int/lit8 v6, v6, -0x1

    .line 1037
    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 1038
    if-eq v10, v7, :cond_4b

    .line 1039
    move v11, v6

    .line 1040
    move v8, v6

    .line 1041
    goto :goto_4f

    .line 1042
    :cond_4b
    if-nez v6, :cond_3c

    .line 1045
    const/4 v8, 0x0

    .line 1046
    nop

    .line 1056
    :cond_4f
    :goto_4f
    add-int/lit8 v13, v12, 0x1

    .line 1057
    .local v13, "nextNextSection":I
    :goto_51
    if-ge v13, v4, :cond_60

    iget-object v14, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1058
    invoke-interface {v14, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    if-ne v14, v9, :cond_60

    .line 1059
    add-int/lit8 v13, v13, 0x1

    .line 1060
    add-int/lit8 v12, v12, 0x1

    goto :goto_51

    .line 1067
    :cond_60
    int-to-float v14, v11

    int-to-float v15, v4

    div-float/2addr v14, v15

    .line 1068
    .local v14, "prevPosition":F
    int-to-float v15, v12

    int-to-float v1, v4

    div-float/2addr v15, v1

    .line 1069
    .local v15, "nextPosition":F
    if-nez v2, :cond_6c

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_71

    :cond_6c
    const/high16 v16, 0x3e000000    # 0.125f

    int-to-float v1, v2

    div-float v1, v16, v1

    .line 1070
    .local v1, "snapThreshold":F
    :goto_71
    if-ne v11, v5, :cond_7d

    sub-float v16, p1, v14

    cmpg-float v16, v16, v1

    if-gez v16, :cond_7d

    .line 1071
    move v7, v10

    move/from16 v16, v1

    goto :goto_8d

    .line 1073
    :cond_7d
    move/from16 v16, v1

    .end local v1    # "snapThreshold":F
    .local v16, "snapThreshold":F
    sub-int v1, v9, v10

    int-to-float v1, v1

    sub-float v17, p1, v14

    mul-float v1, v1, v17

    sub-float v17, v15, v14

    div-float v1, v1, v17

    float-to-int v1, v1

    add-int v7, v10, v1

    .line 1078
    :goto_8d
    add-int/lit8 v1, v2, -0x1

    move-object/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "sections":[Ljava/lang/Object;
    .local v17, "sections":[Ljava/lang/Object;
    invoke-static {v7, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 1080
    .end local v7    # "targetIndex":I
    .local v1, "targetIndex":I
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v3, v3, Landroid/widget/ExpandableListView;

    if-eqz v3, :cond_b4

    .line 1081
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/ExpandableListView;

    .line 1082
    .local v3, "expList":Landroid/widget/ExpandableListView;
    iget v7, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v7, v1

    .line 1083
    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "sectionCount":I
    .end local v5    # "exactSection":I
    .local v18, "sectionCount":I
    .local v19, "exactSection":I
    invoke-static {v7}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    .line 1082
    invoke-virtual {v3, v4, v5}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1085
    .end local v3    # "expList":Landroid/widget/ExpandableListView;
    goto :goto_d2

    .end local v18    # "sectionCount":I
    .end local v19    # "exactSection":I
    .restart local v4    # "sectionCount":I
    .restart local v5    # "exactSection":I
    :cond_b4
    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "sectionCount":I
    .end local v5    # "exactSection":I
    .restart local v18    # "sectionCount":I
    .restart local v19    # "exactSection":I
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_ca

    .line 1086
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/ListView;

    iget v4, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_d2

    .line 1088
    :cond_ca
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v4, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 1090
    .end local v1    # "targetIndex":I
    .end local v6    # "targetSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "prevIndex":I
    .end local v11    # "prevSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "nextNextSection":I
    .end local v14    # "prevPosition":F
    .end local v15    # "nextPosition":F
    .end local v16    # "snapThreshold":F
    .end local v19    # "exactSection":I
    :goto_d2
    goto :goto_117

    .line 1009
    .end local v8    # "sectionIndex":I
    .end local v17    # "sections":[Ljava/lang/Object;
    .end local v18    # "sectionCount":I
    .local v3, "sections":[Ljava/lang/Object;
    .restart local v4    # "sectionCount":I
    :cond_d3
    move-object/from16 v17, v3

    move/from16 v18, v4

    .line 1091
    .end local v3    # "sections":[Ljava/lang/Object;
    .end local v4    # "sectionCount":I
    .restart local v17    # "sections":[Ljava/lang/Object;
    .restart local v18    # "sectionCount":I
    int-to-float v1, v2

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/lit8 v3, v2, -0x1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 1093
    .local v1, "index":I
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v3, v3, Landroid/widget/ExpandableListView;

    if-eqz v3, :cond_fc

    .line 1094
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/ExpandableListView;

    .line 1095
    .local v3, "expList":Landroid/widget/ExpandableListView;
    iget v4, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    .line 1096
    invoke-static {v4}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    .line 1095
    invoke-virtual {v3, v4, v5}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1097
    .end local v3    # "expList":Landroid/widget/ExpandableListView;
    goto :goto_116

    :cond_fc
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_10e

    .line 1098
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/ListView;

    iget v4, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_116

    .line 1100
    :cond_10e
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v4, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 1103
    :goto_116
    const/4 v8, -0x1

    .line 1106
    .end local v1    # "index":I
    .restart local v8    # "sectionIndex":I
    :goto_117
    iget v1, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    if-eq v1, v8, :cond_134

    .line 1107
    iput v8, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 1109
    invoke-direct {v0, v8}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v1

    .line 1110
    .local v1, "hasPreview":Z
    iget-boolean v3, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    if-nez v3, :cond_12b

    if-eqz v1, :cond_12b

    .line 1111
    invoke-direct {v0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_134

    .line 1112
    :cond_12b
    iget-boolean v3, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    if-eqz v3, :cond_134

    if-nez v1, :cond_134

    .line 1113
    invoke-direct {v0}, Landroid/widget/FastScroller;->transitionToVisible()V

    .line 1116
    .end local v1    # "hasPreview":Z
    :cond_134
    :goto_134
    return-void
.end method

.method private greylist setState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 833
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 835
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    .line 836
    const/4 p1, 0x1

    .line 839
    :cond_e
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne p1, v0, :cond_13

    .line 840
    return-void

    .line 843
    :cond_13
    packed-switch p1, :pswitch_data_36

    goto :goto_2f

    .line 851
    :pswitch_17
    iget v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 852
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_2f

    .line 854
    :cond_23
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_2f

    .line 848
    :pswitch_27
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    .line 849
    goto :goto_2f

    .line 845
    :pswitch_2b
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToHidden()V

    .line 846
    nop

    .line 859
    :goto_2f
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 861
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 862
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_27
        :pswitch_17
    .end packed-switch
.end method

.method private greylist-max-o setThumbPos(F)V
    .registers 14
    .param p1, "position"    # F

    .line 1210
    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    add-float/2addr v0, v1

    .line 1211
    .local v0, "thumbMiddle":F
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1213
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 1214
    .local v1, "previewImage":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 1216
    .local v2, "previewHalfHeight":F
    iget v3, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    packed-switch v3, :pswitch_data_4a

    .line 1225
    const/4 v3, 0x0

    .local v3, "previewPos":F
    goto :goto_2b

    .line 1221
    .end local v3    # "previewPos":F
    :pswitch_26
    sub-float v3, v0, v2

    .line 1222
    .restart local v3    # "previewPos":F
    goto :goto_2b

    .line 1218
    .end local v3    # "previewPos":F
    :pswitch_29
    move v3, v0

    .line 1219
    .restart local v3    # "previewPos":F
    nop

    .line 1230
    :goto_2b
    iget-object v4, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1231
    .local v4, "container":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 1232
    .local v5, "top":I
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 1233
    .local v6, "bottom":I
    int-to-float v7, v5

    add-float/2addr v7, v2

    .line 1234
    .local v7, "minP":F
    int-to-float v8, v6

    sub-float/2addr v8, v2

    .line 1235
    .local v8, "maxP":F
    invoke-static {v3, v7, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v9

    .line 1236
    .local v9, "previewMiddle":F
    sub-float v10, v9, v2

    .line 1237
    .local v10, "previewTop":F
    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 1239
    iget-object v11, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1240
    iget-object v11, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1241
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method

.method private greylist-max-o startPendingDrag()V
    .registers 5

    .line 1376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 1377
    return-void
.end method

.method private greylist-max-o transitionPreviewLayout(I)Z
    .registers 21
    .param p1, "sectionIndex"    # I

    .line 1127
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 1128
    .local v2, "sections":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1129
    .local v3, "text":Ljava/lang/String;
    if-eqz v2, :cond_16

    if-ltz v1, :cond_16

    array-length v4, v2

    if-ge v1, v4, :cond_16

    .line 1130
    aget-object v4, v2, v1

    .line 1131
    .local v4, "section":Ljava/lang/Object;
    if-eqz v4, :cond_16

    .line 1132
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1136
    .end local v4    # "section":Ljava/lang/Object;
    :cond_16
    iget-object v4, v0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1137
    .local v4, "bounds":Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 1140
    .local v5, "preview":Landroid/view/View;
    iget-boolean v6, v0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    if-eqz v6, :cond_23

    .line 1141
    iget-object v6, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1142
    .local v6, "showing":Landroid/widget/TextView;
    iget-object v7, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .local v7, "target":Landroid/widget/TextView;
    goto :goto_27

    .line 1144
    .end local v6    # "showing":Landroid/widget/TextView;
    .end local v7    # "target":Landroid/widget/TextView;
    :cond_23
    iget-object v6, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1145
    .restart local v6    # "showing":Landroid/widget/TextView;
    iget-object v7, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1149
    .restart local v7    # "target":Landroid/widget/TextView;
    :goto_27
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    invoke-direct {v0, v7, v4}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1151
    invoke-direct {v0, v7, v4}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1153
    iget-object v8, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_39

    .line 1154
    iget-object v8, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1158
    :cond_39
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 1159
    .local v9, "showTarget":Landroid/animation/Animator;
    const/4 v12, 0x0

    invoke-static {v6, v12}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    .line 1160
    .local v10, "hideShowing":Landroid/animation/Animator;
    iget-object v11, v0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1163
    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->left:I

    .line 1164
    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->top:I

    .line 1165
    iget v11, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->right:I

    .line 1166
    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    .line 1167
    invoke-static {v5, v4}, Landroid/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v11

    .line 1168
    .local v11, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v12, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1170
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1171
    iget-object v14, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    .line 1172
    .local v14, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1176
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    .line 1177
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    .line 1181
    .local v15, "previewWidth":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    .line 1182
    .local v12, "targetWidth":I
    if-le v12, v15, :cond_c1

    .line 1183
    int-to-float v13, v15

    int-to-float v8, v12

    div-float/2addr v13, v8

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1184
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    move-object v13, v2

    const-wide/16 v1, 0x64

    .end local v2    # "sections":[Ljava/lang/Object;
    .local v13, "sections":[Ljava/lang/Object;
    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v8

    .line 1185
    .local v8, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1186
    .end local v8    # "scaleAnim":Landroid/animation/Animator;
    goto :goto_c5

    .line 1187
    .end local v13    # "sections":[Ljava/lang/Object;
    .restart local v2    # "sections":[Ljava/lang/Object;
    :cond_c1
    move-object v13, v2

    .end local v2    # "sections":[Ljava/lang/Object;
    .restart local v13    # "sections":[Ljava/lang/Object;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1191
    :goto_c5
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 1192
    .local v1, "showingWidth":I
    if-le v1, v12, :cond_e0

    .line 1193
    int-to-float v2, v12

    int-to-float v8, v1

    div-float/2addr v2, v8

    .line 1194
    .local v2, "scale":F
    invoke-static {v6, v2}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    move/from16 v17, v1

    move/from16 v18, v2

    const-wide/16 v1, 0x64

    .end local v1    # "showingWidth":I
    .end local v2    # "scale":F
    .local v17, "showingWidth":I
    .local v18, "scale":F
    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 1195
    .local v1, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_e2

    .line 1192
    .end local v17    # "showingWidth":I
    .end local v18    # "scale":F
    .local v1, "showingWidth":I
    :cond_e0
    move/from16 v17, v1

    .line 1198
    .end local v1    # "showingWidth":I
    .restart local v17    # "showingWidth":I
    :goto_e2
    iget-object v1, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1200
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private greylist-max-o transitionToDragging()V
    .registers 10

    .line 921
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    .line 922
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 925
    :cond_9
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 927
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 928
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v5, [Landroid/view/View;

    iget-object v8, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v8, v7, v3

    iget-object v8, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v8, v7, v4

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v6

    .line 929
    invoke-virtual {v6, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 931
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 932
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 933
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 935
    iput-boolean v4, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 936
    return-void
.end method

.method private greylist-max-o transitionToHidden()V
    .registers 11

    .line 874
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    .line 875
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 878
    :cond_9
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v6, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v6, v1, v2

    const/4 v2, 0x4

    iget-object v6, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v6, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 879
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 882
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v6, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v6, :cond_3d

    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    goto :goto_44

    :cond_3d
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    neg-int v6, v6

    :goto_44
    int-to-float v6, v6

    .line 883
    .local v6, "offset":F
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v5, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v9, v8, v3

    iget-object v9, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v9, v8, v4

    invoke-static {v7, v6, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v7

    .line 885
    invoke-virtual {v7, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 887
    .local v1, "slideOut":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 888
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 889
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 891
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 892
    return-void
.end method

.method private greylist-max-o transitionToVisible()V
    .registers 13

    .line 898
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    .line 899
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 902
    :cond_9
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v2}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 903
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 904
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x3

    new-array v8, v7, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v9, v8, v5

    iget-object v9, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v9, v8, v1

    const/4 v9, 0x0

    invoke-static {v6, v9, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v6

    .line 906
    const-wide/16 v10, 0x12c

    invoke-virtual {v6, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 907
    .local v6, "fadeOut":Landroid/animation/Animator;
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v1, [Landroid/view/View;

    iget-object v11, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v11, v10, v4

    iget-object v11, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v11, v10, v5

    invoke-static {v8, v9, v10}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v8

    .line 908
    invoke-virtual {v8, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 910
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 911
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v4

    aput-object v6, v7, v5

    aput-object v2, v7, v1

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 912
    iget-object v1, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 914
    iput-boolean v4, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 915
    return-void
.end method

.method private greylist-max-o updateAppearance()V
    .registers 5

    .line 302
    const/4 v0, 0x0

    .line 305
    .local v0, "width":I
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 307
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 311
    :cond_16
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 313
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 314
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_39

    .line 315
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 319
    :cond_39
    iget v1, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mWidth:I

    .line 321
    iget v1, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    if-eqz v1, :cond_53

    .line 322
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 323
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 326
    :cond_53
    iget-object v1, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_65

    .line 327
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 328
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 331
    :cond_65
    iget v1, p0, Landroid/widget/FastScroller;->mTextSize:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_7b

    .line 332
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FastScroller;->mTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 333
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FastScroller;->mTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 336
    :cond_7b
    iget v1, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    .line 337
    .local v1, "padding":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 338
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 339
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 340
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 342
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 343
    return-void
.end method

.method private greylist-max-o updateContainerRect()V
    .registers 7

    .line 739
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 740
    .local v0, "list":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 742
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 743
    .local v1, "container":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 744
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 745
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 746
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 748
    iget v2, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 749
    .local v2, "scrollbarStyle":I
    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_20

    if-nez v2, :cond_5a

    .line 751
    :cond_20
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 752
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 753
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 754
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 757
    if-ne v2, v3, :cond_5a

    .line 758
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getWidth()I

    move-result v3

    .line 759
    .local v3, "width":I
    iget v4, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_55

    .line 760
    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_5a

    .line 762
    :cond_55
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 766
    .end local v3    # "width":I
    :cond_5a
    :goto_5a
    return-void
.end method

.method private greylist-max-o updateLongList(II)V
    .registers 6
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .line 542
    const/4 v0, 0x0

    if-lez p1, :cond_a

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v0

    .line 543
    .local v1, "longList":Z
    :goto_b
    iget-boolean v2, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-eq v2, v1, :cond_14

    .line 544
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 546
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 548
    :cond_14
    return-void
.end method

.method private greylist-max-o updateOffsetAndRange()V
    .registers 6

    .line 814
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 815
    .local v0, "trackImage":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 818
    .local v1, "thumbImage":Landroid/view/View;
    iget v2, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 819
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 820
    .local v2, "halfThumbHeight":F
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 821
    .local v3, "min":F
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    .line 822
    .end local v2    # "halfThumbHeight":F
    .local v4, "max":F
    goto :goto_28

    .line 823
    .end local v3    # "min":F
    .end local v4    # "max":F
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    .line 824
    .restart local v3    # "min":F
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v4, v2

    .line 827
    .restart local v4    # "max":F
    :goto_28
    iput v3, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    .line 828
    sub-float v2, v4, v3

    iput v2, p0, Landroid/widget/FastScroller;->mThumbRange:F

    .line 829
    return-void
.end method


# virtual methods
.method public greylist-max-o getWidth()I
    .registers 2

    .line 518
    iget v0, p0, Landroid/widget/FastScroller;->mWidth:I

    return v0
.end method

.method public greylist-max-o isAlwaysShowEnabled()Z
    .registers 2

    .line 448
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public greylist-max-o isEnabled()Z
    .registers 2

    .line 429
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1444
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1445
    return v1

    .line 1448
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1449
    .local v0, "actionMasked":I
    const/16 v2, 0x9

    if-eq v0, v2, :cond_13

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2c

    :cond_13
    iget v2, p0, Landroid/widget/FastScroller;->mState:I

    if-nez v2, :cond_2c

    .line 1451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1452
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 1453
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 1456
    :cond_2c
    return v1
.end method

.method public greylist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1398
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1399
    return v1

    .line 1402
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_6c

    goto :goto_6a

    .line 1421
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1422
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_6a

    .line 1423
    :cond_22
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_6a

    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_6a

    .line 1424
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1426
    iget v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1427
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1431
    invoke-virtual {p0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1436
    .end local v0    # "pos":F
    :pswitch_45
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_6a

    .line 1404
    :pswitch_49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1410
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_61

    .line 1413
    const/4 v0, 0x1

    return v0

    .line 1416
    :cond_61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 1417
    invoke-direct {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    .line 1440
    :cond_6a
    :goto_6a
    return v1

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_49
        :pswitch_45
        :pswitch_10
        :pswitch_45
    .end packed-switch
.end method

.method public greylist-max-o onItemCountChanged(II)V
    .registers 6
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .line 527
    iget v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_8

    iget v0, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_2a

    .line 528
    :cond_8
    iput p2, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 529
    iput p1, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 531
    sub-int v0, p2, p1

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 532
    .local v0, "hasMoreItems":Z
    :goto_13
    if-eqz v0, :cond_27

    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    .line 533
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 534
    .local v1, "firstVisibleItem":I
    invoke-direct {p0, v1, p1, p2}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 537
    .end local v1    # "firstVisibleItem":I
    :cond_27
    invoke-direct {p0, p1, p2}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 539
    .end local v0    # "hasMoreItems":Z
    :cond_2a
    return-void
.end method

.method public greylist-max-o onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1460
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    .line 1463
    :cond_14
    const/4 v0, 0x0

    return-object v0

    .line 1461
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o onScroll(III)V
    .registers 8
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 944
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 945
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 946
    return-void

    .line 949
    :cond_b
    sub-int v0, p3, p2

    const/4 v2, 0x1

    if-lez v0, :cond_11

    move v1, v2

    .line 950
    .local v1, "hasMoreItems":Z
    :cond_11
    const/4 v0, 0x2

    if-eqz v1, :cond_1f

    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v3, v0, :cond_1f

    .line 951
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 954
    :cond_1f
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 956
    iget v3, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    if-eq v3, p1, :cond_31

    .line 957
    iput p1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    .line 960
    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v3, v0, :cond_31

    .line 961
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 962
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 965
    :cond_31
    return-void
.end method

.method public greylist-max-o onSectionsChanged()V
    .registers 2

    .line 995
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 996
    return-void
.end method

.method public greylist onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 523
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 524
    return-void
.end method

.method public greylist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 1468
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1469
    return v1

    .line 1472
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_98

    goto/16 :goto_96

    .line 1532
    :pswitch_15
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto/16 :goto_96

    .line 1511
    :pswitch_1a
    iget-wide v6, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_35

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_35

    .line 1512
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1517
    :cond_35
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_96

    .line 1519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1520
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 1523
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_4b

    .line 1524
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1527
    :cond_4b
    return v5

    .line 1483
    .end local v0    # "pos":F
    :pswitch_4c
    iget-wide v6, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_63

    .line 1485
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1488
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 1489
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1494
    .end local v0    # "pos":F
    :cond_63
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_96

    .line 1495
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_75

    .line 1499
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1500
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1503
    :cond_75
    invoke-direct {p0, v5}, Landroid/widget/FastScroller;->setState(I)V

    .line 1504
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 1506
    return v5

    .line 1474
    :pswitch_7c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1475
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_96

    .line 1476
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1477
    return v5

    .line 1536
    :cond_96
    :goto_96
    return v1

    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_4c
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public greylist remove()V
    .registers 3

    .line 407
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 408
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 409
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 410
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 411
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 412
    return-void
.end method

.method public greylist-max-o setAlwaysShow(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .line 436
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_a

    .line 437
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 441
    :cond_a
    return-void
.end method

.method public greylist-max-o setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 418
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_a

    .line 419
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mEnabled:Z

    .line 421
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 423
    :cond_a
    return-void
.end method

.method public greylist-max-o setScrollBarStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .line 474
    iget v0, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_9

    .line 475
    iput p1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 477
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 479
    :cond_9
    return-void
.end method

.method public greylist-max-o setScrollbarPosition(I)V
    .registers 7
    .param p1, "position"    # I

    .line 489
    const/4 v0, 0x1

    if-nez p1, :cond_f

    .line 490
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 491
    move v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x2

    :goto_e
    move p1, v1

    .line 494
    :cond_f
    iget v1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_66

    .line 495
    iput p1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 496
    const/4 v1, 0x0

    if-eq p1, v0, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 498
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    iget-boolean v2, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    aget v0, v0, v2

    .line 499
    .local v0, "previewResId":I
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 502
    iget v2, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 503
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 502
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 504
    .local v2, "textMinWidth":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 505
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 507
    iget v3, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 508
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 507
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 509
    .local v1, "textMinHeight":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 510
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 513
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 515
    .end local v0    # "previewResId":I
    .end local v1    # "textMinHeight":I
    .end local v2    # "textMinWidth":I
    :cond_66
    return-void
.end method

.method public greylist-max-o setStyle(I)V
    .registers 10
    .param p1, "resId"    # I

    .line 346
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 347
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/android/internal/R$styleable;->FastScroll:[I

    const v2, 0x10103f7

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 349
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 350
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_8c

    .line 351
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 352
    .local v4, "index":I
    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_94

    goto/16 :goto_89

    .line 366
    :pswitch_21
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 367
    goto :goto_89

    .line 384
    :pswitch_28
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    .line 385
    goto :goto_89

    .line 387
    :pswitch_2f
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    .line 388
    goto :goto_89

    .line 363
    :pswitch_36
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    goto :goto_89

    .line 354
    :pswitch_3d
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    .line 355
    goto :goto_89

    .line 360
    :pswitch_44
    iget-object v6, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v7, 0x1

    aput v5, v6, v7

    .line 361
    goto :goto_89

    .line 357
    :pswitch_4e
    iget-object v6, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v6, v5

    .line 358
    goto :goto_89

    .line 393
    :pswitch_57
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    goto :goto_89

    .line 381
    :pswitch_5e
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    .line 382
    goto :goto_89

    .line 378
    :pswitch_65
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    .line 379
    goto :goto_89

    .line 390
    :pswitch_6c
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    .line 391
    goto :goto_89

    .line 372
    :pswitch_73
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    .line 373
    goto :goto_89

    .line 375
    :pswitch_7a
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Landroid/widget/FastScroller;->mTextSize:F

    .line 376
    goto :goto_89

    .line 369
    :pswitch_82
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    .line 370
    nop

    .line 350
    .end local v4    # "index":I
    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 397
    .end local v3    # "i":I
    :cond_8c
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 399
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateAppearance()V

    .line 400
    return-void

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
        :pswitch_65
        :pswitch_5e
        :pswitch_57
        :pswitch_4e
        :pswitch_44
        :pswitch_3d
        :pswitch_36
        :pswitch_2f
        :pswitch_28
        :pswitch_21
    .end packed-switch
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 486
    return-void
.end method

.method public greylist-max-o updateLayout()V
    .registers 4

    .line 575
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_5

    .line 576
    return-void

    .line 579
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 581
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateContainerRect()V

    .line 583
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutThumb()V

    .line 584
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutTrack()V

    .line 586
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateOffsetAndRange()V

    .line 588
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 589
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 590
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 591
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 592
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 594
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    if-eqz v1, :cond_5f

    .line 596
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 597
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 598
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 599
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 600
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 603
    :cond_5f
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 604
    return-void
.end method
