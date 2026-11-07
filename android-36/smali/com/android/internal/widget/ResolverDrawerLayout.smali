.class public Lcom/android/internal/widget/ResolverDrawerLayout;
.super Landroid/view/ViewGroup;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;,
        Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ResolverDrawerLayout"


# instance fields
.field private blacklist mActivePointerId:I

.field private blacklist mAlwaysShowHeight:I

.field private blacklist mCollapseOffset:F

.field private blacklist mCollapsibleHeight:I

.field private blacklist mCollapsibleHeightReserved:I

.field private blacklist mDismissLocked:Z

.field private blacklist mDismissOnScrollerFinished:Z

.field private blacklist mDragRemainder:F

.field private blacklist mIgnoreOffsetTopLimitViewId:I

.field private blacklist mInitialTouchX:F

.field private blacklist mInitialTouchY:F

.field private blacklist mIsDragging:Z

.field private final blacklist mIsMaxCollapsedHeightSmallExplicit:Z

.field private blacklist mLastTouchY:F

.field private blacklist mMaxCollapsedHeight:I

.field private blacklist mMaxCollapsedHeightSmall:I

.field private blacklist mMaxWidth:I

.field private blacklist mMaxWidthResId:I

.field private blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final blacklist mMinFlingVelocity:F

.field private blacklist mNestedListChild:Landroid/widget/AbsListView;

.field private blacklist mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

.field private blacklist mOnCollapsedChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

.field private blacklist mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

.field private blacklist mOpenOnClick:Z

.field private blacklist mOpenOnLayout:Z

.field private blacklist mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

.field private blacklist mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mScroller:Landroid/widget/OverScroller;

.field private blacklist mShowAtTop:Z

.field private blacklist mSmallCollapsed:Z

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mTopOffset:I

.field private final blacklist mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private final blacklist mTouchSlop:I

.field private blacklist mUncollapsibleHeight:I

.field private final blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$misDescendantClipped(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msmoothScrollTo(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIgnoreOffsetTopLimitViewId:I

    .line 129
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 131
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    .line 136
    new-instance v2, Lcom/android/internal/widget/ResolverDrawerLayout$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$1;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 157
    sget-object v2, Lcom/android/internal/R$styleable;->ResolverDrawerLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 159
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidthResId:I

    .line 160
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    .line 161
    const/4 v1, 0x2

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    .line 163
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    .line 166
    nop

    .line 167
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsMaxCollapsedHeightSmallExplicit:Z

    .line 168
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 170
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIgnoreOffsetTopLimitViewId:I

    .line 173
    :cond_57
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mContext:Landroid/content/Context;

    const v3, 0x1080929

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    new-instance v0, Landroid/widget/OverScroller;

    const v3, 0x10c0005

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    .line 179
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 181
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 182
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    .line 183
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setImportantForAccessibility(I)V

    .line 186
    return-void
.end method

.method private blacklist abortAnimation()V
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    .line 573
    return-void
.end method

.method private blacklist dismiss()V
    .registers 3

    .line 551
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 553
    return-void
.end method

.method private blacklist distanceInfluenceForSnapDuration(F)F
    .registers 6
    .param p1, "f"    # F

    .line 691
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 692
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 693
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private blacklist findChildUnder(FF)Landroid/view/View;
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 701
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .registers 7
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 705
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 706
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_16

    .line 707
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 708
    .local v2, "child":Landroid/view/View;
    invoke-static {v2, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isChildUnder(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 709
    return-object v2

    .line 706
    .end local v2    # "child":Landroid/view/View;
    :cond_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 712
    .end local v1    # "i":I
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist findIgnoreOffsetLimitView()Landroid/view/View;
    .registers 5

    .line 1169
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIgnoreOffsetTopLimitViewId:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1170
    return-object v1

    .line 1172
    :cond_6
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIgnoreOffsetTopLimitViewId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1173
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1f

    if-eq v0, p0, :cond_1f

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1f

    .line 1174
    return-object v0

    .line 1176
    :cond_1f
    return-object v1
.end method

.method private blacklist findListChildUnder(FF)Landroid/view/View;
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 716
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 717
    .local v0, "v":Landroid/view/View;
    :goto_4
    if-eqz v0, :cond_2b

    .line 718
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 719
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    .line 720
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_1c

    .line 722
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 724
    :cond_1c
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_28

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    move-object v0, v1

    goto :goto_4

    .line 726
    :cond_2b
    return-object v0
.end method

.method private blacklist getMaxCollapsedHeight()I
    .registers 3

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isSmallCollapsed()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    :goto_b
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    add-int/2addr v0, v1

    return v0
.end method

.method private blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 1290
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 1291
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1293
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method private static blacklist isChildUnder(Landroid/view/View;FF)Z
    .registers 8
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 768
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    .line 769
    .local v0, "left":F
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    .line 770
    .local v1, "top":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 771
    .local v2, "right":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 772
    .local v3, "bottom":F
    cmpl-float v4, p1, v0

    if-ltz v4, :cond_26

    cmpl-float v4, p2, v1

    if-ltz v4, :cond_26

    cmpg-float v4, p1, v2

    if-gez v4, :cond_26

    cmpg-float v4, p2, v3

    if-gez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    return v4
.end method

.method private blacklist isDescendantClipped(Landroid/view/View;)Z
    .registers 11
    .param p1, "child"    # Landroid/view/View;

    .line 738
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 739
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 741
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1b

    .line 742
    move-object v0, p1

    .local v0, "directChild":Landroid/view/View;
    goto :goto_2b

    .line 744
    .end local v0    # "directChild":Landroid/view/View;
    :cond_1b
    move-object v0, p1

    .line 745
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 746
    .local v1, "p":Landroid/view/ViewParent;
    :goto_20
    if-eq v1, p0, :cond_2a

    .line 747
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 748
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_20

    .line 750
    :cond_2a
    move-object v2, v0

    .line 755
    .end local v1    # "p":Landroid/view/ViewParent;
    .local v0, "directChild":Landroid/view/View;
    :goto_2b
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 756
    .local v1, "clipEdge":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v2

    .line 757
    .local v2, "childCount":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .local v4, "i":I
    :goto_3e
    if-ge v4, v2, :cond_58

    .line 758
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 759
    .local v6, "nextChild":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4d

    .line 760
    goto :goto_55

    .line 762
    :cond_4d
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 757
    .end local v6    # "nextChild":Landroid/view/View;
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 764
    .end local v4    # "i":I
    :cond_58
    iget-object v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_5f

    move v3, v5

    :cond_5f
    return v3
.end method

.method private blacklist isDismissable()Z
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissLocked:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist isDragging()Z
    .registers 3

    .line 268
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method private blacklist isListChildUnderClipped(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 733
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findListChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 734
    .local v0, "listChild":Landroid/view/View;
    if-eqz v0, :cond_e

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private blacklist isMoving()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private blacklist isNestedListChildScrolled()Z
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    .line 380
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    .line 381
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    .line 382
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_23

    :cond_21
    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    nop

    .line 379
    :goto_24
    return v1
.end method

.method private blacklist isNestedRecyclerChildScrolled()Z
    .registers 4

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1f

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    .line 388
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 389
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_1d

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1

    .line 391
    .end local v0    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1f
    return v1
.end method

.method private blacklist onCollapsedChanged(Z)V
    .registers 3
    .param p1, "isCollapsed"    # Z

    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 643
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 644
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    .line 647
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnCollapsedChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

    if-eqz v0, :cond_16

    .line 648
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnCollapsedChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;->onCollapsedChanged(Z)V

    .line 650
    :cond_16
    return-void
.end method

.method private blacklist onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 531
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 532
    .local v1, "pointerId":I
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_25

    .line 535
    if-nez v0, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 536
    .local v2, "newPointerIndex":I
    :goto_11
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 537
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 538
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 540
    .end local v2    # "newPointerIndex":I
    :cond_25
    return-void
.end method

.method private blacklist performAccessibilityActionCommon(I)Z
    .registers 8
    .param p1, "action"    # I

    .line 872
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_3e

    goto :goto_3d

    .line 888
    :sswitch_7
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3d

    .line 889
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 890
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 891
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    .line 892
    return v1

    .line 882
    :sswitch_24
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3d

    .line 883
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 884
    return v1

    .line 876
    :sswitch_33
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_3d

    .line 877
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 878
    return v1

    .line 897
    :cond_3d
    :goto_3d
    return v0

    :sswitch_data_3e
    .sparse-switch
        0x1000 -> :sswitch_33
        0x40000 -> :sswitch_33
        0x80000 -> :sswitch_24
        0x100000 -> :sswitch_7
        0x102003a -> :sswitch_33
    .end sparse-switch
.end method

.method private blacklist performDrag(F)F
    .registers 15
    .param p1, "dy"    # F

    .line 576
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 577
    return v1

    .line 580
    :cond_8
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    add-float/2addr v0, p1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 582
    .local v0, "newPos":F
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_e8

    .line 583
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float p1, v0, v2

    .line 585
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    float-to-int v3, p1

    int-to-float v3, v3

    sub-float v3, p1, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    .line 586
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3b

    .line 587
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    .line 588
    add-float/2addr p1, v3

    goto :goto_49

    .line 589
    :cond_3b
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_49

    .line 590
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    .line 591
    sub-float/2addr p1, v3

    .line 594
    :cond_49
    :goto_49
    const/4 v2, 0x0

    .line 595
    .local v2, "isIgnoreOffsetLimitSet":Z
    const/4 v3, 0x0

    .line 596
    .local v3, "ignoreOffsetLimit":I
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->findIgnoreOffsetLimitView()Landroid/view/View;

    move-result-object v4

    .line 597
    .local v4, "ignoreOffsetLimitView":Landroid/view/View;
    if-eqz v4, :cond_60

    .line 598
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 599
    .local v5, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int v3, v6, v7

    .line 600
    const/4 v2, 0x1

    .line 602
    .end local v5    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_60
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v5

    .line 603
    .local v5, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_65
    if-ge v6, v5, :cond_a7

    .line 604
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 605
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_74

    .line 606
    goto :goto_a4

    .line 608
    :cond_74
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 609
    .local v8, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v9, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-nez v9, :cond_83

    .line 610
    float-to-int v9, p1

    invoke-virtual {v7, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_a4

    .line 611
    :cond_83
    if-eqz v2, :cond_a4

    .line 612
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    .line 613
    .local v9, "top":I
    iget v10, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v3

    int-to-float v10, v10

    add-float/2addr v10, p1

    float-to-int v10, v10

    iget v11, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->mFixedTop:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 616
    .local v10, "targetTop":I
    if-eq v9, v10, :cond_9c

    .line 617
    sub-int v11, v10, v9

    invoke-virtual {v7, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 619
    :cond_9c
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    iget v12, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    move v3, v11

    .line 603
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v9    # "top":I
    .end local v10    # "targetTop":I
    :cond_a4
    :goto_a4
    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    .line 622
    .end local v6    # "i":I
    :cond_a7
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v6, v6, v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_b1

    move v6, v7

    goto :goto_b2

    :cond_b1
    move v6, v8

    .line 623
    .local v6, "isCollapsedOld":Z
    :goto_b2
    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 624
    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    int-to-float v9, v9

    add-float/2addr v9, p1

    float-to-int v9, v9

    iput v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 625
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_c1

    move v1, v7

    goto :goto_c2

    :cond_c1
    move v1, v8

    .line 626
    .local v1, "isCollapsedNew":Z
    :goto_c2
    if-eq v6, v1, :cond_dd

    .line 627
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    .line 628
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v9

    new-instance v10, Landroid/metrics/LogMaker;

    const/16 v11, 0x673

    invoke-direct {v10, v11}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 630
    if-eqz v1, :cond_d5

    goto :goto_d6

    :cond_d5
    move v7, v8

    :goto_d6
    invoke-virtual {v10, v7}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 628
    invoke-virtual {v9, v7}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 632
    :cond_dd
    float-to-int v7, v0

    sub-float v9, v0, p1

    float-to-int v9, v9

    invoke-virtual {p0, v8, v7, v8, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->onScrollChanged(IIII)V

    .line 633
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    .line 634
    return p1

    .line 636
    .end local v1    # "isCollapsedNew":Z
    .end local v2    # "isIgnoreOffsetLimitSet":Z
    .end local v3    # "ignoreOffsetLimit":I
    .end local v4    # "ignoreOffsetLimitView":Landroid/view/View;
    .end local v5    # "childCount":I
    .end local v6    # "isCollapsedOld":Z
    :cond_e8
    return v1
.end method

.method private blacklist resetTouch()V
    .registers 2

    .line 543
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 545
    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 547
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 548
    return-void
.end method

.method private blacklist setCollapseOffset(F)V
    .registers 3
    .param p1, "collapseOffset"    # F

    .line 303
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 304
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 307
    :cond_b
    return-void
.end method

.method private blacklist smoothScrollTo(IF)V
    .registers 13
    .param p1, "yOffset"    # I
    .param p2, "velocity"    # F

    .line 663
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 664
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v3, v0

    .line 665
    .local v3, "sy":I
    sub-int v5, p1, v3

    .line 666
    .local v5, "dy":I
    if-nez v5, :cond_b

    .line 667
    return-void

    .line 670
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v0

    .line 671
    .local v0, "height":I
    div-int/lit8 v7, v0, 0x2

    .line 672
    .local v7, "halfHeight":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v4, v0

    div-float/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 673
    .local v8, "distanceRatio":F
    int-to-float v1, v7

    int-to-float v4, v7

    .line 674
    invoke-direct {p0, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float/2addr v4, v6

    add-float v9, v1, v4

    .line 676
    .local v9, "distance":F
    const/4 v1, 0x0

    .line 677
    .local v1, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 678
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_42

    .line 679
    div-float v2, v9, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    .end local v1    # "duration":I
    .local v2, "duration":I
    goto :goto_4e

    .line 681
    .end local v2    # "duration":I
    .restart local v1    # "duration":I
    :cond_42
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v6, v0

    div-float/2addr v4, v6

    .line 682
    .local v4, "pageDelta":F
    add-float/2addr v2, v4

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 684
    .end local v1    # "duration":I
    .end local v4    # "pageDelta":F
    .restart local v2    # "duration":I
    :goto_4e
    const/16 v1, 0x12c

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 686
    .end local v2    # "duration":I
    .local v6, "duration":I
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    .line 688
    return-void
.end method

.method private blacklist updateCollapseOffset(IZ)Z
    .registers 9
    .param p1, "oldCollapsibleHeight"    # I
    .param p2, "remainClosed"    # Z

    .line 272
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 273
    return v1

    .line 276
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 278
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapseOffset(F)V

    .line 279
    return v1

    .line 282
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4e

    .line 283
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_20

    move v0, v3

    goto :goto_21

    :cond_20
    move v0, v1

    .line 284
    .local v0, "isCollapsedOld":Z
    :goto_21
    if-eqz p2, :cond_35

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-ge p1, v4, :cond_35

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    int-to-float v5, p1

    cmpl-float v4, v4, v5

    if-nez v4, :cond_35

    .line 287
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapseOffset(F)V

    goto :goto_41

    .line 289
    :cond_35
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapseOffset(F)V

    .line 291
    :goto_41
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_48

    move v1, v3

    .line 292
    .local v1, "isCollapsedNew":Z
    :cond_48
    if-eq v0, v1, :cond_4d

    .line 293
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    .line 295
    .end local v0    # "isCollapsedOld":Z
    .end local v1    # "isCollapsedNew":Z
    :cond_4d
    goto :goto_59

    .line 297
    :cond_4e
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    if-eqz v0, :cond_53

    goto :goto_56

    :cond_53
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v2, v0

    :goto_56
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapseOffset(F)V

    .line 299
    :goto_59
    return v3
.end method


# virtual methods
.method public whitelist computeScroll()V
    .registers 4

    .line 557
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 558
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 559
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 560
    .local v0, "keepGoing":Z
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 561
    if-eqz v0, :cond_26

    .line 562
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    goto :goto_31

    .line 563
    :cond_26
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v1, :cond_31

    .line 564
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    .line 567
    .end local v0    # "keepGoing":Z
    :cond_31
    :goto_31
    return-void
.end method

.method blacklist dispatchOnDismissed()V
    .registers 2

    .line 653
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_9

    .line 654
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    invoke-interface {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;->onDismissed()V

    .line 656
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    if-eqz v0, :cond_15

    .line 657
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 660
    :cond_15
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1149
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1134
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1139
    instance-of v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    if-eqz v0, :cond_d

    .line 1140
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V

    return-object v0

    .line 1141
    :cond_d
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1a

    .line 1142
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1144
    :cond_1a
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 914
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAlwaysShowHeight()I
    .registers 2

    .line 1047
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAlwaysShowHeight:I

    return v0
.end method

.method public blacklist getShowAtTop()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    return v0
.end method

.method public blacklist isCollapsed()Z
    .registers 3

    .line 215
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isSmallCollapsed()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 3

    .line 785
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 786
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 787
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1056
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1057
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidthResId:I

    if-lez v0, :cond_13

    .line 1058
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidthResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    .line 1060
    :cond_13
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 791
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 792
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 793
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 794
    return-void
.end method

.method public whitelist onDrawForeground(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 962
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 963
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 966
    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 967
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 919
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 921
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 922
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    .line 923
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 924
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 925
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 926
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 928
    :cond_23
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_46

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_3e

    .line 929
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 930
    :cond_3e
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 931
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 933
    :cond_46
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_54

    .line 934
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 936
    :cond_54
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6b

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 937
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 943
    :cond_6b
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 944
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 330
    .local v0, "action":I
    if-nez v0, :cond_b

    .line 331
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 334
    :cond_b
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 336
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_9a

    :pswitch_15
    goto/16 :goto_87

    .line 361
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 363
    goto :goto_87

    .line 347
    :pswitch_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 348
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 349
    .local v4, "y":F
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v5, v4, v5

    .line 350
    .local v5, "dy":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_61

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_61

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_61

    .line 352
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 353
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 354
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    add-float/2addr v7, v5

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 355
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 354
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 358
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "dy":F
    :cond_61
    goto :goto_87

    .line 367
    :pswitch_62
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto :goto_87

    .line 338
    :pswitch_66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 339
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 340
    .restart local v4    # "y":F
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 341
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 342
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->isListChildUnderClipped(FF)Z

    move-result v5

    if-eqz v5, :cond_83

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_83

    move v5, v1

    goto :goto_84

    :cond_83
    move v5, v2

    :goto_84
    iput-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    .line 344
    .end local v3    # "x":F
    .end local v4    # "y":F
    nop

    .line 372
    :goto_87
    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v3, :cond_8e

    .line 373
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 375
    :cond_8e
    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v3, :cond_98

    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v3, :cond_97

    goto :goto_98

    :cond_97
    move v1, v2

    :cond_98
    :goto_98
    return v1

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_66
        :pswitch_62
        :pswitch_1b
        :pswitch_62
        :pswitch_15
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 25
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1064
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWidth()I

    move-result v1

    .line 1066
    .local v1, "width":I
    const/4 v2, 0x0

    .line 1068
    .local v2, "indicatorHost":Landroid/view/View;
    iget v3, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 1069
    .local v3, "ypos":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v4

    .line 1070
    .local v4, "leftEdge":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    .line 1071
    .local v5, "rightEdge":I
    sub-int v6, v5, v4

    .line 1073
    .local v6, "widthAvailable":I
    const/4 v7, 0x0

    .line 1074
    .local v7, "isIgnoreOffsetLimitSet":Z
    const/4 v8, 0x0

    .line 1075
    .local v8, "ignoreOffsetLimit":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v9

    .line 1076
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1c
    if-ge v10, v9, :cond_ad

    .line 1077
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1078
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 1079
    .local v12, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v13, v12, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->hasNestedScrollIndicator:Z

    if-eqz v13, :cond_2d

    .line 1080
    move-object v2, v11

    .line 1083
    :cond_2d
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_3a

    .line 1084
    move/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_a5

    .line 1087
    :cond_3a
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIgnoreOffsetTopLimitViewId:I

    if-eqz v13, :cond_51

    if-nez v7, :cond_51

    .line 1088
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIgnoreOffsetTopLimitViewId:I

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v14

    if-ne v13, v14, :cond_51

    .line 1089
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    iget v14, v12, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int v8, v13, v14

    .line 1090
    const/4 v7, 0x1

    .line 1094
    :cond_51
    iget v13, v12, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v3

    .line 1095
    .local v13, "top":I
    iget-boolean v14, v12, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-eqz v14, :cond_87

    .line 1096
    invoke-direct {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v14

    if-nez v14, :cond_65

    .line 1097
    int-to-float v14, v13

    iget v15, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v12, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->mFixedTop:I

    .line 1099
    :cond_65
    if-eqz v7, :cond_7f

    .line 1100
    iget v14, v12, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v8

    int-to-float v15, v13

    move/from16 v16, v1

    .end local v1    # "width":I
    .local v16, "width":I
    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v15, v1

    float-to-int v1, v15

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1101
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v13

    iget v14, v12, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int v8, v1, v14

    goto :goto_89

    .line 1103
    .end local v16    # "width":I
    .restart local v1    # "width":I
    :cond_7f
    move/from16 v16, v1

    .end local v1    # "width":I
    .restart local v16    # "width":I
    int-to-float v1, v13

    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v1, v14

    float-to-int v13, v1

    goto :goto_89

    .line 1095
    .end local v16    # "width":I
    .restart local v1    # "width":I
    :cond_87
    move/from16 v16, v1

    .line 1106
    .end local v1    # "width":I
    .restart local v16    # "width":I
    :goto_89
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v13

    .line 1108
    .local v1, "bottom":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1109
    .local v14, "childWidth":I
    sub-int v15, v6, v14

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v4

    .line 1110
    .local v15, "left":I
    move-object/from16 v17, v2

    .end local v2    # "indicatorHost":Landroid/view/View;
    .local v17, "indicatorHost":Landroid/view/View;
    add-int v2, v15, v14

    .line 1112
    .local v2, "right":I
    invoke-virtual {v11, v15, v13, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 1114
    move/from16 v18, v1

    .end local v1    # "bottom":I
    .local v18, "bottom":I
    iget v1, v12, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int v1, v18, v1

    move v3, v1

    .line 1076
    .end local v2    # "right":I
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v13    # "top":I
    .end local v14    # "childWidth":I
    .end local v15    # "left":I
    .end local v18    # "bottom":I
    :goto_a5
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_1c

    .end local v16    # "width":I
    .end local v17    # "indicatorHost":Landroid/view/View;
    .local v1, "width":I
    .local v2, "indicatorHost":Landroid/view/View;
    :cond_ad
    move/from16 v16, v1

    .line 1117
    .end local v1    # "width":I
    .end local v10    # "i":I
    .restart local v16    # "width":I
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_de

    .line 1118
    const/4 v1, 0x1

    if-eqz v2, :cond_d8

    .line 1119
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 1120
    .local v10, "left":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v11

    .line 1121
    .local v11, "right":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1122
    .local v12, "bottom":I
    iget-object v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    sub-int v13, v12, v13

    .line 1123
    .restart local v13    # "top":I
    iget-object v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v10, v13, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1124
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result v14

    xor-int/2addr v1, v14

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    .line 1125
    .end local v10    # "left":I
    .end local v11    # "right":I
    .end local v12    # "bottom":I
    .end local v13    # "top":I
    goto :goto_de

    .line 1126
    :cond_d8
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1127
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    .line 1130
    :cond_de
    :goto_de
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 971
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 972
    .local v6, "sourceWidth":I
    move v1, v6

    .line 973
    .local v1, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 977
    .local v7, "heightSize":I
    iget v2, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    if-ltz v2, :cond_21

    .line 978
    iget v2, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v8, v1

    goto :goto_22

    .line 977
    :cond_21
    move v8, v1

    .line 981
    .end local v1    # "widthSize":I
    .local v8, "widthSize":I
    :goto_22
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 982
    .local v2, "widthSpec":I
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 987
    .local v9, "heightSpec":I
    const/4 v1, 0x0

    .line 990
    .local v1, "heightUsed":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v10

    .line 991
    .local v10, "childCount":I
    const/4 v3, 0x0

    move v11, v1

    move v12, v3

    .end local v1    # "heightUsed":I
    .local v11, "heightUsed":I
    .local v12, "i":I
    :goto_34
    const/high16 v13, -0x80000000

    const/4 v14, -0x1

    const/16 v15, 0x8

    const/4 v1, 0x0

    if-ge v12, v10, :cond_89

    .line 992
    move v3, v1

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 993
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 994
    .local v4, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v5, v4, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-eqz v5, :cond_83

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v15, :cond_83

    .line 995
    iget v5, v4, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    if-eq v5, v14, :cond_73

    .line 996
    sub-int v14, v7, v11

    .line 997
    .local v14, "remainingHeight":I
    iget v5, v4, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    .line 998
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 999
    iget v13, v4, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    if-le v13, v14, :cond_64

    iget v3, v4, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    sub-int/2addr v3, v14

    :cond_64
    move/from16 v17, v5

    move v5, v3

    move-object v3, v4

    move/from16 v4, v17

    .line 997
    .end local v4    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .local v3, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    move-object v13, v3

    .end local v3    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .local v13, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1000
    .end local v14    # "remainingHeight":I
    move-object/from16 v0, p0

    move v5, v11

    goto :goto_7c

    .line 1001
    .end local v13    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v4    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_73
    move-object v13, v4

    .end local v4    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v13    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v4, v9

    move v5, v11

    .end local v9    # "heightSpec":I
    .end local v11    # "heightUsed":I
    .local v4, "heightSpec":I
    .local v5, "heightUsed":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1003
    .end local v4    # "heightSpec":I
    .restart local v9    # "heightSpec":I
    :goto_7c
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v11, v5, v3

    .end local v5    # "heightUsed":I
    .restart local v11    # "heightUsed":I
    goto :goto_86

    .line 994
    .end local v13    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .local v4, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_83
    move-object v13, v4

    move v5, v11

    .line 991
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v11    # "heightUsed":I
    .restart local v5    # "heightUsed":I
    move v11, v5

    .end local v5    # "heightUsed":I
    .restart local v11    # "heightUsed":I
    :goto_86
    add-int/lit8 v12, v12, 0x1

    goto :goto_34

    :cond_89
    move v3, v1

    move v5, v11

    .line 1007
    .end local v11    # "heightUsed":I
    .end local v12    # "i":I
    .restart local v5    # "heightUsed":I
    iput v5, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAlwaysShowHeight:I

    .line 1010
    const/4 v1, 0x0

    move v11, v1

    move v12, v5

    .end local v5    # "heightUsed":I
    .local v11, "i":I
    .local v12, "heightUsed":I
    :goto_90
    if-ge v11, v10, :cond_eb

    .line 1011
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1013
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 1014
    .restart local v4    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v5, v4, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-nez v5, :cond_dd

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v15, :cond_dd

    .line 1015
    iget v5, v4, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    if-eq v5, v14, :cond_cb

    .line 1016
    sub-int v5, v7, v12

    .line 1017
    .local v5, "remainingHeight":I
    iget v3, v4, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    .line 1018
    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1019
    iget v13, v4, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    if-le v13, v5, :cond_ba

    iget v13, v4, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    sub-int/2addr v13, v5

    goto :goto_bb

    :cond_ba
    const/4 v13, 0x0

    .line 1017
    :goto_bb
    move-object/from16 v16, v4

    move v4, v3

    .end local v4    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .local v16, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    const/4 v3, 0x0

    move v14, v13

    move v13, v5

    move v5, v14

    const/4 v14, 0x0

    .end local v5    # "remainingHeight":I
    .local v13, "remainingHeight":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1020
    .end local v13    # "remainingHeight":I
    move-object/from16 v0, p0

    move v4, v9

    move v5, v12

    goto :goto_d6

    .line 1021
    .end local v16    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v4    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_cb
    move v14, v3

    move-object/from16 v16, v4

    .end local v4    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v16    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v4, v9

    move v5, v12

    .end local v9    # "heightSpec":I
    .end local v12    # "heightUsed":I
    .local v4, "heightSpec":I
    .local v5, "heightUsed":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1023
    :goto_d6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v12, v5, v3

    .end local v5    # "heightUsed":I
    .restart local v12    # "heightUsed":I
    goto :goto_e3

    .line 1014
    .end local v16    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .local v4, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v9    # "heightSpec":I
    :cond_dd
    move v14, v3

    move-object/from16 v16, v4

    move v4, v9

    move v5, v12

    .line 1010
    .end local v1    # "child":Landroid/view/View;
    .end local v9    # "heightSpec":I
    .end local v12    # "heightUsed":I
    .local v4, "heightSpec":I
    .restart local v5    # "heightUsed":I
    move v12, v5

    .end local v5    # "heightUsed":I
    .restart local v12    # "heightUsed":I
    :goto_e3
    add-int/lit8 v11, v11, 0x1

    move v9, v4

    move v3, v14

    const/high16 v13, -0x80000000

    const/4 v14, -0x1

    goto :goto_90

    .end local v4    # "heightSpec":I
    .restart local v9    # "heightSpec":I
    :cond_eb
    move v14, v3

    move v4, v9

    move v5, v12

    .line 1027
    .end local v9    # "heightSpec":I
    .end local v11    # "i":I
    .end local v12    # "heightUsed":I
    .restart local v4    # "heightSpec":I
    .restart local v5    # "heightUsed":I
    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 1028
    .local v1, "oldCollapsibleHeight":I
    iget v3, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAlwaysShowHeight:I

    sub-int v12, v5, v3

    .line 1029
    invoke-direct {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v3

    sub-int/2addr v12, v3

    .line 1028
    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 1030
    iget v3, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    sub-int v12, v5, v3

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    .line 1032
    invoke-direct {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    .line 1034
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v3

    if-eqz v3, :cond_117

    .line 1035
    iput v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    goto :goto_123

    .line 1037
    :cond_117
    sub-int v3, v7, v5

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v9, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v9, v9

    add-int/2addr v3, v9

    iput v3, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 1040
    :goto_123
    invoke-virtual {v0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMeasuredDimension(II)V

    .line 1041
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .registers 10
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 849
    const/4 v0, 0x0

    if-nez p4, :cond_59

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_59

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_30

    .line 851
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v1

    if-eqz v1, :cond_26

    cmpl-float v1, p3, v3

    if-lez v1, :cond_26

    .line 852
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 853
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    goto :goto_58

    .line 855
    :cond_26
    cmpg-float v1, p3, v3

    if-gez v1, :cond_2c

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :cond_2c
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_58

    .line 858
    :cond_30
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v1

    if-eqz v1, :cond_4e

    cmpg-float v1, p3, v3

    if-gez v1, :cond_4e

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4e

    .line 860
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 861
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    goto :goto_58

    .line 863
    :cond_4e
    cmpl-float v1, p3, v3

    if-lez v1, :cond_53

    goto :goto_55

    :cond_53
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_55
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 866
    :goto_58
    return v2

    .line 868
    :cond_59
    return v0
.end method

.method public whitelist onNestedPreFling(Landroid/view/View;FF)Z
    .registers 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 840
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_19

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_19

    .line 841
    invoke-direct {p0, v1, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 842
    const/4 v0, 0x1

    return v0

    .line 844
    :cond_19
    return v1
.end method

.method public whitelist onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 902
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 903
    const/4 v0, 0x1

    return v0

    .line 906
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performAccessibilityActionCommon(I)Z

    move-result v0

    return v0
.end method

.method public whitelist onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 833
    if-lez p3, :cond_d

    .line 834
    neg-int v0, p3

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    const/4 v1, 0x1

    aput v0, p4, v1

    .line 836
    :cond_d
    return-void
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 826
    if-gez p5, :cond_7

    .line 827
    neg-int v0, p5

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 829
    :cond_7
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 812
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 813
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1162
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    .line 1163
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1164
    iget-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    .line 1165
    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->-$$Nest$fgetmCollapsibleHeightReserved(Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 1166
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1154
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1155
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v1, :cond_16

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    .line 1156
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->-$$Nest$fputmCollapsibleHeightReserved(Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;I)V

    .line 1157
    return-object v0
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 798
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_18

    .line 799
    instance-of v0, p2, Landroid/widget/AbsListView;

    if-eqz v0, :cond_d

    .line 800
    move-object v0, p2

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    .line 802
    :cond_d
    instance-of v0, p2, Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_16

    .line 803
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    .line 805
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 807
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 817
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 818
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 819
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1a

    :cond_18
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_1a
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 821
    :cond_1e
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 398
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, "handled":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_20a

    :pswitch_10
    goto/16 :goto_208

    .line 457
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 459
    goto/16 :goto_208

    .line 449
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 450
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 451
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 452
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 454
    .end local v2    # "pointerIndex":I
    goto/16 :goto_208

    .line 506
    :pswitch_31
    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v5, :cond_47

    .line 507
    nop

    .line 508
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_42

    goto :goto_44

    :cond_42
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 507
    :goto_44
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 510
    :cond_47
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 511
    return v2

    .line 416
    :pswitch_4b
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 417
    .local v5, "index":I
    if-gez v5, :cond_88

    .line 418
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad pointer id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resetting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ResolverDrawerLayout"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v5, 0x0

    .line 420
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 424
    :cond_88
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 425
    .local v6, "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 426
    .local v7, "y":F
    iget-boolean v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v8, :cond_c5

    .line 427
    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v8, v7, v8

    .line 428
    .local v8, "dy":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_c5

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_c5

    .line 429
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    move v1, v2

    .line 430
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v9, v9

    sub-float/2addr v2, v9

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    add-float/2addr v9, v8

    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 431
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 430
    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 434
    .end local v8    # "dy":F
    :cond_c5
    iget-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v2, :cond_f4

    .line 435
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    sub-float v2, v7, v2

    .line 436
    .local v2, "dy":F
    cmpl-float v8, v2, v3

    if-lez v8, :cond_df

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedListChildScrolled()Z

    move-result v8

    if-eqz v8, :cond_df

    .line 437
    iget-object v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    neg-float v8, v2

    float-to-int v8, v8

    invoke-virtual {v3, v8, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_f4

    .line 438
    :cond_df
    cmpl-float v3, v2, v3

    if-lez v3, :cond_f1

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedRecyclerChildScrolled()Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 439
    iget-object v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    neg-float v8, v2

    float-to-int v8, v8

    invoke-virtual {v3, v4, v8}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    goto :goto_f4

    .line 441
    :cond_f1
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 444
    .end local v2    # "dy":F
    :cond_f4
    :goto_f4
    iput v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 446
    .end local v5    # "index":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    goto/16 :goto_208

    .line 462
    :pswitch_f8
    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 463
    .local v5, "wasDragging":Z
    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 464
    if-nez v5, :cond_123

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_123

    .line 465
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_123

    .line 466
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v6

    if-eqz v6, :cond_123

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    .line 468
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 469
    return v2

    .line 472
    :cond_123
    iget-boolean v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v6, :cond_14f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_14f

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_14f

    .line 474
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 475
    return v2

    .line 477
    :cond_14f
    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 478
    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 479
    .local v6, "yvel":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1b6

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v7

    if-eqz v7, :cond_18a

    .line 481
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v2

    if-eqz v2, :cond_17f

    cmpg-float v2, v6, v3

    if-gez v2, :cond_17f

    .line 482
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 483
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    goto :goto_1c8

    .line 485
    :cond_17f
    cmpg-float v2, v6, v3

    if-gez v2, :cond_184

    goto :goto_186

    :cond_184
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_186
    invoke-direct {p0, v4, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_1c8

    .line 488
    :cond_18a
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v7

    if-eqz v7, :cond_1a8

    cmpl-float v7, v6, v3

    if-lez v7, :cond_1a8

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1a8

    .line 490
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v3, v4

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 491
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    goto :goto_1c8

    .line 493
    :cond_1a8
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->scrollNestedScrollableChildBackToTop()V

    .line 494
    cmpg-float v2, v6, v3

    if-gez v2, :cond_1b0

    goto :goto_1b2

    :cond_1b0
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_1b2
    invoke-direct {p0, v4, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_1c8

    .line 498
    :cond_1b6
    nop

    .line 499
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_1c3

    goto :goto_1c5

    :cond_1c3
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 498
    :goto_1c5
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 501
    :goto_1c8
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 503
    .end local v5    # "wasDragging":Z
    .end local v6    # "yvel":F
    goto :goto_208

    .line 403
    :pswitch_1cc
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 404
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 405
    .local v5, "y":F
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 406
    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 407
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 408
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1ec

    move v6, v2

    goto :goto_1ed

    :cond_1ec
    move v6, v4

    .line 409
    .local v6, "hitView":Z
    :goto_1ed
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v7

    if-nez v7, :cond_1fa

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v7, :cond_1f8

    goto :goto_1fa

    :cond_1f8
    move v7, v4

    goto :goto_1fb

    :cond_1fa
    :goto_1fa
    move v7, v2

    :goto_1fb
    move v1, v7

    .line 410
    if-eqz v6, :cond_201

    if-eqz v1, :cond_201

    goto :goto_202

    :cond_201
    move v2, v4

    :goto_202
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 411
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 413
    .end local v3    # "x":F
    .end local v5    # "y":F
    .end local v6    # "hitView":Z
    nop

    .line 515
    :goto_208
    return v1

    nop

    :pswitch_data_20a
    .packed-switch 0x0
        :pswitch_1cc
        :pswitch_f8
        :pswitch_4b
        :pswitch_31
        :pswitch_10
        :pswitch_17
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 948
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 950
    const/4 v0, 0x0

    return v0

    .line 953
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 954
    const/4 v0, 0x1

    return v0

    .line 957
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performAccessibilityActionCommon(I)Z

    move-result v0

    return v0
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 777
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 778
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 779
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 781
    :cond_14
    return-void
.end method

.method public blacklist scrollNestedScrollableChildBackToTop()V
    .registers 3

    .line 522
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedListChildScrolled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 523
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_18

    .line 524
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedRecyclerChildScrolled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 525
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 527
    :cond_18
    :goto_18
    return-void
.end method

.method public blacklist setCollapsed(Z)V
    .registers 4
    .param p1, "collapsed"    # Z

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_b

    .line 231
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    goto :goto_15

    .line 233
    :cond_b
    if-eqz p1, :cond_10

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 235
    :goto_15
    return-void
.end method

.method public blacklist setCollapsibleHeightReserved(I)V
    .registers 7
    .param p1, "heightPixels"    # I

    .line 238
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 239
    .local v0, "oldReserved":I
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 240
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    if-eq v0, v1, :cond_b

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 244
    :cond_b
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    sub-int/2addr v1, v0

    .line 245
    .local v1, "dReserved":I
    if-eqz v1, :cond_1a

    iget-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v2, :cond_1a

    .line 246
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    int-to-float v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 249
    :cond_1a
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 250
    .local v2, "oldCollapsibleHeight":I
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 252
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 253
    return-void

    .line 256
    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->invalidate()V

    .line 257
    return-void
.end method

.method public blacklist setDismissLocked(Z)V
    .registers 2
    .param p1, "locked"    # Z

    .line 260
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissLocked:Z

    .line 261
    return-void
.end method

.method public blacklist setMaxCollapsedHeight(I)V
    .registers 3
    .param p1, "heightInPixels"    # I

    .line 193
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    if-ne p1, v0, :cond_5

    .line 194
    return-void

    .line 196
    :cond_5
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    .line 197
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsMaxCollapsedHeightSmallExplicit:Z

    if-nez v0, :cond_f

    .line 198
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    .line 200
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 201
    return-void
.end method

.method public blacklist setOnCollapsedChangedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

    .line 323
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnCollapsedChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

    .line 324
    return-void
.end method

.method public blacklist setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .line 315
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .line 316
    return-void
.end method

.method public blacklist setShowAtTop(Z)V
    .registers 3
    .param p1, "showOnTop"    # Z

    .line 219
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    if-eq v0, p1, :cond_9

    .line 220
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 223
    :cond_9
    return-void
.end method

.method public blacklist setSmallCollapsed(Z)V
    .registers 3
    .param p1, "smallCollapsed"    # Z

    .line 204
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    if-eq v0, p1, :cond_9

    .line 205
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 208
    :cond_9
    return-void
.end method
