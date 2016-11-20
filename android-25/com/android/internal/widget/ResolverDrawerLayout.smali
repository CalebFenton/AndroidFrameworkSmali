.class public Lcom/android/internal/widget/ResolverDrawerLayout;
.super Landroid/view/ViewGroup;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ResolverDrawerLayout$1;,
        Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;,
        Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolverDrawerLayout"


# instance fields
.field private mActivePointerId:I

.field private mCollapseOffset:F

.field private mCollapsibleHeight:I

.field private mCollapsibleHeightReserved:I

.field private mDismissOnScrollerFinished:Z

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIsDragging:Z

.field private mLastTouchY:F

.field private mMaxCollapsedHeight:I

.field private mMaxCollapsedHeightSmall:I

.field private mMaxWidth:I

.field private final mMinFlingVelocity:F

.field private mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

.field private mOpenOnClick:Z

.field private mOpenOnLayout:Z

.field private mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

.field private mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSmallCollapsed:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private final mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private final mTouchSlop:I

.field private mUncollapsibleHeight:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V
    .locals 0
    .param p1, "yOffset"    # I
    .param p2, "velocity"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 117
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 121
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 102
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@8
    .line 104
    new-instance v2, Landroid/graphics/Rect;

    #@a
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@d
    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    #@f
    .line 107
    new-instance v2, Lcom/android/internal/widget/ResolverDrawerLayout$1;

    #@11
    invoke-direct {v2, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$1;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    #@14
    .line 106
    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    #@16
    .line 127
    sget-object v2, Lcom/android/internal/R$styleable;->ResolverDrawerLayout:[I

    #@18
    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@1b
    move-result-object v0

    #@1c
    .line 129
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1f
    move-result v2

    #@20
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    #@22
    .line 130
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@25
    move-result v2

    #@26
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    #@28
    .line 134
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    #@2a
    .line 133
    const/4 v3, 0x2

    #@2b
    .line 132
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2e
    move-result v2

    #@2f
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    #@31
    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@34
    .line 137
    iget-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mContext:Landroid/content/Context;

    #@36
    const v3, 0x108065c

    #@39
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@3c
    move-result-object v2

    #@3d
    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    #@3f
    .line 139
    new-instance v2, Landroid/widget/OverScroller;

    #@41
    .line 140
    const v3, 0x10c0005

    #@44
    .line 139
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@47
    move-result-object v3

    #@48
    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@4b
    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@4d
    .line 141
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@50
    move-result-object v2

    #@51
    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@53
    .line 143
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@56
    move-result-object v1

    #@57
    .line 144
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@5a
    move-result v2

    #@5b
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@5d
    .line 145
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@60
    move-result v2

    #@61
    int-to-float v2, v2

    #@62
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    #@64
    .line 147
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setImportantForAccessibility(I)V

    #@67
    .line 124
    return-void
.end method

.method private abortAnimation()V
    .locals 1

    #@0
    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    #@5
    .line 431
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@8
    .line 432
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    #@b
    .line 429
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    #@0
    .prologue
    .line 509
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    sub-float/2addr p1, v0

    #@3
    .line 510
    float-to-double v0, p1

    #@4
    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    #@9
    mul-double/2addr v0, v2

    #@a
    double-to-float p1, v0

    #@b
    .line 511
    float-to-double v0, p1

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@f
    move-result-wide v0

    #@10
    double-to-float v0, v0

    #@11
    return v0
.end method

.method private findChildUnder(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 519
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@3
    move-result v1

    #@4
    .line 524
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    #@6
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@8
    .line 525
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 526
    .local v0, "child":Landroid/view/View;
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isChildUnder(Landroid/view/View;FF)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 527
    return-object v0

    #@13
    .line 524
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@15
    goto :goto_0

    #@16
    .line 530
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    #@17
    return-object v3
.end method

.method private findListChildUnder(FF)Landroid/view/View;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 534
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 535
    :goto_0
    if-eqz v0, :cond_2

    #@6
    .line 536
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    #@9
    move-result v1

    #@a
    sub-float/2addr p1, v1

    #@b
    .line 537
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    #@e
    move-result v1

    #@f
    sub-float/2addr p2, v1

    #@10
    .line 538
    instance-of v1, v0, Landroid/widget/AbsListView;

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 540
    check-cast v0, Landroid/view/ViewGroup;

    #@16
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    #@19
    move-result-object v1

    #@1a
    return-object v1

    #@1b
    .line 542
    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@1d
    if-eqz v1, :cond_1

    #@1f
    check-cast v0, Landroid/view/ViewGroup;

    #@21
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    #@24
    move-result-object v0

    #@25
    .local v0, "v":Landroid/view/View;
    goto :goto_0

    #@26
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    #@27
    .local v0, "v":Landroid/view/View;
    goto :goto_0

    #@28
    .line 544
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    return-object v0
.end method

.method private getHeightUsed(Landroid/view/View;)I
    .locals 10
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 796
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@3
    move-result v2

    #@4
    .line 797
    .local v2, "heightUsed":I
    instance-of v8, p1, Landroid/widget/AbsListView;

    #@6
    if-eqz v8, :cond_2

    #@8
    move-object v6, p1

    #@9
    .line 798
    check-cast v6, Landroid/widget/AbsListView;

    #@b
    .line 799
    .local v6, "lv":Landroid/widget/AbsListView;
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getPaddingBottom()I

    #@e
    move-result v7

    #@f
    .line 801
    .local v7, "lvPaddingBottom":I
    const/4 v4, 0x0

    #@10
    .line 802
    .local v4, "lowest":I
    const/4 v3, 0x0

    #@11
    .local v3, "i":I
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    #@14
    move-result v0

    #@15
    .local v0, "N":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@17
    .line 803
    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v8

    #@1b
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    #@1e
    move-result v8

    #@1f
    add-int v1, v8, v7

    #@21
    .line 804
    .local v1, "bottom":I
    if-le v1, v4, :cond_0

    #@23
    .line 805
    move v4, v1

    #@24
    .line 802
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_0

    #@27
    .line 809
    .end local v1    # "bottom":I
    :cond_1
    if-ge v4, v2, :cond_2

    #@29
    .line 810
    move v2, v4

    #@2a
    .line 814
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "lowest":I
    .end local v6    # "lv":Landroid/widget/AbsListView;
    .end local v7    # "lvPaddingBottom":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@30
    .line 815
    .local v5, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget v8, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    #@32
    add-int/2addr v8, v2

    #@33
    iget v9, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    #@35
    add-int/2addr v8, v9

    #@36
    return v8
.end method

.method private getMaxCollapsedHeight()I
    .locals 2

    #@0
    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isSmallCollapsed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    #@8
    .line 225
    :goto_0
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    #@a
    .line 224
    add-int/2addr v0, v1

    #@b
    return v0

    #@c
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    #@e
    goto :goto_0
.end method

.method private static isChildUnder(Landroid/view/View;FF)Z
    .locals 6
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    #@4
    move-result v1

    #@5
    .line 587
    .local v1, "left":F
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    #@8
    move-result v3

    #@9
    .line 588
    .local v3, "top":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@c
    move-result v5

    #@d
    int-to-float v5, v5

    #@e
    add-float v2, v1, v5

    #@10
    .line 589
    .local v2, "right":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@13
    move-result v5

    #@14
    int-to-float v5, v5

    #@15
    add-float v0, v3, v5

    #@17
    .line 590
    .local v0, "bottom":F
    cmpl-float v5, p1, v1

    #@19
    if-ltz v5, :cond_0

    #@1b
    cmpl-float v5, p2, v3

    #@1d
    if-ltz v5, :cond_0

    #@1f
    cmpg-float v5, p1, v2

    #@21
    if-gez v5, :cond_0

    #@23
    cmpg-float v5, p2, v0

    #@25
    if-gez v5, :cond_0

    #@27
    const/4 v4, 0x1

    #@28
    :cond_0
    return v4
.end method

.method private isDescendantClipped(Landroid/view/View;)Z
    .locals 11
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 556
    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@6
    move-result v9

    #@7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@a
    move-result v10

    #@b
    invoke-virtual {v8, v7, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    #@e
    .line 557
    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    #@10
    invoke-virtual {p0, p1, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@13
    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@16
    move-result-object v8

    #@17
    if-ne v8, p0, :cond_0

    #@19
    .line 560
    move-object v2, p1

    #@1a
    .line 573
    .local v2, "directChild":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    #@1d
    move-result v8

    #@1e
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    #@21
    move-result v9

    #@22
    sub-int v1, v8, v9

    #@24
    .line 574
    .local v1, "clipEdge":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    #@27
    move-result v0

    #@28
    .line 575
    .local v0, "childCount":I
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->indexOfChild(Landroid/view/View;)I

    #@2b
    move-result v8

    #@2c
    add-int/lit8 v3, v8, 0x1

    #@2e
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    #@30
    .line 576
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    #@33
    move-result-object v4

    #@34
    .line 577
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@37
    move-result v8

    #@38
    const/16 v9, 0x8

    #@3a
    if-ne v8, v9, :cond_2

    #@3c
    .line 575
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 562
    .end local v0    # "childCount":I
    .end local v1    # "clipEdge":I
    .end local v2    # "directChild":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "nextChild":Landroid/view/View;
    :cond_0
    move-object v6, p1

    #@40
    .line 563
    .local v6, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@43
    move-result-object v5

    #@44
    .line 564
    .local v5, "p":Landroid/view/ViewParent;
    :goto_3
    if-eq v5, p0, :cond_1

    #@46
    move-object v6, v5

    #@47
    .line 565
    check-cast v6, Landroid/view/View;

    #@49
    .line 566
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@4c
    move-result-object v5

    #@4d
    goto :goto_3

    #@4e
    .line 568
    :cond_1
    move-object v2, v6

    #@4f
    .restart local v2    # "directChild":Landroid/view/View;
    goto :goto_0

    #@50
    .line 580
    .end local v5    # "p":Landroid/view/ViewParent;
    .end local v6    # "v":Landroid/view/View;
    .restart local v0    # "childCount":I
    .restart local v1    # "clipEdge":I
    .restart local v3    # "i":I
    .restart local v4    # "nextChild":Landroid/view/View;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@53
    move-result v8

    #@54
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    #@57
    move-result v1

    #@58
    goto :goto_2

    #@59
    .line 582
    .end local v4    # "nextChild":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    #@5b
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    #@5d
    if-le v8, v1, :cond_4

    #@5f
    const/4 v7, 0x1

    #@60
    :cond_4
    return v7
.end method

.method private isDragging()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 195
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@3
    if-nez v1, :cond_0

    #@5
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x2

    #@a
    if-ne v1, v2, :cond_1

    #@c
    :cond_0
    :goto_0
    return v0

    #@d
    :cond_1
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method private isListChildUnderClipped(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 551
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findListChildUnder(FF)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 552
    .local v0, "listChild":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method private isMoving()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 191
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@7
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    :cond_0
    return v0
.end method

.method private onCollapsedChanged(Z)V
    .locals 2
    .param p1, "isCollapsed"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 462
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@4
    .line 465
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 466
    if-eqz p1, :cond_1

    #@a
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    #@d
    .line 461
    :cond_0
    return-void

    #@e
    .line 466
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@4
    move-result v2

    #@5
    .line 395
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@8
    move-result v1

    #@9
    .line 396
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@b
    if-ne v1, v3, :cond_1

    #@d
    .line 399
    if-nez v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    .line 400
    .local v0, "newPointerIndex":I
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@13
    move-result v3

    #@14
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@16
    .line 401
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@19
    move-result v3

    #@1a
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@1c
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@1e
    .line 402
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@21
    move-result v3

    #@22
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@24
    .line 393
    .end local v0    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private performDrag(F)F
    .locals 11
    .param p1, "dy"    # F

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 436
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@3
    add-float/2addr v7, p1

    #@4
    .line 437
    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@6
    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    #@8
    add-int/2addr v8, v9

    #@9
    int-to-float v8, v8

    #@a
    .line 436
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    #@d
    move-result v7

    #@e
    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    #@11
    move-result v6

    #@12
    .line 438
    .local v6, "newPos":F
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@14
    cmpl-float v7, v6, v7

    #@16
    if-eqz v7, :cond_5

    #@18
    .line 439
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@1a
    sub-float p1, v6, v7

    #@1c
    .line 440
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    #@1f
    move-result v1

    #@20
    .line 441
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@23
    .line 442
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v0

    #@27
    .line 443
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@2d
    .line 444
    .local v5, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v7, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    #@2f
    if-nez v7, :cond_0

    #@31
    .line 445
    float-to-int v7, p1

    #@32
    invoke-virtual {v0, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@35
    .line 441
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 448
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_1
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@3a
    cmpl-float v7, v7, v10

    #@3c
    if-eqz v7, :cond_3

    #@3e
    const/4 v4, 0x1

    #@3f
    .line 449
    .local v4, "isCollapsedOld":Z
    :goto_1
    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@41
    .line 450
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    #@43
    int-to-float v7, v7

    #@44
    add-float/2addr v7, p1

    #@45
    float-to-int v7, v7

    #@46
    iput v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    #@48
    .line 451
    cmpl-float v7, v6, v10

    #@4a
    if-eqz v7, :cond_4

    #@4c
    const/4 v3, 0x1

    #@4d
    .line 452
    .local v3, "isCollapsedNew":Z
    :goto_2
    if-eq v4, v3, :cond_2

    #@4f
    .line 453
    invoke-direct {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    #@52
    .line 455
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    #@55
    .line 456
    return p1

    #@56
    .line 448
    .end local v3    # "isCollapsedNew":Z
    .end local v4    # "isCollapsedOld":Z
    :cond_3
    const/4 v4, 0x0

    #@57
    .restart local v4    # "isCollapsedOld":Z
    goto :goto_1

    #@58
    .line 451
    :cond_4
    const/4 v3, 0x0

    #@59
    goto :goto_2

    #@5a
    .line 458
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "isCollapsedOld":Z
    :cond_5
    return v10
.end method

.method private resetTouch()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 407
    const/4 v0, -0x1

    #@3
    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@5
    .line 408
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@7
    .line 409
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    #@9
    .line 410
    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@b
    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@d
    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@f
    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@11
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@14
    .line 406
    return-void
.end method

.method private smoothScrollTo(IF)V
    .locals 13
    .param p1, "yOffset"    # I
    .param p2, "velocity"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/high16 v12, 0x3f800000    # 1.0f

    #@3
    .line 481
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    #@6
    .line 482
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@8
    float-to-int v2, v0

    #@9
    .line 483
    .local v2, "sy":I
    sub-int v4, p1, v2

    #@b
    .line 484
    .local v4, "dy":I
    if-nez v4, :cond_0

    #@d
    .line 485
    return-void

    #@e
    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    #@11
    move-result v9

    #@12
    .line 489
    .local v9, "height":I
    div-int/lit8 v8, v9, 0x2

    #@14
    .line 490
    .local v8, "halfHeight":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@17
    move-result v0

    #@18
    int-to-float v0, v0

    #@19
    mul-float/2addr v0, v12

    #@1a
    int-to-float v3, v9

    #@1b
    div-float/2addr v0, v3

    #@1c
    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    #@1f
    move-result v7

    #@20
    .line 491
    .local v7, "distanceRatio":F
    int-to-float v0, v8

    #@21
    int-to-float v3, v8

    #@22
    .line 492
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->distanceInfluenceForSnapDuration(F)F

    #@25
    move-result v11

    #@26
    .line 491
    mul-float/2addr v3, v11

    #@27
    add-float v6, v0, v3

    #@29
    .line 494
    .local v6, "distance":F
    const/4 v5, 0x0

    #@2a
    .line 495
    .local v5, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@2d
    move-result p2

    #@2e
    .line 496
    const/4 v0, 0x0

    #@2f
    cmpl-float v0, p2, v0

    #@31
    if-lez v0, :cond_1

    #@33
    .line 497
    div-float v0, v6, p2

    #@35
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@38
    move-result v0

    #@39
    const/high16 v3, 0x447a0000    # 1000.0f

    #@3b
    mul-float/2addr v0, v3

    #@3c
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@3f
    move-result v0

    #@40
    mul-int/lit8 v5, v0, 0x4

    #@42
    .line 502
    :goto_0
    const/16 v0, 0x12c

    #@44
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    #@47
    move-result v5

    #@48
    .line 504
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@4a
    move v3, v1

    #@4b
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    #@4e
    .line 505
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    #@51
    .line 480
    return-void

    #@52
    .line 499
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@55
    move-result v0

    #@56
    int-to-float v0, v0

    #@57
    int-to-float v3, v9

    #@58
    div-float v10, v0, v3

    #@5a
    .line 500
    .local v10, "pageDelta":F
    add-float v0, v10, v12

    #@5c
    const/high16 v3, 0x42c80000    # 100.0f

    #@5e
    mul-float/2addr v0, v3

    #@5f
    float-to-int v5, v0

    #@60
    goto :goto_0
.end method

.method private updateCollapseOffset(IZ)Z
    .locals 7
    .param p1, "oldCollapsibleHeight"    # I
    .param p2, "remainClosed"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 199
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@5
    if-ne p1, v4, :cond_0

    #@7
    .line 200
    return v2

    #@8
    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_5

    #@e
    .line 204
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@10
    cmpl-float v4, v4, v6

    #@12
    if-eqz v4, :cond_2

    #@14
    const/4 v1, 0x1

    #@15
    .line 205
    .local v1, "isCollapsedOld":Z
    :goto_0
    if-eqz p2, :cond_3

    #@17
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@19
    if-ge p1, v4, :cond_3

    #@1b
    .line 206
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@1d
    int-to-float v5, p1

    #@1e
    cmpl-float v4, v4, v5

    #@20
    if-nez v4, :cond_3

    #@22
    .line 208
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@24
    int-to-float v4, v4

    #@25
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@27
    .line 212
    :goto_1
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@29
    cmpl-float v4, v4, v6

    #@2b
    if-eqz v4, :cond_4

    #@2d
    move v0, v3

    #@2e
    .line 213
    .local v0, "isCollapsedNew":Z
    :goto_2
    if-eq v1, v0, :cond_1

    #@30
    .line 214
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    #@33
    .line 220
    .end local v0    # "isCollapsedNew":Z
    .end local v1    # "isCollapsedOld":Z
    :cond_1
    :goto_3
    return v3

    #@34
    .line 204
    :cond_2
    const/4 v1, 0x0

    #@35
    .restart local v1    # "isCollapsedOld":Z
    goto :goto_0

    #@36
    .line 210
    :cond_3
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@38
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@3a
    int-to-float v5, v5

    #@3b
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    #@3e
    move-result v4

    #@3f
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@41
    goto :goto_1

    #@42
    :cond_4
    move v0, v2

    #@43
    .line 212
    goto :goto_2

    #@44
    .line 218
    .end local v1    # "isCollapsedOld":Z
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    #@46
    if-eqz v4, :cond_6

    #@48
    :goto_4
    int-to-float v2, v2

    #@49
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@4b
    goto :goto_3

    #@4c
    :cond_6
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@4e
    goto :goto_4
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 416
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    #@4
    .line 417
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@6
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 418
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@e
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    const/4 v0, 0x0

    #@15
    .line 419
    .local v0, "keepGoing":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@17
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    #@1a
    move-result v1

    #@1b
    int-to-float v1, v1

    #@1c
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@1e
    sub-float/2addr v1, v2

    #@1f
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    #@22
    .line 420
    if-eqz v0, :cond_2

    #@24
    .line 421
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    #@27
    .line 415
    .end local v0    # "keepGoing":Z
    :cond_0
    :goto_1
    return-void

    #@28
    .line 418
    :cond_1
    const/4 v0, 0x1

    #@29
    .restart local v0    # "keepGoing":Z
    goto :goto_0

    #@2a
    .line 422
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    #@2c
    if-eqz v1, :cond_0

    #@2e
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 423
    new-instance v1, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@34
    invoke-direct {v1, p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;)V

    #@37
    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@39
    .line 424
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@3b
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->post(Ljava/lang/Runnable;)Z

    #@3e
    goto :goto_1
.end method

.method dispatchOnDismissed()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 472
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@7
    invoke-interface {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;->onDismissed()V

    #@a
    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@13
    .line 476
    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@15
    .line 470
    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    #@0
    .prologue
    .line 888
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, -0x2

    #@4
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(II)V

    #@7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 873
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 878
    instance-of v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 879
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@6
    check-cast p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@8
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V

    #@b
    return-object v0

    #@c
    .line 880
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 881
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@12
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@14
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@17
    return-object v0

    #@18
    .line 883
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@1a
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@1d
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 689
    const-class v0, Landroid/widget/ScrollView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isCollapsed()Z
    .locals 2

    #@0
    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v0, v0, v1

    #@5
    if-lez v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isSmallCollapsed()Z
    .locals 1

    #@0
    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    #@0
    .prologue
    .line 603
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 604
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@6
    move-result-object v0

    #@7
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@c
    .line 602
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 609
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 610
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@6
    move-result-object v0

    #@7
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@c
    .line 611
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    #@f
    .line 608
    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 730
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@9
    .line 733
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDrawForeground(Landroid/graphics/Canvas;)V

    #@c
    .line 728
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 694
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 696
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isEnabled()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 697
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@b
    const/4 v1, 0x0

    #@c
    cmpl-float v0, v0, v1

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 698
    const/16 v0, 0x1000

    #@12
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@15
    .line 699
    const/4 v0, 0x1

    #@16
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@19
    .line 705
    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@1b
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    #@1e
    .line 693
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    .line 236
    .local v0, "action":I
    if-nez v0, :cond_0

    #@8
    .line 237
    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    #@d
    .line 240
    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@f
    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@12
    .line 242
    packed-switch v0, :pswitch_data_0

    #@15
    .line 278
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 279
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    #@1c
    .line 281
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@1e
    if-nez v4, :cond_3

    #@20
    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    #@22
    :cond_3
    return v5

    #@23
    .line 244
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@26
    move-result v2

    #@27
    .line 245
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2a
    move-result v3

    #@2b
    .line 246
    .local v3, "y":F
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@2d
    .line 247
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@2f
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@31
    .line 248
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->isListChildUnderClipped(FF)Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_4

    #@37
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@39
    const/4 v7, 0x0

    #@3a
    cmpl-float v6, v6, v7

    #@3c
    if-lez v6, :cond_4

    #@3e
    move v4, v5

    #@3f
    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    #@41
    goto :goto_0

    #@42
    .line 253
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@45
    move-result v2

    #@46
    .line 254
    .restart local v2    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@49
    move-result v3

    #@4a
    .line 255
    .restart local v3    # "y":F
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@4c
    sub-float v1, v3, v6

    #@4e
    .line 256
    .local v1, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@51
    move-result v6

    #@52
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@54
    int-to-float v7, v7

    #@55
    cmpl-float v6, v6, v7

    #@57
    if-lez v6, :cond_1

    #@59
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    #@5c
    move-result-object v6

    #@5d
    if-eqz v6, :cond_1

    #@5f
    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    #@62
    move-result v6

    #@63
    and-int/lit8 v6, v6, 0x2

    #@65
    if-nez v6, :cond_1

    #@67
    .line 258
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@6a
    move-result v4

    #@6b
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@6d
    .line 259
    iput-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@6f
    .line 260
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@71
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@73
    int-to-float v6, v6

    #@74
    sub-float/2addr v4, v6

    #@75
    .line 261
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@77
    add-float/2addr v6, v1

    #@78
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@7a
    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@7c
    int-to-float v8, v8

    #@7d
    add-float/2addr v7, v8

    #@7e
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    #@81
    move-result v6

    #@82
    .line 260
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    #@85
    move-result v4

    #@86
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@88
    goto :goto_0

    #@89
    .line 267
    .end local v1    # "dy":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@8c
    goto :goto_0

    #@8d
    .line 273
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    #@90
    goto :goto_0

    #@91
    .line 242
    nop

    #@92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWidth()I

    #@3
    move-result v14

    #@4
    .line 822
    .local v14, "width":I
    const/4 v7, 0x0

    #@5
    .line 824
    .local v7, "indicatorHost":Landroid/view/View;
    move-object/from16 v0, p0

    #@7
    iget v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    #@9
    move/from16 v16, v0

    #@b
    .line 825
    .local v16, "ypos":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    #@e
    move-result v9

    #@f
    .line 826
    .local v9, "leftEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    #@12
    move-result v17

    #@13
    sub-int v12, v14, v17

    #@15
    .line 828
    .local v12, "rightEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    #@18
    move-result v4

    #@19
    .line 829
    .local v4, "childCount":I
    const/4 v6, 0x0

    #@1a
    .end local v7    # "indicatorHost":Landroid/view/View;
    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_3

    #@1c
    .line 830
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v3

    #@22
    .line 831
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@25
    move-result-object v10

    #@26
    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@28
    .line 832
    .local v10, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->hasNestedScrollIndicator:Z

    #@2a
    move/from16 v17, v0

    #@2c
    if-eqz v17, :cond_0

    #@2e
    .line 833
    move-object v7, v3

    #@2f
    .line 836
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@32
    move-result v17

    #@33
    const/16 v18, 0x8

    #@35
    move/from16 v0, v17

    #@37
    move/from16 v1, v18

    #@39
    if-ne v0, v1, :cond_1

    #@3b
    .line 829
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 840
    :cond_1
    iget v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    #@40
    move/from16 v17, v0

    #@42
    add-int v13, v16, v17

    #@44
    .line 841
    .local v13, "top":I
    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    #@46
    move/from16 v17, v0

    #@48
    if-eqz v17, :cond_2

    #@4a
    .line 842
    int-to-float v0, v13

    #@4b
    move/from16 v17, v0

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@51
    move/from16 v18, v0

    #@53
    sub-float v17, v17, v18

    #@55
    move/from16 v0, v17

    #@57
    float-to-int v13, v0

    #@58
    .line 844
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@5b
    move-result v17

    #@5c
    add-int v2, v13, v17

    #@5e
    .line 846
    .local v2, "bottom":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@61
    move-result v5

    #@62
    .line 847
    .local v5, "childWidth":I
    sub-int v15, v12, v9

    #@64
    .line 848
    .local v15, "widthAvailable":I
    sub-int v17, v15, v5

    #@66
    div-int/lit8 v17, v17, 0x2

    #@68
    add-int v8, v9, v17

    #@6a
    .line 849
    .local v8, "left":I
    add-int v11, v8, v5

    #@6c
    .line 851
    .local v11, "right":I
    invoke-virtual {v3, v8, v13, v11, v2}, Landroid/view/View;->layout(IIII)V

    #@6f
    .line 853
    iget v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    #@71
    move/from16 v17, v0

    #@73
    add-int v16, v2, v17

    #@75
    goto :goto_1

    #@76
    .line 856
    .end local v2    # "bottom":I
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childWidth":I
    .end local v8    # "left":I
    .end local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v11    # "right":I
    .end local v13    # "top":I
    .end local v15    # "widthAvailable":I
    :cond_3
    move-object/from16 v0, p0

    #@78
    iget-object v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    #@7a
    move-object/from16 v17, v0

    #@7c
    if-eqz v17, :cond_4

    #@7e
    .line 857
    if-eqz v7, :cond_6

    #@80
    .line 858
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@83
    move-result v8

    #@84
    .line 859
    .restart local v8    # "left":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    #@87
    move-result v11

    #@88
    .line 860
    .restart local v11    # "right":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@8b
    move-result v2

    #@8c
    .line 861
    .restart local v2    # "bottom":I
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    #@90
    move-object/from16 v17, v0

    #@92
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@95
    move-result v17

    #@96
    sub-int v13, v2, v17

    #@98
    .line 862
    .restart local v13    # "top":I
    move-object/from16 v0, p0

    #@9a
    iget-object v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    #@9c
    move-object/from16 v17, v0

    #@9e
    move-object/from16 v0, v17

    #@a0
    invoke-virtual {v0, v8, v13, v11, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@a3
    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    #@a6
    move-result v17

    #@a7
    if-eqz v17, :cond_5

    #@a9
    const/16 v17, 0x0

    #@ab
    :goto_2
    move-object/from16 v0, p0

    #@ad
    move/from16 v1, v17

    #@af
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    #@b2
    .line 819
    .end local v2    # "bottom":I
    .end local v8    # "left":I
    .end local v11    # "right":I
    .end local v13    # "top":I
    :cond_4
    :goto_3
    return-void

    #@b3
    .line 863
    .restart local v2    # "bottom":I
    .restart local v8    # "left":I
    .restart local v11    # "right":I
    .restart local v13    # "top":I
    :cond_5
    const/16 v17, 0x1

    #@b5
    goto :goto_2

    #@b6
    .line 865
    .end local v2    # "bottom":I
    .end local v8    # "left":I
    .end local v11    # "right":I
    .end local v13    # "top":I
    :cond_6
    const/16 v17, 0x0

    #@b8
    move-object/from16 v0, v17

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput-object v0, v1, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    #@be
    .line 866
    const/16 v17, 0x1

    #@c0
    move-object/from16 v0, p0

    #@c2
    move/from16 v1, v17

    #@c4
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    #@c7
    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 738
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3
    move-result v12

    #@4
    .line 739
    .local v12, "sourceWidth":I
    move v13, v12

    #@5
    .line 740
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@8
    move-result v8

    #@9
    .line 744
    .local v8, "heightSize":I
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    #@b
    if-ltz v0, :cond_0

    #@d
    .line 745
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    #@f
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v13

    #@13
    .line 748
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    #@15
    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@18
    move-result v2

    #@19
    .line 749
    .local v2, "widthSpec":I
    const/high16 v0, 0x40000000    # 2.0f

    #@1b
    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1e
    move-result v4

    #@1f
    .line 750
    .local v4, "heightSpec":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    #@22
    move-result v0

    #@23
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    #@26
    move-result v14

    #@27
    add-int v3, v0, v14

    #@29
    .line 751
    .local v3, "widthPadding":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingTop()I

    #@2c
    move-result v0

    #@2d
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    #@30
    move-result v14

    #@31
    add-int v5, v0, v14

    #@33
    .line 754
    .local v5, "heightUsed":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    #@36
    move-result v7

    #@37
    .line 755
    .local v7, "childCount":I
    const/4 v9, 0x0

    #@38
    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_2

    #@3a
    .line 756
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    #@3d
    move-result-object v1

    #@3e
    .line 757
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@41
    move-result-object v10

    #@42
    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@44
    .line 758
    .local v10, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    #@46
    if-eqz v0, :cond_1

    #@48
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@4b
    move-result v0

    #@4c
    const/16 v14, 0x8

    #@4e
    if-eq v0, v14, :cond_1

    #@50
    move-object v0, p0

    #@51
    .line 759
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@54
    .line 760
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeightUsed(Landroid/view/View;)I

    #@57
    move-result v0

    #@58
    add-int/2addr v5, v0

    #@59
    .line 755
    :cond_1
    add-int/lit8 v9, v9, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 764
    .end local v1    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_2
    move v6, v5

    #@5d
    .line 767
    .local v6, "alwaysShowHeight":I
    const/4 v9, 0x0

    #@5e
    :goto_1
    if-ge v9, v7, :cond_4

    #@60
    .line 768
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    #@63
    move-result-object v1

    #@64
    .line 769
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@67
    move-result-object v10

    #@68
    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@6a
    .line 770
    .restart local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    #@6c
    if-nez v0, :cond_3

    #@6e
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@71
    move-result v0

    #@72
    const/16 v14, 0x8

    #@74
    if-eq v0, v14, :cond_3

    #@76
    move-object v0, p0

    #@77
    .line 771
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@7a
    .line 772
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeightUsed(Landroid/view/View;)I

    #@7d
    move-result v0

    #@7e
    add-int/2addr v5, v0

    #@7f
    .line 767
    :cond_3
    add-int/lit8 v9, v9, 0x1

    #@81
    goto :goto_1

    #@82
    .line 776
    .end local v1    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_4
    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@84
    .line 778
    .local v11, "oldCollapsibleHeight":I
    sub-int v0, v5, v6

    #@86
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    #@89
    move-result v14

    #@8a
    sub-int/2addr v0, v14

    #@8b
    .line 777
    const/4 v14, 0x0

    #@8c
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    #@8f
    move-result v0

    #@90
    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@92
    .line 779
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@94
    sub-int v0, v5, v0

    #@96
    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    #@98
    .line 781
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    #@9b
    move-result v0

    #@9c
    if-eqz v0, :cond_5

    #@9e
    const/4 v0, 0x0

    #@9f
    :goto_2
    invoke-direct {p0, v11, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    #@a2
    .line 783
    sub-int v0, v8, v5

    #@a4
    const/4 v14, 0x0

    #@a5
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    #@a8
    move-result v0

    #@a9
    iget v14, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@ab
    float-to-int v14, v14

    #@ac
    add-int/2addr v0, v14

    #@ad
    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    #@af
    .line 785
    invoke-virtual {p0, v12, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMeasuredDimension(II)V

    #@b2
    .line 737
    return-void

    #@b3
    .line 781
    :cond_5
    const/4 v0, 0x1

    #@b4
    goto :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 658
    if-nez p4, :cond_2

    #@5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@8
    move-result v1

    #@9
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    #@b
    cmpl-float v1, v1, v2

    #@d
    if-lez v1, :cond_2

    #@f
    .line 659
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 660
    cmpg-float v1, p3, v3

    #@15
    if-gez v1, :cond_0

    #@17
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@19
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@1b
    int-to-float v2, v2

    #@1c
    cmpl-float v1, v1, v2

    #@1e
    if-lez v1, :cond_0

    #@20
    .line 661
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@22
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    #@24
    add-int/2addr v0, v1

    #@25
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@28
    .line 662
    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    #@2a
    .line 666
    :goto_0
    return v4

    #@2b
    .line 664
    :cond_0
    cmpl-float v1, p3, v3

    #@2d
    if-lez v1, :cond_1

    #@2f
    :goto_1
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@32
    goto :goto_0

    #@33
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@35
    goto :goto_1

    #@36
    .line 668
    :cond_2
    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 649
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    #@3
    cmpl-float v0, p3, v0

    #@5
    if-lez v0, :cond_0

    #@7
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@9
    const/4 v1, 0x0

    #@a
    cmpl-float v0, v0, v1

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 650
    invoke-direct {p0, v2, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@11
    .line 651
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 653
    :cond_0
    return v2
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 673
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 674
    return v3

    #@a
    .line 677
    :cond_0
    const/16 v0, 0x1000

    #@c
    if-ne p2, v0, :cond_1

    #@e
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@10
    cmpl-float v0, v0, v1

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 678
    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@17
    .line 679
    return v3

    #@18
    .line 681
    :cond_1
    return v2
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    #@0
    .prologue
    .line 642
    if-lez p3, :cond_0

    #@2
    .line 643
    neg-int v0, p3

    #@3
    int-to-float v0, v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    #@7
    move-result v0

    #@8
    neg-float v0, v0

    #@9
    float-to-int v0, v0

    #@a
    const/4 v1, 0x1

    #@b
    aput v0, p4, v1

    #@d
    .line 641
    :cond_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    #@0
    .prologue
    .line 635
    if-gez p5, :cond_0

    #@2
    .line 636
    neg-int v0, p5

    #@3
    int-to-float v0, v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    #@7
    .line 634
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    #@0
    .prologue
    .line 621
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    #@3
    .line 620
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 900
    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    #@3
    .line 901
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 902
    iget-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    #@c
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    #@e
    .line 899
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 893
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    #@3
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@6
    move-result-object v2

    #@7
    invoke-direct {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@a
    .line 894
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@c
    if-lez v2, :cond_0

    #@e
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@10
    const/4 v3, 0x0

    #@11
    cmpl-float v2, v2, v3

    #@13
    if-nez v2, :cond_0

    #@15
    const/4 v1, 0x1

    #@16
    :cond_0
    iput-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    #@18
    .line 895
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 616
    and-int/lit8 v1, p3, 0x2

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 626
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    #@3
    .line 627
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@5
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 628
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@d
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@f
    div-int/lit8 v1, v1, 0x2

    #@11
    int-to-float v1, v1

    #@12
    cmpg-float v0, v0, v1

    #@14
    if-gez v0, :cond_1

    #@16
    const/4 v0, 0x0

    #@17
    :goto_0
    const/4 v1, 0x0

    #@18
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@1b
    .line 625
    :cond_0
    return-void

    #@1c
    .line 628
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@1e
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v1

    #@4
    .line 288
    .local v1, "action":I
    move-object/from16 v0, p0

    #@6
    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@8
    move-object/from16 v0, p1

    #@a
    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@d
    .line 290
    const/4 v3, 0x0

    #@e
    .line 291
    .local v3, "handled":Z
    packed-switch v1, :pswitch_data_0

    #@11
    .line 390
    :goto_0
    :pswitch_0
    return v3

    #@12
    .line 293
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@15
    move-result v9

    #@16
    .line 294
    .local v9, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@19
    move-result v10

    #@1a
    .line 295
    .local v10, "y":F
    move-object/from16 v0, p0

    #@1c
    iput v9, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@1e
    .line 296
    move-object/from16 v0, p0

    #@20
    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@22
    move-object/from16 v0, p0

    #@24
    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@26
    .line 297
    const/4 v12, 0x0

    #@27
    move-object/from16 v0, p1

    #@29
    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@2c
    move-result v12

    #@2d
    move-object/from16 v0, p0

    #@2f
    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@31
    .line 298
    move-object/from16 v0, p0

    #@33
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@35
    move-object/from16 v0, p0

    #@37
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@39
    move-object/from16 v0, p0

    #@3b
    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    #@3e
    move-result-object v12

    #@3f
    if-eqz v12, :cond_1

    #@41
    const/4 v4, 0x1

    #@42
    .line 299
    .local v4, "hitView":Z
    :goto_1
    move-object/from16 v0, p0

    #@44
    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@46
    if-nez v12, :cond_0

    #@48
    move-object/from16 v0, p0

    #@4a
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@4c
    if-lez v12, :cond_2

    #@4e
    :cond_0
    const/4 v3, 0x1

    #@4f
    .line 300
    :goto_2
    if-eqz v4, :cond_3

    #@51
    move v12, v3

    #@52
    :goto_3
    move-object/from16 v0, p0

    #@54
    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@56
    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    #@59
    goto :goto_0

    #@5a
    .line 298
    .end local v4    # "hitView":Z
    :cond_1
    const/4 v4, 0x0

    #@5b
    .restart local v4    # "hitView":Z
    goto :goto_1

    #@5c
    .line 299
    :cond_2
    const/4 v3, 0x0

    #@5d
    goto :goto_2

    #@5e
    .line 300
    :cond_3
    const/4 v12, 0x0

    #@5f
    goto :goto_3

    #@60
    .line 306
    .end local v4    # "hitView":Z
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    #@62
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@64
    move-object/from16 v0, p1

    #@66
    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@69
    move-result v5

    #@6a
    .line 307
    .local v5, "index":I
    if-gez v5, :cond_4

    #@6c
    .line 308
    const-string/jumbo v12, "ResolverDrawerLayout"

    #@6f
    new-instance v13, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v14, "Bad pointer id "

    #@77
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v13

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@7f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v13

    #@83
    const-string/jumbo v14, ", resetting"

    #@86
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v13

    #@8a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v13

    #@8e
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 309
    const/4 v5, 0x0

    #@92
    .line 310
    const/4 v12, 0x0

    #@93
    move-object/from16 v0, p1

    #@95
    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@98
    move-result v12

    #@99
    move-object/from16 v0, p0

    #@9b
    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@9d
    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@a0
    move-result v12

    #@a1
    move-object/from16 v0, p0

    #@a3
    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@a5
    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@a8
    move-result v12

    #@a9
    move-object/from16 v0, p0

    #@ab
    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@ad
    move-object/from16 v0, p0

    #@af
    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@b1
    .line 314
    :cond_4
    move-object/from16 v0, p1

    #@b3
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    #@b6
    move-result v9

    #@b7
    .line 315
    .restart local v9    # "x":F
    move-object/from16 v0, p1

    #@b9
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    #@bc
    move-result v10

    #@bd
    .line 316
    .restart local v10    # "y":F
    move-object/from16 v0, p0

    #@bf
    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@c1
    if-nez v12, :cond_5

    #@c3
    .line 317
    move-object/from16 v0, p0

    #@c5
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@c7
    sub-float v2, v10, v12

    #@c9
    .line 318
    .local v2, "dy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@cc
    move-result v12

    #@cd
    move-object/from16 v0, p0

    #@cf
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@d1
    int-to-float v13, v13

    #@d2
    cmpl-float v12, v12, v13

    #@d4
    if-lez v12, :cond_5

    #@d6
    move-object/from16 v0, p0

    #@d8
    invoke-direct {v0, v9, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    #@db
    move-result-object v12

    #@dc
    if-eqz v12, :cond_5

    #@de
    .line 319
    const/4 v12, 0x1

    #@df
    move-object/from16 v0, p0

    #@e1
    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@e3
    const/4 v3, 0x1

    #@e4
    .line 320
    move-object/from16 v0, p0

    #@e6
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@ec
    int-to-float v13, v13

    #@ed
    sub-float/2addr v12, v13

    #@ee
    .line 321
    move-object/from16 v0, p0

    #@f0
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@f2
    add-float/2addr v13, v2

    #@f3
    move-object/from16 v0, p0

    #@f5
    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@f7
    move-object/from16 v0, p0

    #@f9
    iget v15, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@fb
    int-to-float v15, v15

    #@fc
    add-float/2addr v14, v15

    #@fd
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    #@100
    move-result v13

    #@101
    .line 320
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    #@104
    move-result v12

    #@105
    move-object/from16 v0, p0

    #@107
    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@109
    .line 324
    .end local v2    # "dy":F
    :cond_5
    move-object/from16 v0, p0

    #@10b
    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@10d
    if-eqz v12, :cond_6

    #@10f
    .line 325
    move-object/from16 v0, p0

    #@111
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@113
    sub-float v2, v10, v12

    #@115
    .line 326
    .restart local v2    # "dy":F
    move-object/from16 v0, p0

    #@117
    invoke-direct {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    #@11a
    .line 328
    .end local v2    # "dy":F
    :cond_6
    move-object/from16 v0, p0

    #@11c
    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@11e
    goto/16 :goto_0

    #@120
    .line 333
    .end local v5    # "index":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@123
    move-result v7

    #@124
    .line 334
    .local v7, "pointerIndex":I
    move-object/from16 v0, p1

    #@126
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@129
    move-result v6

    #@12a
    .line 335
    .local v6, "pointerId":I
    move-object/from16 v0, p0

    #@12c
    iput v6, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@12e
    .line 336
    move-object/from16 v0, p1

    #@130
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    #@133
    move-result v12

    #@134
    move-object/from16 v0, p0

    #@136
    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@138
    .line 337
    move-object/from16 v0, p1

    #@13a
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    #@13d
    move-result v12

    #@13e
    move-object/from16 v0, p0

    #@140
    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@142
    move-object/from16 v0, p0

    #@144
    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@146
    goto/16 :goto_0

    #@148
    .line 342
    .end local v6    # "pointerId":I
    .end local v7    # "pointerIndex":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@14b
    goto/16 :goto_0

    #@14d
    .line 347
    :pswitch_5
    move-object/from16 v0, p0

    #@14f
    iget-boolean v8, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@151
    .line 348
    .local v8, "wasDragging":Z
    const/4 v12, 0x0

    #@152
    move-object/from16 v0, p0

    #@154
    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@156
    .line 349
    if-nez v8, :cond_7

    #@158
    move-object/from16 v0, p0

    #@15a
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@15c
    move-object/from16 v0, p0

    #@15e
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@160
    move-object/from16 v0, p0

    #@162
    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    #@165
    move-result-object v12

    #@166
    if-nez v12, :cond_7

    #@168
    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@16b
    move-result v12

    #@16c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@16f
    move-result v13

    #@170
    move-object/from16 v0, p0

    #@172
    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    #@175
    move-result-object v12

    #@176
    if-nez v12, :cond_7

    #@178
    .line 351
    move-object/from16 v0, p0

    #@17a
    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@17c
    if-eqz v12, :cond_7

    #@17e
    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    #@181
    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    #@184
    .line 354
    const/4 v12, 0x1

    #@185
    return v12

    #@186
    .line 357
    :cond_7
    move-object/from16 v0, p0

    #@188
    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    #@18a
    if-eqz v12, :cond_8

    #@18c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@18f
    move-result v12

    #@190
    move-object/from16 v0, p0

    #@192
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@194
    sub-float/2addr v12, v13

    #@195
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    #@198
    move-result v12

    #@199
    move-object/from16 v0, p0

    #@19b
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@19d
    int-to-float v13, v13

    #@19e
    cmpg-float v12, v12, v13

    #@1a0
    if-gez v12, :cond_8

    #@1a2
    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@1a5
    move-result v12

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@1aa
    sub-float/2addr v12, v13

    #@1ab
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    #@1ae
    move-result v12

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@1b3
    int-to-float v13, v13

    #@1b4
    cmpg-float v12, v12, v13

    #@1b6
    if-gez v12, :cond_8

    #@1b8
    .line 359
    const/4 v12, 0x0

    #@1b9
    const/4 v13, 0x0

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    invoke-direct {v0, v13, v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@1bf
    .line 360
    const/4 v12, 0x1

    #@1c0
    return v12

    #@1c1
    .line 362
    :cond_8
    move-object/from16 v0, p0

    #@1c3
    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1c5
    const/16 v13, 0x3e8

    #@1c7
    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@1ca
    .line 363
    move-object/from16 v0, p0

    #@1cc
    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1ce
    move-object/from16 v0, p0

    #@1d0
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@1d2
    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@1d5
    move-result v11

    #@1d6
    .line 364
    .local v11, "yvel":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    #@1d9
    move-result v12

    #@1da
    move-object/from16 v0, p0

    #@1dc
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    #@1de
    cmpl-float v12, v12, v13

    #@1e0
    if-lez v12, :cond_b

    #@1e2
    .line 365
    move-object/from16 v0, p0

    #@1e4
    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@1e6
    if-eqz v12, :cond_9

    #@1e8
    .line 366
    const/4 v12, 0x0

    #@1e9
    cmpl-float v12, v11, v12

    #@1eb
    if-lez v12, :cond_9

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@1f5
    int-to-float v13, v13

    #@1f6
    cmpl-float v12, v12, v13

    #@1f8
    if-lez v12, :cond_9

    #@1fa
    .line 367
    move-object/from16 v0, p0

    #@1fc
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@1fe
    move-object/from16 v0, p0

    #@200
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    #@202
    add-int/2addr v12, v13

    #@203
    move-object/from16 v0, p0

    #@205
    invoke-direct {v0, v12, v11}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@208
    .line 368
    const/4 v12, 0x1

    #@209
    move-object/from16 v0, p0

    #@20b
    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    #@20d
    .line 376
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    #@210
    goto/16 :goto_0

    #@212
    .line 370
    :cond_9
    const/4 v12, 0x0

    #@213
    cmpg-float v12, v11, v12

    #@215
    if-gez v12, :cond_a

    #@217
    const/4 v12, 0x0

    #@218
    :goto_5
    move-object/from16 v0, p0

    #@21a
    invoke-direct {v0, v12, v11}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@21d
    goto :goto_4

    #@21e
    :cond_a
    move-object/from16 v0, p0

    #@220
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@222
    goto :goto_5

    #@223
    .line 374
    :cond_b
    move-object/from16 v0, p0

    #@225
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@227
    move-object/from16 v0, p0

    #@229
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@22b
    div-int/lit8 v13, v13, 0x2

    #@22d
    int-to-float v13, v13

    #@22e
    cmpg-float v12, v12, v13

    #@230
    if-gez v12, :cond_c

    #@232
    const/4 v12, 0x0

    #@233
    :goto_6
    const/4 v13, 0x0

    #@234
    .line 373
    move-object/from16 v0, p0

    #@236
    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@239
    goto :goto_4

    #@23a
    .line 374
    :cond_c
    move-object/from16 v0, p0

    #@23c
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@23e
    goto :goto_6

    #@23f
    .line 381
    .end local v8    # "wasDragging":Z
    .end local v11    # "yvel":F
    :pswitch_6
    move-object/from16 v0, p0

    #@241
    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@243
    if-eqz v12, :cond_d

    #@245
    .line 383
    move-object/from16 v0, p0

    #@247
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@249
    move-object/from16 v0, p0

    #@24b
    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@24d
    div-int/lit8 v13, v13, 0x2

    #@24f
    int-to-float v13, v13

    #@250
    cmpg-float v12, v12, v13

    #@252
    if-gez v12, :cond_e

    #@254
    const/4 v12, 0x0

    #@255
    :goto_7
    const/4 v13, 0x0

    #@256
    .line 382
    move-object/from16 v0, p0

    #@258
    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@25b
    .line 385
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    #@25e
    .line 386
    const/4 v12, 0x1

    #@25f
    return v12

    #@260
    .line 383
    :cond_e
    move-object/from16 v0, p0

    #@262
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@264
    goto :goto_7

    #@265
    .line 291
    nop

    #@266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 710
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@5
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@8
    move-result v0

    #@9
    if-ne p1, v0, :cond_0

    #@b
    .line 712
    return v1

    #@c
    .line 715
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 716
    return v3

    #@13
    .line 719
    :cond_1
    const/16 v0, 0x1000

    #@15
    if-ne p1, v0, :cond_2

    #@17
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@19
    cmpl-float v0, v0, v2

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 720
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@20
    .line 721
    return v3

    #@21
    .line 724
    :cond_2
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    #@0
    .prologue
    .line 595
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@3
    .line 596
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isInTouchMode()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 597
    const/4 v0, 0x0

    #@10
    const/4 v1, 0x0

    #@11
    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@14
    .line 594
    :cond_0
    return-void
.end method

.method public setCollapsed(Z)V
    .locals 2
    .param p1, "collapsed"    # Z

    #@0
    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 165
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    #@8
    .line 163
    :goto_0
    return-void

    #@9
    .line 167
    :cond_0
    if-eqz p1, :cond_1

    #@b
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@d
    :goto_1
    const/4 v1, 0x0

    #@e
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@11
    goto :goto_0

    #@12
    :cond_1
    const/4 v0, 0x0

    #@13
    goto :goto_1
.end method

.method public setCollapsibleHeightReserved(I)V
    .locals 6
    .param p1, "heightPixels"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 172
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    #@3
    .line 173
    .local v2, "oldReserved":I
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    #@5
    .line 175
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    #@7
    sub-int v0, v4, v2

    #@9
    .line 176
    .local v0, "dReserved":I
    if-eqz v0, :cond_0

    #@b
    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 177
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@11
    int-to-float v5, v0

    #@12
    sub-float/2addr v4, v5

    #@13
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@15
    .line 180
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@17
    .line 181
    .local v1, "oldCollapsibleHeight":I
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@19
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    #@1c
    move-result v5

    #@1d
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@20
    move-result v4

    #@21
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@23
    .line 183
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_1

    #@29
    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 184
    return-void

    #@30
    .line 183
    :cond_1
    const/4 v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->invalidate()V

    #@35
    .line 171
    return-void
.end method

.method public setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@0
    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@2
    .line 228
    return-void
.end method

.method public setSmallCollapsed(Z)V
    .locals 0
    .param p1, "smallCollapsed"    # Z

    #@0
    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    #@2
    .line 152
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    #@5
    .line 150
    return-void
.end method
