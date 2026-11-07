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
.field private static final greylist-max-o ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final blacklist FLING_DESTRETCH_FACTOR:F = 4.0f

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field private static final greylist-max-o MAX_SCROLL_FACTOR:F = 0.5f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "HorizontalScrollView"


# instance fields
.field private greylist-max-o mActivePointerId:I

.field private greylist mChildToScrollTo:Landroid/view/View;

.field public greylist-max-p mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field public greylist-max-p mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private greylist-max-o mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mHorizontalScrollFactor:F

.field private greylist mIsBeingDragged:Z

.field private greylist-max-o mIsLayoutDirty:Z

.field private greylist mLastMotionX:I

.field private greylist-max-o mLastScroll:J

.field private greylist-max-o mMaximumVelocity:I

.field private greylist-max-o mMinimumVelocity:I

.field private greylist-max-r mOverflingDistance:I

.field private greylist-max-r mOverscrollDistance:I

.field private greylist-max-o mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

.field private greylist mScroller:Landroid/widget/OverScroller;

.field private greylist-max-o mSmoothScrollingEnabled:Z

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTouchSlop:I

.field private greylist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 194
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 199
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 162
    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 204
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 205
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 206
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initScrollView()V

    .line 208
    sget-object v0, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 210
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v4, Landroid/R$styleable;->HorizontalScrollView:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v3, "context":Landroid/content/Context;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .local v7, "defStyleAttr":I
    .local v8, "defStyleRes":I
    invoke-virtual/range {v2 .. v8}, Landroid/widget/HorizontalScrollView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 213
    invoke-virtual {v6, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 215
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_53

    .line 218
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setRevealOnFocusHint(Z)V

    .line 220
    :cond_53
    return-void
.end method

.method private greylist-max-o canScroll()Z
    .registers 7

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 384
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_19

    .line 385
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 386
    .local v2, "childWidth":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    .line 388
    .end local v2    # "childWidth":I
    :cond_19
    return v0
.end method

.method private static greylist-max-o clamp(III)I
    .registers 4
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .line 1923
    if-ge p1, p2, :cond_d

    if-gez p0, :cond_5

    goto :goto_d

    .line 1926
    :cond_5
    add-int v0, p1, p0

    if-le v0, p2, :cond_c

    .line 1927
    sub-int v0, p2, p1

    return v0

    .line 1929
    :cond_c
    return p0

    .line 1924
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist consumeFlingInStretch(I)I
    .registers 8
    .param p1, "unconsumed"    # I

    .line 1508
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1509
    .local v0, "scrollX":I
    if-ltz v0, :cond_73

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_d

    goto :goto_73

    .line 1513
    :cond_d
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    if-lez p1, :cond_43

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_43

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_43

    .line 1514
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    .line 1515
    .local v2, "size":I
    neg-int v4, p1

    int-to-float v4, v4

    mul-float/2addr v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1516
    .local v4, "deltaDistance":F
    neg-int v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1517
    invoke-virtual {v3, v4, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    mul-float/2addr v5, v1

    .line 1516
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1518
    .local v1, "consumed":I
    if-eq v1, p1, :cond_40

    .line 1519
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->finish()V

    .line 1521
    :cond_40
    sub-int v3, p1, v1

    return v3

    .line 1523
    .end local v1    # "consumed":I
    .end local v2    # "size":I
    .end local v4    # "deltaDistance":F
    :cond_43
    if-gez p1, :cond_72

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_72

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v4

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_72

    .line 1524
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    .line 1525
    .restart local v2    # "size":I
    int-to-float v4, p1

    mul-float/2addr v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1526
    .restart local v4    # "deltaDistance":F
    int-to-float v5, v2

    div-float/2addr v5, v3

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1527
    invoke-virtual {v3, v4, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    mul-float/2addr v5, v1

    .line 1526
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1528
    .restart local v1    # "consumed":I
    if-eq v1, p1, :cond_6f

    .line 1529
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->finish()V

    .line 1531
    :cond_6f
    sub-int v3, p1, v1

    return v3

    .line 1533
    .end local v1    # "consumed":I
    .end local v2    # "size":I
    .end local v4    # "deltaDistance":F
    :cond_72
    return p1

    .line 1511
    :cond_73
    :goto_73
    return p1
.end method

.method private greylist-max-o doScrollX(I)V
    .registers 4
    .param p1, "delta"    # I

    .line 1336
    if-eqz p1, :cond_e

    .line 1337
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1338
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_e

    .line 1340
    :cond_b
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1343
    :cond_e
    :goto_e
    return-void
.end method

.method private greylist-max-o findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 16
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    .line 1082
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1083
    .local v0, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1092
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v2, 0x0

    .line 1094
    .local v2, "foundFullyContainedFocusable":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1095
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v3, :cond_54

    .line 1096
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1097
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1098
    .local v6, "viewLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1100
    .local v7, "viewRight":I
    if-ge p2, v7, :cond_51

    if-ge v6, p3, :cond_51

    .line 1106
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge p2, v6, :cond_28

    if-ge v7, p3, :cond_28

    move v10, v9

    goto :goto_29

    :cond_28
    move v10, v8

    .line 1109
    .local v10, "viewIsFullyContained":Z
    :goto_29
    if-nez v1, :cond_2e

    .line 1111
    move-object v1, v5

    .line 1112
    move v2, v10

    goto :goto_51

    .line 1114
    :cond_2e
    if-eqz p1, :cond_36

    .line 1115
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    if-lt v6, v11, :cond_3e

    :cond_36
    if-nez p1, :cond_40

    .line 1116
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    if-le v7, v11, :cond_40

    :cond_3e
    move v8, v9

    goto :goto_41

    :cond_40
    nop

    .line 1118
    .local v8, "viewIsCloserToBoundary":Z
    :goto_41
    if-eqz v2, :cond_49

    .line 1119
    if-eqz v10, :cond_51

    if-eqz v8, :cond_51

    .line 1125
    move-object v1, v5

    goto :goto_51

    .line 1128
    :cond_49
    if-eqz v10, :cond_4e

    .line 1130
    move-object v1, v5

    .line 1131
    const/4 v2, 0x1

    goto :goto_51

    .line 1132
    :cond_4e
    if-eqz v8, :cond_51

    .line 1137
    move-object v1, v5

    .line 1095
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewLeft":I
    .end local v7    # "viewRight":I
    .end local v8    # "viewIsCloserToBoundary":Z
    .end local v10    # "viewIsFullyContained":Z
    :cond_51
    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1144
    .end local v4    # "i":I
    :cond_54
    return-object v1
.end method

.method private greylist-max-o findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .registers 8
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    .line 1051
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1052
    .local v0, "fadingEdgeLength":I
    add-int v1, p2, v0

    .line 1053
    .local v1, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    .line 1055
    .local v2, "rightWithoutFadingEdge":I
    if-eqz p3, :cond_1d

    .line 1056
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_1d

    .line 1057
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_1d

    .line 1058
    return-object p3

    .line 1061
    :cond_1d
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o getScrollRange()I
    .registers 7

    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_20

    .line 1021
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1022
    .local v2, "child":Landroid/view/View;
    nop

    .line 1023
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 1022
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1025
    .end local v2    # "child":Landroid/view/View;
    :cond_20
    return v0
.end method

.method private greylist-max-o inChild(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 529
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2b

    .line 530
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 531
    .local v0, "scrollX":I
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 532
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_29

    .line 533
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_29

    .line 534
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p1, v3, :cond_29

    .line 535
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 532
    :goto_2a
    return v1

    .line 537
    .end local v0    # "scrollX":I
    .end local v2    # "child":Landroid/view/View;
    :cond_2b
    return v1
.end method

.method private greylist-max-o initOrResetVelocityTracker()V
    .registers 2

    .line 541
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 542
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_10

    .line 544
    :cond_b
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 546
    :goto_10
    return-void
.end method

.method private greylist-max-o initScrollView()V
    .registers 3

    .line 330
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 331
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 332
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 334
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 335
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 336
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    .line 337
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    .line 338
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    .line 339
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    .line 340
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mHorizontalScrollFactor:F

    .line 341
    return-void
.end method

.method private greylist-max-o initVelocityTrackerIfNotExists()V
    .registers 2

    .line 549
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 550
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 552
    :cond_a
    return-void
.end method

.method private greylist-max-o isOffScreen(Landroid/view/View;)Z
    .registers 3
    .param p1, "descendant"    # Landroid/view/View;

    .line 1315
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static greylist-max-o isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .line 1778
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1779
    return v0

    .line 1782
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1783
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private greylist-max-o isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I

    .line 1323
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1324
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1326
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    .line 1327
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 1326
    :goto_28
    return v0
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 848
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 849
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_2d

    .line 853
    if-nez v0, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 854
    .local v2, "newPointerIndex":I
    :goto_17
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 855
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 856
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2d

    .line 857
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 860
    .end local v2    # "newPointerIndex":I
    :cond_2d
    return-void
.end method

.method private greylist recycleVelocityTracker()V
    .registers 2

    .line 556
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 557
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 560
    :cond_c
    return-void
.end method

.method private greylist-max-o scrollAndFocus(III)Z
    .registers 11
    .param p1, "direction"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .line 1227
    const/4 v0, 0x1

    .line 1229
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    .line 1230
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    .line 1231
    .local v2, "containerLeft":I
    add-int v3, v2, v1

    .line 1232
    .local v3, "containerRight":I
    const/16 v4, 0x11

    if-ne p1, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    .line 1234
    .local v4, "goLeft":Z
    :goto_12
    invoke-direct {p0, v4, p2, p3}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1235
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_19

    .line 1236
    move-object v5, p0

    .line 1239
    :cond_19
    if-lt p2, v2, :cond_1f

    if-gt p3, v3, :cond_1f

    .line 1240
    const/4 v0, 0x0

    goto :goto_29

    .line 1242
    :cond_1f
    if-eqz v4, :cond_24

    sub-int v6, p2, v2

    goto :goto_26

    :cond_24
    sub-int v6, p3, v3

    .line 1243
    .local v6, "delta":I
    :goto_26
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 1246
    .end local v6    # "delta":I
    :goto_29
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_32

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1248
    :cond_32
    return v0
.end method

.method private greylist-max-o scrollToChild(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 1542
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1545
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1547
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1549
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_16

    .line 1550
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1552
    :cond_16
    return-void
.end method

.method private greylist-max-o scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .line 1563
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1564
    .local v0, "delta":I
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    move v2, v1

    .line 1565
    .local v2, "scroll":Z
    :goto_a
    if-eqz v2, :cond_15

    .line 1566
    if-eqz p2, :cond_12

    .line 1567
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_15

    .line 1569
    :cond_12
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1572
    :cond_15
    :goto_15
    return v2
.end method

.method private blacklist shouldAbsorb(Landroid/widget/EdgeEffect;I)Z
    .registers 7
    .param p1, "edgeEffect"    # Landroid/widget/EdgeEffect;
    .param p2, "velocity"    # I

    .line 1854
    const/4 v0, 0x1

    if-lez p2, :cond_4

    .line 1855
    return v0

    .line 1857
    :cond_4
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 1860
    .local v1, "distance":F
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    neg-int v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->getSplineFlingDistance(I)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1862
    .local v2, "flingDistance":F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method private blacklist shouldDisplayEdgeEffects()Z
    .registers 3

    .line 1884
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 345
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 349
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 350
    return-void

    .line 346
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 354
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 358
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 359
    return-void

    .line 355
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 372
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 376
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 377
    return-void

    .line 373
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 363
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 367
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    return-void

    .line 364
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist arrowScroll(I)Z
    .registers 11
    .param p1, "direction"    # I

    .line 1260
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1261
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    .line 1263
    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1265
    .local v1, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v2

    .line 1267
    .local v2, "maxJump":I
    if-eqz v1, :cond_32

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1268
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1269
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v3}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1270
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v3

    .line 1271
    .local v3, "scrollDelta":I
    invoke-direct {p0, v3}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 1272
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1273
    .end local v3    # "scrollDelta":I
    goto :goto_6f

    .line 1275
    :cond_32
    move v3, v2

    .line 1277
    .restart local v3    # "scrollDelta":I
    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x42

    if-ne p1, v4, :cond_45

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    if-ge v4, v3, :cond_45

    .line 1278
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    goto :goto_64

    .line 1279
    :cond_45
    if-ne p1, v6, :cond_64

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_64

    .line 1281
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 1283
    .local v4, "daRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 1285
    .local v7, "screenRight":I
    sub-int v8, v4, v7

    if-ge v8, v2, :cond_64

    .line 1286
    sub-int v3, v4, v7

    .line 1289
    .end local v4    # "daRight":I
    .end local v7    # "screenRight":I
    :cond_64
    :goto_64
    if-nez v3, :cond_67

    .line 1290
    return v5

    .line 1292
    :cond_67
    if-ne p1, v6, :cond_6b

    move v4, v3

    goto :goto_6c

    :cond_6b
    neg-int v4, v3

    :goto_6c
    invoke-direct {p0, v4}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 1295
    .end local v3    # "scrollDelta":I
    :goto_6f
    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 1296
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 1302
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDescendantFocusability()I

    move-result v3

    .line 1303
    .local v3, "descendantFocusability":I
    const/high16 v4, 0x20000

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1304
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestFocus()Z

    .line 1305
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1307
    .end local v3    # "descendantFocusability":I
    :cond_8c
    const/4 v3, 0x1

    return v3
.end method

.method protected whitelist computeHorizontalScrollOffset()I
    .registers 3

    .line 1411
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist computeHorizontalScrollRange()I
    .registers 7

    .line 1391
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1392
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 1393
    .local v1, "contentWidth":I
    if-nez v0, :cond_11

    .line 1394
    return v1

    .line 1397
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1398
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1399
    .local v4, "scrollX":I
    sub-int v5, v3, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1400
    .local v2, "overscrollRight":I
    if-gez v4, :cond_26

    .line 1401
    sub-int/2addr v3, v4

    goto :goto_2b

    .line 1402
    :cond_26
    if-le v4, v2, :cond_2b

    .line 1403
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    .line 1406
    :cond_2b
    :goto_2b
    return v3
.end method

.method public whitelist computeScroll()V
    .registers 15

    .line 1448
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1465
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1466
    .local v4, "oldX":I
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1467
    .local v5, "oldY":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 1468
    .local v0, "x":I
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 1469
    .local v11, "y":I
    sub-int v1, v0, v4

    invoke-direct {p0, v1}, Landroid/widget/HorizontalScrollView;->consumeFlingInStretch(I)I

    move-result v2

    .line 1471
    .local v2, "deltaX":I
    if-nez v2, :cond_25

    if-eq v5, v11, :cond_23

    goto :goto_25

    :cond_23
    move-object v1, p0

    goto :goto_6e

    .line 1472
    :cond_25
    :goto_25
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v6

    .line 1473
    .local v6, "range":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v12

    .line 1474
    .local v12, "overscrollMode":I
    const/4 v1, 0x1

    if-eqz v12, :cond_36

    if-ne v12, v1, :cond_35

    if-lez v6, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :cond_36
    :goto_36
    move v13, v1

    .line 1477
    .local v13, "canOverscroll":Z
    sub-int v3, v11, v5

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1479
    iget v3, v1, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v7, v1, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v3, v7, v4, v5}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1481
    if-eqz v13, :cond_6e

    if-eqz v2, :cond_6e

    .line 1482
    if-gez v0, :cond_5e

    if-ltz v4, :cond_5e

    .line 1483
    iget-object v3, v1, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v7, v1, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_6e

    .line 1484
    :cond_5e
    if-le v0, v6, :cond_6e

    if-gt v4, v6, :cond_6e

    .line 1485
    iget-object v3, v1, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v7, v1, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1490
    .end local v6    # "range":I
    .end local v12    # "overscrollMode":I
    .end local v13    # "canOverscroll":Z
    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_77

    .line 1491
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1495
    :cond_77
    invoke-static {}, Landroid/view/flags/Flags;->viewVelocityApi()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 1496
    iget-object v3, v1, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFrameContentVelocity(F)V

    goto :goto_8c

    .line 1448
    .end local v0    # "x":I
    .end local v2    # "deltaX":I
    .end local v4    # "oldX":I
    .end local v5    # "oldY":I
    .end local v11    # "y":I
    :cond_8b
    move-object v1, p0

    .line 1499
    :cond_8c
    :goto_8c
    return-void
.end method

.method protected whitelist computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 9
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1584
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1586
    :cond_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    .line 1587
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    .line 1588
    .local v2, "screenLeft":I
    add-int v3, v2, v0

    .line 1590
    .local v3, "screenRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v4

    .line 1593
    .local v4, "fadingEdge":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-lez v5, :cond_1b

    .line 1594
    add-int/2addr v2, v4

    .line 1598
    :cond_1b
    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_28

    .line 1599
    sub-int/2addr v3, v4

    .line 1602
    :cond_28
    const/4 v5, 0x0

    .line 1604
    .local v5, "scrollXDelta":I
    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-le v6, v3, :cond_4f

    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-le v6, v2, :cond_4f

    .line 1609
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v6, v0, :cond_3c

    .line 1611
    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v2

    add-int/2addr v5, v6

    goto :goto_40

    .line 1614
    :cond_3c
    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    .line 1618
    :goto_40
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1619
    .local v1, "right":I
    sub-int v6, v1, v3

    .line 1620
    .local v6, "distanceToRight":I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1622
    .end local v1    # "right":I
    .end local v6    # "distanceToRight":I
    :cond_4e
    goto :goto_71

    :cond_4f
    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_4e

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v1, v3, :cond_4e

    .line 1627
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v1, v0, :cond_63

    .line 1629
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, v1

    sub-int/2addr v5, v1

    goto :goto_68

    .line 1632
    :cond_63
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v1

    sub-int/2addr v5, v1

    .line 1636
    :goto_68
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1638
    :goto_71
    return v5
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 476
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

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

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1890
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1891
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1892
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1893
    .local v0, "scrollX":I
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1894
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1895
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    .line 1897
    .local v2, "height":I
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1898
    neg-int v3, v2

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1899
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1900
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1901
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1903
    :cond_48
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1905
    .end local v1    # "restoreCount":I
    .end local v2    # "height":I
    :cond_4b
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 1906
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1907
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    .line 1908
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    .line 1910
    .local v3, "height":I
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1911
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    neg-int v4, v4

    int-to-float v4, v4

    .line 1912
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v2

    neg-int v5, v5

    int-to-float v5, v5

    .line 1911
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1913
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1914
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 1915
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1917
    :cond_8c
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1920
    .end local v0    # "scrollX":I
    .end local v1    # "restoreCount":I
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_8f
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1962
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1963
    const-string v0, "layout:fillViewPort"

    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1964
    return-void
.end method

.method public whitelist executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 488
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 490
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v0

    const/16 v1, 0x42

    if-nez v0, :cond_32

    .line 491
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isFocused()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    .line 492
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 493
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_1b

    const/4 v0, 0x0

    .line 494
    :cond_1b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 496
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz v3, :cond_2f

    if-eq v3, p0, :cond_2f

    .line 497
    invoke-virtual {v3, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 496
    :goto_30
    return v2

    .line 499
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v3    # "nextFocused":Landroid/view/View;
    :cond_31
    return v2

    .line 502
    :cond_32
    const/4 v0, 0x0

    .line 503
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6e

    .line 504
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x11

    sparse-switch v2, :sswitch_data_70

    goto :goto_6e

    .line 520
    :sswitch_43
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_4a

    move v1, v3

    :cond_4a
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    goto :goto_6e

    .line 513
    :sswitch_4e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_59

    .line 514
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_6e

    .line 516
    :cond_59
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v0

    .line 518
    goto :goto_6e

    .line 506
    :sswitch_5e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_69

    .line 507
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_6e

    .line 509
    :cond_69
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v0

    .line 511
    nop

    .line 525
    :cond_6e
    :goto_6e
    return v0

    nop

    :sswitch_data_70
    .sparse-switch
        0x15 -> :sswitch_5e
        0x16 -> :sswitch_4e
        0x3e -> :sswitch_43
    .end sparse-switch
.end method

.method public whitelist fling(I)V
    .registers 18
    .param p1, "velocityX"    # I

    .line 1794
    move-object/from16 v0, p0

    move/from16 v4, p1

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_b1

    .line 1795
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int v12, v1, v2

    .line 1796
    .local v12, "width":I
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int v14, v1, v2

    .line 1798
    .local v14, "right":I
    sub-int v1, v14, v12

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1800
    .local v7, "maxScroll":I
    const/4 v1, 0x0

    .line 1801
    .local v1, "shouldFling":Z
    iget v2, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-nez v2, :cond_48

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_48

    .line 1802
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v3, v4

    invoke-direct {v0, v2, v3}, Landroid/widget/HorizontalScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1803
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_61

    .line 1805
    :cond_45
    const/4 v1, 0x1

    move v15, v1

    goto :goto_68

    .line 1807
    :cond_48
    iget v2, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ne v2, v7, :cond_66

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_66

    .line 1808
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-direct {v0, v2, v4}, Landroid/widget/HorizontalScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1809
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1816
    :goto_61
    move v15, v1

    goto :goto_68

    .line 1811
    :cond_63
    const/4 v1, 0x1

    move v15, v1

    goto :goto_68

    .line 1814
    :cond_66
    const/4 v1, 0x1

    move v15, v1

    .line 1816
    .end local v1    # "shouldFling":Z
    .local v15, "shouldFling":Z
    :goto_68
    if-eqz v15, :cond_ae

    .line 1817
    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    div-int/lit8 v10, v12, 0x2

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1821
    invoke-static {}, Landroid/view/flags/Flags;->viewVelocityApi()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 1822
    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setFrameContentVelocity(F)V

    .line 1825
    :cond_8d
    if-lez p1, :cond_90

    const/4 v13, 0x1

    .line 1827
    .local v13, "movingRight":Z
    :cond_90
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 1828
    .local v1, "currentFocused":Landroid/view/View;
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 1829
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    .line 1828
    invoke-direct {v0, v13, v2, v1}, Landroid/widget/HorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 1831
    .local v2, "newFocused":Landroid/view/View;
    if-nez v2, :cond_a2

    .line 1832
    move-object/from16 v2, p0

    .line 1835
    :cond_a2
    if-eq v2, v1, :cond_ae

    .line 1836
    if-eqz v13, :cond_a9

    const/16 v3, 0x42

    goto :goto_ab

    :cond_a9
    const/16 v3, 0x11

    :goto_ab
    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    .line 1840
    .end local v1    # "currentFocused":Landroid/view/View;
    .end local v2    # "newFocused":Landroid/view/View;
    .end local v13    # "movingRight":Z
    :cond_ae
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1842
    .end local v7    # "maxScroll":I
    .end local v12    # "width":I
    .end local v14    # "right":I
    .end local v15    # "shouldFling":Z
    :cond_b1
    return-void
.end method

.method public whitelist fullScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 1196
    const/16 v0, 0x42

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 1197
    .local v0, "right":Z
    :goto_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    .line 1199
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 1200
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 1202
    if-eqz v0, :cond_31

    .line 1203
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    .line 1204
    .local v3, "count":I
    if-lez v3, :cond_31

    .line 1205
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1206
    .local v1, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1207
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1211
    .end local v1    # "view":Landroid/view/View;
    .end local v3    # "count":I
    :cond_31
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v1, v3}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v1

    return v1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 988
    const-class v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLeftEdgeEffectColor()I
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getLeftFadingEdgeStrength()F
    .registers 4

    .line 224
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 225
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 229
    .local v0, "length":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_16

    .line 230
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 233
    :cond_16
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public whitelist getMaxScrollAmount()I
    .registers 3

    .line 325
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getRightEdgeEffectColor()I
    .registers 2

    .line 317
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getRightFadingEdgeStrength()F
    .registers 6

    .line 238
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 239
    const/4 v0, 0x0

    return v0

    .line 242
    :cond_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 243
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 244
    .local v1, "rightEdge":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 245
    .local v2, "span":I
    if-ge v2, v0, :cond_26

    .line 246
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    return v3

    .line 249
    :cond_26
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public whitelist isFillViewport()Z
    .registers 2

    .line 401
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public whitelist isSmoothScrollingEnabled()Z
    .registers 2

    .line 424
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected whitelist measureChild(Landroid/view/View;II)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .line 1417
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1419
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    .line 1420
    .local v1, "horizontalPadding":I
    nop

    .line 1421
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1420
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 1424
    .local v2, "childWidthMeasureSpec":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v3

    .line 1426
    .local v3, "childHeightMeasureSpec":I
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1427
    return-void
.end method

.method protected whitelist measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 1432
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1434
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p5

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v1, v2}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1437
    .local v1, "childHeightMeasureSpec":I
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    .line 1439
    .local v2, "usedTotal":I
    nop

    .line 1440
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1439
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1443
    .local v3, "childWidthMeasureSpec":I
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V

    .line 1444
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 864
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_ac

    goto/16 :goto_a7

    .line 866
    :pswitch_9
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_a7

    .line 868
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    .line 869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_24

    .line 870
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    .local v0, "axisValue":F
    goto :goto_3b

    .line 872
    .end local v0    # "axisValue":F
    :cond_24
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "axisValue":F
    goto :goto_3b

    .line 874
    .end local v0    # "axisValue":F
    :cond_2b
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 875
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "axisValue":F
    goto :goto_3b

    .line 877
    .end local v0    # "axisValue":F
    :cond_3a
    const/4 v0, 0x0

    .line 880
    .restart local v0    # "axisValue":F
    :goto_3b
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mHorizontalScrollFactor:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 881
    .local v2, "delta":I
    if-eqz v2, :cond_a7

    .line 882
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v3

    .line 883
    .local v3, "range":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 884
    .local v4, "oldScrollX":I
    add-int v5, v4, v2

    .line 886
    .local v5, "newScrollX":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v6

    .line 887
    .local v6, "overscrollMode":I
    const/16 v7, 0x2002

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v7

    if-nez v7, :cond_60

    if-eqz v6, :cond_5e

    if-ne v6, v1, :cond_60

    if-lez v3, :cond_60

    :cond_5e
    move v7, v1

    goto :goto_61

    :cond_60
    const/4 v7, 0x0

    .line 890
    .local v7, "canOverscroll":Z
    :goto_61
    const/4 v8, 0x0

    .line 892
    .local v8, "absorbed":Z
    const/high16 v9, 0x3f000000    # 0.5f

    if-gez v5, :cond_80

    .line 893
    if-eqz v7, :cond_7e

    .line 894
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v11, v5

    neg-float v11, v11

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {v10, v11, v9}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 896
    iget-object v9, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 897
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 898
    const/4 v8, 0x1

    .line 900
    :cond_7e
    const/4 v5, 0x0

    goto :goto_9c

    .line 901
    :cond_80
    if-le v5, v3, :cond_9c

    .line 902
    if-eqz v7, :cond_9b

    .line 903
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    sub-int v11, v5, v3

    int-to-float v11, v11

    .line 904
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 903
    invoke-virtual {v10, v11, v9}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 905
    iget-object v9, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 906
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 907
    const/4 v8, 0x1

    .line 909
    :cond_9b
    move v5, v3

    .line 911
    :cond_9c
    :goto_9c
    if-eq v5, v4, :cond_a4

    .line 912
    iget v9, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-super {p0, v5, v9}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 913
    return v1

    .line 915
    :cond_a4
    if-eqz v8, :cond_a7

    .line 916
    return v1

    .line 922
    .end local v0    # "axisValue":F
    .end local v2    # "delta":I
    .end local v3    # "range":I
    .end local v4    # "oldScrollX":I
    .end local v5    # "newScrollX":I
    .end local v6    # "overscrollMode":I
    .end local v7    # "canOverscroll":Z
    .end local v8    # "absorbed":Z
    :cond_a7
    :goto_a7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_ac
    .packed-switch 0x8
        :pswitch_9
    .end packed-switch
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1012
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1013
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1014
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1015
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1016
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 994
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 995
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 996
    .local v0, "scrollRange":I
    if-lez v0, :cond_35

    .line 997
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 998
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lez v1, :cond_21

    .line 999
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1000
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1002
    :cond_21
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_35

    .line 1003
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1004
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1007
    :cond_35
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 584
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_d

    .line 585
    return v2

    .line 588
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 589
    return v2

    .line 592
    :cond_14
    and-int/lit16 v1, v0, 0xff

    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_12c

    :pswitch_1b
    goto/16 :goto_128

    .line 679
    :pswitch_1d
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 680
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    goto/16 :goto_128

    .line 673
    :pswitch_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 674
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 675
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 676
    goto/16 :goto_128

    .line 603
    .end local v1    # "index":I
    :pswitch_42
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 604
    .local v1, "activePointerId":I
    if-ne v1, v3, :cond_48

    .line 606
    goto/16 :goto_128

    .line 609
    :cond_48
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 610
    .local v4, "pointerIndex":I
    if-ne v4, v3, :cond_6e

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in onInterceptTouchEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HorizontalScrollView"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    goto/16 :goto_128

    .line 616
    :cond_6e
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    .line 617
    .local v3, "x":I
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 618
    .local v5, "xDiff":I
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v5, v6, :cond_128

    .line 619
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 620
    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 621
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 622
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 623
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_128

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_128

    .line 666
    .end local v1    # "activePointerId":I
    .end local v3    # "x":I
    .end local v4    # "pointerIndex":I
    .end local v5    # "xDiff":I
    :pswitch_96
    iput-boolean v4, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 667
    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 668
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 669
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_128

    .line 629
    :pswitch_b2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 630
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Landroid/widget/HorizontalScrollView;->inChild(II)Z

    move-result v3

    if-nez v3, :cond_c8

    .line 631
    iput-boolean v4, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 632
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 633
    goto :goto_128

    .line 640
    :cond_c8
    iput v1, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 641
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 643
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initOrResetVelocityTracker()V

    .line 644
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 651
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_f3

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_f3

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 652
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_f1

    goto :goto_f3

    :cond_f1
    move v2, v4

    goto :goto_f4

    :cond_f3
    :goto_f3
    nop

    :goto_f4
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 654
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_111

    .line 655
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 657
    :cond_111
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_128

    .line 658
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 688
    .end local v1    # "x":I
    :cond_128
    :goto_128
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    return v1

    nop

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_96
        :pswitch_42
        :pswitch_96
        :pswitch_1b
        :pswitch_2f
        :pswitch_1d
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1708
    const/4 v1, 0x0

    .line 1709
    .local v1, "childWidth":I
    const/4 v2, 0x0

    .line 1711
    .local v2, "childMargins":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    if-lez v3, :cond_24

    .line 1712
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1713
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1714
    .local v3, "childParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v2, v4, v5

    move v7, v1

    move v8, v2

    goto :goto_26

    .line 1711
    .end local v3    # "childParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_24
    move v7, v1

    move v8, v2

    .line 1717
    .end local v1    # "childWidth":I
    .end local v2    # "childMargins":I
    .local v7, "childWidth":I
    .local v8, "childMargins":I
    :goto_26
    sub-int v1, p4, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeftWithForeground()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1718
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRightWithForeground()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v9, v1, v8

    .line 1720
    .local v9, "available":I
    if-le v7, v9, :cond_39

    const/4 v1, 0x1

    move v5, v1

    goto :goto_3a

    :cond_39
    move v5, v6

    .line 1722
    .local v5, "forceLeftGravity":Z
    :goto_3a
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/HorizontalScrollView;->layoutChildren(IIIIZ)V

    .line 1724
    iput-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1726
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v1, :cond_55

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v1, p0}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1727
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1729
    :cond_55
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1731
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_9f

    .line 1732
    sub-int v2, p4, p2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v2, v3

    sub-int v2, v7, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1734
    .local v2, "scrollRange":I
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    if-eqz v3, :cond_86

    .line 1735
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 1736
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget v3, v3, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    sub-int v3, v2, v3

    goto :goto_81

    .line 1737
    :cond_7d
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget v3, v3, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    :goto_81
    iput v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1738
    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    goto :goto_92

    .line 1740
    :cond_86
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 1741
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v1, v2, v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1745
    :cond_92
    :goto_92
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-le v1, v2, :cond_99

    .line 1746
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    goto :goto_9f

    .line 1747
    :cond_99
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-gez v1, :cond_9f

    .line 1748
    iput v6, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1753
    .end local v2    # "scrollRange":I
    :cond_9f
    :goto_9f
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1754
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 437
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 439
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-nez v0, :cond_8

    .line 440
    return-void

    .line 443
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 444
    .local v0, "widthMode":I
    if-nez v0, :cond_f

    .line 445
    return-void

    .line 448
    :cond_f
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_69

    .line 449
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 452
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 453
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 454
    .local v3, "targetSdkVersion":I
    const/16 v4, 0x17

    if-lt v3, v4, :cond_45

    .line 455
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 456
    .local v4, "widthPadding":I
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .local v5, "heightPadding":I
    goto :goto_4f

    .line 458
    .end local v4    # "widthPadding":I
    .end local v5    # "heightPadding":I
    :cond_45
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    .line 459
    .restart local v4    # "widthPadding":I
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    .line 462
    .restart local v5    # "heightPadding":I
    :goto_4f
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v4

    .line 463
    .local v6, "desiredWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ge v7, v6, :cond_69

    .line 464
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 466
    .local v7, "childWidthMeasureSpec":I
    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v5, v8}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v8

    .line 468
    .local v8, "childHeightMeasureSpec":I
    invoke-virtual {v1, v7, v8}, Landroid/view/View;->measure(II)V

    .line 471
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "targetSdkVersion":I
    .end local v4    # "widthPadding":I
    .end local v5    # "heightPadding":I
    .end local v6    # "desiredWidth":I
    .end local v7    # "childWidthMeasureSpec":I
    .end local v8    # "childHeightMeasureSpec":I
    :cond_69
    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .registers 16
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 934
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 935
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 936
    .local v0, "oldX":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 937
    .local v1, "oldY":I
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 938
    iput p2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 939
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateParentIfNeeded()V

    .line 940
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 941
    if-eqz p3, :cond_2c

    .line 942
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 944
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :cond_2c
    goto :goto_30

    .line 945
    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 948
    :goto_30
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 949
    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 1668
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 1669
    const/16 p1, 0x42

    goto :goto_b

    .line 1670
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1671
    const/16 p1, 0x11

    .line 1674
    :cond_b
    :goto_b
    if-nez p2, :cond_17

    .line 1675
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1f

    .line 1676
    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1f
    nop

    .line 1679
    .local v0, "nextFocus":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 1680
    return v1

    .line 1683
    :cond_24
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1684
    return v1

    .line 1687
    :cond_2b
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1934
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_10

    .line 1937
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1938
    return-void

    .line 1940
    :cond_10
    move-object v0, p1

    check-cast v0, Landroid/widget/HorizontalScrollView$SavedState;

    .line 1941
    .local v0, "ss":Landroid/widget/HorizontalScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1942
    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    .line 1943
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 1944
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1948
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_11

    .line 1951
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 1953
    :cond_11
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1954
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/HorizontalScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/HorizontalScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1955
    .local v1, "ss":Landroid/widget/HorizontalScrollView$SavedState;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    neg-int v2, v2

    goto :goto_26

    :cond_24
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    :goto_26
    iput v2, v1, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    .line 1956
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1758
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1760
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1761
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_2b

    if-ne p0, v0, :cond_c

    goto :goto_2b

    .line 1764
    :cond_c
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    sub-int/2addr v1, v2

    .line 1766
    .local v1, "maxJump":I
    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1767
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1768
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1769
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1770
    .local v2, "scrollDelta":I
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 1772
    .end local v2    # "scrollDelta":I
    :cond_2a
    return-void

    .line 1762
    .end local v1    # "maxJump":I
    :cond_2b
    :goto_2b
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 23
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 693
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    invoke-direct {v0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 694
    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 696
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 698
    .local v11, "action":I
    and-int/lit16 v1, v11, 0xff

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v12, 0x1

    packed-switch v1, :pswitch_data_224

    :pswitch_18
    goto/16 :goto_221

    .line 839
    :pswitch_1a
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_221

    .line 824
    :pswitch_1f
    iget-boolean v1, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_221

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_221

    .line 825
    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v14, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v15, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {v0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 826
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 828
    :cond_42
    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 829
    iput-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 830
    invoke-direct {v0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 832
    invoke-direct {v0}, Landroid/widget/HorizontalScrollView;->shouldDisplayEdgeEffects()Z

    move-result v1

    if-eqz v1, :cond_221

    .line 833
    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 834
    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_221

    .line 724
    :pswitch_5b
    iget v1, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 725
    .local v13, "activePointerIndex":I
    if-ne v13, v2, :cond_85

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HorizontalScrollView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    goto/16 :goto_221

    .line 730
    :cond_85
    invoke-virtual {v10, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v14, v1

    .line 731
    .local v14, "x":I
    iget v1, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int/2addr v1, v14

    .line 732
    .local v1, "deltaX":I
    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_ad

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v2, v4, :cond_ad

    .line 733
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 734
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v2, :cond_a2

    .line 735
    invoke-interface {v2, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 737
    :cond_a2
    iput-boolean v12, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 738
    if-lez v1, :cond_aa

    .line 739
    iget v4, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    sub-int/2addr v1, v4

    goto :goto_ad

    .line 741
    :cond_aa
    iget v4, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    add-int/2addr v1, v4

    .line 744
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_ad
    :goto_ad
    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_221

    .line 746
    iput v14, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 748
    iget v15, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 749
    .local v15, "oldX":I
    invoke-direct {v0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 750
    .local v5, "range":I
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v2

    .line 751
    .local v2, "overscrollMode":I
    if-eqz v2, :cond_c3

    if-ne v2, v12, :cond_c4

    if-lez v5, :cond_c4

    :cond_c3
    move v3, v12

    :cond_c4
    move/from16 v16, v3

    .line 754
    .local v16, "canOverscroll":Z
    invoke-virtual {v10, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 755
    .local v3, "displacement":F
    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    if-eqz v16, :cond_123

    .line 756
    const/4 v4, 0x0

    .line 757
    .local v4, "consumed":I
    if-gez v1, :cond_fb

    iget-object v6, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v6

    cmpl-float v6, v6, v18

    if-eqz v6, :cond_fb

    .line 758
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v8, v1

    .line 759
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v7, v8, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v7

    mul-float/2addr v6, v7

    .line 758
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_122

    .line 761
    :cond_fb
    if-lez v1, :cond_122

    iget-object v6, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v6

    cmpl-float v6, v6, v18

    if-eqz v6, :cond_122

    .line 762
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v8, v1

    int-to-float v8, v8

    .line 763
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float v9, v17, v3

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v7

    mul-float/2addr v6, v7

    .line 762
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 766
    :cond_122
    :goto_122
    sub-int/2addr v1, v4

    .line 771
    .end local v4    # "consumed":I
    :cond_123
    move v4, v3

    .end local v3    # "displacement":F
    .local v4, "displacement":F
    iget v3, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v7, v0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v6, v2

    .end local v2    # "overscrollMode":I
    .local v6, "overscrollMode":I
    const/4 v2, 0x0

    move/from16 v19, v4

    .end local v4    # "displacement":F
    .local v19, "displacement":F
    const/4 v4, 0x0

    move/from16 v20, v6

    .end local v6    # "overscrollMode":I
    .local v20, "overscrollMode":I
    const/4 v6, 0x0

    move/from16 v12, v19

    .end local v19    # "displacement":F
    .local v12, "displacement":F
    invoke-virtual/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 774
    if-eqz v16, :cond_193

    int-to-float v2, v1

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_193

    .line 775
    add-int v2, v15, v1

    .line 776
    .local v2, "pulledToX":I
    if-gez v2, :cond_15f

    .line 777
    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    sub-float v6, v17, v12

    invoke-virtual {v3, v4, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 779
    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_17a

    .line 780
    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_17a

    .line 782
    :cond_15f
    if-le v2, v5, :cond_17a

    .line 783
    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4, v12}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 785
    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_17a

    .line 786
    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 789
    :cond_17a
    :goto_17a
    invoke-direct {v0}, Landroid/widget/HorizontalScrollView;->shouldDisplayEdgeEffects()Z

    move-result v3

    if-eqz v3, :cond_193

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 790
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_190

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_193

    .line 791
    :cond_190
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 794
    .end local v2    # "pulledToX":I
    .end local v5    # "range":I
    .end local v12    # "displacement":F
    .end local v15    # "oldX":I
    .end local v16    # "canOverscroll":Z
    .end local v20    # "overscrollMode":I
    :cond_193
    goto/16 :goto_221

    .line 797
    .end local v1    # "deltaX":I
    .end local v13    # "activePointerIndex":I
    .end local v14    # "x":I
    :pswitch_195
    iget-boolean v1, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_221

    .line 798
    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 799
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    iget v4, v0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v1, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 800
    iget v4, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    float-to-int v4, v4

    .line 802
    .local v4, "initialVelocity":I
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1d5

    .line 803
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, v0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    if-le v5, v6, :cond_1bd

    .line 804
    neg-int v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->fling(I)V

    goto :goto_1d5

    .line 806
    :cond_1bd
    iget-object v12, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v14, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 807
    invoke-direct {v0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v16

    .line 806
    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_1d5

    .line 808
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 813
    :cond_1d5
    :goto_1d5
    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 814
    iput-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 815
    invoke-direct {v0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 817
    invoke-direct {v0}, Landroid/widget/HorizontalScrollView;->shouldDisplayEdgeEffects()Z

    move-result v2

    if-eqz v2, :cond_1ec

    .line 818
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 819
    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 821
    .end local v1    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "initialVelocity":I
    :cond_1ec
    goto :goto_221

    .line 700
    :pswitch_1ed
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1f4

    .line 701
    return v3

    .line 703
    :cond_1f4
    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_206

    .line 704
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 705
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_206

    .line 706
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 714
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_206
    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_213

    .line 715
    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 719
    :cond_213
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 720
    invoke-virtual {v10, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 721
    nop

    .line 842
    :cond_221
    :goto_221
    const/16 v19, 0x1

    return v19

    :pswitch_data_224
    .packed-switch 0x0
        :pswitch_1ed
        :pswitch_195
        :pswitch_5b
        :pswitch_1f
        :pswitch_18
        :pswitch_18
        :pswitch_1a
    .end packed-switch
.end method

.method public whitelist pageScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 1160
    const/16 v0, 0x42

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 1161
    .local v0, "right":Z
    :goto_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    .line 1163
    .local v2, "width":I
    if-eqz v0, :cond_36

    .line 1164
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1165
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    .line 1166
    .local v3, "count":I
    if-lez v3, :cond_35

    .line 1167
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1168
    .local v1, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_35

    .line 1169
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1172
    .end local v1    # "view":Landroid/view/View;
    .end local v3    # "count":I
    :cond_35
    goto :goto_49

    .line 1173
    :cond_36
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1174
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_49

    .line 1175
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 1178
    :cond_49
    :goto_49
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 1180
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v1, v3}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v1

    return v1
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 954
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 955
    return v1

    .line 957
    :cond_8
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_54

    .line 983
    return v0

    .line 972
    :sswitch_d
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_14

    .line 973
    return v0

    .line 975
    :cond_14
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 976
    .local v2, "viewportWidth":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 977
    .local v3, "targetScrollX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v3, v4, :cond_2d

    .line 978
    invoke-virtual {p0, v3, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 979
    return v1

    .line 981
    .end local v2    # "viewportWidth":I
    .end local v3    # "targetScrollX":I
    :cond_2d
    return v0

    .line 960
    :sswitch_2e
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_35

    .line 961
    return v0

    .line 963
    :cond_35
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 964
    .restart local v2    # "viewportWidth":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    add-int/2addr v3, v2

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 965
    .restart local v3    # "targetScrollX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v3, v4, :cond_52

    .line 966
    invoke-virtual {p0, v3, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 967
    return v1

    .line 969
    .end local v2    # "viewportWidth":I
    .end local v3    # "targetScrollX":I
    :cond_52
    return v0

    nop

    :sswitch_data_54
    .sparse-switch
        0x1000 -> :sswitch_2e
        0x2000 -> :sswitch_d
        0x1020039 -> :sswitch_d
        0x102003b -> :sswitch_2e
    .end sparse-switch
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 1643
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1644
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_10

    .line 1645
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_12

    .line 1648
    :cond_10
    iput-object p2, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1651
    :cond_12
    :goto_12
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1652
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 1694
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1695
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1694
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1697
    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .line 564
    if-eqz p1, :cond_5

    .line 565
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 567
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 568
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 1702
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1703
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1704
    return-void
.end method

.method public whitelist scrollTo(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1873
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3a

    .line 1874
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1875
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p1

    .line 1876
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p2

    .line 1877
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_37

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_3a

    .line 1878
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1881
    .end local v0    # "child":Landroid/view/View;
    :cond_3a
    return-void
.end method

.method public whitelist setEdgeEffectColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 262
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setLeftEdgeEffectColor(I)V

    .line 263
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setRightEdgeEffectColor(I)V

    .line 264
    return-void
.end method

.method public whitelist setFillViewport(Z)V
    .registers 3
    .param p1, "fillViewport"    # Z

    .line 414
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 415
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    .line 416
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 418
    :cond_9
    return-void
.end method

.method public whitelist setLeftEdgeEffectColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 289
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 290
    return-void
.end method

.method public whitelist setRightEdgeEffectColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 276
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 277
    return-void
.end method

.method public whitelist setSmoothScrollingEnabled(Z)V
    .registers 2
    .param p1, "smoothScrollingEnabled"    # Z

    .line 432
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 433
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 927
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist smoothScrollBy(II)V
    .registers 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 1352
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1354
    return-void

    .line 1356
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    .line 1357
    .local v0, "duration":J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_46

    .line 1358
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    .line 1359
    .local v2, "width":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1360
    .local v4, "right":I
    sub-int v5, v4, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1361
    .local v5, "maxX":I
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1362
    .local v6, "scrollX":I
    add-int v7, v6, p1

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int p1, v7, v6

    .line 1364
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {v7, v6, v8, p1, v3}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1365
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1366
    .end local v2    # "width":I
    .end local v4    # "right":I
    .end local v5    # "maxX":I
    .end local v6    # "scrollX":I
    goto :goto_56

    .line 1367
    :cond_46
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_53

    .line 1368
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1370
    :cond_53
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1372
    :goto_56
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    .line 1373
    return-void
.end method

.method public final whitelist smoothScrollTo(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1382
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1383
    return-void
.end method
