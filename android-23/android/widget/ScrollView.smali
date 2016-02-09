.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScrollView"


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

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
    .line 168
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 172
    const v0, 0x1010080

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 176
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7
    .line 83
    new-instance v1, Landroid/graphics/Rect;

    #@9
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@c
    iput-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@e
    .line 97
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    #@10
    .line 104
    iput-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    #@12
    .line 111
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@14
    .line 128
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    #@16
    .line 141
    const/4 v1, -0x1

    #@17
    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@19
    .line 146
    new-array v1, v5, [I

    #@1b
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    #@1d
    .line 147
    new-array v1, v5, [I

    #@1f
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    #@21
    .line 156
    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@23
    .line 157
    iput-object v3, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@25
    .line 181
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    #@28
    .line 184
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    #@2a
    .line 183
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2d
    move-result-object v0

    #@2e
    .line 186
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@31
    move-result v1

    #@32
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    #@35
    .line 188
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@38
    .line 179
    return-void
.end method

.method private canScroll()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 288
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    .line 289
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    #@7
    .line 290
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@a
    move-result v1

    #@b
    .line 291
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@e
    move-result v3

    #@f
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@11
    add-int/2addr v4, v1

    #@12
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

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
    .line 293
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
    .line 1770
    if-ge p1, p2, :cond_0

    #@3
    if-gez p0, :cond_1

    #@5
    .line 1786
    :cond_0
    return v0

    #@6
    .line 1788
    :cond_1
    add-int v0, p1, p0

    #@8
    if-le v0, p2, :cond_2

    #@a
    .line 1794
    sub-int v0, p2, p1

    #@c
    return v0

    #@d
    .line 1796
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
    .line 1173
    if-eqz p1, :cond_0

    #@3
    .line 1174
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 1175
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    #@a
    .line 1172
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1177
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    #@e
    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1621
    const/4 v0, 0x0

    #@2
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@4
    .line 1623
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    #@7
    .line 1625
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1626
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@d
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    #@10
    .line 1627
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@12
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    #@15
    .line 1630
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1631
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@1b
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    #@1e
    .line 1632
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@20
    .line 1620
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    #@0
    .prologue
    .line 919
    const/4 v10, 0x2

    #@1
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    #@4
    move-result-object v2

    #@5
    .line 920
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    #@6
    .line 929
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    #@7
    .line 931
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    .line 932
    .local v0, "count":I
    const/4 v4, 0x0

    #@c
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    #@e
    .line 933
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Landroid/view/View;

    #@14
    .line 934
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@17
    move-result v9

    #@18
    .line 935
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@1b
    move-result v6

    #@1c
    .line 937
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    #@1e
    if-ge v9, p3, :cond_0

    #@20
    .line 943
    if-ge p2, v9, :cond_2

    #@22
    .line 944
    if-ge v6, p3, :cond_1

    #@24
    const/4 v8, 0x1

    #@25
    .line 946
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_3

    #@27
    .line 948
    move-object v1, v5

    #@28
    .line 949
    .local v1, "focusCandidate":Landroid/view/View;
    move v3, v8

    #@29
    .line 932
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 944
    :cond_1
    const/4 v8, 0x0

    #@2d
    .restart local v8    # "viewIsFullyContained":Z
    goto :goto_1

    #@2e
    .line 943
    .end local v8    # "viewIsFullyContained":Z
    :cond_2
    const/4 v8, 0x0

    #@2f
    .restart local v8    # "viewIsFullyContained":Z
    goto :goto_1

    #@30
    .line 952
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
    .line 956
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    #@3b
    .line 957
    if-eqz v8, :cond_0

    #@3d
    if-eqz v7, :cond_0

    #@3f
    .line 963
    move-object v1, v5

    #@40
    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    #@41
    .line 953
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
    .line 966
    :cond_6
    if-eqz v8, :cond_7

    #@4f
    .line 968
    move-object v1, v5

    #@50
    .line 969
    .restart local v1    # "focusCandidate":Landroid/view/View;
    const/4 v3, 0x1

    #@51
    .restart local v3    # "foundFullyContainedFocusable":Z
    goto :goto_2

    #@52
    .line 970
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    :cond_7
    if-eqz v7, :cond_0

    #@54
    .line 975
    move-object v1, v5

    #@55
    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    #@56
    .line 982
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
    .line 1610
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@3
    if-gtz v1, :cond_0

    #@5
    if-lez p1, :cond_4

    #@7
    .line 1611
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@9
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

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
    .line 1612
    .local v0, "canFling":Z
    :goto_0
    int-to-float v1, p1

    #@13
    invoke-virtual {p0, v3, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_2

    #@19
    .line 1613
    int-to-float v1, p1

    #@1a
    invoke-virtual {p0, v3, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    #@1d
    .line 1614
    if-eqz v0, :cond_2

    #@1f
    .line 1615
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    #@22
    .line 1609
    :cond_2
    return-void

    #@23
    .line 1611
    .end local v0    # "canFling":Z
    :cond_3
    const/4 v0, 0x0

    #@24
    .restart local v0    # "canFling":Z
    goto :goto_0

    #@25
    .line 1610
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
    .line 893
    const/4 v1, 0x0

    #@2
    .line 894
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@5
    move-result v2

    #@6
    if-lez v2, :cond_0

    #@8
    .line 895
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 897
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@f
    move-result v2

    #@10
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@13
    move-result v3

    #@14
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@16
    sub-int/2addr v3, v4

    #@17
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@19
    sub-int/2addr v3, v4

    #@1a
    sub-int/2addr v2, v3

    #@1b
    .line 896
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    #@1e
    move-result v1

    #@1f
    .line 899
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
    .line 433
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@4
    move-result v3

    #@5
    if-lez v3, :cond_1

    #@7
    .line 434
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@9
    .line 435
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    .line 436
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@10
    move-result v3

    #@11
    sub-int/2addr v3, v1

    #@12
    if-lt p2, v3, :cond_0

    #@14
    .line 437
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@17
    move-result v3

    #@18
    sub-int/2addr v3, v1

    #@19
    if-ge p2, v3, :cond_0

    #@1b
    .line 438
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@1e
    move-result v3

    #@1f
    if-lt p1, v3, :cond_0

    #@21
    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@24
    move-result v3

    #@25
    if-ge p1, v3, :cond_0

    #@27
    const/4 v2, 0x1

    #@28
    .line 436
    :cond_0
    return v2

    #@29
    .line 441
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_1
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    #@0
    .prologue
    .line 445
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 446
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    .line 444
    :goto_0
    return-void

    #@b
    .line 448
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@d
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@10
    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    #@0
    .prologue
    .line 236
    new-instance v1, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@b
    .line 237
    const/4 v1, 0x1

    #@c
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    #@f
    .line 238
    const/high16 v1, 0x40000

    #@11
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    #@14
    .line 239
    const/4 v1, 0x0

    #@15
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    #@18
    .line 240
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    #@1a
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1d
    move-result-object v0

    #@1e
    .line 241
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@21
    move-result v1

    #@22
    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    #@24
    .line 242
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@27
    move-result v1

    #@28
    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    #@2a
    .line 243
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@2d
    move-result v1

    #@2e
    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    #@30
    .line 244
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    #@33
    move-result v1

    #@34
    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    #@36
    .line 245
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    #@39
    move-result v1

    #@3a
    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    #@3c
    .line 235
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 454
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    .line 452
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
    .line 1152
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@4
    move-result v1

    #@5
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

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
    .line 1578
    if-ne p0, p1, :cond_0

    #@2
    .line 1579
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 1582
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    .line 1583
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@a
    if-eqz v1, :cond_1

    #@c
    check-cast v0, Landroid/view/View;

    #@e
    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

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
    .line 1160
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@6
    .line 1161
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b
    .line 1163
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@d
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@f
    add-int/2addr v1, p2

    #@10
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    #@13
    move-result v2

    #@14
    if-lt v1, v2, :cond_0

    #@16
    .line 1164
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@18
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@1a
    sub-int/2addr v1, p2

    #@1b
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    #@1e
    move-result v2

    #@1f
    add-int/2addr v2, p3

    #@20
    if-gt v1, v2, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    .line 1163
    :cond_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 756
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
    .line 758
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@d
    move-result v1

    #@e
    .line 759
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@10
    if-ne v1, v3, :cond_0

    #@12
    .line 763
    if-nez v2, :cond_1

    #@14
    const/4 v0, 0x1

    #@15
    .line 764
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@18
    move-result v3

    #@19
    float-to-int v3, v3

    #@1a
    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    #@1c
    .line 765
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@1f
    move-result v3

    #@20
    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@22
    .line 766
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 767
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@28
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    #@2b
    .line 755
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    #@2c
    .line 763
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
    .line 459
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 460
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@7
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@a
    .line 461
    iput-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@c
    .line 458
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
    .line 1065
    const/4 v3, 0x1

    #@1
    .line 1067
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@4
    move-result v4

    #@5
    .line 1068
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    #@8
    move-result v1

    #@9
    .line 1069
    .local v1, "containerTop":I
    add-int v0, v1, v4

    #@b
    .line 1070
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    #@d
    if-ne p1, v7, :cond_2

    #@f
    const/4 v6, 0x1

    #@10
    .line 1072
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    #@13
    move-result-object v5

    #@14
    .line 1073
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    #@16
    .line 1074
    move-object v5, p0

    #@17
    .line 1077
    :cond_0
    if-lt p2, v1, :cond_3

    #@19
    if-gt p3, v0, :cond_3

    #@1b
    .line 1078
    const/4 v3, 0x0

    #@1c
    .line 1084
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    #@1f
    move-result-object v7

    #@20
    if-eq v5, v7, :cond_1

    #@22
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    #@25
    .line 1086
    :cond_1
    return v3

    #@26
    .line 1070
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    const/4 v6, 0x0

    #@27
    .restart local v6    # "up":Z
    goto :goto_0

    #@28
    .line 1080
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_3
    if-eqz v6, :cond_4

    #@2a
    sub-int v2, p2, v1

    #@2c
    .line 1081
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    #@2f
    goto :goto_1

    #@30
    .line 1080
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
    .line 1347
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@6
    .line 1350
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b
    .line 1352
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@d
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@10
    move-result v0

    #@11
    .line 1354
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    #@13
    .line 1355
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    #@16
    .line 1346
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
    .line 1368
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@4
    move-result v0

    #@5
    .line 1369
    .local v0, "delta":I
    if-eqz v0, :cond_1

    #@7
    const/4 v1, 0x1

    #@8
    .line 1370
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    #@a
    .line 1371
    if-eqz p2, :cond_2

    #@c
    .line 1372
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    #@f
    .line 1377
    :cond_0
    :goto_1
    return v1

    #@10
    .line 1369
    .end local v1    # "scroll":Z
    :cond_1
    const/4 v1, 0x0

    #@11
    .restart local v1    # "scroll":Z
    goto :goto_0

    #@12
    .line 1374
    :cond_2
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    #@15
    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "ScrollView can host only one direct child"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 254
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@12
    .line 249
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "ScrollView can host only one direct child"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 263
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    #@12
    .line 258
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "ScrollView can host only one direct child"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 281
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 276
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "ScrollView can host only one direct child"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 272
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 267
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
    .line 1098
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1099
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    .line 1101
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
    .line 1103
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    #@15
    move-result v3

    #@16
    .line 1105
    .local v3, "maxJump":I
    if-eqz v4, :cond_2

    #@18
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@1b
    move-result v7

    #@1c
    invoke-direct {p0, v4, v3, v7}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    #@1f
    move-result v7

    #@20
    if-eqz v7, :cond_2

    #@22
    .line 1106
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@27
    .line 1107
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@29
    invoke-virtual {p0, v4, v7}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@2c
    .line 1108
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2e
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@31
    move-result v6

    #@32
    .line 1109
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    #@35
    .line 1110
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    #@38
    .line 1132
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
    .line 1133
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    #@43
    move-result v7

    #@44
    .line 1132
    if-eqz v7, :cond_1

    #@46
    .line 1139
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    #@49
    move-result v2

    #@4a
    .line 1140
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    #@4c
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    #@4f
    .line 1141
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    #@52
    .line 1142
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    #@55
    .line 1144
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    #@56
    return v7

    #@57
    .line 1113
    :cond_2
    move v6, v3

    #@58
    .line 1115
    .restart local v6    # "scrollDelta":I
    const/16 v7, 0x21

    #@5a
    if-ne p1, v7, :cond_4

    #@5c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    #@5f
    move-result v7

    #@60
    if-ge v7, v6, :cond_4

    #@62
    .line 1116
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    #@65
    move-result v6

    #@66
    .line 1126
    :cond_3
    :goto_1
    if-nez v6, :cond_5

    #@68
    .line 1127
    return v9

    #@69
    .line 1117
    :cond_4
    if-ne p1, v10, :cond_3

    #@6b
    .line 1118
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@6e
    move-result v7

    #@6f
    if-lez v7, :cond_3

    #@71
    .line 1119
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@78
    move-result v1

    #@79
    .line 1120
    .local v1, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    #@7c
    move-result v7

    #@7d
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@80
    move-result v8

    #@81
    add-int/2addr v7, v8

    #@82
    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@84
    sub-int v5, v7, v8

    #@86
    .line 1121
    .local v5, "screenBottom":I
    sub-int v7, v1, v5

    #@88
    if-ge v7, v3, :cond_3

    #@8a
    .line 1122
    sub-int v6, v1, v5

    #@8c
    goto :goto_1

    #@8d
    .line 1129
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_5
    if-ne p1, v10, :cond_6

    #@8f
    .end local v6    # "scrollDelta":I
    :goto_2
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    #@92
    goto :goto_0

    #@93
    .restart local v6    # "scrollDelta":I
    :cond_6
    neg-int v6, v6

    #@94
    goto :goto_2
.end method

.method public computeScroll()V
    .locals 14

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 1288
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@4
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_6

    #@a
    .line 1305
    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@c
    .line 1306
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@e
    .line 1307
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@10
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    #@13
    move-result v12

    #@14
    .line 1308
    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@16
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    #@19
    move-result v13

    #@1a
    .line 1310
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    #@1c
    if-eq v4, v13, :cond_1

    #@1e
    .line 1311
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    #@21
    move-result v6

    #@22
    .line 1312
    .local v6, "range":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    #@25
    move-result v11

    #@26
    .line 1313
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_3

    #@28
    .line 1314
    const/4 v0, 0x1

    #@29
    if-ne v11, v0, :cond_4

    #@2b
    if-lez v6, :cond_4

    #@2d
    const/4 v10, 0x1

    #@2e
    .line 1316
    .local v10, "canOverscroll":Z
    :goto_0
    sub-int v1, v12, v3

    #@30
    sub-int v2, v13, v4

    #@32
    .line 1317
    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    #@34
    move-object v0, p0

    #@35
    move v7, v5

    #@36
    move v9, v5

    #@37
    .line 1316
    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    #@3a
    .line 1318
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@3c
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@3e
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    #@41
    .line 1320
    if-eqz v10, :cond_1

    #@43
    .line 1321
    if-gez v13, :cond_5

    #@45
    if-ltz v4, :cond_5

    #@47
    .line 1322
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@49
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@4b
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    #@4e
    move-result v1

    #@4f
    float-to-int v1, v1

    #@50
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@53
    .line 1329
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    #@56
    move-result v0

    #@57
    if-nez v0, :cond_2

    #@59
    .line 1331
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    #@5c
    .line 1287
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_2
    :goto_2
    return-void

    #@5d
    .line 1313
    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_3
    const/4 v10, 0x1

    #@5e
    .restart local v10    # "canOverscroll":Z
    goto :goto_0

    #@5f
    .line 1314
    .end local v10    # "canOverscroll":Z
    :cond_4
    const/4 v10, 0x0

    #@60
    .restart local v10    # "canOverscroll":Z
    goto :goto_0

    #@61
    .line 1323
    :cond_5
    if-le v13, v6, :cond_1

    #@63
    if-gt v4, v6, :cond_1

    #@65
    .line 1324
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@67
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@69
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    #@6c
    move-result v1

    #@6d
    float-to-int v1, v1

    #@6e
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@71
    goto :goto_1

    #@72
    .line 1334
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_6
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@74
    if-eqz v0, :cond_2

    #@76
    .line 1335
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@78
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    #@7b
    .line 1336
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@7d
    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1389
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@4
    move-result v7

    #@5
    if-nez v7, :cond_0

    #@7
    return v9

    #@8
    .line 1391
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@b
    move-result v3

    #@c
    .line 1392
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    #@f
    move-result v5

    #@10
    .line 1393
    .local v5, "screenTop":I
    add-int v4, v5, v3

    #@12
    .line 1395
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    #@15
    move-result v2

    #@16
    .line 1398
    .local v2, "fadingEdge":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    #@18
    if-lez v7, :cond_1

    #@1a
    .line 1399
    add-int/2addr v5, v2

    #@1b
    .line 1403
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@1d
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v8

    #@21
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    #@24
    move-result v8

    #@25
    if-ge v7, v8, :cond_2

    #@27
    .line 1404
    sub-int/2addr v4, v2

    #@28
    .line 1407
    :cond_2
    const/4 v6, 0x0

    #@29
    .line 1409
    .local v6, "scrollYDelta":I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@2b
    if-le v7, v4, :cond_5

    #@2d
    iget v7, p1, Landroid/graphics/Rect;->top:I

    #@2f
    if-le v7, v5, :cond_5

    #@31
    .line 1414
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@34
    move-result v7

    #@35
    if-le v7, v3, :cond_4

    #@37
    .line 1416
    iget v7, p1, Landroid/graphics/Rect;->top:I

    #@39
    sub-int/2addr v7, v5

    #@3a
    add-int/lit8 v6, v7, 0x0

    #@3c
    .line 1423
    :goto_0
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@43
    move-result v0

    #@44
    .line 1424
    .local v0, "bottom":I
    sub-int v1, v0, v4

    #@46
    .line 1425
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    #@49
    move-result v6

    #@4a
    .line 1443
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_3
    :goto_1
    return v6

    #@4b
    .line 1419
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@4d
    sub-int/2addr v7, v4

    #@4e
    add-int/lit8 v6, v7, 0x0

    #@50
    goto :goto_0

    #@51
    .line 1427
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    #@53
    if-ge v7, v5, :cond_3

    #@55
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@57
    if-ge v7, v4, :cond_3

    #@59
    .line 1432
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@5c
    move-result v7

    #@5d
    if-le v7, v3, :cond_6

    #@5f
    .line 1434
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@61
    sub-int v7, v4, v7

    #@63
    rsub-int/lit8 v6, v7, 0x0

    #@65
    .line 1441
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

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
    .line 1437
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
    .line 1252
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
    .line 1232
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 1233
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@8
    move-result v5

    #@9
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@b
    sub-int/2addr v5, v6

    #@c
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@e
    sub-int v0, v5, v6

    #@10
    .line 1234
    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    #@12
    .line 1235
    return v0

    #@13
    .line 1238
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@1a
    move-result v3

    #@1b
    .line 1239
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@1d
    .line 1240
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    #@1f
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v2

    #@23
    .line 1241
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2

    #@25
    .line 1242
    sub-int/2addr v3, v4

    #@26
    .line 1247
    :cond_1
    :goto_0
    return v3

    #@27
    .line 1243
    :cond_2
    if-le v4, v2, :cond_1

    #@29
    .line 1244
    sub-int v5, v4, v2

    #@2b
    add-int/2addr v3, v5

    #@2c
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1712
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 1713
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@5
    if-eqz v7, :cond_3

    #@7
    .line 1714
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@9
    .line 1715
    .local v3, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    #@c
    move-result v0

    #@d
    .line 1716
    .local v0, "clipToPadding":Z
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@f
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@12
    move-result v7

    #@13
    if-nez v7, :cond_1

    #@15
    .line 1717
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@18
    move-result v2

    #@19
    .line 1722
    .local v2, "restoreCount":I
    if-eqz v0, :cond_4

    #@1b
    .line 1723
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    #@1e
    move-result v7

    #@1f
    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    #@21
    sub-int/2addr v7, v8

    #@22
    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    #@24
    sub-int v6, v7, v8

    #@26
    .line 1724
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@29
    move-result v7

    #@2a
    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@2c
    sub-int/2addr v7, v8

    #@2d
    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@2f
    sub-int v1, v7, v8

    #@31
    .line 1725
    .local v1, "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    #@33
    int-to-float v4, v7

    #@34
    .line 1726
    .local v4, "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@36
    int-to-float v5, v7

    #@37
    .line 1733
    .local v5, "translateY":F
    :goto_0
    const/4 v7, 0x0

    #@38
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    #@3b
    move-result v7

    #@3c
    int-to-float v7, v7

    #@3d
    add-float/2addr v7, v5

    #@3e
    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    #@41
    .line 1734
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@43
    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@46
    .line 1735
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@48
    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@4b
    move-result v7

    #@4c
    if-eqz v7, :cond_0

    #@4e
    .line 1736
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    #@51
    .line 1738
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@54
    .line 1740
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_1
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@56
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@59
    move-result v7

    #@5a
    if-nez v7, :cond_3

    #@5c
    .line 1741
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@5f
    move-result v2

    #@60
    .line 1746
    .restart local v2    # "restoreCount":I
    if-eqz v0, :cond_5

    #@62
    .line 1747
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    #@65
    move-result v7

    #@66
    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    #@68
    sub-int/2addr v7, v8

    #@69
    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    #@6b
    sub-int v6, v7, v8

    #@6d
    .line 1748
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@70
    move-result v7

    #@71
    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@73
    sub-int/2addr v7, v8

    #@74
    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@76
    sub-int v1, v7, v8

    #@78
    .line 1749
    .restart local v1    # "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    #@7a
    int-to-float v4, v7

    #@7b
    .line 1750
    .restart local v4    # "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@7d
    int-to-float v5, v7

    #@7e
    .line 1757
    .restart local v5    # "translateY":F
    :goto_1
    neg-int v7, v6

    #@7f
    int-to-float v7, v7

    #@80
    add-float/2addr v7, v4

    #@81
    .line 1758
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    #@84
    move-result v8

    #@85
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    #@88
    move-result v8

    #@89
    add-int/2addr v8, v1

    #@8a
    int-to-float v8, v8

    #@8b
    add-float/2addr v8, v5

    #@8c
    .line 1757
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    #@8f
    .line 1759
    const/high16 v7, 0x43340000    # 180.0f

    #@91
    int-to-float v8, v6

    #@92
    const/4 v9, 0x0

    #@93
    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@96
    .line 1760
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@98
    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@9b
    .line 1761
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@9d
    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@a0
    move-result v7

    #@a1
    if-eqz v7, :cond_2

    #@a3
    .line 1762
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    #@a6
    .line 1764
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@a9
    .line 1711
    .end local v0    # "clipToPadding":Z
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "scrollY":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_3
    return-void

    #@aa
    .line 1728
    .restart local v0    # "clipToPadding":Z
    .restart local v2    # "restoreCount":I
    .restart local v3    # "scrollY":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    #@ad
    move-result v6

    #@ae
    .line 1729
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@b1
    move-result v1

    #@b2
    .line 1730
    .restart local v1    # "height":I
    const/4 v4, 0x0

    #@b3
    .line 1731
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    #@b4
    .restart local v5    # "translateY":F
    goto :goto_0

    #@b5
    .line 1752
    .end local v1    # "height":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    #@b8
    move-result v6

    #@b9
    .line 1753
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@bc
    move-result v1

    #@bd
    .line 1754
    .restart local v1    # "height":I
    const/4 v4, 0x0

    #@be
    .line 1755
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    #@bf
    .restart local v5    # "translateY":F
    goto :goto_1
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1829
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 1830
    const-string/jumbo v0, "fillViewport"

    #@6
    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@b
    .line 1828
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
    .line 391
    iget-object v6, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    #@a
    .line 393
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    #@d
    move-result v6

    #@e
    if-nez v6, :cond_3

    #@10
    .line 394
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

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
    .line 395
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    .line 396
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    #@23
    const/4 v0, 0x0

    #@24
    .line 397
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
    .line 399
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    #@2e
    .line 400
    if-eq v2, p0, :cond_1

    #@30
    .line 401
    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    #@33
    move-result v3

    #@34
    .line 399
    :cond_1
    return v3

    #@35
    .line 403
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_2
    return v3

    #@36
    .line 406
    :cond_3
    const/4 v1, 0x0

    #@37
    .line 407
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_4

    #@3d
    .line 408
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@40
    move-result v3

    #@41
    sparse-switch v3, :sswitch_data_0

    #@44
    .line 429
    .end local v1    # "handled":Z
    :cond_4
    :goto_0
    return v1

    #@45
    .line 410
    .restart local v1    # "handled":Z
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_5

    #@4b
    .line 411
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    #@4e
    move-result v1

    #@4f
    .local v1, "handled":Z
    goto :goto_0

    #@50
    .line 413
    .local v1, "handled":Z
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    #@53
    move-result v1

    #@54
    .local v1, "handled":Z
    goto :goto_0

    #@55
    .line 417
    .local v1, "handled":Z
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@58
    move-result v3

    #@59
    if-nez v3, :cond_6

    #@5b
    .line 418
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    #@5e
    move-result v1

    #@5f
    .local v1, "handled":Z
    goto :goto_0

    #@60
    .line 420
    .local v1, "handled":Z
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    #@63
    move-result v1

    #@64
    .local v1, "handled":Z
    goto :goto_0

    #@65
    .line 424
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
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    #@6f
    goto :goto_0

    #@70
    :cond_7
    move v3, v5

    #@71
    goto :goto_1

    #@72
    .line 408
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
    .line 1594
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@4
    move-result v0

    #@5
    if-lez v0, :cond_1

    #@7
    .line 1595
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@a
    move-result v0

    #@b
    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@d
    sub-int/2addr v0, v1

    #@e
    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@10
    sub-int v12, v0, v1

    #@12
    .line 1596
    .local v12, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@19
    move-result v11

    #@1a
    .line 1598
    .local v11, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@1c
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@1e
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@20
    .line 1599
    sub-int v4, v11, v12

    #@22
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v8

    #@26
    div-int/lit8 v10, v12, 0x2

    #@28
    move v4, p1

    #@29
    move v5, v3

    #@2a
    move v6, v3

    #@2b
    move v7, v3

    #@2c
    move v9, v3

    #@2d
    .line 1598
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    #@30
    .line 1601
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@32
    if-nez v0, :cond_0

    #@34
    .line 1602
    const-string/jumbo v0, "ScrollView-fling"

    #@37
    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@3d
    .line 1605
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    #@40
    .line 1593
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1034
    const/16 v4, 0x82

    #@3
    if-ne p1, v4, :cond_1

    #@5
    const/4 v1, 0x1

    #@6
    .line 1035
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@9
    move-result v2

    #@a
    .line 1037
    .local v2, "height":I
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@c
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@e
    .line 1038
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@10
    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    #@12
    .line 1040
    if-eqz v1, :cond_0

    #@14
    .line 1041
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@17
    move-result v0

    #@18
    .line 1042
    .local v0, "count":I
    if-lez v0, :cond_0

    #@1a
    .line 1043
    add-int/lit8 v4, v0, -0x1

    #@1c
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@1f
    move-result-object v3

    #@20
    .line 1044
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@22
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@25
    move-result v5

    #@26
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@28
    add-int/2addr v5, v6

    #@29
    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    #@2b
    .line 1045
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2d
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2f
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@31
    sub-int/2addr v5, v2

    #@32
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@34
    .line 1049
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@36
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@38
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@3a
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@3c
    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    #@3f
    move-result v4

    #@40
    return v4

    #@41
    .line 1034
    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    const/4 v1, 0x0

    #@42
    .restart local v1    # "down":Z
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 856
    const-class v0, Landroid/widget/ScrollView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 212
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 213
    const/4 v3, 0x0

    #@8
    return v3

    #@9
    .line 216
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    #@c
    move-result v1

    #@d
    .line 217
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@10
    move-result v3

    #@11
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@13
    sub-int v0, v3, v4

    #@15
    .line 218
    .local v0, "bottomEdge":I
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@1c
    move-result v3

    #@1d
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@1f
    sub-int/2addr v3, v4

    #@20
    sub-int v2, v3, v0

    #@22
    .line 219
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    #@24
    .line 220
    int-to-float v3, v2

    #@25
    int-to-float v4, v1

    #@26
    div-float/2addr v3, v4

    #@27
    return v3

    #@28
    .line 223
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    #@2a
    return v3
.end method

.method public getMaxScrollAmount()I
    .locals 2

    #@0
    .prologue
    .line 231
    iget v0, p0, Landroid/widget/ScrollView;->mBottom:I

    #@2
    iget v1, p0, Landroid/widget/ScrollView;->mTop:I

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

.method protected getTopFadingEdgeStrength()F
    .locals 3

    #@0
    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 199
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    #@b
    move-result v0

    #@c
    .line 203
    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@e
    if-ge v1, v0, :cond_1

    #@10
    .line 204
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@12
    int-to-float v1, v1

    #@13
    int-to-float v2, v0

    #@14
    div-float/2addr v1, v2

    #@15
    return v1

    #@16
    .line 207
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    #@18
    return v1
.end method

.method public isFillViewport()Z
    .locals 1

    #@0
    .prologue
    .line 304
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    #@2
    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 327
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    #@2
    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    #@0
    .prologue
    .line 1258
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v2

    #@4
    .line 1263
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    #@6
    .line 1264
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    #@8
    .line 1263
    add-int/2addr v3, v4

    #@9
    .line 1264
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@b
    .line 1263
    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    #@e
    move-result v1

    #@f
    .line 1267
    .local v1, "childWidthMeasureSpec":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@12
    move-result v3

    #@13
    const/4 v4, 0x0

    #@14
    .line 1266
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@17
    move-result v0

    #@18
    .line 1269
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@1b
    .line 1257
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
    .line 1275
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 1278
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    #@8
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    #@a
    add-int/2addr v3, v4

    #@b
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@d
    add-int/2addr v3, v4

    #@e
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@10
    add-int/2addr v3, v4

    #@11
    add-int/2addr v3, p3

    #@12
    .line 1279
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@14
    .line 1277
    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    #@17
    move-result v1

    #@18
    .line 1281
    .local v1, "childWidthMeasureSpec":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@1b
    move-result v3

    #@1c
    const/4 v4, 0x0

    #@1d
    .line 1280
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@20
    move-result v0

    #@21
    .line 1283
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@24
    .line 1274
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1511
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    #@4
    .line 1513
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1514
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@a
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    #@d
    .line 1515
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@f
    .line 1517
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 1518
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@15
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    #@18
    .line 1519
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@1a
    .line 1510
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@3
    move-result v5

    #@4
    and-int/lit8 v5, v5, 0x2

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@b
    move-result v5

    #@c
    packed-switch v5, :pswitch_data_0

    #@f
    .line 798
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@12
    move-result v5

    #@13
    return v5

    #@14
    .line 777
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@16
    if-nez v5, :cond_0

    #@18
    .line 778
    const/16 v5, 0x9

    #@1a
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@1d
    move-result v4

    #@1e
    .line 779
    .local v4, "vscroll":F
    const/4 v5, 0x0

    #@1f
    cmpl-float v5, v4, v5

    #@21
    if-eqz v5, :cond_0

    #@23
    .line 780
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalScrollFactor()F

    #@26
    move-result v5

    #@27
    mul-float/2addr v5, v4

    #@28
    float-to-int v0, v5

    #@29
    .line 781
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    #@2c
    move-result v3

    #@2d
    .line 782
    .local v3, "range":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@2f
    .line 783
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    #@31
    .line 784
    .local v1, "newScrollY":I
    if-gez v1, :cond_2

    #@33
    .line 785
    const/4 v1, 0x0

    #@34
    .line 789
    :cond_1
    :goto_0
    if-eq v1, v2, :cond_0

    #@36
    .line 790
    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@38
    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    #@3b
    .line 791
    const/4 v5, 0x1

    #@3c
    return v5

    #@3d
    .line 786
    :cond_2
    if-le v1, v3, :cond_1

    #@3f
    .line 787
    move v1, v3

    #@40
    goto :goto_0

    #@41
    .line 775
    nop

    #@42
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
    .line 883
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 884
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 885
    .local v0, "scrollable":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    #@d
    .line 886
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@f
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    #@12
    .line 887
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@14
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    #@17
    .line 888
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@19
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    #@1c
    .line 889
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    #@23
    .line 882
    return-void

    #@24
    .line 884
    .end local v0    # "scrollable":Z
    :cond_0
    const/4 v0, 0x0

    #@25
    .restart local v0    # "scrollable":Z
    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 862
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 863
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 864
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    #@c
    move-result v0

    #@d
    .line 865
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    #@f
    .line 866
    const/4 v1, 0x1

    #@10
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@13
    .line 867
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@15
    if-lez v1, :cond_0

    #@17
    .line 869
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@19
    .line 868
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@1c
    .line 870
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@1e
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@21
    .line 872
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@23
    if-ge v1, v0, :cond_1

    #@25
    .line 873
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@27
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@2a
    .line 874
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@2c
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@2f
    .line 861
    .end local v0    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v2, -0x1

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@7
    move-result v7

    #@8
    .line 488
    .local v7, "action":I
    if-ne v7, v4, :cond_0

    #@a
    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 489
    return v0

    #@f
    .line 495
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_3

    #@1b
    .line 499
    :cond_1
    and-int/lit16 v1, v7, 0xff

    #@1d
    packed-switch v1, :pswitch_data_0

    #@20
    .line 592
    :cond_2
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@22
    return v0

    #@23
    .line 496
    :cond_3
    return v3

    #@24
    .line 510
    :pswitch_1
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@26
    .line 511
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_2

    #@28
    .line 516
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@2b
    move-result v10

    #@2c
    .line 517
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_4

    #@2e
    .line 518
    const-string/jumbo v0, "ScrollView"

    #@31
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "Invalid pointerId="

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 519
    const-string/jumbo v2, " in onInterceptTouchEvent"

    #@44
    .line 518
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    goto :goto_0

    #@50
    .line 523
    :cond_4
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    #@53
    move-result v1

    #@54
    float-to-int v11, v1

    #@55
    .line 524
    .local v11, "y":I
    iget v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    #@57
    sub-int v1, v11, v1

    #@59
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@5c
    move-result v12

    #@5d
    .line 525
    .local v12, "yDiff":I
    iget v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    #@5f
    if-le v12, v1, :cond_2

    #@61
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    #@64
    move-result v1

    #@65
    and-int/lit8 v1, v1, 0x2

    #@67
    if-nez v1, :cond_2

    #@69
    .line 526
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@6b
    .line 527
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    #@6d
    .line 528
    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    #@70
    .line 529
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@72
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@75
    .line 530
    iput v3, p0, Landroid/widget/ScrollView;->mNestedYOffset:I

    #@77
    .line 531
    iget-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@79
    if-nez v1, :cond_5

    #@7b
    .line 532
    const-string/jumbo v1, "ScrollView-scroll"

    #@7e
    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    #@81
    move-result-object v1

    #@82
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@84
    .line 534
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    #@87
    move-result-object v9

    #@88
    .line 535
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_2

    #@8a
    .line 536
    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@8d
    goto :goto_0

    #@8e
    .line 543
    .end local v8    # "activePointerId":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@91
    move-result v1

    #@92
    float-to-int v11, v1

    #@93
    .line 544
    .restart local v11    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@96
    move-result v1

    #@97
    float-to-int v1, v1

    #@98
    invoke-direct {p0, v1, v11}, Landroid/widget/ScrollView;->inChild(II)Z

    #@9b
    move-result v1

    #@9c
    if-nez v1, :cond_6

    #@9e
    .line 545
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@a0
    .line 546
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    #@a3
    goto/16 :goto_0

    #@a5
    .line 554
    :cond_6
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    #@a7
    .line 555
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@aa
    move-result v1

    #@ab
    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@ad
    .line 557
    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    #@b0
    .line 558
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@b2
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@b5
    .line 564
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@b7
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    #@ba
    move-result v1

    #@bb
    if-eqz v1, :cond_8

    #@bd
    :goto_1
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@bf
    .line 565
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@c1
    if-eqz v0, :cond_7

    #@c3
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@c5
    if-nez v0, :cond_7

    #@c7
    .line 566
    const-string/jumbo v0, "ScrollView-scroll"

    #@ca
    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    #@cd
    move-result-object v0

    #@ce
    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@d0
    .line 568
    :cond_7
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    #@d3
    goto/16 :goto_0

    #@d5
    :cond_8
    move v3, v0

    #@d6
    .line 564
    goto :goto_1

    #@d7
    .line 575
    .end local v11    # "y":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@d9
    .line 576
    iput v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@db
    .line 577
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    #@de
    .line 578
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@e0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@e2
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@e4
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    #@e7
    move-result v6

    #@e8
    move v4, v3

    #@e9
    move v5, v3

    #@ea
    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@ed
    move-result v0

    #@ee
    if-eqz v0, :cond_9

    #@f0
    .line 579
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    #@f3
    .line 581
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    #@f6
    goto/16 :goto_0

    #@f8
    .line 584
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@fb
    goto/16 :goto_0

    #@fd
    .line 499
    nop

    #@fe
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
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1525
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    #@5
    .line 1526
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    #@7
    .line 1528
    iget-object v2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    #@9
    if-eqz v2, :cond_0

    #@b
    iget-object v2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    #@d
    invoke-static {v2, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 1529
    iget-object v2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    #@15
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    #@18
    .line 1531
    :cond_0
    iput-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    #@1a
    .line 1533
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_2

    #@20
    .line 1534
    iget-object v2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 1535
    iget-object v2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    #@26
    iget v2, v2, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    #@28
    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@2a
    .line 1536
    iput-object v3, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    #@2c
    .line 1539
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@2f
    move-result v2

    #@30
    if-lez v2, :cond_3

    #@32
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@39
    move-result v0

    #@3a
    .line 1541
    .local v0, "childHeight":I
    :goto_0
    sub-int v2, p5, p3

    #@3c
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@3e
    sub-int/2addr v2, v3

    #@3f
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@41
    sub-int/2addr v2, v3

    #@42
    sub-int v2, v0, v2

    #@44
    .line 1540
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    #@47
    move-result v1

    #@48
    .line 1544
    .local v1, "scrollRange":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@4a
    if-le v2, v1, :cond_4

    #@4c
    .line 1545
    iput v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@4e
    .line 1552
    .end local v0    # "childHeight":I
    .end local v1    # "scrollRange":I
    :cond_2
    :goto_1
    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@50
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@52
    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    #@55
    .line 1524
    return-void

    #@56
    .line 1539
    :cond_3
    const/4 v0, 0x0

    #@57
    .restart local v0    # "childHeight":I
    goto :goto_0

    #@58
    .line 1546
    .restart local v1    # "scrollRange":I
    :cond_4
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@5a
    if-gez v2, :cond_2

    #@5c
    .line 1547
    iput v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@5e
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 340
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@4
    .line 342
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    #@6
    if-nez v9, :cond_0

    #@8
    .line 343
    return-void

    #@9
    .line 346
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@c
    move-result v4

    #@d
    .line 347
    .local v4, "heightMode":I
    if-nez v4, :cond_1

    #@f
    .line 348
    return-void

    #@10
    .line 351
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@13
    move-result v9

    #@14
    if-lez v9, :cond_2

    #@16
    .line 352
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    .line 353
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    #@1d
    move-result v3

    #@1e
    .line 354
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@21
    move-result v9

    #@22
    if-ge v9, v3, :cond_2

    #@24
    .line 357
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@27
    move-result-object v6

    #@28
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    #@2a
    .line 358
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    #@2d
    move-result-object v9

    #@2e
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@31
    move-result-object v9

    #@32
    iget v7, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@34
    .line 359
    .local v7, "targetSdkVersion":I
    const/16 v9, 0x17

    #@36
    if-lt v7, v9, :cond_3

    #@38
    .line 360
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    #@3a
    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    #@3c
    add-int/2addr v9, v10

    #@3d
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@3f
    add-int/2addr v9, v10

    #@40
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@42
    add-int v8, v9, v10

    #@44
    .line 361
    .local v8, "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@46
    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@48
    add-int/2addr v9, v10

    #@49
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@4b
    add-int/2addr v9, v10

    #@4c
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@4e
    add-int v5, v9, v10

    #@50
    .line 368
    .local v5, "heightPadding":I
    :goto_0
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@52
    .line 367
    invoke-static {p1, v8, v9}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    #@55
    move-result v2

    #@56
    .line 370
    .local v2, "childWidthMeasureSpec":I
    sub-int v9, v3, v5

    #@58
    const/high16 v10, 0x40000000    # 2.0f

    #@5a
    .line 369
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@5d
    move-result v1

    #@5e
    .line 371
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    #@61
    .line 339
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "height":I
    .end local v5    # "heightPadding":I
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "targetSdkVersion":I
    .end local v8    # "widthPadding":I
    :cond_2
    return-void

    #@62
    .line 363
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "height":I
    .restart local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7    # "targetSdkVersion":I
    :cond_3
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    #@64
    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    #@66
    add-int v8, v9, v10

    #@68
    .line 364
    .restart local v8    # "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@6a
    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@6c
    add-int v5, v9, v10

    #@6e
    .restart local v5    # "heightPadding":I
    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    #@0
    .prologue
    .line 1703
    if-nez p4, :cond_0

    #@2
    .line 1704
    float-to-int v0, p3

    #@3
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    #@6
    .line 1705
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 1707
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
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
    .line 1691
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@3
    .line 1692
    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    #@6
    .line 1693
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@8
    sub-int v2, v0, v6

    #@a
    .line 1694
    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    #@c
    .line 1695
    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    #@d
    move-object v0, p0

    #@e
    move v3, v1

    #@f
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    #@12
    .line 1690
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    #@0
    .prologue
    .line 1676
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    #@3
    .line 1677
    const/4 v0, 0x2

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    #@7
    .line 1675
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
    .line 805
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@3
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 806
    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@b
    .line 807
    .local v7, "oldX":I
    iget v8, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@d
    .line 808
    .local v8, "oldY":I
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@f
    .line 809
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@11
    .line 810
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    #@14
    .line 811
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@16
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@18
    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    #@1b
    .line 812
    if-eqz p4, :cond_0

    #@1d
    .line 813
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@1f
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@21
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@23
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    #@26
    move-result v6

    #@27
    move v4, v3

    #@28
    move v5, v3

    #@29
    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@2c
    .line 819
    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    #@2f
    .line 803
    return-void

    #@30
    .line 816
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
    .line 1471
    const/4 v1, 0x2

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 1472
    const/16 p1, 0x82

    #@7
    .line 1477
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    #@9
    .line 1478
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 1482
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    #@13
    .line 1483
    return v3

    #@14
    .line 1473
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    #@15
    if-ne p1, v1, :cond_0

    #@17
    .line 1474
    const/16 p1, 0x21

    #@19
    goto :goto_0

    #@1a
    .line 1479
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
    .line 1486
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 1487
    return v3

    #@2a
    .line 1490
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
    .line 1801
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

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
    .line 1804
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@f
    .line 1805
    return-void

    #@10
    :cond_0
    move-object v0, p1

    #@11
    .line 1807
    check-cast v0, Landroid/widget/ScrollView$SavedState;

    #@13
    .line 1808
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@16
    move-result-object v1

    #@17
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@1a
    .line 1809
    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    #@1c
    .line 1810
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    #@1f
    .line 1800
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    #@0
    .prologue
    .line 1815
    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

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
    .line 1818
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 1820
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@14
    move-result-object v1

    #@15
    .line 1821
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ScrollView$SavedState;

    #@17
    invoke-direct {v0, v1}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@1a
    .line 1822
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@1c
    iput v2, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    #@1e
    .line 1823
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
    .line 1557
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    #@3
    .line 1559
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1560
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    #@9
    if-ne p0, v0, :cond_1

    #@b
    .line 1561
    :cond_0
    return-void

    #@c
    .line 1566
    :cond_1
    const/4 v2, 0x0

    #@d
    invoke-direct {p0, v0, v2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 1567
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@15
    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@18
    .line 1568
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {p0, v0, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@1d
    .line 1569
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@22
    move-result v1

    #@23
    .line 1570
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    #@26
    .line 1556
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
    .line 1671
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
    .line 1685
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    #@3
    .line 1684
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 597
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    #@3
    .line 599
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@6
    move-result-object v31

    #@7
    .line 601
    .local v31, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@a
    move-result v21

    #@b
    .line 603
    .local v21, "actionMasked":I
    if-nez v21, :cond_0

    #@d
    .line 604
    const/4 v2, 0x0

    #@e
    move-object/from16 v0, p0

    #@10
    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    #@12
    .line 606
    :cond_0
    const/4 v2, 0x0

    #@13
    move-object/from16 v0, p0

    #@15
    iget v3, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    #@17
    int-to-float v3, v3

    #@18
    move-object/from16 v0, v31

    #@1a
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@1d
    .line 608
    packed-switch v21, :pswitch_data_0

    #@20
    .line 748
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 749
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2a
    move-object/from16 v0, v31

    #@2c
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@2f
    .line 751
    :cond_2
    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->recycle()V

    #@32
    .line 752
    const/4 v2, 0x1

    #@33
    return v2

    #@34
    .line 610
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@37
    move-result v2

    #@38
    if-nez v2, :cond_3

    #@3a
    .line 611
    const/4 v2, 0x0

    #@3b
    return v2

    #@3c
    .line 613
    :cond_3
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@40
    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

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
    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@4b
    if-eqz v2, :cond_4

    #@4d
    .line 614
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    #@50
    move-result-object v28

    #@51
    .line 615
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_4

    #@53
    .line 616
    const/4 v2, 0x1

    #@54
    move-object/from16 v0, v28

    #@56
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@59
    .line 624
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    #@5b
    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@5d
    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    #@60
    move-result v2

    #@61
    if-nez v2, :cond_5

    #@63
    .line 625
    move-object/from16 v0, p0

    #@65
    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@67
    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    #@6a
    .line 626
    move-object/from16 v0, p0

    #@6c
    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@6e
    if-eqz v2, :cond_5

    #@70
    .line 627
    move-object/from16 v0, p0

    #@72
    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@74
    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    #@77
    .line 628
    const/4 v2, 0x0

    #@78
    move-object/from16 v0, p0

    #@7a
    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@7c
    .line 633
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@7f
    move-result v2

    #@80
    float-to-int v2, v2

    #@81
    move-object/from16 v0, p0

    #@83
    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    #@85
    .line 634
    const/4 v2, 0x0

    #@86
    move-object/from16 v0, p1

    #@88
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@8b
    move-result v2

    #@8c
    move-object/from16 v0, p0

    #@8e
    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@90
    .line 635
    const/4 v2, 0x2

    #@91
    move-object/from16 v0, p0

    #@93
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    #@96
    goto :goto_0

    #@97
    .line 613
    :cond_6
    const/4 v2, 0x1

    #@98
    goto :goto_1

    #@99
    .line 639
    :pswitch_2
    move-object/from16 v0, p0

    #@9b
    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@9d
    move-object/from16 v0, p1

    #@9f
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@a2
    move-result v22

    #@a3
    .line 640
    .local v22, "activePointerIndex":I
    const/4 v2, -0x1

    #@a4
    move/from16 v0, v22

    #@a6
    if-ne v0, v2, :cond_7

    #@a8
    .line 641
    const-string/jumbo v2, "ScrollView"

    #@ab
    new-instance v3, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v5, "Invalid pointerId="

    #@b3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v3

    #@b7
    move-object/from16 v0, p0

    #@b9
    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@bb
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v3

    #@bf
    const-string/jumbo v5, " in onTouchEvent"

    #@c2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v3

    #@c6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v3

    #@ca
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@cd
    goto/16 :goto_0

    #@cf
    .line 645
    :cond_7
    move-object/from16 v0, p1

    #@d1
    move/from16 v1, v22

    #@d3
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@d6
    move-result v2

    #@d7
    float-to-int v0, v2

    #@d8
    move/from16 v32, v0

    #@da
    .line 646
    .local v32, "y":I
    move-object/from16 v0, p0

    #@dc
    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    #@de
    sub-int v4, v2, v32

    #@e0
    .line 647
    .local v4, "deltaY":I
    move-object/from16 v0, p0

    #@e2
    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    #@e4
    move-object/from16 v0, p0

    #@e6
    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    #@e8
    const/4 v5, 0x0

    #@e9
    move-object/from16 v0, p0

    #@eb
    invoke-virtual {v0, v5, v4, v2, v3}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    #@ee
    move-result v2

    #@ef
    if-eqz v2, :cond_8

    #@f1
    .line 648
    move-object/from16 v0, p0

    #@f3
    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    #@f5
    const/4 v3, 0x1

    #@f6
    aget v2, v2, v3

    #@f8
    sub-int/2addr v4, v2

    #@f9
    .line 649
    const/4 v2, 0x0

    #@fa
    move-object/from16 v0, p0

    #@fc
    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    #@fe
    const/4 v5, 0x1

    #@ff
    aget v3, v3, v5

    #@101
    int-to-float v3, v3

    #@102
    move-object/from16 v0, v31

    #@104
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@107
    .line 650
    move-object/from16 v0, p0

    #@109
    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    #@10b
    move-object/from16 v0, p0

    #@10d
    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    #@10f
    const/4 v5, 0x1

    #@110
    aget v3, v3, v5

    #@112
    add-int/2addr v2, v3

    #@113
    move-object/from16 v0, p0

    #@115
    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    #@117
    .line 652
    :cond_8
    move-object/from16 v0, p0

    #@119
    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@11b
    if-nez v2, :cond_a

    #@11d
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@120
    move-result v2

    #@121
    move-object/from16 v0, p0

    #@123
    iget v3, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    #@125
    if-le v2, v3, :cond_a

    #@127
    .line 653
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    #@12a
    move-result-object v28

    #@12b
    .line 654
    .restart local v28    # "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_9

    #@12d
    .line 655
    const/4 v2, 0x1

    #@12e
    move-object/from16 v0, v28

    #@130
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@133
    .line 657
    :cond_9
    const/4 v2, 0x1

    #@134
    move-object/from16 v0, p0

    #@136
    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@138
    .line 658
    if-lez v4, :cond_c

    #@13a
    .line 659
    move-object/from16 v0, p0

    #@13c
    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    #@13e
    sub-int/2addr v4, v2

    #@13f
    .line 664
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    #@141
    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@143
    if-eqz v2, :cond_1

    #@145
    .line 666
    move-object/from16 v0, p0

    #@147
    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    #@149
    const/4 v3, 0x1

    #@14a
    aget v2, v2, v3

    #@14c
    sub-int v2, v32, v2

    #@14e
    move-object/from16 v0, p0

    #@150
    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    #@152
    .line 668
    move-object/from16 v0, p0

    #@154
    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    #@156
    move/from16 v26, v0

    #@158
    .line 669
    .local v26, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    #@15b
    move-result v8

    #@15c
    .line 670
    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    #@15f
    move-result v27

    #@160
    .line 671
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_d

    #@162
    .line 672
    const/4 v2, 0x1

    #@163
    move/from16 v0, v27

    #@165
    if-ne v0, v2, :cond_e

    #@167
    if-lez v8, :cond_e

    #@169
    const/16 v23, 0x1

    #@16b
    .line 676
    .local v23, "canOverscroll":Z
    :goto_3
    move-object/from16 v0, p0

    #@16d
    iget v6, v0, Landroid/widget/ScrollView;->mScrollY:I

    #@16f
    move-object/from16 v0, p0

    #@171
    iget v10, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    #@173
    const/4 v3, 0x0

    #@174
    const/4 v5, 0x0

    #@175
    const/4 v7, 0x0

    #@176
    const/4 v9, 0x0

    #@177
    const/4 v11, 0x1

    #@178
    move-object/from16 v2, p0

    #@17a
    invoke-virtual/range {v2 .. v11}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    #@17d
    move-result v2

    #@17e
    if-eqz v2, :cond_b

    #@180
    .line 677
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    #@183
    move-result v2

    #@184
    if-eqz v2, :cond_f

    #@186
    .line 682
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    #@188
    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    #@18a
    sub-int v11, v2, v26

    #@18c
    .line 683
    .local v11, "scrolledDeltaY":I
    sub-int v13, v4, v11

    #@18e
    .line 684
    .local v13, "unconsumedY":I
    move-object/from16 v0, p0

    #@190
    iget-object v14, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    #@192
    const/4 v10, 0x0

    #@193
    const/4 v12, 0x0

    #@194
    move-object/from16 v9, p0

    #@196
    invoke-virtual/range {v9 .. v14}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    #@199
    move-result v2

    #@19a
    if-eqz v2, :cond_10

    #@19c
    .line 685
    move-object/from16 v0, p0

    #@19e
    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    #@1a4
    const/4 v5, 0x1

    #@1a5
    aget v3, v3, v5

    #@1a7
    sub-int/2addr v2, v3

    #@1a8
    move-object/from16 v0, p0

    #@1aa
    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    #@1ac
    .line 686
    const/4 v2, 0x0

    #@1ad
    move-object/from16 v0, p0

    #@1af
    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    #@1b1
    const/4 v5, 0x1

    #@1b2
    aget v3, v3, v5

    #@1b4
    int-to-float v3, v3

    #@1b5
    move-object/from16 v0, v31

    #@1b7
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@1ba
    .line 687
    move-object/from16 v0, p0

    #@1bc
    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    #@1be
    move-object/from16 v0, p0

    #@1c0
    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    #@1c2
    const/4 v5, 0x1

    #@1c3
    aget v3, v3, v5

    #@1c5
    add-int/2addr v2, v3

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    #@1ca
    goto/16 :goto_0

    #@1cc
    .line 661
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .restart local v28    # "parent":Landroid/view/ViewParent;
    :cond_c
    move-object/from16 v0, p0

    #@1ce
    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    #@1d0
    add-int/2addr v4, v2

    #@1d1
    goto/16 :goto_2

    #@1d3
    .line 671
    .end local v28    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v26    # "oldY":I
    .restart local v27    # "overscrollMode":I
    :cond_d
    const/16 v23, 0x1

    #@1d5
    .restart local v23    # "canOverscroll":Z
    goto :goto_3

    #@1d6
    .line 672
    .end local v23    # "canOverscroll":Z
    :cond_e
    const/16 v23, 0x0

    #@1d8
    .restart local v23    # "canOverscroll":Z
    goto :goto_3

    #@1d9
    .line 679
    :cond_f
    move-object/from16 v0, p0

    #@1db
    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1dd
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    #@1e0
    goto :goto_4

    #@1e1
    .line 688
    .restart local v11    # "scrolledDeltaY":I
    .restart local v13    # "unconsumedY":I
    :cond_10
    if-eqz v23, :cond_1

    #@1e3
    .line 689
    add-int v29, v26, v4

    #@1e5
    .line 690
    .local v29, "pulledToY":I
    if-gez v29, :cond_13

    #@1e7
    .line 691
    move-object/from16 v0, p0

    #@1e9
    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@1eb
    int-to-float v3, v4

    #@1ec
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    #@1ef
    move-result v5

    #@1f0
    int-to-float v5, v5

    #@1f1
    div-float/2addr v3, v5

    #@1f2
    .line 692
    move-object/from16 v0, p1

    #@1f4
    move/from16 v1, v22

    #@1f6
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@1f9
    move-result v5

    #@1fa
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    #@1fd
    move-result v6

    #@1fe
    int-to-float v6, v6

    #@1ff
    div-float/2addr v5, v6

    #@200
    .line 691
    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    #@203
    .line 693
    move-object/from16 v0, p0

    #@205
    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@207
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@20a
    move-result v2

    #@20b
    if-nez v2, :cond_11

    #@20d
    .line 694
    move-object/from16 v0, p0

    #@20f
    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@211
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    #@214
    .line 703
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    #@216
    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@218
    if-eqz v2, :cond_1

    #@21a
    .line 704
    move-object/from16 v0, p0

    #@21c
    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@21e
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@221
    move-result v2

    #@222
    if-eqz v2, :cond_12

    #@224
    move-object/from16 v0, p0

    #@226
    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@228
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@22b
    move-result v2

    #@22c
    if-nez v2, :cond_1

    #@22e
    .line 705
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    #@231
    goto/16 :goto_0

    #@233
    .line 696
    :cond_13
    move/from16 v0, v29

    #@235
    if-le v0, v8, :cond_11

    #@237
    .line 697
    move-object/from16 v0, p0

    #@239
    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@23b
    int-to-float v3, v4

    #@23c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    #@23f
    move-result v5

    #@240
    int-to-float v5, v5

    #@241
    div-float/2addr v3, v5

    #@242
    .line 698
    move-object/from16 v0, p1

    #@244
    move/from16 v1, v22

    #@246
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@249
    move-result v5

    #@24a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    #@24d
    move-result v6

    #@24e
    int-to-float v6, v6

    #@24f
    div-float/2addr v5, v6

    #@250
    const/high16 v6, 0x3f800000    # 1.0f

    #@252
    sub-float v5, v6, v5

    #@254
    .line 697
    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    #@257
    .line 699
    move-object/from16 v0, p0

    #@259
    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@25b
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@25e
    move-result v2

    #@25f
    if-nez v2, :cond_11

    #@261
    .line 700
    move-object/from16 v0, p0

    #@263
    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@265
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    #@268
    goto :goto_5

    #@269
    .line 711
    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v22    # "activePointerIndex":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .end local v29    # "pulledToY":I
    .end local v32    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    #@26b
    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@26d
    if-eqz v2, :cond_1

    #@26f
    .line 712
    move-object/from16 v0, p0

    #@271
    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@273
    move-object/from16 v30, v0

    #@275
    .line 713
    .local v30, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    #@277
    iget v2, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    #@279
    int-to-float v2, v2

    #@27a
    const/16 v3, 0x3e8

    #@27c
    move-object/from16 v0, v30

    #@27e
    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@281
    .line 714
    move-object/from16 v0, p0

    #@283
    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@285
    move-object/from16 v0, v30

    #@287
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@28a
    move-result v2

    #@28b
    float-to-int v0, v2

    #@28c
    move/from16 v25, v0

    #@28e
    .line 716
    .local v25, "initialVelocity":I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    #@291
    move-result v2

    #@292
    move-object/from16 v0, p0

    #@294
    iget v3, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    #@296
    if-le v2, v3, :cond_15

    #@298
    .line 717
    move/from16 v0, v25

    #@29a
    neg-int v2, v0

    #@29b
    move-object/from16 v0, p0

    #@29d
    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    #@2a0
    .line 723
    :cond_14
    :goto_6
    const/4 v2, -0x1

    #@2a1
    move-object/from16 v0, p0

    #@2a3
    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@2a5
    .line 724
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    #@2a8
    goto/16 :goto_0

    #@2aa
    .line 718
    :cond_15
    move-object/from16 v0, p0

    #@2ac
    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    #@2b2
    move-object/from16 v0, p0

    #@2b4
    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    #@2b6
    move/from16 v16, v0

    #@2b8
    .line 719
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    #@2bb
    move-result v20

    #@2bc
    .line 718
    const/16 v17, 0x0

    #@2be
    const/16 v18, 0x0

    #@2c0
    const/16 v19, 0x0

    #@2c2
    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@2c5
    move-result v2

    #@2c6
    if-eqz v2, :cond_14

    #@2c8
    .line 720
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    #@2cb
    goto :goto_6

    #@2cc
    .line 728
    .end local v25    # "initialVelocity":I
    .end local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    #@2ce
    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    #@2d0
    if-eqz v2, :cond_1

    #@2d2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@2d5
    move-result v2

    #@2d6
    if-lez v2, :cond_1

    #@2d8
    .line 729
    move-object/from16 v0, p0

    #@2da
    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@2dc
    move-object/from16 v0, p0

    #@2de
    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    #@2e0
    move-object/from16 v0, p0

    #@2e2
    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    #@2e4
    move/from16 v16, v0

    #@2e6
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    #@2e9
    move-result v20

    #@2ea
    const/16 v17, 0x0

    #@2ec
    const/16 v18, 0x0

    #@2ee
    const/16 v19, 0x0

    #@2f0
    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@2f3
    move-result v2

    #@2f4
    if-eqz v2, :cond_16

    #@2f6
    .line 730
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    #@2f9
    .line 732
    :cond_16
    const/4 v2, -0x1

    #@2fa
    move-object/from16 v0, p0

    #@2fc
    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@2fe
    .line 733
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    #@301
    goto/16 :goto_0

    #@303
    .line 737
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@306
    move-result v24

    #@307
    .line 738
    .local v24, "index":I
    move-object/from16 v0, p1

    #@309
    move/from16 v1, v24

    #@30b
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@30e
    move-result v2

    #@30f
    float-to-int v2, v2

    #@310
    move-object/from16 v0, p0

    #@312
    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    #@314
    .line 739
    move-object/from16 v0, p1

    #@316
    move/from16 v1, v24

    #@318
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@31b
    move-result v2

    #@31c
    move-object/from16 v0, p0

    #@31e
    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@320
    goto/16 :goto_0

    #@322
    .line 743
    .end local v24    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@325
    .line 744
    move-object/from16 v0, p0

    #@327
    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    #@329
    move-object/from16 v0, p1

    #@32b
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@32e
    move-result v2

    #@32f
    move-object/from16 v0, p1

    #@331
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    #@334
    move-result v2

    #@335
    float-to-int v2, v2

    #@336
    move-object/from16 v0, p0

    #@338
    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    #@33a
    goto/16 :goto_0

    #@33c
    .line 608
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

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 998
    const/16 v4, 0x82

    #@3
    if-ne p1, v4, :cond_1

    #@5
    const/4 v1, 0x1

    #@6
    .line 999
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@9
    move-result v2

    #@a
    .line 1001
    .local v2, "height":I
    if-eqz v1, :cond_2

    #@c
    .line 1002
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@e
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    #@11
    move-result v5

    #@12
    add-int/2addr v5, v2

    #@13
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@15
    .line 1003
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@18
    move-result v0

    #@19
    .line 1004
    .local v0, "count":I
    if-lez v0, :cond_0

    #@1b
    .line 1005
    add-int/lit8 v4, v0, -0x1

    #@1d
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v3

    #@21
    .line 1006
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

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
    .line 1007
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2e
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@31
    move-result v5

    #@32
    sub-int/2addr v5, v2

    #@33
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@35
    .line 1016
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@37
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@39
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@3b
    add-int/2addr v5, v2

    #@3c
    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    #@3e
    .line 1018
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@40
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@42
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@44
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@46
    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    #@49
    move-result v4

    #@4a
    return v4

    #@4b
    .line 998
    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    const/4 v1, 0x0

    #@4c
    .restart local v1    # "down":Z
    goto :goto_0

    #@4d
    .line 1011
    .restart local v2    # "height":I
    :cond_2
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@4f
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    #@52
    move-result v5

    #@53
    sub-int/2addr v5, v2

    #@54
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@56
    .line 1012
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@58
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@5a
    if-gez v4, :cond_0

    #@5c
    .line 1013
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    #@5e
    iput v6, v4, Landroid/graphics/Rect;->top:I

    #@60
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
    .line 825
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 826
    return v5

    #@9
    .line 828
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_1

    #@f
    .line 829
    return v4

    #@10
    .line 831
    :cond_1
    sparse-switch p1, :sswitch_data_0

    #@13
    .line 851
    return v4

    #@14
    .line 834
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@17
    move-result v2

    #@18
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@1a
    sub-int/2addr v2, v3

    #@1b
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@1d
    sub-int v1, v2, v3

    #@1f
    .line 835
    .local v1, "viewportHeight":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@21
    add-int/2addr v2, v1

    #@22
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    #@25
    move-result v3

    #@26
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@29
    move-result v0

    #@2a
    .line 836
    .local v0, "targetScrollY":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@2c
    if-eq v0, v2, :cond_2

    #@2e
    .line 837
    invoke-virtual {p0, v4, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    #@31
    .line 838
    return v5

    #@32
    .line 840
    :cond_2
    return v4

    #@33
    .line 843
    .end local v0    # "targetScrollY":I
    .end local v1    # "viewportHeight":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@36
    move-result v2

    #@37
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@39
    sub-int/2addr v2, v3

    #@3a
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@3c
    sub-int v1, v2, v3

    #@3e
    .line 844
    .restart local v1    # "viewportHeight":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@40
    sub-int/2addr v2, v1

    #@41
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    #@44
    move-result v0

    #@45
    .line 845
    .restart local v0    # "targetScrollY":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@47
    if-eq v0, v2, :cond_3

    #@49
    .line 846
    invoke-virtual {p0, v4, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    #@4c
    .line 847
    return v5

    #@4d
    .line 849
    :cond_3
    return v4

    #@4e
    .line 831
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    #@0
    .prologue
    .line 1448
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1449
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    #@7
    .line 1454
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@a
    .line 1447
    return-void

    #@b
    .line 1452
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

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
    .line 1497
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
    .line 1498
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
    .line 1497
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@15
    .line 1500
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

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
    .line 467
    if-eqz p1, :cond_0

    #@2
    .line 468
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    #@5
    .line 470
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    #@8
    .line 466
    return-void
.end method

.method public requestLayout()V
    .locals 1

    #@0
    .prologue
    .line 1505
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    #@3
    .line 1506
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    #@6
    .line 1504
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
    .line 1644
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_1

    #@7
    .line 1645
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 1646
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    #@e
    move-result v1

    #@f
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    #@11
    sub-int/2addr v1, v2

    #@12
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    #@14
    sub-int/2addr v1, v2

    #@15
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@18
    move-result v2

    #@19
    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    #@1c
    move-result p1

    #@1d
    .line 1647
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@20
    move-result v1

    #@21
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@23
    sub-int/2addr v1, v2

    #@24
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@26
    sub-int/2addr v1, v2

    #@27
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@2a
    move-result v2

    #@2b
    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    #@2e
    move-result p2

    #@2f
    .line 1648
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@31
    if-ne p1, v1, :cond_0

    #@33
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@35
    if-eq p2, v1, :cond_1

    #@37
    .line 1649
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    #@3a
    .line 1642
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    #@0
    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 318
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    #@6
    .line 319
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    #@9
    .line 316
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
    .line 1656
    const/4 v1, 0x2

    #@2
    if-eq p1, v1, :cond_1

    #@4
    .line 1657
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1658
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    .line 1659
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    #@e
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    #@11
    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@13
    .line 1660
    new-instance v1, Landroid/widget/EdgeEffect;

    #@15
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    #@18
    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@1a
    .line 1666
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    #@1d
    .line 1655
    return-void

    #@1e
    .line 1663
    :cond_1
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@20
    .line 1664
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@22
    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    #@0
    .prologue
    .line 335
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    #@2
    .line 334
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 193
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 1189
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    #@5
    move-result v6

    #@6
    if-nez v6, :cond_0

    #@8
    .line 1191
    return-void

    #@9
    .line 1193
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@c
    move-result-wide v6

    #@d
    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    #@f
    sub-long v2, v6, v8

    #@11
    .line 1194
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    #@13
    cmp-long v6, v2, v6

    #@15
    if-lez v6, :cond_1

    #@17
    .line 1195
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    #@1a
    move-result v6

    #@1b
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    #@1d
    sub-int/2addr v6, v7

    #@1e
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    #@20
    sub-int v1, v6, v7

    #@22
    .line 1196
    .local v1, "height":I
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    #@29
    move-result v0

    #@2a
    .line 1197
    .local v0, "bottom":I
    sub-int v6, v0, v1

    #@2c
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    #@2f
    move-result v4

    #@30
    .line 1198
    .local v4, "maxY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@32
    .line 1199
    .local v5, "scrollY":I
    add-int v6, v5, p2

    #@34
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    #@37
    move-result v6

    #@38
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result v6

    #@3c
    sub-int p2, v6, v5

    #@3e
    .line 1201
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@40
    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@42
    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    #@45
    .line 1202
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    #@48
    .line 1213
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@4b
    move-result-wide v6

    #@4c
    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    #@4e
    .line 1188
    return-void

    #@4f
    .line 1204
    :cond_1
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@51
    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    #@54
    move-result v6

    #@55
    if-nez v6, :cond_2

    #@57
    .line 1205
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    #@59
    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    #@5c
    .line 1206
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@5e
    if-eqz v6, :cond_2

    #@60
    .line 1207
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@62
    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    #@65
    .line 1208
    iput-object v11, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@67
    .line 1211
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    #@6a
    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 1223
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    #@2
    sub-int v0, p1, v0

    #@4
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    #@6
    sub-int v1, p2, v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    #@b
    .line 1222
    return-void
.end method
