.class public Landroid/support/v4/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/NestedScrollView$SavedState;,
        Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private final mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static synthetic -wrap0(Landroid/support/v4/widget/NestedScrollView;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 145
    new-instance v0, Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    #@2
    invoke-direct {v0}, Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    #@7
    .line 147
    const/4 v0, 0x1

    #@8
    new-array v0, v0, [I

    #@a
    .line 148
    const v1, 0x101017a

    #@d
    const/4 v2, 0x0

    #@e
    aput v1, v0, v2

    #@10
    .line 147
    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    #@12
    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 157
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 161
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 73
    new-instance v1, Landroid/graphics/Rect;

    #@8
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@d
    .line 87
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    #@f
    .line 88
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    #@11
    .line 95
    const/4 v1, 0x0

    #@12
    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    #@14
    .line 102
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@16
    .line 118
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    #@18
    .line 128
    const/4 v1, -0x1

    #@19
    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@1b
    .line 133
    new-array v1, v4, [I

    #@1d
    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    #@1f
    .line 134
    new-array v1, v4, [I

    #@21
    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    #@23
    .line 166
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initScrollView()V

    #@26
    .line 169
    sget-object v1, Landroid/support/v4/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    #@28
    .line 168
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2b
    move-result-object v0

    #@2c
    .line 171
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2f
    move-result v1

    #@30
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    #@33
    .line 173
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@36
    .line 175
    new-instance v1, Landroid/support/v4/view/NestedScrollingParentHelper;

    #@38
    invoke-direct {v1, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    #@3b
    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    #@3d
    .line 176
    new-instance v1, Landroid/support/v4/view/NestedScrollingChildHelper;

    #@3f
    invoke-direct {v1, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    #@42
    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@44
    .line 179
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    #@47
    .line 181
    sget-object v1, Landroid/support/v4/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    #@49
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    #@4c
    .line 164
    return-void
.end method

.method private canScroll()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 382
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    .line 383
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    #@7
    .line 384
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@a
    move-result v1

    #@b
    .line 385
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@e
    move-result v3

    #@f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    #@12
    move-result v4

    #@13
    add-int/2addr v4, v1

    #@14
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@17
    move-result v5

    #@18
    add-int/2addr v4, v5

    #@19
    if-ge v3, v4, :cond_0

    #@1b
    const/4 v2, 0x1

    #@1c
    :cond_0
    return v2

    #@1d
    .line 387
    .end local v1    # "childHeight":I
    :cond_1
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1712
    if-ge p1, p2, :cond_0

    #@3
    if-gez p0, :cond_1

    #@5
    .line 1728
    :cond_0
    return v0

    #@6
    .line 1730
    :cond_1
    add-int v0, p1, p0

    #@8
    if-le v0, p2, :cond_2

    #@a
    .line 1736
    sub-int v0, p2, p1

    #@c
    return v0

    #@d
    .line 1738
    :cond_2
    return p0
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1231
    if-eqz p1, :cond_0

    #@3
    .line 1232
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 1233
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    #@a
    .line 1230
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1235
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    #@e
    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    #@0
    .prologue
    .line 1636
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@3
    .line 1638
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    #@6
    .line 1639
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    #@9
    .line 1641
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1642
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@f
    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    #@12
    .line 1643
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    #@14
    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    #@17
    .line 1635
    :cond_0
    return-void
.end method

.method private ensureGlows()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1666
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x2

    #@6
    if-eq v1, v2, :cond_1

    #@8
    .line 1667
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1668
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    .line 1669
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    #@12
    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    #@15
    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@17
    .line 1670
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    #@19
    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    #@1c
    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    #@1e
    .line 1665
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 1673
    :cond_1
    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@21
    .line 1674
    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    #@23
    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    #@0
    .prologue
    .line 977
    const/4 v10, 0x2

    #@1
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    #@4
    move-result-object v2

    #@5
    .line 978
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    #@6
    .line 987
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    #@7
    .line 989
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    .line 990
    .local v0, "count":I
    const/4 v4, 0x0

    #@c
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    #@e
    .line 991
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Landroid/view/View;

    #@14
    .line 992
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@17
    move-result v9

    #@18
    .line 993
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@1b
    move-result v6

    #@1c
    .line 995
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    #@1e
    if-ge v9, p3, :cond_0

    #@20
    .line 1001
    if-ge p2, v9, :cond_2

    #@22
    .line 1002
    if-ge v6, p3, :cond_1

    #@24
    const/4 v8, 0x1

    #@25
    .line 1004
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_3

    #@27
    .line 1006
    move-object v1, v5

    #@28
    .line 1007
    .local v1, "focusCandidate":Landroid/view/View;
    move v3, v8

    #@29
    .line 990
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1002
    :cond_1
    const/4 v8, 0x0

    #@2d
    .restart local v8    # "viewIsFullyContained":Z
    goto :goto_1

    #@2e
    .line 1001
    .end local v8    # "viewIsFullyContained":Z
    :cond_2
    const/4 v8, 0x0

    #@2f
    .restart local v8    # "viewIsFullyContained":Z
    goto :goto_1

    #@30
    .line 1010
    :cond_3
    if-eqz p1, :cond_4

    #@32
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@35
    move-result v10

    #@36
    if-ge v9, v10, :cond_4

    #@38
    const/4 v7, 0x1

    #@39
    .line 1014
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    #@3b
    .line 1015
    if-eqz v8, :cond_0

    #@3d
    if-eqz v7, :cond_0

    #@3f
    .line 1021
    move-object v1, v5

    #@40
    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    #@41
    .line 1011
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_4
    if-nez p1, :cond_5

    #@43
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@46
    move-result v10

    #@47
    if-le v6, v10, :cond_5

    #@49
    const/4 v7, 0x1

    #@4a
    .restart local v7    # "viewIsCloserToBoundary":Z
    goto :goto_3

    #@4b
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v7, 0x0

    #@4c
    .restart local v7    # "viewIsCloserToBoundary":Z
    goto :goto_3

    #@4d
    .line 1024
    :cond_6
    if-eqz v8, :cond_7

    #@4f
    .line 1026
    move-object v1, v5

    #@50
    .line 1027
    .restart local v1    # "focusCandidate":Landroid/view/View;
    const/4 v3, 0x1

    #@51
    .restart local v3    # "foundFullyContainedFocusable":Z
    goto :goto_2

    #@52
    .line 1028
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    :cond_7
    if-eqz v7, :cond_0

    #@54
    .line 1033
    move-object v1, v5

    #@55
    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    #@56
    .line 1040
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_8
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4
    .param p1, "velocityY"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1624
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@4
    move-result v1

    #@5
    .line 1625
    .local v1, "scrollY":I
    if-gtz v1, :cond_0

    #@7
    if-lez p1, :cond_4

    #@9
    .line 1626
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    #@c
    move-result v2

    #@d
    if-lt v1, v2, :cond_1

    #@f
    if-gez p1, :cond_3

    #@11
    :cond_1
    const/4 v0, 0x1

    #@12
    .line 1627
    .local v0, "canFling":Z
    :goto_0
    int-to-float v2, p1

    #@13
    invoke-virtual {p0, v3, v2}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_2

    #@19
    .line 1628
    int-to-float v2, p1

    #@1a
    invoke-virtual {p0, v3, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    #@1d
    .line 1629
    if-eqz v0, :cond_2

    #@1f
    .line 1630
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->fling(I)V

    #@22
    .line 1623
    :cond_2
    return-void

    #@23
    .line 1626
    .end local v0    # "canFling":Z
    :cond_3
    const/4 v0, 0x0

    #@24
    .restart local v0    # "canFling":Z
    goto :goto_0

    #@25
    .line 1625
    .end local v0    # "canFling":Z
    :cond_4
    const/4 v0, 0x0

    #@26
    .restart local v0    # "canFling":Z
    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 951
    const/4 v1, 0x0

    #@2
    .line 952
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@5
    move-result v2

    #@6
    if-lez v2, :cond_0

    #@8
    .line 953
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 955
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@f
    move-result v2

    #@10
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@13
    move-result v3

    #@14
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@17
    move-result v4

    #@18
    sub-int/2addr v3, v4

    #@19
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    #@1c
    move-result v4

    #@1d
    sub-int/2addr v3, v4

    #@1e
    sub-int/2addr v2, v3

    #@1f
    .line 954
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v1

    #@23
    .line 957
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    #@0
    .prologue
    .line 877
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    #@2
    const/4 v3, 0x0

    #@3
    cmpl-float v2, v2, v3

    #@5
    if-nez v2, :cond_1

    #@7
    .line 878
    new-instance v1, Landroid/util/TypedValue;

    #@9
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@c
    .line 879
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    .line 880
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@13
    move-result-object v2

    #@14
    .line 881
    const v3, 0x101004d

    #@17
    const/4 v4, 0x1

    #@18
    .line 880
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 882
    new-instance v2, Ljava/lang/IllegalStateException;

    #@20
    .line 883
    const-string/jumbo v3, "Expected theme to define listPreferredItemHeight."

    #@23
    .line 882
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 886
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@2e
    move-result-object v2

    #@2f
    .line 885
    invoke-virtual {v1, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@32
    move-result v2

    #@33
    iput v2, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    #@35
    .line 888
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_1
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    #@37
    return v2
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 520
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@4
    move-result v3

    #@5
    if-lez v3, :cond_1

    #@7
    .line 521
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@a
    move-result v1

    #@b
    .line 522
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    .line 523
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@12
    move-result v3

    #@13
    sub-int/2addr v3, v1

    #@14
    if-lt p2, v3, :cond_0

    #@16
    .line 524
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@19
    move-result v3

    #@1a
    sub-int/2addr v3, v1

    #@1b
    if-ge p2, v3, :cond_0

    #@1d
    .line 525
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@20
    move-result v3

    #@21
    if-lt p1, v3, :cond_0

    #@23
    .line 526
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@26
    move-result v3

    #@27
    if-ge p1, v3, :cond_0

    #@29
    const/4 v2, 0x1

    #@2a
    .line 523
    :cond_0
    return v2

    #@2b
    .line 528
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_1
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    #@0
    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 533
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    .line 531
    :goto_0
    return-void

    #@b
    .line 535
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@d
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@10
    goto :goto_0
.end method

.method private initScrollView()V
    .locals 4

    #@0
    .prologue
    .line 332
    new-instance v1, Landroid/support/v4/widget/ScrollerCompat;

    #@2
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v1, v2, v3}, Landroid/support/v4/widget/ScrollerCompat;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@a
    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@c
    .line 333
    const/4 v1, 0x1

    #@d
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    #@10
    .line 334
    const/high16 v1, 0x40000

    #@12
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    #@15
    .line 335
    const/4 v1, 0x0

    #@16
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setWillNotDraw(Z)V

    #@19
    .line 336
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@20
    move-result-object v0

    #@21
    .line 337
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@24
    move-result v1

    #@25
    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    #@27
    .line 338
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@2a
    move-result v1

    #@2b
    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mMinimumVelocity:I

    #@2d
    .line 339
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@30
    move-result v1

    #@31
    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    #@33
    .line 331
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    #@0
    .prologue
    .line 540
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 541
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    .line 539
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1210
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@4
    move-result v1

    #@5
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    #@0
    .prologue
    .line 1596
    if-ne p0, p1, :cond_0

    #@2
    .line 1597
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 1600
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    .line 1601
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@a
    if-eqz v1, :cond_1

    #@c
    check-cast v0, Landroid/view/View;

    #@e
    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/support/v4/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    #@11
    move-result v1

    #@12
    :goto_0
    return v1

    #@13
    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1218
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@6
    .line 1219
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b
    .line 1221
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@d
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@f
    add-int/2addr v1, p2

    #@10
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@13
    move-result v2

    #@14
    if-lt v1, v2, :cond_0

    #@16
    .line 1222
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@18
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@1a
    sub-int/2addr v1, p2

    #@1b
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@1e
    move-result v2

    #@1f
    add-int/2addr v2, p3

    #@20
    if-gt v1, v2, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    .line 1221
    :cond_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v3

    #@4
    const v4, 0xff00

    #@7
    and-int/2addr v3, v4

    #@8
    shr-int/lit8 v2, v3, 0x8

    #@a
    .line 833
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@d
    move-result v1

    #@e
    .line 834
    .local v1, "pointerId":I
    iget v3, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@10
    if-ne v1, v3, :cond_0

    #@12
    .line 838
    if-nez v2, :cond_1

    #@14
    const/4 v0, 0x1

    #@15
    .line 839
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@18
    move-result v3

    #@19
    float-to-int v3, v3

    #@1a
    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    #@1c
    .line 840
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@1f
    move-result v3

    #@20
    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@22
    .line 841
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 842
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@28
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    #@2b
    .line 830
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    #@2c
    .line 838
    :cond_1
    const/4 v0, 0x0

    #@2d
    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 546
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 547
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@7
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@a
    .line 548
    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@c
    .line 545
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    #@0
    .prologue
    .line 1123
    const/4 v3, 0x1

    #@1
    .line 1125
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@4
    move-result v4

    #@5
    .line 1126
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@8
    move-result v1

    #@9
    .line 1127
    .local v1, "containerTop":I
    add-int v0, v1, v4

    #@b
    .line 1128
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    #@d
    if-ne p1, v7, :cond_2

    #@f
    const/4 v6, 0x1

    #@10
    .line 1130
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    #@13
    move-result-object v5

    #@14
    .line 1131
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    #@16
    .line 1132
    move-object v5, p0

    #@17
    .line 1135
    :cond_0
    if-lt p2, v1, :cond_3

    #@19
    if-gt p3, v0, :cond_3

    #@1b
    .line 1136
    const/4 v3, 0x0

    #@1c
    .line 1142
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    #@1f
    move-result-object v7

    #@20
    if-eq v5, v7, :cond_1

    #@22
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    #@25
    .line 1144
    :cond_1
    return v3

    #@26
    .line 1128
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    const/4 v6, 0x0

    #@27
    .restart local v6    # "up":Z
    goto :goto_0

    #@28
    .line 1138
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_3
    if-eqz v6, :cond_4

    #@2a
    sub-int v2, p2, v1

    #@2c
    .line 1139
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    #@2f
    goto :goto_1

    #@30
    .line 1138
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    #@32
    .restart local v2    # "delta":I
    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1373
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@6
    .line 1376
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b
    .line 1378
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@d
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@10
    move-result v0

    #@11
    .line 1380
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    #@13
    .line 1381
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    #@16
    .line 1372
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1394
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@4
    move-result v0

    #@5
    .line 1395
    .local v0, "delta":I
    if-eqz v0, :cond_1

    #@7
    const/4 v1, 0x1

    #@8
    .line 1396
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    #@a
    .line 1397
    if-eqz p2, :cond_2

    #@c
    .line 1398
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    #@f
    .line 1403
    :cond_0
    :goto_1
    return v1

    #@10
    .line 1395
    .end local v1    # "scroll":Z
    :cond_1
    const/4 v1, 0x0

    #@11
    .restart local v1    # "scroll":Z
    goto :goto_0

    #@12
    .line 1400
    :cond_2
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    #@15
    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "ScrollView can host only one direct child"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 348
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@12
    .line 343
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "ScrollView can host only one direct child"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 357
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    #@12
    .line 352
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "ScrollView can host only one direct child"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 375
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 370
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 362
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "ScrollView can host only one direct child"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 366
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 361
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    #@0
    .prologue
    const/16 v10, 0x82

    #@2
    const/4 v9, 0x0

    #@3
    .line 1156
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1157
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    .line 1159
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@d
    move-result-object v7

    #@e
    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@11
    move-result-object v4

    #@12
    .line 1161
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMaxScrollAmount()I

    #@15
    move-result v3

    #@16
    .line 1163
    .local v3, "maxJump":I
    if-eqz v4, :cond_2

    #@18
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@1b
    move-result v7

    #@1c
    invoke-direct {p0, v4, v3, v7}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    #@1f
    move-result v7

    #@20
    if-eqz v7, :cond_2

    #@22
    .line 1164
    iget-object v7, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@27
    .line 1165
    iget-object v7, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@29
    invoke-virtual {p0, v4, v7}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@2c
    .line 1166
    iget-object v7, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2e
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@31
    move-result v6

    #@32
    .line 1167
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    #@35
    .line 1168
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    #@38
    .line 1190
    .end local v6    # "scrollDelta":I
    :goto_0
    if-eqz v0, :cond_1

    #@3a
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    #@3d
    move-result v7

    #@3e
    if-eqz v7, :cond_1

    #@40
    .line 1191
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    #@43
    move-result v7

    #@44
    .line 1190
    if-eqz v7, :cond_1

    #@46
    .line 1197
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getDescendantFocusability()I

    #@49
    move-result v2

    #@4a
    .line 1198
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    #@4c
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    #@4f
    .line 1199
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestFocus()Z

    #@52
    .line 1200
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    #@55
    .line 1202
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    #@56
    return v7

    #@57
    .line 1171
    :cond_2
    move v6, v3

    #@58
    .line 1173
    .restart local v6    # "scrollDelta":I
    const/16 v7, 0x21

    #@5a
    if-ne p1, v7, :cond_4

    #@5c
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@5f
    move-result v7

    #@60
    if-ge v7, v6, :cond_4

    #@62
    .line 1174
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@65
    move-result v6

    #@66
    .line 1184
    :cond_3
    :goto_1
    if-nez v6, :cond_5

    #@68
    .line 1185
    return v9

    #@69
    .line 1175
    :cond_4
    if-ne p1, v10, :cond_3

    #@6b
    .line 1176
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@6e
    move-result v7

    #@6f
    if-lez v7, :cond_3

    #@71
    .line 1177
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@78
    move-result v1

    #@79
    .line 1178
    .local v1, "daBottom":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@7c
    move-result v7

    #@7d
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@80
    move-result v8

    #@81
    add-int/2addr v7, v8

    #@82
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@85
    move-result v8

    #@86
    sub-int v5, v7, v8

    #@88
    .line 1179
    .local v5, "screenBottom":I
    sub-int v7, v1, v5

    #@8a
    if-ge v7, v3, :cond_3

    #@8c
    .line 1180
    sub-int v6, v1, v5

    #@8e
    goto :goto_1

    #@8f
    .line 1187
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_5
    if-ne p1, v10, :cond_6

    #@91
    .end local v6    # "scrollDelta":I
    :goto_2
    invoke-direct {p0, v6}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    #@94
    goto :goto_0

    #@95
    .restart local v6    # "scrollDelta":I
    :cond_6
    neg-int v6, v6

    #@96
    goto :goto_2
.end method

.method public computeScroll()V
    .locals 14

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1340
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@3
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1341
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    #@c
    move-result v3

    #@d
    .line 1342
    .local v3, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@10
    move-result v4

    #@11
    .line 1343
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@13
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    #@16
    move-result v12

    #@17
    .line 1344
    .local v12, "x":I
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@19
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    #@1c
    move-result v13

    #@1d
    .line 1346
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    #@1f
    if-eq v4, v13, :cond_1

    #@21
    .line 1347
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    #@24
    move-result v6

    #@25
    .line 1348
    .local v6, "range":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    #@28
    move-result v11

    #@29
    .line 1349
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_2

    #@2b
    .line 1350
    const/4 v0, 0x1

    #@2c
    if-ne v11, v0, :cond_3

    #@2e
    if-lez v6, :cond_3

    #@30
    const/4 v10, 0x1

    #@31
    .line 1352
    .local v10, "canOverscroll":Z
    :goto_0
    sub-int v1, v12, v3

    #@33
    sub-int v2, v13, v4

    #@35
    move-object v0, p0

    #@36
    move v7, v5

    #@37
    move v8, v5

    #@38
    move v9, v5

    #@39
    invoke-virtual/range {v0 .. v9}, Landroid/support/v4/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    #@3c
    .line 1355
    if-eqz v10, :cond_1

    #@3e
    .line 1356
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->ensureGlows()V

    #@41
    .line 1357
    if-gtz v13, :cond_4

    #@43
    if-lez v4, :cond_4

    #@45
    .line 1358
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@47
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@49
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    #@4c
    move-result v1

    #@4d
    float-to-int v1, v1

    #@4e
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    #@51
    .line 1339
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_1
    :goto_1
    return-void

    #@52
    .line 1349
    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_2
    const/4 v10, 0x1

    #@53
    .restart local v10    # "canOverscroll":Z
    goto :goto_0

    #@54
    .line 1350
    .end local v10    # "canOverscroll":Z
    :cond_3
    const/4 v10, 0x0

    #@55
    .restart local v10    # "canOverscroll":Z
    goto :goto_0

    #@56
    .line 1359
    :cond_4
    if-lt v13, v6, :cond_1

    #@58
    if-ge v4, v6, :cond_1

    #@5a
    .line 1360
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    #@5c
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@5e
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    #@61
    move-result v1

    #@62
    float-to-int v1, v1

    #@63
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    #@66
    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1415
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@4
    move-result v7

    #@5
    if-nez v7, :cond_0

    #@7
    return v9

    #@8
    .line 1417
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@b
    move-result v3

    #@c
    .line 1418
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@f
    move-result v5

    #@10
    .line 1419
    .local v5, "screenTop":I
    add-int v4, v5, v3

    #@12
    .line 1421
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    #@15
    move-result v2

    #@16
    .line 1424
    .local v2, "fadingEdge":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    #@18
    if-lez v7, :cond_1

    #@1a
    .line 1425
    add-int/2addr v5, v2

    #@1b
    .line 1429
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@1d
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v8

    #@21
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    #@24
    move-result v8

    #@25
    if-ge v7, v8, :cond_2

    #@27
    .line 1430
    sub-int/2addr v4, v2

    #@28
    .line 1433
    :cond_2
    const/4 v6, 0x0

    #@29
    .line 1435
    .local v6, "scrollYDelta":I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@2b
    if-le v7, v4, :cond_5

    #@2d
    iget v7, p1, Landroid/graphics/Rect;->top:I

    #@2f
    if-le v7, v5, :cond_5

    #@31
    .line 1440
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@34
    move-result v7

    #@35
    if-le v7, v3, :cond_4

    #@37
    .line 1442
    iget v7, p1, Landroid/graphics/Rect;->top:I

    #@39
    sub-int/2addr v7, v5

    #@3a
    add-int/lit8 v6, v7, 0x0

    #@3c
    .line 1449
    :goto_0
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@43
    move-result v0

    #@44
    .line 1450
    .local v0, "bottom":I
    sub-int v1, v0, v4

    #@46
    .line 1451
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    #@49
    move-result v6

    #@4a
    .line 1469
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_3
    :goto_1
    return v6

    #@4b
    .line 1445
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@4d
    sub-int/2addr v7, v4

    #@4e
    add-int/lit8 v6, v7, 0x0

    #@50
    goto :goto_0

    #@51
    .line 1453
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    #@53
    if-ge v7, v5, :cond_3

    #@55
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@57
    if-ge v7, v4, :cond_3

    #@59
    .line 1458
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@5c
    move-result v7

    #@5d
    if-le v7, v3, :cond_6

    #@5f
    .line 1460
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@61
    sub-int v7, v4, v7

    #@63
    rsub-int/lit8 v6, v7, 0x0

    #@65
    .line 1467
    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@68
    move-result v7

    #@69
    neg-int v7, v7

    #@6a
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@6d
    move-result v6

    #@6e
    goto :goto_1

    #@6f
    .line 1463
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    #@71
    sub-int v7, v5, v7

    #@73
    rsub-int/lit8 v6, v7, 0x0

    #@75
    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    #@0
    .prologue
    .line 1306
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1286
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 1287
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@8
    move-result v5

    #@9
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@c
    move-result v6

    #@d
    sub-int/2addr v5, v6

    #@e
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    #@11
    move-result v6

    #@12
    sub-int v0, v5, v6

    #@14
    .line 1288
    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    #@16
    .line 1289
    return v0

    #@17
    .line 1292
    :cond_0
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@1e
    move-result v3

    #@1f
    .line 1293
    .local v3, "scrollRange":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@22
    move-result v4

    #@23
    .line 1294
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    #@25
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v2

    #@29
    .line 1295
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2

    #@2b
    .line 1296
    sub-int/2addr v3, v4

    #@2c
    .line 1301
    :cond_1
    :goto_0
    return v3

    #@2d
    .line 1297
    :cond_2
    if-le v4, v2, :cond_1

    #@2f
    .line 1298
    sub-int v5, v4, v2

    #@31
    add-int/2addr v3, v5

    #@32
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1680
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 1681
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@5
    if-eqz v4, :cond_3

    #@7
    .line 1682
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@a
    move-result v2

    #@b
    .line 1683
    .local v2, "scrollY":I
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@d
    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_1

    #@13
    .line 1684
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@16
    move-result v1

    #@17
    .line 1685
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    #@1a
    move-result v4

    #@1b
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    #@1e
    move-result v5

    #@1f
    sub-int/2addr v4, v5

    #@20
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    #@23
    move-result v5

    #@24
    sub-int v3, v4, v5

    #@26
    .line 1687
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    #@29
    move-result v4

    #@2a
    int-to-float v4, v4

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    #@2f
    move-result v5

    #@30
    int-to-float v5, v5

    #@31
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@34
    .line 1688
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@36
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@39
    move-result v5

    #@3a
    invoke-virtual {v4, v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    #@3d
    .line 1689
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@3f
    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_0

    #@45
    .line 1690
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@48
    .line 1692
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@4b
    .line 1694
    .end local v1    # "restoreCount":I
    .end local v3    # "width":I
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    #@4d
    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    #@50
    move-result v4

    #@51
    if-nez v4, :cond_3

    #@53
    .line 1695
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@56
    move-result v1

    #@57
    .line 1696
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    #@5a
    move-result v4

    #@5b
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    #@5e
    move-result v5

    #@5f
    sub-int/2addr v4, v5

    #@60
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    #@63
    move-result v5

    #@64
    sub-int v3, v4, v5

    #@66
    .line 1697
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@69
    move-result v0

    #@6a
    .line 1699
    .local v0, "height":I
    neg-int v4, v3

    #@6b
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    #@6e
    move-result v5

    #@6f
    add-int/2addr v4, v5

    #@70
    int-to-float v4, v4

    #@71
    .line 1700
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    #@74
    move-result v5

    #@75
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    #@78
    move-result v5

    #@79
    add-int/2addr v5, v0

    #@7a
    int-to-float v5, v5

    #@7b
    .line 1699
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@7e
    .line 1701
    const/high16 v4, 0x43340000    # 180.0f

    #@80
    int-to-float v5, v3

    #@81
    const/4 v6, 0x0

    #@82
    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@85
    .line 1702
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    #@87
    invoke-virtual {v4, v3, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    #@8a
    .line 1703
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    #@8c
    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    #@8f
    move-result v4

    #@90
    if-eqz v4, :cond_2

    #@92
    .line 1704
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@95
    .line 1706
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@98
    .line 1679
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollY":I
    .end local v3    # "width":I
    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/16 v4, 0x21

    #@2
    const/4 v3, 0x0

    #@3
    const/16 v5, 0x82

    #@5
    .line 478
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    #@a
    .line 480
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->canScroll()Z

    #@d
    move-result v6

    #@e
    if-nez v6, :cond_3

    #@10
    .line 481
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->isFocused()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_2

    #@16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@19
    move-result v4

    #@1a
    const/4 v6, 0x4

    #@1b
    if-eq v4, v6, :cond_2

    #@1d
    .line 482
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    .line 483
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    #@23
    const/4 v0, 0x0

    #@24
    .line 484
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@2b
    move-result-object v2

    #@2c
    .line 486
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    #@2e
    .line 487
    if-eq v2, p0, :cond_1

    #@30
    .line 488
    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    #@33
    move-result v3

    #@34
    .line 486
    :cond_1
    return v3

    #@35
    .line 490
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_2
    return v3

    #@36
    .line 493
    :cond_3
    const/4 v1, 0x0

    #@37
    .line 494
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_4

    #@3d
    .line 495
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@40
    move-result v3

    #@41
    sparse-switch v3, :sswitch_data_0

    #@44
    .line 516
    .end local v1    # "handled":Z
    :cond_4
    :goto_0
    return v1

    #@45
    .line 497
    .restart local v1    # "handled":Z
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_5

    #@4b
    .line 498
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    #@4e
    move-result v1

    #@4f
    .local v1, "handled":Z
    goto :goto_0

    #@50
    .line 500
    .local v1, "handled":Z
    :cond_5
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    #@53
    move-result v1

    #@54
    .local v1, "handled":Z
    goto :goto_0

    #@55
    .line 504
    .local v1, "handled":Z
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@58
    move-result v3

    #@59
    if-nez v3, :cond_6

    #@5b
    .line 505
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    #@5e
    move-result v1

    #@5f
    .local v1, "handled":Z
    goto :goto_0

    #@60
    .line 507
    .local v1, "handled":Z
    :cond_6
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    #@63
    move-result v1

    #@64
    .local v1, "handled":Z
    goto :goto_0

    #@65
    .line 511
    .local v1, "handled":Z
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    #@68
    move-result v3

    #@69
    if-eqz v3, :cond_7

    #@6b
    move v3, v4

    #@6c
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->pageScroll(I)Z

    #@6f
    goto :goto_0

    #@70
    :cond_7
    move v3, v5

    #@71
    goto :goto_1

    #@72
    .line 495
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1612
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@4
    move-result v0

    #@5
    if-lez v0, :cond_0

    #@7
    .line 1613
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@e
    move-result v1

    #@f
    sub-int/2addr v0, v1

    #@10
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    #@13
    move-result v1

    #@14
    sub-int v12, v0, v1

    #@16
    .line 1614
    .local v12, "height":I
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@1d
    move-result v11

    #@1e
    .line 1616
    .local v11, "bottom":I
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@20
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    #@23
    move-result v1

    #@24
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@27
    move-result v2

    #@28
    .line 1617
    sub-int v4, v11, v12

    #@2a
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v8

    #@2e
    div-int/lit8 v10, v12, 0x2

    #@30
    move v4, p1

    #@31
    move v5, v3

    #@32
    move v6, v3

    #@33
    move v7, v3

    #@34
    move v9, v3

    #@35
    .line 1616
    invoke-virtual/range {v0 .. v10}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIIIII)V

    #@38
    .line 1619
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@3b
    .line 1611
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1092
    const/16 v4, 0x82

    #@3
    if-ne p1, v4, :cond_1

    #@5
    const/4 v1, 0x1

    #@6
    .line 1093
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@9
    move-result v2

    #@a
    .line 1095
    .local v2, "height":I
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@c
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@e
    .line 1096
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@10
    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    #@12
    .line 1098
    if-eqz v1, :cond_0

    #@14
    .line 1099
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@17
    move-result v0

    #@18
    .line 1100
    .local v0, "count":I
    if-lez v0, :cond_0

    #@1a
    .line 1101
    add-int/lit8 v4, v0, -0x1

    #@1c
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@1f
    move-result-object v3

    #@20
    .line 1102
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@22
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@25
    move-result v5

    #@26
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@29
    move-result v6

    #@2a
    add-int/2addr v5, v6

    #@2b
    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    #@2d
    .line 1103
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2f
    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@31
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@33
    sub-int/2addr v5, v2

    #@34
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@36
    .line 1107
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@38
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@3a
    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@3c
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@3e
    invoke-direct {p0, p1, v4, v5}, Landroid/support/v4/widget/NestedScrollView;->scrollAndFocus(III)Z

    #@41
    move-result v4

    #@42
    return v4

    #@43
    .line 1092
    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    const/4 v1, 0x0

    #@44
    .restart local v1    # "down":Z
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 309
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 310
    const/4 v3, 0x0

    #@8
    return v3

    #@9
    .line 313
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    #@c
    move-result v1

    #@d
    .line 314
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@10
    move-result v3

    #@11
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@14
    move-result v4

    #@15
    sub-int v0, v3, v4

    #@17
    .line 315
    .local v0, "bottomEdge":I
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@1e
    move-result v3

    #@1f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@22
    move-result v4

    #@23
    sub-int/2addr v3, v4

    #@24
    sub-int v2, v3, v0

    #@26
    .line 316
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    #@28
    .line 317
    int-to-float v3, v2

    #@29
    int-to-float v4, v1

    #@2a
    div-float/2addr v3, v4

    #@2b
    return v3

    #@2c
    .line 320
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    #@2e
    return v3
.end method

.method public getMaxScrollAmount()I
    .locals 2

    #@0
    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    const/high16 v1, 0x3f000000    # 0.5f

    #@7
    mul-float/2addr v0, v1

    #@8
    float-to-int v0, v0

    #@9
    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    #@0
    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 295
    const/4 v2, 0x0

    #@7
    return v2

    #@8
    .line 298
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    #@b
    move-result v0

    #@c
    .line 299
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@f
    move-result v1

    #@10
    .line 300
    .local v1, "scrollY":I
    if-ge v1, v0, :cond_1

    #@12
    .line 301
    int-to-float v2, v1

    #@13
    int-to-float v3, v0

    #@14
    div-float/2addr v2, v3

    #@15
    return v2

    #@16
    .line 304
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    #@18
    return v2
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    #@0
    .prologue
    .line 398
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    #@2
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 421
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    #@2
    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1311
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v2

    #@5
    .line 1316
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    #@8
    move-result v3

    #@9
    .line 1317
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    #@c
    move-result v4

    #@d
    .line 1316
    add-int/2addr v3, v4

    #@e
    .line 1317
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@10
    .line 1316
    invoke-static {p2, v3, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    #@13
    move-result v1

    #@14
    .line 1319
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@17
    move-result v0

    #@18
    .line 1321
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@1b
    .line 1310
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    #@0
    .prologue
    .line 1327
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 1330
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    #@9
    move-result v3

    #@a
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    #@d
    move-result v4

    #@e
    add-int/2addr v3, v4

    #@f
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@11
    add-int/2addr v3, v4

    #@12
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@14
    add-int/2addr v3, v4

    #@15
    add-int/2addr v3, p3

    #@16
    .line 1331
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@18
    .line 1329
    invoke-static {p2, v3, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    #@1b
    move-result v1

    #@1c
    .line 1333
    .local v1, "childWidthMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@1e
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@20
    add-int/2addr v3, v4

    #@21
    const/4 v4, 0x0

    #@22
    .line 1332
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@25
    move-result v0

    #@26
    .line 1335
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@29
    .line 1326
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 1570
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    #@3
    .line 1569
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 848
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getSource(Landroid/view/MotionEvent;)I

    #@4
    move-result v5

    #@5
    and-int/lit8 v5, v5, 0x2

    #@7
    if-eqz v5, :cond_0

    #@9
    .line 849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@c
    move-result v5

    #@d
    packed-switch v5, :pswitch_data_0

    #@10
    .line 873
    :cond_0
    return v6

    #@11
    .line 851
    :pswitch_0
    iget-boolean v5, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@13
    if-nez v5, :cond_0

    #@15
    .line 853
    const/16 v5, 0x9

    #@17
    .line 852
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    #@1a
    move-result v4

    #@1b
    .line 854
    .local v4, "vscroll":F
    const/4 v5, 0x0

    #@1c
    cmpl-float v5, v4, v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 855
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    #@23
    move-result v5

    #@24
    mul-float/2addr v5, v4

    #@25
    float-to-int v0, v5

    #@26
    .line 856
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    #@29
    move-result v3

    #@2a
    .line 857
    .local v3, "range":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@2d
    move-result v2

    #@2e
    .line 858
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    #@30
    .line 859
    .local v1, "newScrollY":I
    if-gez v1, :cond_2

    #@32
    .line 860
    const/4 v1, 0x0

    #@33
    .line 864
    :cond_1
    :goto_0
    if-eq v1, v2, :cond_0

    #@35
    .line 865
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    #@38
    move-result v5

    #@39
    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    #@3c
    .line 866
    const/4 v5, 0x1

    #@3d
    return v5

    #@3e
    .line 861
    :cond_2
    if-le v1, v3, :cond_1

    #@40
    .line 862
    move v1, v3

    #@41
    goto :goto_0

    #@42
    .line 849
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, -0x1

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@7
    move-result v0

    #@8
    .line 575
    .local v0, "action":I
    if-ne v0, v10, :cond_0

    #@a
    iget-boolean v8, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@c
    if-eqz v8, :cond_0

    #@e
    .line 576
    return v7

    #@f
    .line 582
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@12
    move-result v8

    #@13
    if-nez v8, :cond_1

    #@15
    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_3

    #@1b
    .line 586
    :cond_1
    and-int/lit16 v8, v0, 0xff

    #@1d
    packed-switch v8, :pswitch_data_0

    #@20
    .line 671
    :cond_2
    :goto_0
    :pswitch_0
    iget-boolean v6, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@22
    return v6

    #@23
    .line 583
    :cond_3
    return v6

    #@24
    .line 597
    :pswitch_1
    iget v1, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@26
    .line 598
    .local v1, "activePointerId":I
    if-eq v1, v9, :cond_2

    #@28
    .line 603
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@2b
    move-result v3

    #@2c
    .line 604
    .local v3, "pointerIndex":I
    if-ne v3, v9, :cond_4

    #@2e
    .line 605
    const-string/jumbo v6, "NestedScrollView"

    #@31
    new-instance v7, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v8, "Invalid pointerId="

    #@39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    .line 606
    const-string/jumbo v8, " in onInterceptTouchEvent"

    #@44
    .line 605
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    goto :goto_0

    #@50
    .line 610
    :cond_4
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@53
    move-result v8

    #@54
    float-to-int v4, v8

    #@55
    .line 611
    .local v4, "y":I
    iget v8, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    #@57
    sub-int v8, v4, v8

    #@59
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    #@5c
    move-result v5

    #@5d
    .line 612
    .local v5, "yDiff":I
    iget v8, p0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    #@5f
    if-le v5, v8, :cond_2

    #@61
    .line 613
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getNestedScrollAxes()I

    #@64
    move-result v8

    #@65
    and-int/lit8 v8, v8, 0x2

    #@67
    if-nez v8, :cond_2

    #@69
    .line 614
    iput-boolean v7, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@6b
    .line 615
    iput v4, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    #@6d
    .line 616
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    #@70
    .line 617
    iget-object v8, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@72
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@75
    .line 618
    iput v6, p0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    #@77
    .line 619
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    #@7a
    move-result-object v2

    #@7b
    .line 620
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v2, :cond_2

    #@7d
    .line 621
    invoke-interface {v2, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@80
    goto :goto_0

    #@81
    .line 628
    .end local v1    # "activePointerId":I
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v3    # "pointerIndex":I
    .end local v4    # "y":I
    .end local v5    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@84
    move-result v8

    #@85
    float-to-int v4, v8

    #@86
    .line 629
    .restart local v4    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@89
    move-result v8

    #@8a
    float-to-int v8, v8

    #@8b
    invoke-direct {p0, v8, v4}, Landroid/support/v4/widget/NestedScrollView;->inChild(II)Z

    #@8e
    move-result v8

    #@8f
    if-nez v8, :cond_5

    #@91
    .line 630
    iput-boolean v6, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@93
    .line 631
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    #@96
    goto :goto_0

    #@97
    .line 639
    :cond_5
    iput v4, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    #@99
    .line 640
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@9c
    move-result v8

    #@9d
    iput v8, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@9f
    .line 642
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initOrResetVelocityTracker()V

    #@a2
    .line 643
    iget-object v8, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a4
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@a7
    .line 649
    iget-object v8, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@a9
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    #@ac
    move-result v8

    #@ad
    if-eqz v8, :cond_6

    #@af
    :goto_1
    iput-boolean v6, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@b1
    .line 650
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    #@b4
    goto/16 :goto_0

    #@b6
    :cond_6
    move v6, v7

    #@b7
    .line 649
    goto :goto_1

    #@b8
    .line 657
    .end local v4    # "y":I
    :pswitch_3
    iput-boolean v6, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@ba
    .line 658
    iput v9, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@bc
    .line 659
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    #@bf
    .line 660
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    #@c2
    goto/16 :goto_0

    #@c4
    .line 663
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@c7
    goto/16 :goto_0

    #@c9
    .line 586
    nop

    #@ca
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1537
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    #@5
    .line 1538
    iput-boolean v4, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    #@7
    .line 1540
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    #@9
    if-eqz v2, :cond_0

    #@b
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    #@d
    invoke-static {v2, p0}, Landroid/support/v4/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 1541
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    #@15
    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    #@18
    .line 1543
    :cond_0
    iput-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    #@1a
    .line 1545
    iget-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    #@1c
    if-nez v2, :cond_2

    #@1e
    .line 1546
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 1547
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    #@25
    move-result v2

    #@26
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    #@28
    iget v3, v3, Landroid/support/v4/widget/NestedScrollView$SavedState;->scrollPosition:I

    #@2a
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    #@2d
    .line 1548
    iput-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    #@2f
    .line 1551
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@32
    move-result v2

    #@33
    if-lez v2, :cond_3

    #@35
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@3c
    move-result v0

    #@3d
    .line 1553
    .local v0, "childHeight":I
    :goto_0
    sub-int v2, p5, p3

    #@3f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@42
    move-result v3

    #@43
    sub-int/2addr v2, v3

    #@44
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    #@47
    move-result v3

    #@48
    sub-int/2addr v2, v3

    #@49
    sub-int v2, v0, v2

    #@4b
    .line 1552
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    #@4e
    move-result v1

    #@4f
    .line 1556
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@52
    move-result v2

    #@53
    if-le v2, v1, :cond_4

    #@55
    .line 1557
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    #@58
    move-result v2

    #@59
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    #@5c
    .line 1564
    .end local v0    # "childHeight":I
    .end local v1    # "scrollRange":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    #@5f
    move-result v2

    #@60
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@63
    move-result v3

    #@64
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    #@67
    .line 1565
    const/4 v2, 0x1

    #@68
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    #@6a
    .line 1536
    return-void

    #@6b
    .line 1551
    :cond_3
    const/4 v0, 0x0

    #@6c
    .restart local v0    # "childHeight":I
    goto :goto_0

    #@6d
    .line 1558
    .restart local v1    # "scrollRange":I
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@70
    move-result v2

    #@71
    if-gez v2, :cond_2

    #@73
    .line 1559
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    #@76
    move-result v2

    #@77
    invoke-virtual {p0, v2, v4}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    #@7a
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 434
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@4
    .line 436
    iget-boolean v6, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    #@6
    if-nez v6, :cond_0

    #@8
    .line 437
    return-void

    #@9
    .line 440
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@c
    move-result v4

    #@d
    .line 441
    .local v4, "heightMode":I
    if-nez v4, :cond_1

    #@f
    .line 442
    return-void

    #@10
    .line 445
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@13
    move-result v6

    #@14
    if-lez v6, :cond_2

    #@16
    .line 446
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    .line 447
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    #@1d
    move-result v3

    #@1e
    .line 448
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@21
    move-result v6

    #@22
    if-ge v6, v3, :cond_2

    #@24
    .line 449
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@27
    move-result-object v5

    #@28
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    #@2a
    .line 452
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    #@2d
    move-result v6

    #@2e
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    #@31
    move-result v7

    #@32
    add-int/2addr v6, v7

    #@33
    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@35
    .line 451
    invoke-static {p1, v6, v7}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    #@38
    move-result v2

    #@39
    .line 453
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    #@3c
    move-result v6

    #@3d
    sub-int/2addr v3, v6

    #@3e
    .line 454
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@41
    move-result v6

    #@42
    sub-int/2addr v3, v6

    #@43
    .line 456
    const/high16 v6, 0x40000000    # 2.0f

    #@45
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@48
    move-result v1

    #@49
    .line 458
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    #@4c
    .line 433
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "height":I
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    #@0
    .prologue
    .line 268
    if-nez p4, :cond_0

    #@2
    .line 269
    float-to-int v0, p3

    #@3
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    #@6
    .line 270
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 272
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    #@0
    .prologue
    .line 278
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    #@0
    .prologue
    .line 262
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 254
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@4
    move-result v6

    #@5
    .line 255
    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    #@8
    .line 256
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@b
    move-result v0

    #@c
    sub-int v2, v0, v6

    #@e
    .line 257
    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    #@10
    .line 258
    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    #@11
    move-object v0, p0

    #@12
    move v3, v1

    #@13
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    #@16
    .line 253
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    #@5
    .line 243
    const/4 v0, 0x2

    #@6
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    #@9
    .line 241
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    #@0
    .prologue
    .line 893
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    #@3
    .line 892
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1497
    const/4 v1, 0x2

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 1498
    const/16 p1, 0x82

    #@7
    .line 1503
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    #@9
    .line 1504
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 1508
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    #@13
    .line 1509
    return v3

    #@14
    .line 1499
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    #@15
    if-ne p1, v1, :cond_0

    #@17
    .line 1500
    const/16 p1, 0x21

    #@19
    goto :goto_0

    #@1a
    .line 1505
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    #@21
    move-result-object v0

    #@22
    .restart local v0    # "nextFocus":Landroid/view/View;
    goto :goto_1

    #@23
    .line 1512
    :cond_3
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 1513
    return v3

    #@2a
    .line 1516
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@2d
    move-result v1

    #@2e
    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 1743
    check-cast v0, Landroid/support/v4/widget/NestedScrollView$SavedState;

    #@3
    .line 1744
    .local v0, "ss":Landroid/support/v4/widget/NestedScrollView$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 1745
    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    #@c
    .line 1746
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    #@f
    .line 1742
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 1751
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 1752
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/widget/NestedScrollView$SavedState;

    #@6
    invoke-direct {v0, v1}, Landroid/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1753
    .local v0, "ss":Landroid/support/v4/widget/NestedScrollView$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@c
    move-result v2

    #@d
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView$SavedState;->scrollPosition:I

    #@f
    .line 1754
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 1575
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    #@3
    .line 1577
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1578
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    #@9
    if-ne p0, v0, :cond_1

    #@b
    .line 1579
    :cond_0
    return-void

    #@c
    .line 1584
    :cond_1
    const/4 v2, 0x0

    #@d
    invoke-direct {p0, v0, v2, p4}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 1585
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@15
    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@18
    .line 1586
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@1d
    .line 1587
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@22
    move-result v1

    #@23
    .line 1588
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    #@26
    .line 1574
    .end local v1    # "scrollDelta":I
    :cond_2
    return-void
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
    .line 237
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
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    #@3
    .line 247
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 676
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    #@3
    .line 678
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@6
    move-result-object v25

    #@7
    .line 680
    .local v25, "vtev":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@a
    move-result v15

    #@b
    .line 682
    .local v15, "actionMasked":I
    if-nez v15, :cond_0

    #@d
    .line 683
    const/4 v2, 0x0

    #@e
    move-object/from16 v0, p0

    #@10
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    #@12
    .line 685
    :cond_0
    const/4 v2, 0x0

    #@13
    move-object/from16 v0, p0

    #@15
    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    #@17
    int-to-float v3, v3

    #@18
    move-object/from16 v0, v25

    #@1a
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@1d
    .line 687
    packed-switch v15, :pswitch_data_0

    #@20
    .line 823
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 824
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2a
    move-object/from16 v0, v25

    #@2c
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@2f
    .line 826
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->recycle()V

    #@32
    .line 827
    const/4 v2, 0x1

    #@33
    return v2

    #@34
    .line 689
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@37
    move-result v2

    #@38
    if-nez v2, :cond_3

    #@3a
    .line 690
    const/4 v2, 0x0

    #@3b
    return v2

    #@3c
    .line 692
    :cond_3
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@40
    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_6

    #@46
    const/4 v2, 0x0

    #@47
    :goto_1
    move-object/from16 v0, p0

    #@49
    iput-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@4b
    if-eqz v2, :cond_4

    #@4d
    .line 693
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    #@50
    move-result-object v22

    #@51
    .line 694
    .local v22, "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_4

    #@53
    .line 695
    const/4 v2, 0x1

    #@54
    move-object/from16 v0, v22

    #@56
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@59
    .line 703
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    #@5b
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@5d
    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    #@60
    move-result v2

    #@61
    if-nez v2, :cond_5

    #@63
    .line 704
    move-object/from16 v0, p0

    #@65
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@67
    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    #@6a
    .line 708
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@6d
    move-result v2

    #@6e
    float-to-int v2, v2

    #@6f
    move-object/from16 v0, p0

    #@71
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    #@73
    .line 709
    const/4 v2, 0x0

    #@74
    move-object/from16 v0, p1

    #@76
    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@79
    move-result v2

    #@7a
    move-object/from16 v0, p0

    #@7c
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@7e
    .line 710
    const/4 v2, 0x2

    #@7f
    move-object/from16 v0, p0

    #@81
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    #@84
    goto :goto_0

    #@85
    .line 692
    :cond_6
    const/4 v2, 0x1

    #@86
    goto :goto_1

    #@87
    .line 715
    :pswitch_2
    move-object/from16 v0, p0

    #@89
    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@8b
    .line 714
    move-object/from16 v0, p1

    #@8d
    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@90
    move-result v16

    #@91
    .line 716
    .local v16, "activePointerIndex":I
    const/4 v2, -0x1

    #@92
    move/from16 v0, v16

    #@94
    if-ne v0, v2, :cond_7

    #@96
    .line 717
    const-string/jumbo v2, "NestedScrollView"

    #@99
    new-instance v3, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v5, "Invalid pointerId="

    #@a1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v3

    #@a5
    move-object/from16 v0, p0

    #@a7
    iget v5, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@a9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v3

    #@ad
    const-string/jumbo v5, " in onTouchEvent"

    #@b0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v3

    #@b4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v3

    #@b8
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    goto/16 :goto_0

    #@bd
    .line 721
    :cond_7
    move-object/from16 v0, p1

    #@bf
    move/from16 v1, v16

    #@c1
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@c4
    move-result v2

    #@c5
    float-to-int v0, v2

    #@c6
    move/from16 v26, v0

    #@c8
    .line 722
    .local v26, "y":I
    move-object/from16 v0, p0

    #@ca
    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    #@cc
    sub-int v4, v2, v26

    #@ce
    .line 723
    .local v4, "deltaY":I
    move-object/from16 v0, p0

    #@d0
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    #@d6
    const/4 v5, 0x0

    #@d7
    move-object/from16 v0, p0

    #@d9
    invoke-virtual {v0, v5, v4, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    #@dc
    move-result v2

    #@dd
    if-eqz v2, :cond_8

    #@df
    .line 724
    move-object/from16 v0, p0

    #@e1
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    #@e3
    const/4 v3, 0x1

    #@e4
    aget v2, v2, v3

    #@e6
    sub-int/2addr v4, v2

    #@e7
    .line 725
    const/4 v2, 0x0

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    #@ec
    const/4 v5, 0x1

    #@ed
    aget v3, v3, v5

    #@ef
    int-to-float v3, v3

    #@f0
    move-object/from16 v0, v25

    #@f2
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@f5
    .line 726
    move-object/from16 v0, p0

    #@f7
    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    #@f9
    move-object/from16 v0, p0

    #@fb
    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    #@fd
    const/4 v5, 0x1

    #@fe
    aget v3, v3, v5

    #@100
    add-int/2addr v2, v3

    #@101
    move-object/from16 v0, p0

    #@103
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    #@105
    .line 728
    :cond_8
    move-object/from16 v0, p0

    #@107
    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@109
    if-nez v2, :cond_a

    #@10b
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@10e
    move-result v2

    #@10f
    move-object/from16 v0, p0

    #@111
    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    #@113
    if-le v2, v3, :cond_a

    #@115
    .line 729
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    #@118
    move-result-object v22

    #@119
    .line 730
    .restart local v22    # "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_9

    #@11b
    .line 731
    const/4 v2, 0x1

    #@11c
    move-object/from16 v0, v22

    #@11e
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@121
    .line 733
    :cond_9
    const/4 v2, 0x1

    #@122
    move-object/from16 v0, p0

    #@124
    iput-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@126
    .line 734
    if-lez v4, :cond_c

    #@128
    .line 735
    move-object/from16 v0, p0

    #@12a
    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    #@12c
    sub-int/2addr v4, v2

    #@12d
    .line 740
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    #@12f
    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@131
    if-eqz v2, :cond_1

    #@133
    .line 742
    move-object/from16 v0, p0

    #@135
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    #@137
    const/4 v3, 0x1

    #@138
    aget v2, v2, v3

    #@13a
    sub-int v2, v26, v2

    #@13c
    move-object/from16 v0, p0

    #@13e
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    #@140
    .line 744
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@143
    move-result v20

    #@144
    .line 745
    .local v20, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    #@147
    move-result v8

    #@148
    .line 746
    .local v8, "range":I
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    #@14b
    move-result v21

    #@14c
    .line 747
    .local v21, "overscrollMode":I
    if-eqz v21, :cond_d

    #@14e
    .line 748
    const/4 v2, 0x1

    #@14f
    move/from16 v0, v21

    #@151
    if-ne v0, v2, :cond_f

    #@153
    .line 749
    if-lez v8, :cond_e

    #@155
    const/16 v17, 0x1

    #@157
    .line 753
    .local v17, "canOverscroll":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@15a
    move-result v6

    #@15b
    const/4 v3, 0x0

    #@15c
    const/4 v5, 0x0

    #@15d
    const/4 v7, 0x0

    #@15e
    const/4 v9, 0x0

    #@15f
    .line 754
    const/4 v10, 0x0

    #@160
    const/4 v11, 0x1

    #@161
    move-object/from16 v2, p0

    #@163
    .line 753
    invoke-virtual/range {v2 .. v11}, Landroid/support/v4/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    #@166
    move-result v2

    #@167
    if-eqz v2, :cond_b

    #@169
    .line 754
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent()Z

    #@16c
    move-result v2

    #@16d
    if-eqz v2, :cond_10

    #@16f
    .line 759
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@172
    move-result v2

    #@173
    sub-int v11, v2, v20

    #@175
    .line 760
    .local v11, "scrolledDeltaY":I
    sub-int v13, v4, v11

    #@177
    .line 761
    .local v13, "unconsumedY":I
    move-object/from16 v0, p0

    #@179
    iget-object v14, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    #@17b
    const/4 v10, 0x0

    #@17c
    const/4 v12, 0x0

    #@17d
    move-object/from16 v9, p0

    #@17f
    invoke-virtual/range {v9 .. v14}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    #@182
    move-result v2

    #@183
    if-eqz v2, :cond_11

    #@185
    .line 762
    move-object/from16 v0, p0

    #@187
    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    #@189
    move-object/from16 v0, p0

    #@18b
    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    #@18d
    const/4 v5, 0x1

    #@18e
    aget v3, v3, v5

    #@190
    sub-int/2addr v2, v3

    #@191
    move-object/from16 v0, p0

    #@193
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    #@195
    .line 763
    const/4 v2, 0x0

    #@196
    move-object/from16 v0, p0

    #@198
    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    #@19a
    const/4 v5, 0x1

    #@19b
    aget v3, v3, v5

    #@19d
    int-to-float v3, v3

    #@19e
    move-object/from16 v0, v25

    #@1a0
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@1a3
    .line 764
    move-object/from16 v0, p0

    #@1a5
    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    #@1ab
    const/4 v5, 0x1

    #@1ac
    aget v3, v3, v5

    #@1ae
    add-int/2addr v2, v3

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    #@1b3
    goto/16 :goto_0

    #@1b5
    .line 737
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v17    # "canOverscroll":Z
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .restart local v22    # "parent":Landroid/view/ViewParent;
    :cond_c
    move-object/from16 v0, p0

    #@1b7
    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    #@1b9
    add-int/2addr v4, v2

    #@1ba
    goto/16 :goto_2

    #@1bc
    .line 747
    .end local v22    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v20    # "oldY":I
    .restart local v21    # "overscrollMode":I
    :cond_d
    const/16 v17, 0x1

    #@1be
    .restart local v17    # "canOverscroll":Z
    goto :goto_3

    #@1bf
    .line 749
    .end local v17    # "canOverscroll":Z
    :cond_e
    const/16 v17, 0x0

    #@1c1
    .restart local v17    # "canOverscroll":Z
    goto :goto_3

    #@1c2
    .line 748
    .end local v17    # "canOverscroll":Z
    :cond_f
    const/16 v17, 0x0

    #@1c4
    .restart local v17    # "canOverscroll":Z
    goto :goto_3

    #@1c5
    .line 756
    :cond_10
    move-object/from16 v0, p0

    #@1c7
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1c9
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    #@1cc
    goto :goto_4

    #@1cd
    .line 765
    .restart local v11    # "scrolledDeltaY":I
    .restart local v13    # "unconsumedY":I
    :cond_11
    if-eqz v17, :cond_1

    #@1cf
    .line 766
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->ensureGlows()V

    #@1d2
    .line 767
    add-int v23, v20, v4

    #@1d4
    .line 768
    .local v23, "pulledToY":I
    if-gez v23, :cond_14

    #@1d6
    .line 769
    move-object/from16 v0, p0

    #@1d8
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@1da
    int-to-float v3, v4

    #@1db
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@1de
    move-result v5

    #@1df
    int-to-float v5, v5

    #@1e0
    div-float/2addr v3, v5

    #@1e1
    .line 770
    move-object/from16 v0, p1

    #@1e3
    move/from16 v1, v16

    #@1e5
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@1e8
    move-result v5

    #@1e9
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    #@1ec
    move-result v6

    #@1ed
    int-to-float v6, v6

    #@1ee
    div-float/2addr v5, v6

    #@1ef
    .line 769
    invoke-virtual {v2, v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    #@1f2
    .line 771
    move-object/from16 v0, p0

    #@1f4
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    #@1f6
    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    #@1f9
    move-result v2

    #@1fa
    if-nez v2, :cond_12

    #@1fc
    .line 772
    move-object/from16 v0, p0

    #@1fe
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    #@200
    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    #@203
    .line 782
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    #@205
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@207
    if-eqz v2, :cond_1

    #@209
    .line 783
    move-object/from16 v0, p0

    #@20b
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@20d
    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    #@210
    move-result v2

    #@211
    if-eqz v2, :cond_13

    #@213
    move-object/from16 v0, p0

    #@215
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    #@217
    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    #@21a
    move-result v2

    #@21b
    if-nez v2, :cond_1

    #@21d
    .line 784
    :cond_13
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@220
    goto/16 :goto_0

    #@222
    .line 774
    :cond_14
    move/from16 v0, v23

    #@224
    if-le v0, v8, :cond_12

    #@226
    .line 775
    move-object/from16 v0, p0

    #@228
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    #@22a
    int-to-float v3, v4

    #@22b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@22e
    move-result v5

    #@22f
    int-to-float v5, v5

    #@230
    div-float/2addr v3, v5

    #@231
    .line 776
    move-object/from16 v0, p1

    #@233
    move/from16 v1, v16

    #@235
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@238
    move-result v5

    #@239
    .line 777
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    #@23c
    move-result v6

    #@23d
    int-to-float v6, v6

    #@23e
    .line 776
    div-float/2addr v5, v6

    #@23f
    const/high16 v6, 0x3f800000    # 1.0f

    #@241
    sub-float v5, v6, v5

    #@243
    .line 775
    invoke-virtual {v2, v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    #@246
    .line 778
    move-object/from16 v0, p0

    #@248
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@24a
    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    #@24d
    move-result v2

    #@24e
    if-nez v2, :cond_12

    #@250
    .line 779
    move-object/from16 v0, p0

    #@252
    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    #@254
    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    #@257
    goto :goto_5

    #@258
    .line 790
    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v16    # "activePointerIndex":I
    .end local v17    # "canOverscroll":Z
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToY":I
    .end local v26    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    #@25a
    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@25c
    if-eqz v2, :cond_1

    #@25e
    .line 791
    move-object/from16 v0, p0

    #@260
    iget-object v0, v0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@262
    move-object/from16 v24, v0

    #@264
    .line 792
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    #@266
    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    #@268
    int-to-float v2, v2

    #@269
    const/16 v3, 0x3e8

    #@26b
    move-object/from16 v0, v24

    #@26d
    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@270
    .line 794
    move-object/from16 v0, p0

    #@272
    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@274
    .line 793
    move-object/from16 v0, v24

    #@276
    invoke-static {v0, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    #@279
    move-result v2

    #@27a
    float-to-int v0, v2

    #@27b
    move/from16 v19, v0

    #@27d
    .line 796
    .local v19, "initialVelocity":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    #@280
    move-result v2

    #@281
    move-object/from16 v0, p0

    #@283
    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->mMinimumVelocity:I

    #@285
    if-le v2, v3, :cond_15

    #@287
    .line 797
    move/from16 v0, v19

    #@289
    neg-int v2, v0

    #@28a
    move-object/from16 v0, p0

    #@28c
    invoke-direct {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    #@28f
    .line 800
    :cond_15
    const/4 v2, -0x1

    #@290
    move-object/from16 v0, p0

    #@292
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@294
    .line 801
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->endDrag()V

    #@297
    goto/16 :goto_0

    #@299
    .line 805
    .end local v19    # "initialVelocity":I
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    #@29b
    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    #@29d
    if-eqz v2, :cond_1

    #@29f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@2a2
    move-result v2

    #@2a3
    if-lez v2, :cond_1

    #@2a5
    .line 806
    const/4 v2, -0x1

    #@2a6
    move-object/from16 v0, p0

    #@2a8
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@2aa
    .line 807
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->endDrag()V

    #@2ad
    goto/16 :goto_0

    #@2af
    .line 811
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@2b2
    move-result v18

    #@2b3
    .line 812
    .local v18, "index":I
    move-object/from16 v0, p1

    #@2b5
    move/from16 v1, v18

    #@2b7
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@2ba
    move-result v2

    #@2bb
    float-to-int v2, v2

    #@2bc
    move-object/from16 v0, p0

    #@2be
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    #@2c0
    .line 813
    move-object/from16 v0, p1

    #@2c2
    move/from16 v1, v18

    #@2c4
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@2c7
    move-result v2

    #@2c8
    move-object/from16 v0, p0

    #@2ca
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@2cc
    goto/16 :goto_0

    #@2ce
    .line 817
    .end local v18    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@2d1
    .line 819
    move-object/from16 v0, p0

    #@2d3
    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    #@2d5
    move-object/from16 v0, p1

    #@2d7
    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@2da
    move-result v2

    #@2db
    .line 818
    move-object/from16 v0, p1

    #@2dd
    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@2e0
    move-result v2

    #@2e1
    float-to-int v2, v2

    #@2e2
    move-object/from16 v0, p0

    #@2e4
    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    #@2e6
    goto/16 :goto_0

    #@2e8
    .line 687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .locals 16
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    #@0
    .prologue
    .line 901
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    #@3
    move-result v10

    #@4
    .line 903
    .local v10, "overScrollMode":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollRange()I

    #@7
    move-result v14

    #@8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    #@b
    move-result v15

    #@c
    if-le v14, v15, :cond_4

    #@e
    const/4 v2, 0x1

    #@f
    .line 905
    .local v2, "canScrollHorizontal":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollRange()I

    #@12
    move-result v14

    #@13
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollExtent()I

    #@16
    move-result v15

    #@17
    if-le v14, v15, :cond_5

    #@19
    const/4 v3, 0x1

    #@1a
    .line 906
    .local v3, "canScrollVertical":Z
    :goto_1
    if-eqz v10, :cond_6

    #@1c
    .line 907
    const/4 v14, 0x1

    #@1d
    if-ne v10, v14, :cond_7

    #@1f
    move v9, v2

    #@20
    .line 908
    :goto_2
    if-eqz v10, :cond_8

    #@22
    .line 909
    const/4 v14, 0x1

    #@23
    if-ne v10, v14, :cond_9

    #@25
    move v11, v3

    #@26
    .line 911
    :goto_3
    add-int v7, p3, p1

    #@28
    .line 912
    .local v7, "newScrollX":I
    if-nez v9, :cond_0

    #@2a
    .line 913
    const/16 p7, 0x0

    #@2c
    .line 916
    :cond_0
    add-int v8, p4, p2

    #@2e
    .line 917
    .local v8, "newScrollY":I
    if-nez v11, :cond_1

    #@30
    .line 918
    const/16 p8, 0x0

    #@32
    .line 922
    :cond_1
    move/from16 v0, p7

    #@34
    neg-int v6, v0

    #@35
    .line 923
    .local v6, "left":I
    add-int v12, p7, p5

    #@37
    .line 924
    .local v12, "right":I
    move/from16 v0, p8

    #@39
    neg-int v13, v0

    #@3a
    .line 925
    .local v13, "top":I
    add-int v1, p8, p6

    #@3c
    .line 927
    .local v1, "bottom":I
    const/4 v4, 0x0

    #@3d
    .line 928
    .local v4, "clampedX":Z
    if-le v7, v12, :cond_a

    #@3f
    .line 929
    move v7, v12

    #@40
    .line 930
    const/4 v4, 0x1

    #@41
    .line 936
    :cond_2
    :goto_4
    const/4 v5, 0x0

    #@42
    .line 937
    .local v5, "clampedY":Z
    if-le v8, v1, :cond_b

    #@44
    .line 938
    move v8, v1

    #@45
    .line 939
    const/4 v5, 0x1

    #@46
    .line 945
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    #@48
    invoke-virtual {v0, v7, v8, v4, v5}, Landroid/support/v4/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    #@4b
    .line 947
    if-nez v4, :cond_c

    #@4d
    .end local v5    # "clampedY":Z
    :goto_6
    return v5

    #@4e
    .line 903
    .end local v1    # "bottom":I
    .end local v2    # "canScrollHorizontal":Z
    .end local v3    # "canScrollVertical":Z
    .end local v4    # "clampedX":Z
    .end local v6    # "left":I
    .end local v7    # "newScrollX":I
    .end local v8    # "newScrollY":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    :cond_4
    const/4 v2, 0x0

    #@4f
    .restart local v2    # "canScrollHorizontal":Z
    goto :goto_0

    #@50
    .line 905
    :cond_5
    const/4 v3, 0x0

    #@51
    .restart local v3    # "canScrollVertical":Z
    goto :goto_1

    #@52
    .line 906
    :cond_6
    const/4 v9, 0x1

    #@53
    .local v9, "overScrollHorizontal":Z
    goto :goto_2

    #@54
    .line 907
    .end local v9    # "overScrollHorizontal":Z
    :cond_7
    const/4 v9, 0x0

    #@55
    .restart local v9    # "overScrollHorizontal":Z
    goto :goto_2

    #@56
    .line 908
    .end local v9    # "overScrollHorizontal":Z
    :cond_8
    const/4 v11, 0x1

    #@57
    .local v11, "overScrollVertical":Z
    goto :goto_3

    #@58
    .line 909
    .end local v11    # "overScrollVertical":Z
    :cond_9
    const/4 v11, 0x0

    #@59
    .restart local v11    # "overScrollVertical":Z
    goto :goto_3

    #@5a
    .line 931
    .end local v11    # "overScrollVertical":Z
    .restart local v1    # "bottom":I
    .restart local v4    # "clampedX":Z
    .restart local v6    # "left":I
    .restart local v7    # "newScrollX":I
    .restart local v8    # "newScrollY":I
    .restart local v12    # "right":I
    .restart local v13    # "top":I
    :cond_a
    if-ge v7, v6, :cond_2

    #@5c
    .line 932
    move v7, v6

    #@5d
    .line 933
    const/4 v4, 0x1

    #@5e
    goto :goto_4

    #@5f
    .line 940
    .restart local v5    # "clampedY":Z
    :cond_b
    if-ge v8, v13, :cond_3

    #@61
    .line 941
    move v8, v13

    #@62
    .line 942
    const/4 v5, 0x1

    #@63
    goto :goto_5

    #@64
    .line 947
    :cond_c
    const/4 v5, 0x1

    #@65
    goto :goto_6
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1056
    const/16 v4, 0x82

    #@3
    if-ne p1, v4, :cond_1

    #@5
    const/4 v1, 0x1

    #@6
    .line 1057
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@9
    move-result v2

    #@a
    .line 1059
    .local v2, "height":I
    if-eqz v1, :cond_2

    #@c
    .line 1060
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@e
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@11
    move-result v5

    #@12
    add-int/2addr v5, v2

    #@13
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@15
    .line 1061
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@18
    move-result v0

    #@19
    .line 1062
    .local v0, "count":I
    if-lez v0, :cond_0

    #@1b
    .line 1063
    add-int/lit8 v4, v0, -0x1

    #@1d
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v3

    #@21
    .line 1064
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@23
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@25
    add-int/2addr v4, v2

    #@26
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@29
    move-result v5

    #@2a
    if-le v4, v5, :cond_0

    #@2c
    .line 1065
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2e
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@31
    move-result v5

    #@32
    sub-int/2addr v5, v2

    #@33
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@35
    .line 1074
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@37
    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@39
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@3b
    add-int/2addr v5, v2

    #@3c
    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    #@3e
    .line 1076
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@40
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@42
    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@44
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@46
    invoke-direct {p0, p1, v4, v5}, Landroid/support/v4/widget/NestedScrollView;->scrollAndFocus(III)Z

    #@49
    move-result v4

    #@4a
    return v4

    #@4b
    .line 1056
    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    const/4 v1, 0x0

    #@4c
    .restart local v1    # "down":Z
    goto :goto_0

    #@4d
    .line 1069
    .restart local v2    # "height":I
    :cond_2
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@4f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@52
    move-result v5

    #@53
    sub-int/2addr v5, v2

    #@54
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@56
    .line 1070
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@58
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@5a
    if-gez v4, :cond_0

    #@5c
    .line 1071
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@5e
    iput v6, v4, Landroid/graphics/Rect;->top:I

    #@60
    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    #@0
    .prologue
    .line 1474
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1475
    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    #@7
    .line 1480
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@a
    .line 1473
    return-void

    #@b
    .line 1478
    :cond_0
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    #@d
    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    #@0
    .prologue
    .line 1523
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    .line 1524
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@10
    move-result v2

    #@11
    sub-int/2addr v1, v2

    #@12
    .line 1523
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@15
    .line 1526
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    #@0
    .prologue
    .line 554
    if-eqz p1, :cond_0

    #@2
    .line 555
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    #@5
    .line 557
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    #@8
    .line 553
    return-void
.end method

.method public requestLayout()V
    .locals 1

    #@0
    .prologue
    .line 1531
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    #@3
    .line 1532
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    #@6
    .line 1530
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1655
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_1

    #@7
    .line 1656
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 1657
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    #@12
    move-result v2

    #@13
    sub-int/2addr v1, v2

    #@14
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    #@17
    move-result v2

    #@18
    sub-int/2addr v1, v2

    #@19
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@1c
    move-result v2

    #@1d
    invoke-static {p1, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    #@20
    move-result p1

    #@21
    .line 1658
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@24
    move-result v1

    #@25
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@28
    move-result v2

    #@29
    sub-int/2addr v1, v2

    #@2a
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    #@2d
    move-result v2

    #@2e
    sub-int/2addr v1, v2

    #@2f
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@32
    move-result v2

    #@33
    invoke-static {p2, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    #@36
    move-result p2

    #@37
    .line 1659
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    #@3a
    move-result v1

    #@3b
    if-ne p1, v1, :cond_0

    #@3d
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@40
    move-result v1

    #@41
    if-eq p2, v1, :cond_1

    #@43
    .line 1660
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    #@46
    .line 1653
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    #@0
    .prologue
    .line 411
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 412
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    #@6
    .line 413
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    #@9
    .line 410
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    #@5
    .line 187
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    #@0
    .prologue
    .line 429
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    #@2
    .line 428
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 289
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1247
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    .line 1249
    return-void

    #@8
    .line 1251
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@b
    move-result-wide v6

    #@c
    iget-wide v8, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScroll:J

    #@e
    sub-long v2, v6, v8

    #@10
    .line 1252
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    #@12
    cmp-long v6, v2, v6

    #@14
    if-lez v6, :cond_1

    #@16
    .line 1253
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    #@19
    move-result v6

    #@1a
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    #@1d
    move-result v7

    #@1e
    sub-int/2addr v6, v7

    #@1f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    #@22
    move-result v7

    #@23
    sub-int v1, v6, v7

    #@25
    .line 1254
    .local v1, "height":I
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    #@2c
    move-result v0

    #@2d
    .line 1255
    .local v0, "bottom":I
    sub-int v6, v0, v1

    #@2f
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    #@32
    move-result v4

    #@33
    .line 1256
    .local v4, "maxY":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@36
    move-result v5

    #@37
    .line 1257
    .local v5, "scrollY":I
    add-int v6, v5, p2

    #@39
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    #@3c
    move-result v6

    #@3d
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    #@40
    move-result v6

    #@41
    sub-int p2, v6, v5

    #@43
    .line 1259
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@45
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    #@48
    move-result v7

    #@49
    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIII)V

    #@4c
    .line 1260
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@4f
    .line 1267
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@52
    move-result-wide v6

    #@53
    iput-wide v6, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScroll:J

    #@55
    .line 1246
    return-void

    #@56
    .line 1262
    :cond_1
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@58
    invoke-virtual {v6}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    #@5b
    move-result v6

    #@5c
    if-nez v6, :cond_2

    #@5e
    .line 1263
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@60
    invoke-virtual {v6}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    #@63
    .line 1265
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    #@66
    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 1277
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    #@3
    move-result v0

    #@4
    sub-int v0, p1, v0

    #@6
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    #@9
    move-result v1

    #@a
    sub-int v1, p2, v1

    #@c
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    #@f
    .line 1276
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    #@5
    .line 202
    return-void
.end method
