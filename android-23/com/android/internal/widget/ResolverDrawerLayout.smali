.class public Lcom/android/internal/widget/ResolverDrawerLayout;
.super Landroid/view/ViewGroup;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;,
        Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;,
        Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolverDrawerLayout"


# instance fields
.field private mActivePointerId:I

.field private mCollapseOffset:F

.field private mCollapsibleHeight:I

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
    .line 104
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 108
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 107
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
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 89
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@8
    .line 91
    new-instance v2, Landroid/graphics/Rect;

    #@a
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@d
    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    #@f
    .line 94
    new-instance v2, Lcom/android/internal/widget/ResolverDrawerLayout$1;

    #@11
    invoke-direct {v2, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$1;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    #@14
    .line 93
    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    #@16
    .line 114
    sget-object v2, Lcom/android/internal/R$styleable;->ResolverDrawerLayout:[I

    #@18
    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@1b
    move-result-object v0

    #@1c
    .line 116
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1f
    move-result v2

    #@20
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    #@22
    .line 117
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@25
    move-result v2

    #@26
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    #@28
    .line 121
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    #@2a
    .line 120
    const/4 v3, 0x2

    #@2b
    .line 119
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2e
    move-result v2

    #@2f
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    #@31
    .line 122
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@34
    .line 124
    new-instance v2, Landroid/widget/OverScroller;

    #@36
    .line 125
    const v3, 0x10c0005

    #@39
    .line 124
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@40
    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@42
    .line 126
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@45
    move-result-object v2

    #@46
    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@48
    .line 128
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@4b
    move-result-object v1

    #@4c
    .line 129
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@4f
    move-result v2

    #@50
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@52
    .line 130
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@55
    move-result v2

    #@56
    int-to-float v2, v2

    #@57
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    #@59
    .line 132
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setImportantForAccessibility(I)V

    #@5c
    .line 111
    return-void
.end method

.method private abortAnimation()V
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    #@5
    .line 367
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@8
    .line 368
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    #@b
    .line 365
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    #@0
    .prologue
    .line 437
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    sub-float/2addr p1, v0

    #@3
    .line 438
    float-to-double v0, p1

    #@4
    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    #@9
    mul-double/2addr v0, v2

    #@a
    double-to-float p1, v0

    #@b
    .line 439
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
    .line 447
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
    .line 451
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@3
    move-result v1

    #@4
    .line 452
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    #@6
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@8
    .line 453
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 454
    .local v0, "child":Landroid/view/View;
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isChildUnder(Landroid/view/View;FF)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 455
    return-object v0

    #@13
    .line 452
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@15
    goto :goto_0

    #@16
    .line 458
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
    .line 462
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 463
    :goto_0
    if-eqz v0, :cond_2

    #@6
    .line 464
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    #@9
    move-result v1

    #@a
    sub-float/2addr p1, v1

    #@b
    .line 465
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    #@e
    move-result v1

    #@f
    sub-float/2addr p2, v1

    #@10
    .line 466
    instance-of v1, v0, Landroid/widget/AbsListView;

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 468
    check-cast v0, Landroid/view/ViewGroup;

    #@16
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    #@19
    move-result-object v1

    #@1a
    return-object v1

    #@1b
    .line 470
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
    .line 472
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    return-object v0
.end method

.method private getMaxCollapsedHeight()I
    .locals 1

    #@0
    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isSmallCollapsed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    #@b
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
    .line 514
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    #@4
    move-result v1

    #@5
    .line 515
    .local v1, "left":F
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    #@8
    move-result v3

    #@9
    .line 516
    .local v3, "top":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@c
    move-result v5

    #@d
    int-to-float v5, v5

    #@e
    add-float v2, v1, v5

    #@10
    .line 517
    .local v2, "right":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@13
    move-result v5

    #@14
    int-to-float v5, v5

    #@15
    add-float v0, v3, v5

    #@17
    .line 518
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
    .line 484
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
    .line 485
    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    #@10
    invoke-virtual {p0, p1, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@13
    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@16
    move-result-object v8

    #@17
    if-ne v8, p0, :cond_0

    #@19
    .line 488
    move-object v2, p1

    #@1a
    .line 501
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
    .line 502
    .local v1, "clipEdge":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    #@27
    move-result v0

    #@28
    .line 503
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
    .line 504
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    #@33
    move-result-object v4

    #@34
    .line 505
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@37
    move-result v8

    #@38
    const/16 v9, 0x8

    #@3a
    if-ne v8, v9, :cond_2

    #@3c
    .line 503
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 490
    .end local v0    # "childCount":I
    .end local v1    # "clipEdge":I
    .end local v2    # "directChild":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "nextChild":Landroid/view/View;
    :cond_0
    move-object v6, p1

    #@40
    .line 491
    .local v6, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@43
    move-result-object v5

    #@44
    .line 492
    .local v5, "p":Landroid/view/ViewParent;
    :goto_3
    if-eq v5, p0, :cond_1

    #@46
    move-object v6, v5

    #@47
    .line 493
    check-cast v6, Landroid/view/View;

    #@49
    .line 494
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@4c
    move-result-object v5

    #@4d
    goto :goto_3

    #@4e
    .line 496
    :cond_1
    move-object v2, v6

    #@4f
    .restart local v2    # "directChild":Landroid/view/View;
    goto :goto_0

    #@50
    .line 508
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
    .line 510
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

.method private isListChildUnderClipped(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 479
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findListChildUnder(FF)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 480
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
    .line 157
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

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@3
    move-result v2

    #@4
    .line 331
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@7
    move-result v1

    #@8
    .line 332
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@a
    if-ne v1, v3, :cond_0

    #@c
    .line 335
    if-nez v2, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    .line 336
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@12
    move-result v3

    #@13
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@15
    .line 337
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@18
    move-result v3

    #@19
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@1b
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@1d
    .line 338
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@20
    move-result v3

    #@21
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@23
    .line 329
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    #@24
    .line 335
    :cond_1
    const/4 v0, 0x0

    #@25
    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private performDrag(F)F
    .locals 11
    .param p1, "dy"    # F

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 372
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@3
    add-float/2addr v7, p1

    #@4
    .line 373
    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@6
    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    #@8
    add-int/2addr v8, v9

    #@9
    int-to-float v8, v8

    #@a
    .line 372
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    #@d
    move-result v7

    #@e
    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    #@11
    move-result v6

    #@12
    .line 374
    .local v6, "newPos":F
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@14
    cmpl-float v7, v6, v7

    #@16
    if-eqz v7, :cond_5

    #@18
    .line 375
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@1a
    sub-float p1, v6, v7

    #@1c
    .line 376
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    #@1f
    move-result v1

    #@20
    .line 377
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@23
    .line 378
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v0

    #@27
    .line 379
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@2d
    .line 380
    .local v5, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v7, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    #@2f
    if-nez v7, :cond_0

    #@31
    .line 381
    float-to-int v7, p1

    #@32
    invoke-virtual {v0, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@35
    .line 377
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 384
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
    .line 385
    .local v4, "isCollapsedOld":Z
    :goto_1
    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@41
    .line 386
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
    .line 387
    cmpl-float v7, v6, v10

    #@4a
    if-eqz v7, :cond_4

    #@4c
    const/4 v3, 0x1

    #@4d
    .line 388
    .local v3, "isCollapsedNew":Z
    :goto_2
    if-eq v4, v3, :cond_2

    #@4f
    .line 390
    const/4 v7, 0x0

    #@50
    .line 389
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@53
    .line 392
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    #@56
    .line 393
    return p1

    #@57
    .line 384
    .end local v3    # "isCollapsedNew":Z
    .end local v4    # "isCollapsedOld":Z
    :cond_3
    const/4 v4, 0x0

    #@58
    .restart local v4    # "isCollapsedOld":Z
    goto :goto_1

    #@59
    .line 387
    :cond_4
    const/4 v3, 0x0

    #@5a
    .restart local v3    # "isCollapsedNew":Z
    goto :goto_2

    #@5b
    .line 395
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "isCollapsedNew":Z
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
    .line 343
    const/4 v0, -0x1

    #@3
    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@5
    .line 344
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@7
    .line 345
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    #@9
    .line 346
    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@b
    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@d
    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@f
    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@11
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@14
    .line 342
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
    .line 409
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    #@6
    .line 410
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@8
    float-to-int v2, v0

    #@9
    .line 411
    .local v2, "sy":I
    sub-int v4, p1, v2

    #@b
    .line 412
    .local v4, "dy":I
    if-nez v4, :cond_0

    #@d
    .line 413
    return-void

    #@e
    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    #@11
    move-result v9

    #@12
    .line 417
    .local v9, "height":I
    div-int/lit8 v8, v9, 0x2

    #@14
    .line 418
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
    .line 419
    .local v7, "distanceRatio":F
    int-to-float v0, v8

    #@21
    int-to-float v3, v8

    #@22
    .line 420
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->distanceInfluenceForSnapDuration(F)F

    #@25
    move-result v11

    #@26
    .line 419
    mul-float/2addr v3, v11

    #@27
    add-float v6, v0, v3

    #@29
    .line 422
    .local v6, "distance":F
    const/4 v5, 0x0

    #@2a
    .line 423
    .local v5, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@2d
    move-result p2

    #@2e
    .line 424
    const/4 v0, 0x0

    #@2f
    cmpl-float v0, p2, v0

    #@31
    if-lez v0, :cond_1

    #@33
    .line 425
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
    .line 430
    :goto_0
    const/16 v0, 0x12c

    #@44
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    #@47
    move-result v5

    #@48
    .line 432
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@4a
    move v3, v1

    #@4b
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    #@4e
    .line 433
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    #@51
    .line 408
    return-void

    #@52
    .line 427
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
    .line 428
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


# virtual methods
.method public computeScroll()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 352
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    #@4
    .line 353
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@6
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 354
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
    .line 355
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
    .line 356
    if-eqz v0, :cond_2

    #@24
    .line 357
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    #@27
    .line 351
    .end local v0    # "keepGoing":Z
    :cond_0
    :goto_1
    return-void

    #@28
    .line 354
    :cond_1
    const/4 v0, 0x1

    #@29
    .restart local v0    # "keepGoing":Z
    goto :goto_0

    #@2a
    .line 358
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    #@2c
    if-eqz v1, :cond_0

    #@2e
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 359
    new-instance v1, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@34
    invoke-direct {v1, p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;)V

    #@37
    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@39
    .line 360
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
    .line 399
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 400
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@7
    invoke-interface {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;->onDismissed()V

    #@a
    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 403
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@13
    .line 404
    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    #@15
    .line 398
    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    #@0
    .prologue
    .line 775
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
    .line 760
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
    .line 765
    instance-of v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 766
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@6
    check-cast p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@8
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V

    #@b
    return-object v0

    #@c
    .line 767
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 768
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@12
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@14
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@17
    return-object v0

    #@18
    .line 770
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
    .line 617
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
    .line 145
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
    .line 141
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    #@0
    .prologue
    .line 531
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 532
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@6
    move-result-object v0

    #@7
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@c
    .line 530
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 537
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 538
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@6
    move-result-object v0

    #@7
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@c
    .line 539
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    #@f
    .line 536
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 622
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 624
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isEnabled()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 625
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@b
    const/4 v1, 0x0

    #@c
    cmpl-float v0, v0, v1

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 626
    const/16 v0, 0x1000

    #@12
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@15
    .line 627
    const/4 v0, 0x1

    #@16
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@19
    .line 633
    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@1b
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    #@1e
    .line 621
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
    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    .line 172
    .local v0, "action":I
    if-nez v0, :cond_0

    #@8
    .line 173
    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    #@d
    .line 176
    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@f
    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@12
    .line 178
    packed-switch v0, :pswitch_data_0

    #@15
    .line 214
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 215
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    #@1c
    .line 217
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
    .line 180
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@26
    move-result v2

    #@27
    .line 181
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2a
    move-result v3

    #@2b
    .line 182
    .local v3, "y":F
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@2d
    .line 183
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@2f
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@31
    .line 184
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->isListChildUnderClipped(FF)Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_4

    #@37
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@39
    if-lez v6, :cond_4

    #@3b
    move v4, v5

    #@3c
    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    #@3e
    goto :goto_0

    #@3f
    .line 189
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@42
    move-result v2

    #@43
    .line 190
    .restart local v2    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@46
    move-result v3

    #@47
    .line 191
    .restart local v3    # "y":F
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@49
    sub-float v1, v3, v6

    #@4b
    .line 192
    .local v1, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@4e
    move-result v6

    #@4f
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@51
    int-to-float v7, v7

    #@52
    cmpl-float v6, v6, v7

    #@54
    if-lez v6, :cond_1

    #@56
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    #@59
    move-result-object v6

    #@5a
    if-eqz v6, :cond_1

    #@5c
    .line 193
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    #@5f
    move-result v6

    #@60
    and-int/lit8 v6, v6, 0x2

    #@62
    if-nez v6, :cond_1

    #@64
    .line 194
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@67
    move-result v4

    #@68
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@6a
    .line 195
    iput-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@6c
    .line 196
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@6e
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@70
    int-to-float v6, v6

    #@71
    sub-float/2addr v4, v6

    #@72
    .line 197
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@74
    add-float/2addr v6, v1

    #@75
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@77
    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    #@79
    int-to-float v8, v8

    #@7a
    add-float/2addr v7, v8

    #@7b
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    #@7e
    move-result v6

    #@7f
    .line 196
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    #@82
    move-result v4

    #@83
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@85
    goto :goto_0

    #@86
    .line 203
    .end local v1    # "dy":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@89
    goto :goto_0

    #@8a
    .line 209
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    #@8d
    goto :goto_0

    #@8e
    .line 178
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
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWidth()I

    #@3
    move-result v12

    #@4
    .line 728
    .local v12, "width":I
    move-object/from16 v0, p0

    #@6
    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    #@8
    .line 729
    .local v14, "ypos":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    #@b
    move-result v7

    #@c
    .line 730
    .local v7, "leftEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    #@f
    move-result v15

    #@10
    sub-int v10, v12, v15

    #@12
    .line 732
    .local v10, "rightEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    #@15
    move-result v3

    #@16
    .line 733
    .local v3, "childCount":I
    const/4 v5, 0x0

    #@17
    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    #@19
    .line 734
    move-object/from16 v0, p0

    #@1b
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v2

    #@1f
    .line 735
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@22
    move-result-object v8

    #@23
    check-cast v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@25
    .line 737
    .local v8, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@28
    move-result v15

    #@29
    const/16 v16, 0x8

    #@2b
    move/from16 v0, v16

    #@2d
    if-ne v15, v0, :cond_0

    #@2f
    .line 733
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@31
    goto :goto_0

    #@32
    .line 741
    :cond_0
    iget v15, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    #@34
    add-int v11, v14, v15

    #@36
    .line 742
    .local v11, "top":I
    iget-boolean v15, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    #@38
    if-eqz v15, :cond_1

    #@3a
    .line 743
    int-to-float v15, v11

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@3f
    move/from16 v16, v0

    #@41
    sub-float v15, v15, v16

    #@43
    float-to-int v11, v15

    #@44
    .line 745
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@47
    move-result v15

    #@48
    add-int v1, v11, v15

    #@4a
    .line 747
    .local v1, "bottom":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@4d
    move-result v4

    #@4e
    .line 748
    .local v4, "childWidth":I
    sub-int v13, v10, v7

    #@50
    .line 749
    .local v13, "widthAvailable":I
    sub-int v15, v13, v4

    #@52
    div-int/lit8 v15, v15, 0x2

    #@54
    add-int v6, v7, v15

    #@56
    .line 750
    .local v6, "left":I
    add-int v9, v6, v4

    #@58
    .line 752
    .local v9, "right":I
    invoke-virtual {v2, v6, v11, v9, v1}, Landroid/view/View;->layout(IIII)V

    #@5b
    .line 754
    iget v15, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    #@5d
    add-int v14, v1, v15

    #@5f
    goto :goto_1

    #@60
    .line 725
    .end local v1    # "bottom":I
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childWidth":I
    .end local v6    # "left":I
    .end local v8    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v9    # "right":I
    .end local v11    # "top":I
    .end local v13    # "widthAvailable":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 657
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3
    move-result v15

    #@4
    .line 658
    .local v15, "sourceWidth":I
    move/from16 v16, v15

    #@6
    .line 659
    .local v16, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@9
    move-result v9

    #@a
    .line 663
    .local v9, "heightSize":I
    move-object/from16 v0, p0

    #@c
    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    #@e
    if-ltz v1, :cond_0

    #@10
    .line 664
    move-object/from16 v0, p0

    #@12
    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    #@14
    move/from16 v0, v16

    #@16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v16

    #@1a
    .line 667
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    #@1c
    move/from16 v0, v16

    #@1e
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@21
    move-result v3

    #@22
    .line 668
    .local v3, "widthSpec":I
    const/high16 v1, 0x40000000    # 2.0f

    #@24
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@27
    move-result v5

    #@28
    .line 669
    .local v5, "heightSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    #@2b
    move-result v1

    #@2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    #@2f
    move-result v17

    #@30
    add-int v4, v1, v17

    #@32
    .line 670
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingTop()I

    #@35
    move-result v1

    #@36
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    #@39
    move-result v17

    #@3a
    add-int v6, v1, v17

    #@3c
    .line 673
    .local v6, "heightUsed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    #@3f
    move-result v8

    #@40
    .line 674
    .local v8, "childCount":I
    const/4 v10, 0x0

    #@41
    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_2

    #@43
    .line 675
    move-object/from16 v0, p0

    #@45
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    #@48
    move-result-object v2

    #@49
    .line 676
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4c
    move-result-object v13

    #@4d
    check-cast v13, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@4f
    .line 677
    .local v13, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v1, v13, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    #@51
    if-eqz v1, :cond_1

    #@53
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@56
    move-result v1

    #@57
    const/16 v17, 0x8

    #@59
    move/from16 v0, v17

    #@5b
    if-eq v1, v0, :cond_1

    #@5d
    move-object/from16 v1, p0

    #@5f
    .line 678
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@62
    .line 679
    iget v1, v13, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    #@64
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@67
    move-result v17

    #@68
    add-int v1, v1, v17

    #@6a
    iget v0, v13, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    #@6c
    move/from16 v17, v0

    #@6e
    add-int v1, v1, v17

    #@70
    add-int/2addr v6, v1

    #@71
    .line 674
    :cond_1
    add-int/lit8 v10, v10, 0x1

    #@73
    goto :goto_0

    #@74
    .line 683
    .end local v2    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_2
    move v7, v6

    #@75
    .line 686
    .local v7, "alwaysShowHeight":I
    const/4 v10, 0x0

    #@76
    :goto_1
    if-ge v10, v8, :cond_4

    #@78
    .line 687
    move-object/from16 v0, p0

    #@7a
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    #@7d
    move-result-object v2

    #@7e
    .line 688
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@81
    move-result-object v13

    #@82
    check-cast v13, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@84
    .line 689
    .restart local v13    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v1, v13, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    #@86
    if-nez v1, :cond_3

    #@88
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@8b
    move-result v1

    #@8c
    const/16 v17, 0x8

    #@8e
    move/from16 v0, v17

    #@90
    if-eq v1, v0, :cond_3

    #@92
    move-object/from16 v1, p0

    #@94
    .line 690
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@97
    .line 691
    iget v1, v13, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    #@99
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@9c
    move-result v17

    #@9d
    add-int v1, v1, v17

    #@9f
    iget v0, v13, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    #@a1
    move/from16 v17, v0

    #@a3
    add-int v1, v1, v17

    #@a5
    add-int/2addr v6, v1

    #@a6
    .line 686
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@a8
    goto :goto_1

    #@a9
    .line 695
    .end local v2    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    #@ab
    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@ad
    .line 697
    .local v14, "oldCollapsibleHeight":I
    sub-int v1, v6, v7

    #@af
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    #@b2
    move-result v17

    #@b3
    sub-int v1, v1, v17

    #@b5
    .line 696
    const/16 v17, 0x0

    #@b7
    move/from16 v0, v17

    #@b9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@bc
    move-result v1

    #@bd
    move-object/from16 v0, p0

    #@bf
    iput v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@c1
    .line 698
    move-object/from16 v0, p0

    #@c3
    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@c5
    sub-int v1, v6, v1

    #@c7
    move-object/from16 v0, p0

    #@c9
    iput v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    #@cb
    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    #@ce
    move-result v1

    #@cf
    if-eqz v1, :cond_9

    #@d1
    .line 701
    move-object/from16 v0, p0

    #@d3
    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@d5
    const/16 v17, 0x0

    #@d7
    cmpl-float v1, v1, v17

    #@d9
    if-eqz v1, :cond_6

    #@db
    const/4 v12, 0x1

    #@dc
    .line 702
    .local v12, "isCollapsedOld":Z
    :goto_2
    move-object/from16 v0, p0

    #@de
    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@e0
    if-ge v14, v1, :cond_7

    #@e2
    .line 703
    move-object/from16 v0, p0

    #@e4
    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@e6
    int-to-float v0, v14

    #@e7
    move/from16 v17, v0

    #@e9
    cmpl-float v1, v1, v17

    #@eb
    if-nez v1, :cond_7

    #@ed
    .line 705
    move-object/from16 v0, p0

    #@ef
    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@f1
    int-to-float v1, v1

    #@f2
    move-object/from16 v0, p0

    #@f4
    iput v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@f6
    .line 709
    :goto_3
    move-object/from16 v0, p0

    #@f8
    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@fa
    const/16 v17, 0x0

    #@fc
    cmpl-float v1, v1, v17

    #@fe
    if-eqz v1, :cond_8

    #@100
    const/4 v11, 0x1

    #@101
    .line 710
    .local v11, "isCollapsedNew":Z
    :goto_4
    if-eq v12, v11, :cond_5

    #@103
    .line 712
    const/4 v1, 0x0

    #@104
    .line 711
    move-object/from16 v0, p0

    #@106
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@109
    .line 719
    .end local v11    # "isCollapsedNew":Z
    .end local v12    # "isCollapsedOld":Z
    :cond_5
    :goto_5
    sub-int v1, v9, v6

    #@10b
    const/16 v17, 0x0

    #@10d
    move/from16 v0, v17

    #@10f
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@112
    move-result v1

    #@113
    move-object/from16 v0, p0

    #@115
    iget v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@117
    move/from16 v17, v0

    #@119
    move/from16 v0, v17

    #@11b
    float-to-int v0, v0

    #@11c
    move/from16 v17, v0

    #@11e
    add-int v1, v1, v17

    #@120
    move-object/from16 v0, p0

    #@122
    iput v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    #@124
    .line 721
    move-object/from16 v0, p0

    #@126
    invoke-virtual {v0, v15, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMeasuredDimension(II)V

    #@129
    .line 656
    return-void

    #@12a
    .line 701
    :cond_6
    const/4 v12, 0x0

    #@12b
    .restart local v12    # "isCollapsedOld":Z
    goto :goto_2

    #@12c
    .line 707
    :cond_7
    move-object/from16 v0, p0

    #@12e
    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@130
    move-object/from16 v0, p0

    #@132
    iget v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@134
    move/from16 v17, v0

    #@136
    move/from16 v0, v17

    #@138
    int-to-float v0, v0

    #@139
    move/from16 v17, v0

    #@13b
    move/from16 v0, v17

    #@13d
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    #@140
    move-result v1

    #@141
    move-object/from16 v0, p0

    #@143
    iput v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@145
    goto :goto_3

    #@146
    .line 709
    :cond_8
    const/4 v11, 0x0

    #@147
    .restart local v11    # "isCollapsedNew":Z
    goto :goto_4

    #@148
    .line 716
    .end local v11    # "isCollapsedNew":Z
    .end local v12    # "isCollapsedOld":Z
    :cond_9
    move-object/from16 v0, p0

    #@14a
    iget-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    #@14c
    if-eqz v1, :cond_a

    #@14e
    const/4 v1, 0x0

    #@14f
    :goto_6
    int-to-float v1, v1

    #@150
    move-object/from16 v0, p0

    #@152
    iput v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    #@154
    goto :goto_5

    #@155
    :cond_a
    move-object/from16 v0, p0

    #@157
    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@159
    goto :goto_6
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
    .line 586
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
    .line 587
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 588
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
    .line 589
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@22
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    #@24
    add-int/2addr v0, v1

    #@25
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@28
    .line 590
    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    #@2a
    .line 594
    :goto_0
    return v4

    #@2b
    .line 592
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
    .line 596
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
    .line 577
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
    .line 578
    invoke-direct {p0, v2, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@11
    .line 579
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 581
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
    .line 601
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 602
    return v3

    #@a
    .line 605
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
    .line 606
    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@17
    .line 607
    return v3

    #@18
    .line 609
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
    .line 570
    if-lez p3, :cond_0

    #@2
    .line 571
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
    .line 569
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
    .line 563
    if-gez p5, :cond_0

    #@2
    .line 564
    neg-int v0, p5

    #@3
    int-to-float v0, v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    #@7
    .line 562
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
    .line 549
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    #@3
    .line 548
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 787
    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    #@3
    .line 788
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 789
    iget-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    #@c
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    #@e
    .line 786
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 780
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    #@3
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@6
    move-result-object v2

    #@7
    invoke-direct {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@a
    .line 781
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
    .line 782
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
    .line 544
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
    .line 554
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    #@3
    .line 555
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    #@5
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 556
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
    .line 553
    :cond_0
    return-void

    #@1c
    .line 556
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
    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v1

    #@4
    .line 224
    .local v1, "action":I
    move-object/from16 v0, p0

    #@6
    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@8
    move-object/from16 v0, p1

    #@a
    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@d
    .line 226
    const/4 v3, 0x0

    #@e
    .line 227
    .local v3, "handled":Z
    packed-switch v1, :pswitch_data_0

    #@11
    .line 326
    :goto_0
    :pswitch_0
    return v3

    #@12
    .line 229
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@15
    move-result v9

    #@16
    .line 230
    .local v9, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@19
    move-result v10

    #@1a
    .line 231
    .local v10, "y":F
    move-object/from16 v0, p0

    #@1c
    iput v9, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@1e
    .line 232
    move-object/from16 v0, p0

    #@20
    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@22
    move-object/from16 v0, p0

    #@24
    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@26
    .line 233
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
    .line 234
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
    .line 235
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
    .line 236
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
    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    #@59
    goto :goto_0

    #@5a
    .line 234
    .end local v4    # "hitView":Z
    :cond_1
    const/4 v4, 0x0

    #@5b
    .restart local v4    # "hitView":Z
    goto :goto_1

    #@5c
    .line 235
    :cond_2
    const/4 v3, 0x0

    #@5d
    goto :goto_2

    #@5e
    .line 236
    :cond_3
    const/4 v12, 0x0

    #@5f
    goto :goto_3

    #@60
    .line 242
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
    .line 243
    .local v5, "index":I
    if-gez v5, :cond_4

    #@6c
    .line 244
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
    .line 245
    const/4 v5, 0x0

    #@92
    .line 246
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
    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@a0
    move-result v12

    #@a1
    move-object/from16 v0, p0

    #@a3
    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    #@a5
    .line 248
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
    .line 250
    :cond_4
    move-object/from16 v0, p1

    #@b3
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    #@b6
    move-result v9

    #@b7
    .line 251
    .restart local v9    # "x":F
    move-object/from16 v0, p1

    #@b9
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    #@bc
    move-result v10

    #@bd
    .line 252
    .restart local v10    # "y":F
    move-object/from16 v0, p0

    #@bf
    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@c1
    if-nez v12, :cond_5

    #@c3
    .line 253
    move-object/from16 v0, p0

    #@c5
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    #@c7
    sub-float v2, v10, v12

    #@c9
    .line 254
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
    .line 255
    const/4 v12, 0x1

    #@df
    move-object/from16 v0, p0

    #@e1
    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@e3
    const/4 v3, 0x1

    #@e4
    .line 256
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
    .line 257
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
    .line 256
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    #@104
    move-result v12

    #@105
    move-object/from16 v0, p0

    #@107
    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@109
    .line 260
    .end local v2    # "dy":F
    :cond_5
    move-object/from16 v0, p0

    #@10b
    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@10d
    if-eqz v12, :cond_6

    #@10f
    .line 261
    move-object/from16 v0, p0

    #@111
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@113
    sub-float v2, v10, v12

    #@115
    .line 262
    .restart local v2    # "dy":F
    move-object/from16 v0, p0

    #@117
    invoke-direct {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    #@11a
    .line 264
    .end local v2    # "dy":F
    :cond_6
    move-object/from16 v0, p0

    #@11c
    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    #@11e
    goto/16 :goto_0

    #@120
    .line 269
    .end local v5    # "index":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@123
    move-result v7

    #@124
    .line 270
    .local v7, "pointerIndex":I
    move-object/from16 v0, p1

    #@126
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@129
    move-result v6

    #@12a
    .line 271
    .local v6, "pointerId":I
    move-object/from16 v0, p0

    #@12c
    iput v6, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    #@12e
    .line 272
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
    .line 273
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
    .line 278
    .end local v6    # "pointerId":I
    .end local v7    # "pointerIndex":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@14b
    goto/16 :goto_0

    #@14d
    .line 283
    :pswitch_5
    move-object/from16 v0, p0

    #@14f
    iget-boolean v8, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@151
    .line 284
    .local v8, "wasDragging":Z
    const/4 v12, 0x0

    #@152
    move-object/from16 v0, p0

    #@154
    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@156
    .line 285
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
    .line 286
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
    .line 287
    move-object/from16 v0, p0

    #@17a
    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@17c
    if-eqz v12, :cond_7

    #@17e
    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    #@181
    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    #@184
    .line 290
    const/4 v12, 0x1

    #@185
    return v12

    #@186
    .line 293
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
    .line 294
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
    .line 295
    const/4 v12, 0x0

    #@1b9
    const/4 v13, 0x0

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    invoke-direct {v0, v13, v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@1bf
    .line 296
    const/4 v12, 0x1

    #@1c0
    return v12

    #@1c1
    .line 298
    :cond_8
    move-object/from16 v0, p0

    #@1c3
    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1c5
    const/16 v13, 0x3e8

    #@1c7
    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@1ca
    .line 299
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
    .line 300
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
    .line 301
    move-object/from16 v0, p0

    #@1e4
    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@1e6
    if-eqz v12, :cond_9

    #@1e8
    .line 302
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
    .line 303
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
    .line 304
    const/4 v12, 0x1

    #@209
    move-object/from16 v0, p0

    #@20b
    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    #@20d
    .line 312
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    #@210
    goto/16 :goto_0

    #@212
    .line 306
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
    .line 310
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
    .line 309
    move-object/from16 v0, p0

    #@236
    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@239
    goto :goto_4

    #@23a
    .line 310
    :cond_c
    move-object/from16 v0, p0

    #@23c
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@23e
    goto :goto_6

    #@23f
    .line 317
    .end local v8    # "wasDragging":Z
    .end local v11    # "yvel":F
    :pswitch_6
    move-object/from16 v0, p0

    #@241
    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    #@243
    if-eqz v12, :cond_d

    #@245
    .line 319
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
    .line 318
    move-object/from16 v0, p0

    #@258
    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@25b
    .line 321
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    #@25e
    .line 322
    const/4 v12, 0x1

    #@25f
    return v12

    #@260
    .line 319
    :cond_e
    move-object/from16 v0, p0

    #@262
    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    #@264
    goto :goto_7

    #@265
    .line 227
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
    .line 638
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@5
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    #@8
    move-result v0

    #@9
    if-ne p1, v0, :cond_0

    #@b
    .line 640
    return v1

    #@c
    .line 643
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 644
    return v3

    #@13
    .line 647
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
    .line 648
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@20
    .line 649
    return v3

    #@21
    .line 652
    :cond_2
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    #@0
    .prologue
    .line 523
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@3
    .line 524
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
    .line 525
    const/4 v0, 0x0

    #@10
    const/4 v1, 0x0

    #@11
    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    #@14
    .line 522
    :cond_0
    return-void
.end method

.method public setCollapsed(Z)V
    .locals 2
    .param p1, "collapsed"    # Z

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 150
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    #@8
    .line 148
    :goto_0
    return-void

    #@9
    .line 152
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

.method public setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@0
    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    #@2
    .line 164
    return-void
.end method

.method public setSmallCollapsed(Z)V
    .locals 0
    .param p1, "smallCollapsed"    # Z

    #@0
    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    #@2
    .line 137
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    #@5
    .line 135
    return-void
.end method
