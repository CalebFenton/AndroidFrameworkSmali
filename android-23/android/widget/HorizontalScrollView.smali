.class public Landroid/widget/HorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HorizontalScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "HorizontalScrollView"


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 146
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 150
    const v0, 0x1010353

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 154
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 77
    new-instance v1, Landroid/graphics/Rect;

    #@7
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@c
    .line 91
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    #@e
    .line 98
    const/4 v1, 0x0

    #@f
    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    #@11
    .line 105
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@13
    .line 122
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    #@15
    .line 135
    const/4 v1, -0x1

    #@16
    iput v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@18
    .line 160
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initScrollView()V

    #@1b
    .line 163
    sget-object v1, Landroid/R$styleable;->HorizontalScrollView:[I

    #@1d
    .line 162
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@20
    move-result-object v0

    #@21
    .line 165
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@24
    move-result v1

    #@25
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    #@28
    .line 167
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2b
    .line 158
    return-void
.end method

.method private canScroll()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 262
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    .line 263
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    #@7
    .line 264
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@a
    move-result v1

    #@b
    .line 265
    .local v1, "childWidth":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@e
    move-result v3

    #@f
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    #@11
    add-int/2addr v4, v1

    #@12
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    #@14
    add-int/2addr v4, v5

    #@15
    if-ge v3, v4, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :cond_0
    return v2

    #@19
    .line 267
    .end local v1    # "childWidth":I
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
    .line 1661
    if-ge p1, p2, :cond_0

    #@3
    if-gez p0, :cond_1

    #@5
    .line 1662
    :cond_0
    return v0

    #@6
    .line 1664
    :cond_1
    add-int v0, p1, p0

    #@8
    if-le v0, p2, :cond_2

    #@a
    .line 1665
    sub-int v0, p2, p1

    #@c
    return v0

    #@d
    .line 1667
    :cond_2
    return p0
.end method

.method private doScrollX(I)V
    .locals 2
    .param p1, "delta"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1155
    if-eqz p1, :cond_0

    #@3
    .line 1156
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 1157
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    #@a
    .line 1154
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1159
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    #@e
    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    #@0
    .prologue
    .line 901
    const/4 v10, 0x2

    #@1
    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    #@4
    move-result-object v2

    #@5
    .line 902
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    #@6
    .line 911
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    #@7
    .line 913
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    .line 914
    .local v0, "count":I
    const/4 v4, 0x0

    #@c
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    #@e
    .line 915
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Landroid/view/View;

    #@14
    .line 916
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    #@17
    move-result v8

    #@18
    .line 917
    .local v8, "viewLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    #@1b
    move-result v9

    #@1c
    .line 919
    .local v9, "viewRight":I
    if-ge p2, v9, :cond_0

    #@1e
    if-ge v8, p3, :cond_0

    #@20
    .line 925
    if-ge p2, v8, :cond_2

    #@22
    .line 926
    if-ge v9, p3, :cond_1

    #@24
    const/4 v7, 0x1

    #@25
    .line 928
    .local v7, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_3

    #@27
    .line 930
    move-object v1, v5

    #@28
    .line 931
    .local v1, "focusCandidate":Landroid/view/View;
    move v3, v7

    #@29
    .line 914
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v7    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 926
    :cond_1
    const/4 v7, 0x0

    #@2d
    .restart local v7    # "viewIsFullyContained":Z
    goto :goto_1

    #@2e
    .line 925
    .end local v7    # "viewIsFullyContained":Z
    :cond_2
    const/4 v7, 0x0

    #@2f
    .restart local v7    # "viewIsFullyContained":Z
    goto :goto_1

    #@30
    .line 934
    :cond_3
    if-eqz p1, :cond_4

    #@32
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@35
    move-result v10

    #@36
    if-ge v8, v10, :cond_4

    #@38
    const/4 v6, 0x1

    #@39
    .line 937
    .local v6, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    #@3b
    .line 938
    if-eqz v7, :cond_0

    #@3d
    if-eqz v6, :cond_0

    #@3f
    .line 944
    move-object v1, v5

    #@40
    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    #@41
    .line 935
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_4
    if-nez p1, :cond_5

    #@43
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    #@46
    move-result v10

    #@47
    if-le v9, v10, :cond_5

    #@49
    const/4 v6, 0x1

    #@4a
    .restart local v6    # "viewIsCloserToBoundary":Z
    goto :goto_3

    #@4b
    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v6, 0x0

    #@4c
    .restart local v6    # "viewIsCloserToBoundary":Z
    goto :goto_3

    #@4d
    .line 947
    :cond_6
    if-eqz v7, :cond_7

    #@4f
    .line 949
    move-object v1, v5

    #@50
    .line 950
    .restart local v1    # "focusCandidate":Landroid/view/View;
    const/4 v3, 0x1

    #@51
    .restart local v3    # "foundFullyContainedFocusable":Z
    goto :goto_2

    #@52
    .line 951
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    :cond_7
    if-eqz v6, :cond_0

    #@54
    .line 956
    move-object v1, v5

    #@55
    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    #@56
    .line 963
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewIsCloserToBoundary":Z
    .end local v7    # "viewIsFullyContained":Z
    .end local v8    # "viewLeft":I
    .end local v9    # "viewRight":I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    #@0
    .prologue
    .line 870
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    #@3
    move-result v3

    #@4
    div-int/lit8 v0, v3, 0x2

    #@6
    .line 871
    .local v0, "fadingEdgeLength":I
    add-int v1, p2, v0

    #@8
    .line 872
    .local v1, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@b
    move-result v3

    #@c
    add-int/2addr v3, p2

    #@d
    sub-int v2, v3, v0

    #@f
    .line 874
    .local v2, "rightWithoutFadingEdge":I
    if-eqz p3, :cond_0

    #@11
    .line 875
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    #@14
    move-result v3

    #@15
    if-ge v3, v2, :cond_0

    #@17
    .line 876
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    #@1a
    move-result v3

    #@1b
    if-le v3, v1, :cond_0

    #@1d
    .line 877
    return-object p3

    #@1e
    .line 880
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    #@21
    move-result-object v3

    #@22
    return-object v3
.end method

.method private getScrollRange()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 838
    const/4 v1, 0x0

    #@2
    .line 839
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@5
    move-result v2

    #@6
    if-lez v2, :cond_0

    #@8
    .line 840
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 842
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@f
    move-result v2

    #@10
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@13
    move-result v3

    #@14
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    #@16
    sub-int/2addr v3, v4

    #@17
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    #@19
    sub-int/2addr v3, v4

    #@1a
    sub-int/2addr v2, v3

    #@1b
    .line 841
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    #@1e
    move-result v1

    #@1f
    .line 844
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 399
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@4
    move-result v3

    #@5
    if-lez v3, :cond_1

    #@7
    .line 400
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@9
    .line 401
    .local v1, "scrollX":I
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    .line 402
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@10
    move-result v3

    #@11
    if-lt p2, v3, :cond_0

    #@13
    .line 403
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@16
    move-result v3

    #@17
    if-ge p2, v3, :cond_0

    #@19
    .line 404
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@1c
    move-result v3

    #@1d
    sub-int/2addr v3, v1

    #@1e
    if-lt p1, v3, :cond_0

    #@20
    .line 405
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@23
    move-result v3

    #@24
    sub-int/2addr v3, v1

    #@25
    if-ge p1, v3, :cond_0

    #@27
    const/4 v2, 0x1

    #@28
    .line 402
    :cond_0
    return v2

    #@29
    .line 407
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollX":I
    :cond_1
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 412
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    .line 410
    :goto_0
    return-void

    #@b
    .line 414
    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@d
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@10
    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    #@0
    .prologue
    .line 210
    new-instance v1, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@b
    .line 211
    const/4 v1, 0x1

    #@c
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    #@f
    .line 212
    const/high16 v1, 0x40000

    #@11
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    #@14
    .line 213
    const/4 v1, 0x0

    #@15
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    #@18
    .line 214
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    #@1a
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1d
    move-result-object v0

    #@1e
    .line 215
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@21
    move-result v1

    #@22
    iput v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    #@24
    .line 216
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@27
    move-result v1

    #@28
    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    #@2a
    .line 217
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@2d
    move-result v1

    #@2e
    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    #@30
    .line 218
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    #@33
    move-result v1

    #@34
    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    #@36
    .line 219
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    #@39
    move-result v1

    #@3a
    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    #@3c
    .line 209
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 420
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    .line 418
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
    .line 1134
    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    #@0
    .prologue
    .line 1551
    if-ne p0, p1, :cond_0

    #@2
    .line 1552
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 1555
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    .line 1556
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@a
    if-eqz v1, :cond_1

    #@c
    check-cast v0, Landroid/view/View;

    #@e
    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

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

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1142
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@6
    .line 1143
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b
    .line 1145
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@d
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@f
    add-int/2addr v1, p2

    #@10
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    #@13
    move-result v2

    #@14
    if-lt v1, v2, :cond_0

    #@16
    .line 1146
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@18
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@1a
    sub-int/2addr v1, p2

    #@1b
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@22
    move-result v3

    #@23
    add-int/2addr v2, v3

    #@24
    if-gt v1, v2, :cond_0

    #@26
    const/4 v0, 0x1

    #@27
    .line 1145
    :cond_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 692
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
    .line 694
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@d
    move-result v1

    #@e
    .line 695
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@10
    if-ne v1, v3, :cond_0

    #@12
    .line 699
    if-nez v2, :cond_1

    #@14
    const/4 v0, 0x1

    #@15
    .line 700
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@18
    move-result v3

    #@19
    float-to-int v3, v3

    #@1a
    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    #@1c
    .line 701
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@1f
    move-result v3

    #@20
    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@22
    .line 702
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 703
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@28
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    #@2b
    .line 691
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    #@2c
    .line 699
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
    .line 425
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 426
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@7
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@a
    .line 427
    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@c
    .line 424
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    #@0
    .prologue
    .line 1046
    const/4 v4, 0x1

    #@1
    .line 1048
    .local v4, "handled":Z
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@4
    move-result v6

    #@5
    .line 1049
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    #@8
    move-result v0

    #@9
    .line 1050
    .local v0, "containerLeft":I
    add-int v1, v0, v6

    #@b
    .line 1051
    .local v1, "containerRight":I
    const/16 v7, 0x11

    #@d
    if-ne p1, v7, :cond_2

    #@f
    const/4 v3, 0x1

    #@10
    .line 1053
    .local v3, "goLeft":Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    #@13
    move-result-object v5

    #@14
    .line 1054
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    #@16
    .line 1055
    move-object v5, p0

    #@17
    .line 1058
    :cond_0
    if-lt p2, v0, :cond_3

    #@19
    if-gt p3, v1, :cond_3

    #@1b
    .line 1059
    const/4 v4, 0x0

    #@1c
    .line 1065
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    #@1f
    move-result-object v7

    #@20
    if-eq v5, v7, :cond_1

    #@22
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    #@25
    .line 1067
    :cond_1
    return v4

    #@26
    .line 1051
    .end local v3    # "goLeft":Z
    .end local v5    # "newFocused":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    #@27
    .restart local v3    # "goLeft":Z
    goto :goto_0

    #@28
    .line 1061
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    #@2a
    sub-int v2, p2, v0

    #@2c
    .line 1062
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    #@2f
    goto :goto_1

    #@30
    .line 1061
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v1

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
    .line 1317
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@6
    .line 1320
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b
    .line 1322
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@d
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@10
    move-result v0

    #@11
    .line 1324
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    #@13
    .line 1325
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    #@16
    .line 1316
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
    .line 1338
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@4
    move-result v0

    #@5
    .line 1339
    .local v0, "delta":I
    if-eqz v0, :cond_1

    #@7
    const/4 v1, 0x1

    #@8
    .line 1340
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    #@a
    .line 1341
    if-eqz p2, :cond_2

    #@c
    .line 1342
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    #@f
    .line 1347
    :cond_0
    :goto_1
    return v1

    #@10
    .line 1339
    .end local v1    # "scroll":Z
    :cond_1
    const/4 v1, 0x0

    #@11
    .restart local v1    # "scroll":Z
    goto :goto_0

    #@12
    .line 1344
    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    #@15
    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "HorizontalScrollView can host only one direct child"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 228
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@12
    .line 223
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "HorizontalScrollView can host only one direct child"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 237
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    #@12
    .line 232
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "HorizontalScrollView can host only one direct child"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 255
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 250
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "HorizontalScrollView can host only one direct child"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 246
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 241
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    #@0
    .prologue
    const/16 v10, 0x42

    #@2
    const/4 v9, 0x0

    #@3
    .line 1079
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1080
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    .line 1082
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
    .line 1084
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    #@15
    move-result v3

    #@16
    .line 1086
    .local v3, "maxJump":I
    if-eqz v4, :cond_2

    #@18
    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_2

    #@1e
    .line 1087
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@23
    .line 1088
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@25
    invoke-virtual {p0, v4, v7}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@28
    .line 1089
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2a
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@2d
    move-result v6

    #@2e
    .line 1090
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    #@31
    .line 1091
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    #@34
    .line 1114
    .end local v6    # "scrollDelta":I
    :goto_0
    if-eqz v0, :cond_1

    #@36
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    #@39
    move-result v7

    #@3a
    if-eqz v7, :cond_1

    #@3c
    .line 1115
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    #@3f
    move-result v7

    #@40
    .line 1114
    if-eqz v7, :cond_1

    #@42
    .line 1121
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDescendantFocusability()I

    #@45
    move-result v2

    #@46
    .line 1122
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    #@48
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    #@4b
    .line 1123
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestFocus()Z

    #@4e
    .line 1124
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    #@51
    .line 1126
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    #@52
    return v7

    #@53
    .line 1094
    :cond_2
    move v6, v3

    #@54
    .line 1096
    .restart local v6    # "scrollDelta":I
    const/16 v7, 0x11

    #@56
    if-ne p1, v7, :cond_4

    #@58
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    #@5b
    move-result v7

    #@5c
    if-ge v7, v6, :cond_4

    #@5e
    .line 1097
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    #@61
    move-result v6

    #@62
    .line 1108
    :cond_3
    :goto_1
    if-nez v6, :cond_5

    #@64
    .line 1109
    return v9

    #@65
    .line 1098
    :cond_4
    if-ne p1, v10, :cond_3

    #@67
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@6a
    move-result v7

    #@6b
    if-lez v7, :cond_3

    #@6d
    .line 1100
    invoke-virtual {p0, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    #@74
    move-result v1

    #@75
    .line 1102
    .local v1, "daRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    #@78
    move-result v7

    #@79
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@7c
    move-result v8

    #@7d
    add-int v5, v7, v8

    #@7f
    .line 1104
    .local v5, "screenRight":I
    sub-int v7, v1, v5

    #@81
    if-ge v7, v3, :cond_3

    #@83
    .line 1105
    sub-int v6, v1, v5

    #@85
    goto :goto_1

    #@86
    .line 1111
    .end local v1    # "daRight":I
    .end local v5    # "screenRight":I
    :cond_5
    if-ne p1, v10, :cond_6

    #@88
    .end local v6    # "scrollDelta":I
    :goto_2
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    #@8b
    goto :goto_0

    #@8c
    .restart local v6    # "scrollDelta":I
    :cond_6
    neg-int v6, v6

    #@8d
    goto :goto_2
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    #@0
    .prologue
    .line 1230
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

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

.method protected computeHorizontalScrollRange()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1210
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 1211
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@8
    move-result v5

    #@9
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    #@b
    sub-int/2addr v5, v6

    #@c
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    #@e
    sub-int v0, v5, v6

    #@10
    .line 1212
    .local v0, "contentWidth":I
    if-nez v1, :cond_0

    #@12
    .line 1213
    return v0

    #@13
    .line 1216
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    #@1a
    move-result v3

    #@1b
    .line 1217
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@1d
    .line 1218
    .local v4, "scrollX":I
    sub-int v5, v3, v0

    #@1f
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v2

    #@23
    .line 1219
    .local v2, "overscrollRight":I
    if-gez v4, :cond_2

    #@25
    .line 1220
    sub-int/2addr v3, v4

    #@26
    .line 1225
    :cond_1
    :goto_0
    return v3

    #@27
    .line 1221
    :cond_2
    if-le v4, v2, :cond_1

    #@29
    .line 1222
    sub-int v5, v4, v2

    #@2b
    add-int/2addr v3, v5

    #@2c
    goto :goto_0
.end method

.method public computeScroll()V
    .locals 14

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1264
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@3
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 1281
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@b
    .line 1282
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@d
    .line 1283
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@f
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    #@12
    move-result v12

    #@13
    .line 1284
    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@15
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    #@18
    move-result v13

    #@19
    .line 1286
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    #@1b
    if-eq v4, v13, :cond_1

    #@1d
    .line 1287
    :cond_0
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    #@20
    move-result v5

    #@21
    .line 1288
    .local v5, "range":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    #@24
    move-result v11

    #@25
    .line 1289
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_3

    #@27
    .line 1290
    const/4 v0, 0x1

    #@28
    if-ne v11, v0, :cond_4

    #@2a
    if-lez v5, :cond_4

    #@2c
    const/4 v10, 0x1

    #@2d
    .line 1292
    .local v10, "canOverscroll":Z
    :goto_0
    sub-int v1, v12, v3

    #@2f
    sub-int v2, v13, v4

    #@31
    .line 1293
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    #@33
    move-object v0, p0

    #@34
    move v8, v6

    #@35
    move v9, v6

    #@36
    .line 1292
    invoke-virtual/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    #@39
    .line 1294
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@3b
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@3d
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    #@40
    .line 1296
    if-eqz v10, :cond_1

    #@42
    .line 1297
    if-gez v12, :cond_5

    #@44
    if-ltz v3, :cond_5

    #@46
    .line 1298
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@48
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@4a
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    #@4d
    move-result v1

    #@4e
    float-to-int v1, v1

    #@4f
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@52
    .line 1305
    .end local v5    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    #@55
    move-result v0

    #@56
    if-nez v0, :cond_2

    #@58
    .line 1306
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    #@5b
    .line 1263
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_2
    return-void

    #@5c
    .line 1289
    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v5    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_3
    const/4 v10, 0x1

    #@5d
    .restart local v10    # "canOverscroll":Z
    goto :goto_0

    #@5e
    .line 1290
    .end local v10    # "canOverscroll":Z
    :cond_4
    const/4 v10, 0x0

    #@5f
    .restart local v10    # "canOverscroll":Z
    goto :goto_0

    #@60
    .line 1299
    :cond_5
    if-le v12, v5, :cond_1

    #@62
    if-gt v3, v5, :cond_1

    #@64
    .line 1300
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    #@66
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@68
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    #@6b
    move-result v1

    #@6c
    float-to-int v1, v1

    #@6d
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@70
    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1359
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@4
    move-result v7

    #@5
    if-nez v7, :cond_0

    #@7
    return v9

    #@8
    .line 1361
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@b
    move-result v6

    #@c
    .line 1362
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    #@f
    move-result v3

    #@10
    .line 1363
    .local v3, "screenLeft":I
    add-int v4, v3, v6

    #@12
    .line 1365
    .local v4, "screenRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    #@15
    move-result v1

    #@16
    .line 1368
    .local v1, "fadingEdge":I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    #@18
    if-lez v7, :cond_1

    #@1a
    .line 1369
    add-int/2addr v3, v1

    #@1b
    .line 1373
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->right:I

    #@1d
    invoke-virtual {p0, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v8

    #@21
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    #@24
    move-result v8

    #@25
    if-ge v7, v8, :cond_2

    #@27
    .line 1374
    sub-int/2addr v4, v1

    #@28
    .line 1377
    :cond_2
    const/4 v5, 0x0

    #@29
    .line 1379
    .local v5, "scrollXDelta":I
    iget v7, p1, Landroid/graphics/Rect;->right:I

    #@2b
    if-le v7, v4, :cond_5

    #@2d
    iget v7, p1, Landroid/graphics/Rect;->left:I

    #@2f
    if-le v7, v3, :cond_5

    #@31
    .line 1384
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@34
    move-result v7

    #@35
    if-le v7, v6, :cond_4

    #@37
    .line 1386
    iget v7, p1, Landroid/graphics/Rect;->left:I

    #@39
    sub-int/2addr v7, v3

    #@3a
    add-int/lit8 v5, v7, 0x0

    #@3c
    .line 1393
    :goto_0
    invoke-virtual {p0, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    #@43
    move-result v2

    #@44
    .line 1394
    .local v2, "right":I
    sub-int v0, v2, v4

    #@46
    .line 1395
    .local v0, "distanceToRight":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    #@49
    move-result v5

    #@4a
    .line 1413
    .end local v0    # "distanceToRight":I
    .end local v2    # "right":I
    :cond_3
    :goto_1
    return v5

    #@4b
    .line 1389
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->right:I

    #@4d
    sub-int/2addr v7, v4

    #@4e
    add-int/lit8 v5, v7, 0x0

    #@50
    goto :goto_0

    #@51
    .line 1397
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    #@53
    if-ge v7, v3, :cond_3

    #@55
    iget v7, p1, Landroid/graphics/Rect;->right:I

    #@57
    if-ge v7, v4, :cond_3

    #@59
    .line 1402
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@5c
    move-result v7

    #@5d
    if-le v7, v6, :cond_6

    #@5f
    .line 1404
    iget v7, p1, Landroid/graphics/Rect;->right:I

    #@61
    sub-int v7, v4, v7

    #@63
    rsub-int/lit8 v5, v7, 0x0

    #@65
    .line 1411
    :goto_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    #@68
    move-result v7

    #@69
    neg-int v7, v7

    #@6a
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    #@6d
    move-result v5

    #@6e
    goto :goto_1

    #@6f
    .line 1407
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    #@71
    sub-int v7, v3, v7

    #@73
    rsub-int/lit8 v5, v7, 0x0

    #@75
    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1628
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 1629
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@5
    if-eqz v4, :cond_3

    #@7
    .line 1630
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@9
    .line 1631
    .local v2, "scrollX":I
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@b
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_1

    #@11
    .line 1632
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@14
    move-result v1

    #@15
    .line 1633
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    #@18
    move-result v4

    #@19
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    #@1b
    sub-int/2addr v4, v5

    #@1c
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    #@1e
    sub-int v0, v4, v5

    #@20
    .line 1635
    .local v0, "height":I
    const/high16 v4, 0x43870000    # 270.0f

    #@22
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    #@25
    .line 1636
    neg-int v4, v0

    #@26
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    #@28
    add-int/2addr v4, v5

    #@29
    int-to-float v4, v4

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    #@2e
    move-result v5

    #@2f
    int-to-float v5, v5

    #@30
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@33
    .line 1637
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@35
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@38
    move-result v5

    #@39
    invoke-virtual {v4, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@3c
    .line 1638
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@3e
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_0

    #@44
    .line 1639
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    #@47
    .line 1641
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@4a
    .line 1643
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    #@4c
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@4f
    move-result v4

    #@50
    if-nez v4, :cond_3

    #@52
    .line 1644
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@55
    move-result v1

    #@56
    .line 1645
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@59
    move-result v3

    #@5a
    .line 1646
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    #@5d
    move-result v4

    #@5e
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    #@60
    sub-int/2addr v4, v5

    #@61
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    #@63
    sub-int v0, v4, v5

    #@65
    .line 1648
    .restart local v0    # "height":I
    const/high16 v4, 0x42b40000    # 90.0f

    #@67
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    #@6a
    .line 1649
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    #@6c
    neg-int v4, v4

    #@6d
    int-to-float v4, v4

    #@6e
    .line 1650
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    #@71
    move-result v5

    #@72
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    #@75
    move-result v5

    #@76
    add-int/2addr v5, v3

    #@77
    neg-int v5, v5

    #@78
    int-to-float v5, v5

    #@79
    .line 1649
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@7c
    .line 1651
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    #@7e
    invoke-virtual {v4, v0, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@81
    .line 1652
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    #@83
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@86
    move-result v4

    #@87
    if-eqz v4, :cond_2

    #@89
    .line 1653
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    #@8c
    .line 1655
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@8f
    .line 1627
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_3
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1700
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 1701
    const-string/jumbo v0, "layout:fillViewPort"

    #@6
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@b
    .line 1699
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/16 v4, 0x11

    #@2
    const/4 v3, 0x0

    #@3
    const/16 v5, 0x42

    #@5
    .line 358
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    #@a
    .line 360
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    #@d
    move-result v6

    #@e
    if-nez v6, :cond_3

    #@10
    .line 361
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isFocused()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_2

    #@16
    .line 362
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    .line 363
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    #@1c
    const/4 v0, 0x0

    #@1d
    .line 364
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@24
    move-result-object v2

    #@25
    .line 366
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    #@27
    if-eq v2, p0, :cond_1

    #@29
    .line 367
    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    #@2c
    move-result v3

    #@2d
    .line 366
    :cond_1
    return v3

    #@2e
    .line 369
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_2
    return v3

    #@2f
    .line 372
    :cond_3
    const/4 v1, 0x0

    #@30
    .line 373
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@33
    move-result v3

    #@34
    if-nez v3, :cond_4

    #@36
    .line 374
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@39
    move-result v3

    #@3a
    sparse-switch v3, :sswitch_data_0

    #@3d
    .line 395
    .end local v1    # "handled":Z
    :cond_4
    :goto_0
    return v1

    #@3e
    .line 376
    .restart local v1    # "handled":Z
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@41
    move-result v3

    #@42
    if-nez v3, :cond_5

    #@44
    .line 377
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    #@47
    move-result v1

    #@48
    .local v1, "handled":Z
    goto :goto_0

    #@49
    .line 379
    .local v1, "handled":Z
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    #@4c
    move-result v1

    #@4d
    .local v1, "handled":Z
    goto :goto_0

    #@4e
    .line 383
    .local v1, "handled":Z
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@51
    move-result v3

    #@52
    if-nez v3, :cond_6

    #@54
    .line 384
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    #@57
    move-result v1

    #@58
    .local v1, "handled":Z
    goto :goto_0

    #@59
    .line 386
    .local v1, "handled":Z
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    #@5c
    move-result v1

    #@5d
    .local v1, "handled":Z
    goto :goto_0

    #@5e
    .line 390
    .local v1, "handled":Z
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_7

    #@64
    move v3, v4

    #@65
    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    #@68
    goto :goto_0

    #@69
    :cond_7
    move v3, v5

    #@6a
    goto :goto_1

    #@6b
    .line 374
    nop

    #@6c
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 17
    .param p1, "velocityX"    # I

    #@0
    .prologue
    .line 1567
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@3
    move-result v1

    #@4
    if-lez v1, :cond_2

    #@6
    .line 1568
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@9
    move-result v1

    #@a
    move-object/from16 v0, p0

    #@c
    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    #@e
    sub-int/2addr v1, v2

    #@f
    move-object/from16 v0, p0

    #@11
    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    #@13
    sub-int v16, v1, v2

    #@15
    .line 1569
    .local v16, "width":I
    const/4 v1, 0x0

    #@16
    move-object/from16 v0, p0

    #@18
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@1f
    move-result v15

    #@20
    .line 1571
    .local v15, "right":I
    move-object/from16 v0, p0

    #@22
    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@24
    move-object/from16 v0, p0

    #@26
    iget v2, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@28
    move-object/from16 v0, p0

    #@2a
    iget v3, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@2c
    .line 1572
    sub-int v4, v15, v16

    #@2e
    const/4 v5, 0x0

    #@2f
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    #@32
    move-result v7

    #@33
    div-int/lit8 v10, v16, 0x2

    #@35
    .line 1571
    const/4 v5, 0x0

    #@36
    const/4 v6, 0x0

    #@37
    .line 1572
    const/4 v8, 0x0

    #@38
    const/4 v9, 0x0

    #@39
    const/4 v11, 0x0

    #@3a
    move/from16 v4, p1

    #@3c
    .line 1571
    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    #@3f
    .line 1574
    if-lez p1, :cond_3

    #@41
    const/4 v13, 0x1

    #@42
    .line 1576
    .local v13, "movingRight":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    #@45
    move-result-object v12

    #@46
    .line 1578
    .local v12, "currentFocused":Landroid/view/View;
    move-object/from16 v0, p0

    #@48
    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@4a
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    #@4d
    move-result v1

    #@4e
    .line 1577
    move-object/from16 v0, p0

    #@50
    invoke-direct {v0, v13, v1, v12}, Landroid/widget/HorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    #@53
    move-result-object v14

    #@54
    .line 1580
    .local v14, "newFocused":Landroid/view/View;
    if-nez v14, :cond_0

    #@56
    .line 1581
    move-object/from16 v14, p0

    #@58
    .line 1584
    :cond_0
    if-eq v14, v12, :cond_1

    #@5a
    .line 1585
    if-eqz v13, :cond_4

    #@5c
    const/16 v1, 0x42

    #@5e
    :goto_1
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    #@61
    .line 1588
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    #@64
    .line 1566
    .end local v12    # "currentFocused":Landroid/view/View;
    .end local v13    # "movingRight":Z
    .end local v14    # "newFocused":Landroid/view/View;
    .end local v15    # "right":I
    .end local v16    # "width":I
    :cond_2
    return-void

    #@65
    .line 1574
    .restart local v15    # "right":I
    .restart local v16    # "width":I
    :cond_3
    const/4 v13, 0x0

    #@66
    .restart local v13    # "movingRight":Z
    goto :goto_0

    #@67
    .line 1585
    .restart local v12    # "currentFocused":Landroid/view/View;
    .restart local v14    # "newFocused":Landroid/view/View;
    :cond_4
    const/16 v1, 0x11

    #@69
    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1015
    const/16 v4, 0x42

    #@3
    if-ne p1, v4, :cond_1

    #@5
    const/4 v1, 0x1

    #@6
    .line 1016
    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@9
    move-result v3

    #@a
    .line 1018
    .local v3, "width":I
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@c
    iput v5, v4, Landroid/graphics/Rect;->left:I

    #@e
    .line 1019
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@10
    iput v3, v4, Landroid/graphics/Rect;->right:I

    #@12
    .line 1021
    if-eqz v1, :cond_0

    #@14
    .line 1022
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@17
    move-result v0

    #@18
    .line 1023
    .local v0, "count":I
    if-lez v0, :cond_0

    #@1a
    .line 1024
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@1d
    move-result-object v2

    #@1e
    .line 1025
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    #@23
    move-result v5

    #@24
    iput v5, v4, Landroid/graphics/Rect;->right:I

    #@26
    .line 1026
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@28
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2a
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@2c
    sub-int/2addr v5, v3

    #@2d
    iput v5, v4, Landroid/graphics/Rect;->left:I

    #@2f
    .line 1030
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@31
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@33
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@35
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@37
    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    #@3a
    move-result v4

    #@3b
    return v4

    #@3c
    .line 1015
    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    const/4 v1, 0x0

    #@3d
    .restart local v1    # "right":Z
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 805
    const-class v0, Landroid/widget/HorizontalScrollView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    #@0
    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 173
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 176
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    #@b
    move-result v0

    #@c
    .line 177
    .local v0, "length":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@e
    if-ge v1, v0, :cond_1

    #@10
    .line 178
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@12
    int-to-float v1, v1

    #@13
    int-to-float v2, v0

    #@14
    div-float/2addr v1, v2

    #@15
    return v1

    #@16
    .line 181
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    #@18
    return v1
.end method

.method public getMaxScrollAmount()I
    .locals 2

    #@0
    .prologue
    .line 205
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    #@2
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    #@4
    sub-int/2addr v0, v1

    #@5
    int-to-float v0, v0

    #@6
    const/high16 v1, 0x3f000000    # 0.5f

    #@8
    mul-float/2addr v0, v1

    #@9
    float-to-int v0, v0

    #@a
    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 186
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 187
    const/4 v3, 0x0

    #@8
    return v3

    #@9
    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    #@c
    move-result v0

    #@d
    .line 191
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@10
    move-result v3

    #@11
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    #@13
    sub-int v1, v3, v4

    #@15
    .line 192
    .local v1, "rightEdge":I
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    #@1c
    move-result v3

    #@1d
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@1f
    sub-int/2addr v3, v4

    #@20
    sub-int v2, v3, v1

    #@22
    .line 193
    .local v2, "span":I
    if-ge v2, v0, :cond_1

    #@24
    .line 194
    int-to-float v3, v2

    #@25
    int-to-float v4, v0

    #@26
    div-float/2addr v3, v4

    #@27
    return v3

    #@28
    .line 197
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    #@2a
    return v3
.end method

.method public isFillViewport()Z
    .locals 1

    #@0
    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    #@2
    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 302
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

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
    .line 1235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v2

    #@5
    .line 1240
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    #@7
    .line 1241
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    #@9
    .line 1240
    add-int/2addr v3, v4

    #@a
    .line 1241
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@c
    .line 1240
    invoke-static {p3, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    #@f
    move-result v0

    #@10
    .line 1243
    .local v0, "childHeightMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@13
    move-result v1

    #@14
    .line 1245
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@17
    .line 1234
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
    .line 1251
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 1254
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    #@8
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    #@a
    add-int/2addr v3, v4

    #@b
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@d
    add-int/2addr v3, v4

    #@e
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@10
    add-int/2addr v3, v4

    #@11
    add-int/2addr v3, p5

    #@12
    .line 1255
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@14
    .line 1253
    invoke-static {p4, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    #@17
    move-result v0

    #@18
    .line 1257
    .local v0, "childHeightMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@1a
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@1c
    add-int/2addr v3, v4

    #@1d
    const/4 v4, 0x0

    #@1e
    .line 1256
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@21
    move-result v1

    #@22
    .line 1259
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@25
    .line 1250
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@3
    move-result v5

    #@4
    and-int/lit8 v5, v5, 0x2

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@b
    move-result v5

    #@c
    packed-switch v5, :pswitch_data_0

    #@f
    .line 739
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@12
    move-result v5

    #@13
    return v5

    #@14
    .line 713
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@16
    if-nez v5, :cond_0

    #@18
    .line 715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@1b
    move-result v5

    #@1c
    and-int/lit8 v5, v5, 0x1

    #@1e
    if-eqz v5, :cond_2

    #@20
    .line 716
    const/16 v5, 0x9

    #@22
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@25
    move-result v5

    #@26
    neg-float v1, v5

    #@27
    .line 720
    .local v1, "hscroll":F
    :goto_0
    const/4 v5, 0x0

    #@28
    cmpl-float v5, v1, v5

    #@2a
    if-eqz v5, :cond_0

    #@2c
    .line 721
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalScrollFactor()F

    #@2f
    move-result v5

    #@30
    mul-float/2addr v5, v1

    #@31
    float-to-int v0, v5

    #@32
    .line 722
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    #@35
    move-result v4

    #@36
    .line 723
    .local v4, "range":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@38
    .line 724
    .local v3, "oldScrollX":I
    add-int v2, v3, v0

    #@3a
    .line 725
    .local v2, "newScrollX":I
    if-gez v2, :cond_3

    #@3c
    .line 726
    const/4 v2, 0x0

    #@3d
    .line 730
    :cond_1
    :goto_1
    if-eq v2, v3, :cond_0

    #@3f
    .line 731
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@41
    invoke-super {p0, v2, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    #@44
    .line 732
    const/4 v5, 0x1

    #@45
    return v5

    #@46
    .line 718
    .end local v0    # "delta":I
    .end local v1    # "hscroll":F
    .end local v2    # "newScrollX":I
    .end local v3    # "oldScrollX":I
    .end local v4    # "range":I
    :cond_2
    const/16 v5, 0xa

    #@48
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@4b
    move-result v1

    #@4c
    .restart local v1    # "hscroll":F
    goto :goto_0

    #@4d
    .line 727
    .restart local v0    # "delta":I
    .restart local v2    # "newScrollX":I
    .restart local v3    # "oldScrollX":I
    .restart local v4    # "range":I
    :cond_3
    if-le v2, v4, :cond_1

    #@4f
    .line 728
    move v2, v4

    #@50
    goto :goto_1

    #@51
    .line 711
    nop

    #@52
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 829
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@4
    .line 830
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    #@7
    move-result v1

    #@8
    if-lez v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    #@e
    .line 831
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    #@13
    .line 832
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    #@18
    .line 833
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    #@1b
    move-result v0

    #@1c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    #@1f
    .line 834
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@21
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    #@24
    .line 828
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 811
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 812
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    #@6
    move-result v0

    #@7
    .line 813
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    #@9
    .line 814
    const/4 v1, 0x1

    #@a
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@d
    .line 815
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@15
    if-lez v1, :cond_0

    #@17
    .line 816
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@19
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@1c
    .line 817
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@1e
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@21
    .line 819
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_1

    #@27
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@29
    if-ge v1, v0, :cond_1

    #@2b
    .line 820
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@2d
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@30
    .line 821
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@32
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@35
    .line 810
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@6
    move-result v7

    #@7
    .line 453
    .local v7, "action":I
    const/4 v1, 0x2

    #@8
    if-ne v7, v1, :cond_0

    #@a
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 454
    return v0

    #@f
    .line 457
    :cond_0
    and-int/lit16 v1, v7, 0xff

    #@11
    packed-switch v1, :pswitch_data_0

    #@14
    .line 545
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@16
    return v0

    #@17
    .line 468
    :pswitch_1
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@19
    .line 469
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_1

    #@1b
    .line 474
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@1e
    move-result v10

    #@1f
    .line 475
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_2

    #@21
    .line 476
    const-string/jumbo v0, "HorizontalScrollView"

    #@24
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v2, "Invalid pointerId="

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 477
    const-string/jumbo v2, " in onInterceptTouchEvent"

    #@37
    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    goto :goto_0

    #@43
    .line 481
    :cond_2
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    #@46
    move-result v1

    #@47
    float-to-int v11, v1

    #@48
    .line 482
    .local v11, "x":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    #@4a
    sub-int v1, v11, v1

    #@4c
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@4f
    move-result v12

    #@50
    .line 483
    .local v12, "xDiff":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    #@52
    if-le v12, v1, :cond_1

    #@54
    .line 484
    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@56
    .line 485
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    #@58
    .line 486
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    #@5b
    .line 487
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@5d
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@60
    .line 488
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    #@62
    if-eqz v1, :cond_1

    #@64
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    #@66
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@69
    goto :goto_0

    #@6a
    .line 494
    .end local v8    # "activePointerId":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "x":I
    .end local v12    # "xDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@6d
    move-result v1

    #@6e
    float-to-int v11, v1

    #@6f
    .line 495
    .restart local v11    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@72
    move-result v1

    #@73
    float-to-int v1, v1

    #@74
    invoke-direct {p0, v11, v1}, Landroid/widget/HorizontalScrollView;->inChild(II)Z

    #@77
    move-result v1

    #@78
    if-nez v1, :cond_3

    #@7a
    .line 496
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@7c
    .line 497
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    #@7f
    goto :goto_0

    #@80
    .line 505
    :cond_3
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    #@82
    .line 506
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@85
    move-result v1

    #@86
    iput v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@88
    .line 508
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initOrResetVelocityTracker()V

    #@8b
    .line 509
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@8d
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@90
    .line 516
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@92
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    #@95
    move-result v1

    #@96
    if-eqz v1, :cond_4

    #@98
    :goto_1
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@9a
    goto/16 :goto_0

    #@9c
    :cond_4
    move v3, v0

    #@9d
    goto :goto_1

    #@9e
    .line 523
    .end local v11    # "x":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@a0
    .line 524
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@a2
    .line 525
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@a4
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@a6
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@a8
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    #@ab
    move-result v4

    #@ac
    move v5, v3

    #@ad
    move v6, v3

    #@ae
    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@b1
    move-result v0

    #@b2
    if-eqz v0, :cond_1

    #@b4
    .line 526
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    #@b7
    goto/16 :goto_0

    #@b9
    .line 530
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@bc
    move-result v9

    #@bd
    .line 531
    .local v9, "index":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    #@c0
    move-result v0

    #@c1
    float-to-int v0, v0

    #@c2
    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    #@c4
    .line 532
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@c7
    move-result v0

    #@c8
    iput v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@ca
    goto/16 :goto_0

    #@cc
    .line 536
    .end local v9    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@cf
    .line 537
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@d1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@d4
    move-result v0

    #@d5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@d8
    move-result v0

    #@d9
    float-to-int v0, v0

    #@da
    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    #@dc
    goto/16 :goto_0

    #@de
    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1481
    const/4 v9, 0x0

    #@1
    .line 1482
    .local v9, "childWidth":I
    const/4 v7, 0x0

    #@2
    .line 1484
    .local v7, "childMargins":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_0

    #@8
    .line 1485
    const/4 v0, 0x0

    #@9
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@10
    move-result v9

    #@11
    .line 1486
    const/4 v0, 0x0

    #@12
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@19
    move-result-object v8

    #@1a
    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    #@1c
    .line 1487
    .local v8, "childParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@1e
    iget v1, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@20
    add-int v7, v0, v1

    #@22
    .line 1490
    .end local v8    # "childParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    sub-int v0, p4, p2

    #@24
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeftWithForeground()I

    #@27
    move-result v1

    #@28
    sub-int/2addr v0, v1

    #@29
    .line 1491
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRightWithForeground()I

    #@2c
    move-result v1

    #@2d
    .line 1490
    sub-int/2addr v0, v1

    #@2e
    sub-int v6, v0, v7

    #@30
    .line 1493
    .local v6, "available":I
    if-le v9, v6, :cond_4

    #@32
    const/4 v5, 0x1

    #@33
    .local v5, "forceLeftGravity":Z
    :goto_0
    move-object v0, p0

    #@34
    move v1, p2

    #@35
    move v2, p3

    #@36
    move v3, p4

    #@37
    move/from16 v4, p5

    #@39
    .line 1495
    invoke-virtual/range {v0 .. v5}, Landroid/widget/HorizontalScrollView;->layoutChildren(IIIIZ)V

    #@3c
    .line 1497
    const/4 v0, 0x0

    #@3d
    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    #@3f
    .line 1499
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    #@41
    if-eqz v0, :cond_1

    #@43
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    #@45
    invoke-static {v0, p0}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_1

    #@4b
    .line 1500
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    #@4d
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    #@50
    .line 1502
    :cond_1
    const/4 v0, 0x0

    #@51
    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    #@53
    .line 1504
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLaidOut()Z

    #@56
    move-result v0

    #@57
    if-nez v0, :cond_3

    #@59
    .line 1506
    sub-int v0, p4, p2

    #@5b
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    #@5d
    sub-int/2addr v0, v1

    #@5e
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    #@60
    sub-int/2addr v0, v1

    #@61
    sub-int v0, v9, v0

    #@63
    .line 1505
    const/4 v1, 0x0

    #@64
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@67
    move-result v10

    #@68
    .line 1507
    .local v10, "scrollRange":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    #@6a
    if-eqz v0, :cond_6

    #@6c
    .line 1508
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_5

    #@72
    .line 1509
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    #@74
    iget v0, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    #@76
    sub-int v0, v10, v0

    #@78
    .line 1508
    :goto_1
    iput v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@7a
    .line 1511
    const/4 v0, 0x0

    #@7b
    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    #@7d
    .line 1518
    :cond_2
    :goto_2
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@7f
    if-le v0, v10, :cond_7

    #@81
    .line 1519
    iput v10, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@83
    .line 1526
    .end local v10    # "scrollRange":I
    :cond_3
    :goto_3
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@85
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@87
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    #@8a
    .line 1480
    return-void

    #@8b
    .line 1493
    .end local v5    # "forceLeftGravity":Z
    :cond_4
    const/4 v5, 0x0

    #@8c
    .restart local v5    # "forceLeftGravity":Z
    goto :goto_0

    #@8d
    .line 1510
    .restart local v10    # "scrollRange":I
    :cond_5
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    #@8f
    iget v0, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    #@91
    goto :goto_1

    #@92
    .line 1513
    :cond_6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    #@95
    move-result v0

    #@96
    if-eqz v0, :cond_2

    #@98
    .line 1514
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@9a
    sub-int v0, v10, v0

    #@9c
    iput v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@9e
    goto :goto_2

    #@9f
    .line 1520
    :cond_7
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@a1
    if-gez v0, :cond_3

    #@a3
    .line 1521
    const/4 v0, 0x0

    #@a4
    iput v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@a6
    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 315
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@4
    .line 317
    iget-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    #@6
    if-nez v6, :cond_0

    #@8
    .line 318
    return-void

    #@9
    .line 321
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@c
    move-result v5

    #@d
    .line 322
    .local v5, "widthMode":I
    if-nez v5, :cond_1

    #@f
    .line 323
    return-void

    #@10
    .line 326
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@13
    move-result v6

    #@14
    if-lez v6, :cond_2

    #@16
    .line 327
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    .line 328
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    #@1d
    move-result v4

    #@1e
    .line 329
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@21
    move-result v6

    #@22
    if-ge v6, v4, :cond_2

    #@24
    .line 330
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    #@2a
    .line 332
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    #@2c
    .line 333
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    #@2e
    .line 332
    add-int/2addr v6, v7

    #@2f
    .line 333
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@31
    .line 332
    invoke-static {p2, v6, v7}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    #@34
    move-result v1

    #@35
    .line 334
    .local v1, "childHeightMeasureSpec":I
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    #@37
    sub-int/2addr v4, v6

    #@38
    .line 335
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    #@3a
    sub-int/2addr v4, v6

    #@3b
    .line 336
    const/high16 v6, 0x40000000    # 2.0f

    #@3d
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@40
    move-result v2

    #@41
    .line 338
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    #@44
    .line 314
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "width":I
    :cond_2
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 9
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 751
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@3
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 752
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@b
    .line 753
    .local v7, "oldX":I
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@d
    .line 754
    .local v8, "oldY":I
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@f
    .line 755
    iput p2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@11
    .line 756
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateParentIfNeeded()V

    #@14
    .line 757
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@16
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@18
    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    #@1b
    .line 758
    if-eqz p3, :cond_0

    #@1d
    .line 759
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@1f
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@21
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@23
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    #@26
    move-result v4

    #@27
    move v5, v3

    #@28
    move v6, v3

    #@29
    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@2c
    .line 765
    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    #@2f
    .line 749
    return-void

    #@30
    .line 762
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    #@33
    goto :goto_0
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
    .line 1441
    const/4 v1, 0x2

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 1442
    const/16 p1, 0x42

    #@7
    .line 1447
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    #@9
    .line 1448
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 1452
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    #@13
    .line 1453
    return v3

    #@14
    .line 1443
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    #@15
    if-ne p1, v1, :cond_0

    #@17
    .line 1444
    const/16 p1, 0x11

    #@19
    goto :goto_0

    #@1a
    .line 1449
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
    .line 1456
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 1457
    return v3

    #@2a
    .line 1460
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@2d
    move-result v1

    #@2e
    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 1672
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v1

    #@6
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8
    const/16 v2, 0x12

    #@a
    if-gt v1, v2, :cond_0

    #@c
    .line 1675
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@f
    .line 1676
    return-void

    #@10
    :cond_0
    move-object v0, p1

    #@11
    .line 1678
    check-cast v0, Landroid/widget/HorizontalScrollView$SavedState;

    #@13
    .line 1679
    .local v0, "ss":Landroid/widget/HorizontalScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@16
    move-result-object v1

    #@17
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@1a
    .line 1680
    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    #@1c
    .line 1681
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    #@1f
    .line 1671
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    #@0
    .prologue
    .line 1686
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v2

    #@6
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8
    const/16 v3, 0x12

    #@a
    if-gt v2, v3, :cond_0

    #@c
    .line 1689
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 1691
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@14
    move-result-object v1

    #@15
    .line 1692
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/HorizontalScrollView$SavedState;

    #@17
    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@1a
    .line 1693
    .local v0, "ss":Landroid/widget/HorizontalScrollView$SavedState;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@22
    neg-int v2, v2

    #@23
    :goto_0
    iput v2, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    #@25
    .line 1694
    return-object v0

    #@26
    .line 1693
    :cond_1
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@28
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 1531
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    #@3
    .line 1533
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1534
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    #@9
    if-ne p0, v0, :cond_1

    #@b
    .line 1535
    :cond_0
    return-void

    #@c
    .line 1537
    :cond_1
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    #@e
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    #@10
    sub-int v1, v3, v4

    #@12
    .line 1539
    .local v1, "maxJump":I
    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 1540
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@1d
    .line 1541
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@22
    .line 1542
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@24
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@27
    move-result v2

    #@28
    .line 1543
    .local v2, "scrollDelta":I
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    #@2b
    .line 1530
    .end local v2    # "scrollDelta":I
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 550
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    #@3
    .line 551
    move-object/from16 v0, p0

    #@5
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@c
    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@f
    move-result v15

    #@10
    .line 555
    .local v15, "action":I
    and-int/lit16 v2, v15, 0xff

    #@12
    packed-switch v2, :pswitch_data_0

    #@15
    .line 688
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    #@16
    return v2

    #@17
    .line 557
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_1

    #@1d
    .line 558
    const/4 v2, 0x0

    #@1e
    return v2

    #@1f
    .line 560
    :cond_1
    move-object/from16 v0, p0

    #@21
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@23
    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_4

    #@29
    const/4 v2, 0x0

    #@2a
    :goto_1
    move-object/from16 v0, p0

    #@2c
    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 561
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    #@33
    move-result-object v22

    #@34
    .line 562
    .local v22, "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_2

    #@36
    .line 563
    const/4 v2, 0x1

    #@37
    move-object/from16 v0, v22

    #@39
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@3c
    .line 571
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@40
    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    #@43
    move-result v2

    #@44
    if-nez v2, :cond_3

    #@46
    .line 572
    move-object/from16 v0, p0

    #@48
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@4a
    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    #@4d
    .line 576
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@50
    move-result v2

    #@51
    float-to-int v2, v2

    #@52
    move-object/from16 v0, p0

    #@54
    iput v2, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    #@56
    .line 577
    const/4 v2, 0x0

    #@57
    move-object/from16 v0, p1

    #@59
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@5c
    move-result v2

    #@5d
    move-object/from16 v0, p0

    #@5f
    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@61
    goto :goto_0

    #@62
    .line 560
    :cond_4
    const/4 v2, 0x1

    #@63
    goto :goto_1

    #@64
    .line 581
    :pswitch_2
    move-object/from16 v0, p0

    #@66
    iget v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@68
    move-object/from16 v0, p1

    #@6a
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@6d
    move-result v16

    #@6e
    .line 582
    .local v16, "activePointerIndex":I
    const/4 v2, -0x1

    #@6f
    move/from16 v0, v16

    #@71
    if-ne v0, v2, :cond_5

    #@73
    .line 583
    const-string/jumbo v2, "HorizontalScrollView"

    #@76
    new-instance v4, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v5, "Invalid pointerId="

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    move-object/from16 v0, p0

    #@84
    iget v5, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    const-string/jumbo v5, " in onTouchEvent"

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v4

    #@95
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    goto/16 :goto_0

    #@9a
    .line 587
    :cond_5
    move-object/from16 v0, p1

    #@9c
    move/from16 v1, v16

    #@9e
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@a1
    move-result v2

    #@a2
    float-to-int v0, v2

    #@a3
    move/from16 v25, v0

    #@a5
    .line 588
    .local v25, "x":I
    move-object/from16 v0, p0

    #@a7
    iget v2, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    #@a9
    sub-int v3, v2, v25

    #@ab
    .line 589
    .local v3, "deltaX":I
    move-object/from16 v0, p0

    #@ad
    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@af
    if-nez v2, :cond_7

    #@b1
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    #@b4
    move-result v2

    #@b5
    move-object/from16 v0, p0

    #@b7
    iget v4, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    #@b9
    if-le v2, v4, :cond_7

    #@bb
    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    #@be
    move-result-object v22

    #@bf
    .line 591
    .restart local v22    # "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_6

    #@c1
    .line 592
    const/4 v2, 0x1

    #@c2
    move-object/from16 v0, v22

    #@c4
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@c7
    .line 594
    :cond_6
    const/4 v2, 0x1

    #@c8
    move-object/from16 v0, p0

    #@ca
    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@cc
    .line 595
    if-lez v3, :cond_b

    #@ce
    .line 596
    move-object/from16 v0, p0

    #@d0
    iget v2, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    #@d2
    sub-int/2addr v3, v2

    #@d3
    .line 601
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    #@d5
    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@d7
    if-eqz v2, :cond_0

    #@d9
    .line 603
    move/from16 v0, v25

    #@db
    move-object/from16 v1, p0

    #@dd
    iput v0, v1, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    #@df
    .line 605
    move-object/from16 v0, p0

    #@e1
    iget v0, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@e3
    move/from16 v19, v0

    #@e5
    .line 606
    .local v19, "oldX":I
    move-object/from16 v0, p0

    #@e7
    iget v0, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@e9
    move/from16 v20, v0

    #@eb
    .line 607
    .local v20, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    #@ee
    move-result v7

    #@ef
    .line 608
    .local v7, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    #@f2
    move-result v21

    #@f3
    .line 609
    .local v21, "overscrollMode":I
    if-eqz v21, :cond_c

    #@f5
    .line 610
    const/4 v2, 0x1

    #@f6
    move/from16 v0, v21

    #@f8
    if-ne v0, v2, :cond_d

    #@fa
    if-lez v7, :cond_d

    #@fc
    const/16 v17, 0x1

    #@fe
    .line 614
    .local v17, "canOverscroll":Z
    :goto_3
    move-object/from16 v0, p0

    #@100
    iget v5, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@102
    .line 615
    move-object/from16 v0, p0

    #@104
    iget v9, v0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    #@106
    .line 614
    const/4 v4, 0x0

    #@107
    const/4 v6, 0x0

    #@108
    const/4 v8, 0x0

    #@109
    .line 615
    const/4 v10, 0x0

    #@10a
    const/4 v11, 0x1

    #@10b
    move-object/from16 v2, p0

    #@10d
    .line 614
    invoke-virtual/range {v2 .. v11}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    #@110
    move-result v2

    #@111
    if-eqz v2, :cond_8

    #@113
    .line 617
    move-object/from16 v0, p0

    #@115
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@117
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    #@11a
    .line 620
    :cond_8
    if-eqz v17, :cond_0

    #@11c
    .line 621
    add-int v23, v19, v3

    #@11e
    .line 622
    .local v23, "pulledToX":I
    if-gez v23, :cond_e

    #@120
    .line 623
    move-object/from16 v0, p0

    #@122
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@124
    int-to-float v4, v3

    #@125
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@128
    move-result v5

    #@129
    int-to-float v5, v5

    #@12a
    div-float/2addr v4, v5

    #@12b
    .line 624
    move-object/from16 v0, p1

    #@12d
    move/from16 v1, v16

    #@12f
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@132
    move-result v5

    #@133
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    #@136
    move-result v6

    #@137
    int-to-float v6, v6

    #@138
    div-float/2addr v5, v6

    #@139
    const/high16 v6, 0x3f800000    # 1.0f

    #@13b
    sub-float v5, v6, v5

    #@13d
    .line 623
    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    #@140
    .line 625
    move-object/from16 v0, p0

    #@142
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    #@144
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@147
    move-result v2

    #@148
    if-nez v2, :cond_9

    #@14a
    .line 626
    move-object/from16 v0, p0

    #@14c
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    #@14e
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    #@151
    .line 635
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    #@153
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@155
    if-eqz v2, :cond_0

    #@157
    .line 636
    move-object/from16 v0, p0

    #@159
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@15b
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@15e
    move-result v2

    #@15f
    if-eqz v2, :cond_a

    #@161
    move-object/from16 v0, p0

    #@163
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    #@165
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@168
    move-result v2

    #@169
    if-nez v2, :cond_0

    #@16b
    .line 637
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    #@16e
    goto/16 :goto_0

    #@170
    .line 598
    .end local v7    # "range":I
    .end local v17    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToX":I
    .restart local v22    # "parent":Landroid/view/ViewParent;
    :cond_b
    move-object/from16 v0, p0

    #@172
    iget v2, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    #@174
    add-int/2addr v3, v2

    #@175
    goto/16 :goto_2

    #@177
    .line 609
    .end local v22    # "parent":Landroid/view/ViewParent;
    .restart local v7    # "range":I
    .restart local v19    # "oldX":I
    .restart local v20    # "oldY":I
    .restart local v21    # "overscrollMode":I
    :cond_c
    const/16 v17, 0x1

    #@179
    .restart local v17    # "canOverscroll":Z
    goto :goto_3

    #@17a
    .line 610
    .end local v17    # "canOverscroll":Z
    :cond_d
    const/16 v17, 0x0

    #@17c
    .restart local v17    # "canOverscroll":Z
    goto :goto_3

    #@17d
    .line 628
    .restart local v23    # "pulledToX":I
    :cond_e
    move/from16 v0, v23

    #@17f
    if-le v0, v7, :cond_9

    #@181
    .line 629
    move-object/from16 v0, p0

    #@183
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    #@185
    int-to-float v4, v3

    #@186
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@189
    move-result v5

    #@18a
    int-to-float v5, v5

    #@18b
    div-float/2addr v4, v5

    #@18c
    .line 630
    move-object/from16 v0, p1

    #@18e
    move/from16 v1, v16

    #@190
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@193
    move-result v5

    #@194
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    #@197
    move-result v6

    #@198
    int-to-float v6, v6

    #@199
    div-float/2addr v5, v6

    #@19a
    .line 629
    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    #@19d
    .line 631
    move-object/from16 v0, p0

    #@19f
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@1a1
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@1a4
    move-result v2

    #@1a5
    if-nez v2, :cond_9

    #@1a7
    .line 632
    move-object/from16 v0, p0

    #@1a9
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@1ab
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    #@1ae
    goto :goto_4

    #@1af
    .line 643
    .end local v3    # "deltaX":I
    .end local v7    # "range":I
    .end local v16    # "activePointerIndex":I
    .end local v17    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToX":I
    .end local v25    # "x":I
    :pswitch_3
    move-object/from16 v0, p0

    #@1b1
    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@1b3
    if-eqz v2, :cond_0

    #@1b5
    .line 644
    move-object/from16 v0, p0

    #@1b7
    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b9
    move-object/from16 v24, v0

    #@1bb
    .line 645
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    #@1bd
    iget v2, v0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    #@1bf
    int-to-float v2, v2

    #@1c0
    const/16 v4, 0x3e8

    #@1c2
    move-object/from16 v0, v24

    #@1c4
    invoke-virtual {v0, v4, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@1c7
    .line 646
    move-object/from16 v0, p0

    #@1c9
    iget v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@1cb
    move-object/from16 v0, v24

    #@1cd
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@1d0
    move-result v2

    #@1d1
    float-to-int v0, v2

    #@1d2
    move/from16 v18, v0

    #@1d4
    .line 648
    .local v18, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@1d7
    move-result v2

    #@1d8
    if-lez v2, :cond_f

    #@1da
    .line 649
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    #@1dd
    move-result v2

    #@1de
    move-object/from16 v0, p0

    #@1e0
    iget v4, v0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    #@1e2
    if-le v2, v4, :cond_10

    #@1e4
    .line 650
    move/from16 v0, v18

    #@1e6
    neg-int v2, v0

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->fling(I)V

    #@1ec
    .line 659
    :cond_f
    :goto_5
    const/4 v2, -0x1

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@1f1
    .line 660
    const/4 v2, 0x0

    #@1f2
    move-object/from16 v0, p0

    #@1f4
    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@1f6
    .line 661
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    #@1f9
    .line 663
    move-object/from16 v0, p0

    #@1fb
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@1fd
    if-eqz v2, :cond_0

    #@1ff
    .line 664
    move-object/from16 v0, p0

    #@201
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@203
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    #@206
    .line 665
    move-object/from16 v0, p0

    #@208
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    #@20a
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    #@20d
    goto/16 :goto_0

    #@20f
    .line 652
    :cond_10
    move-object/from16 v0, p0

    #@211
    iget-object v8, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@213
    move-object/from16 v0, p0

    #@215
    iget v9, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@217
    move-object/from16 v0, p0

    #@219
    iget v10, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@21b
    .line 653
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    #@21e
    move-result v12

    #@21f
    .line 652
    const/4 v11, 0x0

    #@220
    .line 653
    const/4 v13, 0x0

    #@221
    const/4 v14, 0x0

    #@222
    .line 652
    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@225
    move-result v2

    #@226
    if-eqz v2, :cond_f

    #@228
    .line 654
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    #@22b
    goto :goto_5

    #@22c
    .line 670
    .end local v18    # "initialVelocity":I
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    #@22e
    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@230
    if-eqz v2, :cond_0

    #@232
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@235
    move-result v2

    #@236
    if-lez v2, :cond_0

    #@238
    .line 671
    move-object/from16 v0, p0

    #@23a
    iget-object v8, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@23c
    move-object/from16 v0, p0

    #@23e
    iget v9, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@240
    move-object/from16 v0, p0

    #@242
    iget v10, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@244
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    #@247
    move-result v12

    #@248
    const/4 v11, 0x0

    #@249
    const/4 v13, 0x0

    #@24a
    const/4 v14, 0x0

    #@24b
    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@24e
    move-result v2

    #@24f
    if-eqz v2, :cond_11

    #@251
    .line 672
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    #@254
    .line 674
    :cond_11
    const/4 v2, -0x1

    #@255
    move-object/from16 v0, p0

    #@257
    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    #@259
    .line 675
    const/4 v2, 0x0

    #@25a
    move-object/from16 v0, p0

    #@25c
    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    #@25e
    .line 676
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    #@261
    .line 678
    move-object/from16 v0, p0

    #@263
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@265
    if-eqz v2, :cond_0

    #@267
    .line 679
    move-object/from16 v0, p0

    #@269
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@26b
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    #@26e
    .line 680
    move-object/from16 v0, p0

    #@270
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    #@272
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    #@275
    goto/16 :goto_0

    #@277
    .line 685
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@27a
    goto/16 :goto_0

    #@27c
    .line 555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 979
    const/16 v4, 0x42

    #@3
    if-ne p1, v4, :cond_1

    #@5
    const/4 v1, 0x1

    #@6
    .line 980
    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@9
    move-result v3

    #@a
    .line 982
    .local v3, "width":I
    if-eqz v1, :cond_2

    #@c
    .line 983
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@e
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    #@11
    move-result v5

    #@12
    add-int/2addr v5, v3

    #@13
    iput v5, v4, Landroid/graphics/Rect;->left:I

    #@15
    .line 984
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@18
    move-result v0

    #@19
    .line 985
    .local v0, "count":I
    if-lez v0, :cond_0

    #@1b
    .line 986
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v2

    #@1f
    .line 987
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@21
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@23
    add-int/2addr v4, v3

    #@24
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    #@27
    move-result v5

    #@28
    if-le v4, v5, :cond_0

    #@2a
    .line 988
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2c
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    #@2f
    move-result v5

    #@30
    sub-int/2addr v5, v3

    #@31
    iput v5, v4, Landroid/graphics/Rect;->left:I

    #@33
    .line 997
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@35
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@37
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@39
    add-int/2addr v5, v3

    #@3a
    iput v5, v4, Landroid/graphics/Rect;->right:I

    #@3c
    .line 999
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@3e
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@40
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@42
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@44
    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    #@47
    move-result v4

    #@48
    return v4

    #@49
    .line 979
    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    const/4 v1, 0x0

    #@4a
    .restart local v1    # "right":Z
    goto :goto_0

    #@4b
    .line 992
    .restart local v3    # "width":I
    :cond_2
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@4d
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    #@50
    move-result v5

    #@51
    sub-int/2addr v5, v3

    #@52
    iput v5, v4, Landroid/graphics/Rect;->left:I

    #@54
    .line 993
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@56
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@58
    if-gez v4, :cond_0

    #@5a
    .line 994
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    #@5c
    iput v6, v4, Landroid/graphics/Rect;->left:I

    #@5e
    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 771
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 772
    return v5

    #@9
    .line 774
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@c
    .line 800
    return v4

    #@d
    .line 777
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_1

    #@13
    .line 778
    return v4

    #@14
    .line 780
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@17
    move-result v2

    #@18
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    #@1a
    sub-int/2addr v2, v3

    #@1b
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    #@1d
    sub-int v1, v2, v3

    #@1f
    .line 781
    .local v1, "viewportWidth":I
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@21
    add-int/2addr v2, v1

    #@22
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    #@25
    move-result v3

    #@26
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@29
    move-result v0

    #@2a
    .line 782
    .local v0, "targetScrollX":I
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@2c
    if-eq v0, v2, :cond_2

    #@2e
    .line 783
    invoke-virtual {p0, v0, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    #@31
    .line 784
    return v5

    #@32
    .line 786
    :cond_2
    return v4

    #@33
    .line 789
    .end local v0    # "targetScrollX":I
    .end local v1    # "viewportWidth":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_3

    #@39
    .line 790
    return v4

    #@3a
    .line 792
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@3d
    move-result v2

    #@3e
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    #@40
    sub-int/2addr v2, v3

    #@41
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    #@43
    sub-int v1, v2, v3

    #@45
    .line 793
    .restart local v1    # "viewportWidth":I
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@47
    sub-int/2addr v2, v1

    #@48
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    #@4b
    move-result v0

    #@4c
    .line 794
    .restart local v0    # "targetScrollX":I
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@4e
    if-eq v0, v2, :cond_4

    #@50
    .line 795
    invoke-virtual {p0, v0, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    #@53
    .line 796
    return v5

    #@54
    .line 798
    :cond_4
    return v4

    #@55
    .line 774
    nop

    #@56
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020039 -> :sswitch_1
        0x102003b -> :sswitch_0
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    #@0
    .prologue
    .line 1418
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1419
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    #@7
    .line 1424
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@a
    .line 1417
    return-void

    #@b
    .line 1422
    :cond_0
    iput-object p2, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

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
    .line 1467
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
    .line 1468
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
    .line 1467
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@15
    .line 1470
    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

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
    .line 433
    if-eqz p1, :cond_0

    #@2
    .line 434
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    #@5
    .line 436
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    #@8
    .line 432
    return-void
.end method

.method public requestLayout()V
    .locals 1

    #@0
    .prologue
    .line 1475
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    #@3
    .line 1476
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    #@6
    .line 1474
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
    .line 1600
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_1

    #@7
    .line 1601
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 1602
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@e
    move-result v1

    #@f
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    #@11
    sub-int/2addr v1, v2

    #@12
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    #@14
    sub-int/2addr v1, v2

    #@15
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@18
    move-result v2

    #@19
    invoke-static {p1, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    #@1c
    move-result p1

    #@1d
    .line 1603
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    #@20
    move-result v1

    #@21
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    #@23
    sub-int/2addr v1, v2

    #@24
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    #@26
    sub-int/2addr v1, v2

    #@27
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@2a
    move-result v2

    #@2b
    invoke-static {p2, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    #@2e
    move-result p2

    #@2f
    .line 1604
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@31
    if-ne p1, v1, :cond_0

    #@33
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@35
    if-eq p2, v1, :cond_1

    #@37
    .line 1605
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    #@3a
    .line 1598
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    #@0
    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 293
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    #@6
    .line 294
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    #@9
    .line 291
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1612
    const/4 v1, 0x2

    #@2
    if-eq p1, v1, :cond_1

    #@4
    .line 1613
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1614
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    .line 1615
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    #@e
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    #@11
    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@13
    .line 1616
    new-instance v1, Landroid/widget/EdgeEffect;

    #@15
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    #@18
    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    #@1a
    .line 1622
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    #@1d
    .line 1611
    return-void

    #@1e
    .line 1619
    :cond_1
    iput-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    #@20
    .line 1620
    iput-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    #@22
    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    #@0
    .prologue
    .line 310
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    #@2
    .line 309
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 744
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
    .line 1171
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    .line 1173
    return-void

    #@8
    .line 1175
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@b
    move-result-wide v6

    #@c
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    #@e
    sub-long v0, v6, v8

    #@10
    .line 1176
    .local v0, "duration":J
    const-wide/16 v6, 0xfa

    #@12
    cmp-long v6, v0, v6

    #@14
    if-lez v6, :cond_1

    #@16
    .line 1177
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    #@19
    move-result v6

    #@1a
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    #@1c
    sub-int/2addr v6, v7

    #@1d
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    #@1f
    sub-int v5, v6, v7

    #@21
    .line 1178
    .local v5, "width":I
    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    #@28
    move-result v3

    #@29
    .line 1179
    .local v3, "right":I
    sub-int v6, v3, v5

    #@2b
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    #@2e
    move-result v2

    #@2f
    .line 1180
    .local v2, "maxX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@31
    .line 1181
    .local v4, "scrollX":I
    add-int v6, v4, p1

    #@33
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    #@36
    move-result v6

    #@37
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    #@3a
    move-result v6

    #@3b
    sub-int p1, v6, v4

    #@3d
    .line 1183
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@3f
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@41
    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/OverScroller;->startScroll(IIII)V

    #@44
    .line 1184
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    #@47
    .line 1191
    .end local v2    # "maxX":I
    .end local v3    # "right":I
    .end local v4    # "scrollX":I
    .end local v5    # "width":I
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@4a
    move-result-wide v6

    #@4b
    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    #@4d
    .line 1170
    return-void

    #@4e
    .line 1186
    :cond_1
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@50
    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    #@53
    move-result v6

    #@54
    if-nez v6, :cond_2

    #@56
    .line 1187
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    #@58
    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    #@5b
    .line 1189
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    #@5e
    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 1201
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    #@2
    sub-int v0, p1, v0

    #@4
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    #@6
    sub-int v1, p2, v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    #@b
    .line 1200
    return-void
.end method
