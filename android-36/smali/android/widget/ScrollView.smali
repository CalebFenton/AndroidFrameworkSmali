.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$DifferentialFlingTarget;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final greylist-max-o ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final blacklist FLING_DESTRETCH_FACTOR:F = 4.0f

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field static final greylist-max-o MAX_SCROLL_FACTOR:F = 0.5f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScrollView"


# instance fields
.field private greylist-max-o mActivePointerId:I

.field private greylist-max-p mChildToScrollTo:Landroid/view/View;

.field private blacklist mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

.field public greylist-max-p mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public greylist-max-p mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private greylist-max-o mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-r mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private blacklist mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

.field private greylist mIsBeingDragged:Z

.field private greylist-max-o mIsLayoutDirty:Z

.field private greylist mLastMotionY:I

.field private greylist mLastScroll:J

.field private greylist-max-o mMaximumVelocity:I

.field private greylist-max-p mMinimumVelocity:I

.field private greylist-max-o mNestedYOffset:I

.field private greylist-max-p mOverflingDistance:I

.field private greylist-max-p mOverscrollDistance:I

.field private greylist-max-o mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final greylist-max-o mScrollConsumed:[I

.field private final greylist-max-o mScrollOffset:[I

.field private greylist-max-o mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private greylist mScroller:Landroid/widget/OverScroller;

.field private greylist-max-o mSmoothScrollingEnabled:Z

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTouchSlop:I

.field private greylist mVelocityTracker:Landroid/view/VelocityTracker;

.field private greylist-max-o mVerticalScrollFactor:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScroller(Landroid/widget/ScrollView;)Landroid/widget/OverScroller;
    .registers 1

    iget-object p0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerticalScrollFactor(Landroid/widget/ScrollView;)F
    .registers 1

    iget p0, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 229
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 234
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 237
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 156
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 175
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 198
    const/4 v0, 0x2

    new-array v3, v0, [I

    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 199
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 208
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 209
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 238
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 239
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 240
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 242
    sget-object v0, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 244
    .local v7, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->ScrollView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v4, "context":Landroid/content/Context;
    .local v6, "attrs":Landroid/util/AttributeSet;
    .local v8, "defStyleAttr":I
    .local v9, "defStyleRes":I
    invoke-virtual/range {v3 .. v9}, Landroid/widget/ScrollView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 247
    invoke-virtual {v7, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 249
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_60

    .line 252
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setRevealOnFocusHint(Z)V

    .line 254
    :cond_60
    return-void
.end method

.method private greylist canScroll()Z
    .registers 7

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 423
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_19

    .line 424
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 425
    .local v2, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    .line 427
    .end local v2    # "childHeight":I
    :cond_19
    return v0
.end method

.method private static greylist-max-o clamp(III)I
    .registers 4
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .line 2113
    if-ge p1, p2, :cond_d

    if-gez p0, :cond_5

    goto :goto_d

    .line 2131
    :cond_5
    add-int v0, p1, p0

    if-le v0, p2, :cond_c

    .line 2137
    sub-int v0, p2, p1

    return v0

    .line 2139
    :cond_c
    return p0

    .line 2129
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist consumeFlingInStretch(I)I
    .registers 8
    .param p1, "unconsumed"    # I

    .line 1623
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 1624
    .local v0, "scrollY":I
    if-ltz v0, :cond_7d

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_d

    goto :goto_7d

    .line 1628
    :cond_d
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    if-lez p1, :cond_48

    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_48

    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_48

    .line 1629
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1630
    .local v2, "size":I
    neg-int v4, p1

    int-to-float v4, v4

    mul-float/2addr v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1631
    .local v4, "deltaDistance":F
    neg-int v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1632
    invoke-virtual {v3, v4, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    mul-float/2addr v5, v1

    .line 1631
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1633
    .local v1, "consumed":I
    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1634
    if-eq v1, p1, :cond_45

    .line 1635
    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->finish()V

    .line 1637
    :cond_45
    sub-int v3, p1, v1

    return v3

    .line 1639
    .end local v1    # "consumed":I
    .end local v2    # "size":I
    .end local v4    # "deltaDistance":F
    :cond_48
    if-gez p1, :cond_7c

    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_7c

    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v4

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_7c

    .line 1640
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1641
    .restart local v2    # "size":I
    int-to-float v4, p1

    mul-float/2addr v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1642
    .restart local v4    # "deltaDistance":F
    int-to-float v5, v2

    div-float/2addr v5, v3

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1643
    invoke-virtual {v3, v4, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    mul-float/2addr v5, v1

    .line 1642
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1644
    .restart local v1    # "consumed":I
    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1645
    if-eq v1, p1, :cond_79

    .line 1646
    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->finish()V

    .line 1648
    :cond_79
    sub-int v3, p1, v1

    return v3

    .line 1650
    .end local v1    # "consumed":I
    .end local v2    # "size":I
    .end local v4    # "deltaDistance":F
    :cond_7c
    return p1

    .line 1626
    :cond_7d
    :goto_7d
    return p1
.end method

.method private greylist-max-o doScrollY(I)V
    .registers 4
    .param p1, "delta"    # I

    .line 1438
    if-eqz p1, :cond_e

    .line 1439
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1440
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_e

    .line 1442
    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1445
    :cond_e
    :goto_e
    return-void
.end method

.method private greylist endDrag()V
    .registers 2

    .line 1979
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1981
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1983
    invoke-direct {p0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1984
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1985
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1988
    :cond_16
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_22

    .line 1989
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1990
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1992
    :cond_22
    return-void
.end method

.method private greylist-max-o findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 16
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 1184
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1185
    .local v0, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1194
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v2, 0x0

    .line 1196
    .local v2, "foundFullyContainedFocusable":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1197
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v3, :cond_54

    .line 1198
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1199
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1200
    .local v6, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 1202
    .local v7, "viewBottom":I
    if-ge p2, v7, :cond_51

    if-ge v6, p3, :cond_51

    .line 1208
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge p2, v6, :cond_28

    if-ge v7, p3, :cond_28

    move v10, v9

    goto :goto_29

    :cond_28
    move v10, v8

    .line 1211
    .local v10, "viewIsFullyContained":Z
    :goto_29
    if-nez v1, :cond_2e

    .line 1213
    move-object v1, v5

    .line 1214
    move v2, v10

    goto :goto_51

    .line 1216
    :cond_2e
    if-eqz p1, :cond_36

    .line 1217
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v6, v11, :cond_3e

    :cond_36
    if-nez p1, :cond_40

    .line 1219
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v7, v11, :cond_40

    :cond_3e
    move v8, v9

    goto :goto_41

    :cond_40
    nop

    .line 1221
    .local v8, "viewIsCloserToBoundary":Z
    :goto_41
    if-eqz v2, :cond_49

    .line 1222
    if-eqz v10, :cond_51

    if-eqz v8, :cond_51

    .line 1228
    move-object v1, v5

    goto :goto_51

    .line 1231
    :cond_49
    if-eqz v10, :cond_4e

    .line 1233
    move-object v1, v5

    .line 1234
    const/4 v2, 0x1

    goto :goto_51

    .line 1235
    :cond_4e
    if-eqz v8, :cond_51

    .line 1240
    move-object v1, v5

    .line 1197
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewTop":I
    .end local v7    # "viewBottom":I
    .end local v8    # "viewIsCloserToBoundary":Z
    .end local v10    # "viewIsFullyContained":Z
    :cond_51
    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1247
    .end local v4    # "i":I
    :cond_54
    return-object v1
.end method

.method private greylist-max-o flingWithNestedDispatch(I)V
    .registers 6
    .param p1, "velocityY"    # I

    .line 1932
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v0, :cond_6

    if-lez p1, :cond_11

    :cond_6
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1933
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_13

    if-gez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 1934
    .local v0, "canFling":Z
    :goto_14
    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 1935
    int-to-float v1, p1

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    move-result v1

    .line 1936
    .local v1, "consumed":Z
    if-eqz v0, :cond_27

    .line 1937
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_5e

    .line 1938
    :cond_27
    if-nez v1, :cond_5e

    .line 1939
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_45

    .line 1940
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v3, p1

    invoke-direct {p0, v2, v3}, Landroid/widget/ScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1941
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_5e

    .line 1943
    :cond_41
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_5e

    .line 1945
    :cond_45
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 1946
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v2, p1}, Landroid/widget/ScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1947
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_5e

    .line 1949
    :cond_5b
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 1954
    .end local v1    # "consumed":Z
    :cond_5e
    :goto_5e
    return-void
.end method

.method private greylist-max-o getScrollRange()I
    .registers 7

    .line 1158
    const/4 v0, 0x0

    .line 1159
    .local v0, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_20

    .line 1160
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1161
    .local v2, "child":Landroid/view/View;
    nop

    .line 1162
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 1161
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1164
    .end local v2    # "child":Landroid/view/View;
    :cond_20
    return v0
.end method

.method private greylist-max-o inChild(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 581
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2b

    .line 582
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 583
    .local v0, "scrollY":I
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 584
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_29

    .line 585
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_29

    .line 586
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_29

    .line 587
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 584
    :goto_2a
    return v1

    .line 589
    .end local v0    # "scrollY":I
    .end local v2    # "child":Landroid/view/View;
    :cond_2b
    return v1
.end method

.method private blacklist initDifferentialFlingHelperIfNotExists()V
    .registers 5

    .line 607
    iget-object v0, p0, Landroid/widget/ScrollView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    if-nez v0, :cond_13

    .line 608
    new-instance v0, Landroid/widget/DifferentialMotionFlingHelper;

    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/ScrollView$DifferentialFlingTarget;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ScrollView$DifferentialFlingTarget;-><init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/widget/DifferentialMotionFlingHelper;-><init>(Landroid/content/Context;Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    .line 612
    :cond_13
    return-void
.end method

.method private blacklist initHapticScrollFeedbackProviderIfNotExists()V
    .registers 2

    .line 615
    iget-object v0, p0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    if-nez v0, :cond_b

    .line 616
    new-instance v0, Landroid/view/HapticScrollFeedbackProvider;

    invoke-direct {v0, p0}, Landroid/view/HapticScrollFeedbackProvider;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 618
    :cond_b
    return-void
.end method

.method private greylist-max-o initOrResetVelocityTracker()V
    .registers 2

    .line 593
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 594
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_10

    .line 596
    :cond_b
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 598
    :goto_10
    return-void
.end method

.method private greylist-max-o initScrollView()V
    .registers 3

    .line 368
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 370
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 372
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 373
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 374
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 375
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 376
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 377
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 378
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    .line 379
    return-void
.end method

.method private greylist-max-o initVelocityTrackerIfNotExists()V
    .registers 2

    .line 601
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 602
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 604
    :cond_a
    return-void
.end method

.method private greylist-max-o isOffScreen(Landroid/view/View;)Z
    .registers 4
    .param p1, "descendant"    # Landroid/view/View;

    .line 1417
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static greylist-max-o isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .line 1896
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1897
    return v0

    .line 1900
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1901
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private greylist-max-o isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .line 1425
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1426
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1428
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    .line 1429
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 1428
    :goto_24
    return v0
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 974
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 975
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_2d

    .line 979
    if-nez v0, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 980
    .local v2, "newPointerIndex":I
    :goto_17
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 981
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 982
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2d

    .line 983
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 986
    .end local v2    # "newPointerIndex":I
    :cond_2d
    return-void
.end method

.method private greylist-max-o recycleVelocityTracker()V
    .registers 2

    .line 621
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 622
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 625
    :cond_c
    return-void
.end method

.method private greylist-max-o scrollAndFocus(III)Z
    .registers 11
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 1330
    const/4 v0, 0x1

    .line 1332
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 1333
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 1334
    .local v2, "containerTop":I
    add-int v3, v2, v1

    .line 1335
    .local v3, "containerBottom":I
    const/16 v4, 0x21

    if-ne p1, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    .line 1337
    .local v4, "up":Z
    :goto_12
    invoke-direct {p0, v4, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1338
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_19

    .line 1339
    move-object v5, p0

    .line 1342
    :cond_19
    if-lt p2, v2, :cond_1f

    if-gt p3, v3, :cond_1f

    .line 1343
    const/4 v0, 0x0

    goto :goto_29

    .line 1345
    :cond_1f
    if-eqz v4, :cond_24

    sub-int v6, p2, v2

    goto :goto_26

    :cond_24
    sub-int v6, p3, v3

    .line 1346
    .local v6, "delta":I
    :goto_26
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1349
    .end local v6    # "delta":I
    :goto_29
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_32

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1351
    :cond_32
    return v0
.end method

.method private greylist-max-o scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .line 1684
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1685
    .local v0, "delta":I
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    move v2, v1

    .line 1686
    .local v2, "scroll":Z
    :goto_a
    if-eqz v2, :cond_15

    .line 1687
    if-eqz p2, :cond_12

    .line 1688
    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_15

    .line 1690
    :cond_12
    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1693
    :cond_15
    :goto_15
    return v2
.end method

.method private blacklist shouldAbsorb(Landroid/widget/EdgeEffect;I)Z
    .registers 7
    .param p1, "edgeEffect"    # Landroid/widget/EdgeEffect;
    .param p2, "velocity"    # I

    .line 1966
    const/4 v0, 0x1

    if-lez p2, :cond_4

    .line 1967
    return v0

    .line 1969
    :cond_4
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 1972
    .local v1, "distance":F
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    neg-int v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->getSplineFlingDistance(I)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1974
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

    .line 778
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

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

    .line 383
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 387
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 388
    return-void

    .line 384
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 392
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 396
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 397
    return-void

    .line 393
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 410
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 414
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 415
    return-void

    .line 411
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 401
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 405
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    return-void

    .line 402
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist arrowScroll(I)Z
    .registers 11
    .param p1, "direction"    # I

    .line 1363
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1364
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    .line 1366
    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1368
    .local v1, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v2

    .line 1370
    .local v2, "maxJump":I
    if-eqz v1, :cond_36

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1371
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1372
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v3}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1373
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v3

    .line 1374
    .local v3, "scrollDelta":I
    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1375
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1376
    .end local v3    # "scrollDelta":I
    goto :goto_76

    .line 1378
    :cond_36
    move v3, v2

    .line 1380
    .restart local v3    # "scrollDelta":I
    const/16 v4, 0x21

    const/4 v5, 0x0

    const/16 v6, 0x82

    if-ne p1, v4, :cond_49

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    if-ge v4, v3, :cond_49

    .line 1381
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    goto :goto_6b

    .line 1382
    :cond_49
    if-ne p1, v6, :cond_6b

    .line 1383
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_6b

    .line 1384
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1385
    .local v4, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    .line 1386
    .local v7, "screenBottom":I
    sub-int v8, v4, v7

    if-ge v8, v2, :cond_6b

    .line 1387
    sub-int v3, v4, v7

    .line 1391
    .end local v4    # "daBottom":I
    .end local v7    # "screenBottom":I
    :cond_6b
    :goto_6b
    if-nez v3, :cond_6e

    .line 1392
    return v5

    .line 1394
    :cond_6e
    if-ne p1, v6, :cond_72

    move v4, v3

    goto :goto_73

    :cond_72
    neg-int v4, v3

    :goto_73
    invoke-direct {p0, v4}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1397
    .end local v3    # "scrollDelta":I
    :goto_76
    if-eqz v0, :cond_93

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1398
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1404
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v3

    .line 1405
    .local v3, "descendantFocusability":I
    const/high16 v4, 0x20000

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1406
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 1407
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1409
    .end local v3    # "descendantFocusability":I
    :cond_93
    const/4 v3, 0x1

    return v3
.end method

.method public whitelist computeScroll()V
    .registers 15

    .line 1557
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1574
    iget v4, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1575
    .local v4, "oldX":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1576
    .local v5, "oldY":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 1577
    .local v0, "x":I
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 1578
    .local v11, "y":I
    sub-int v1, v11, v5

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->consumeFlingInStretch(I)I

    move-result v3

    .line 1580
    .local v3, "deltaY":I
    if-ne v4, v0, :cond_25

    if-eqz v3, :cond_23

    goto :goto_25

    :cond_23
    move-object v1, p0

    goto :goto_6e

    .line 1581
    :cond_25
    :goto_25
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v7

    .line 1582
    .local v7, "range":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v12

    .line 1583
    .local v12, "overscrollMode":I
    const/4 v1, 0x1

    if-eqz v12, :cond_36

    if-ne v12, v1, :cond_35

    if-lez v7, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :cond_36
    :goto_36
    move v13, v1

    .line 1586
    .local v13, "canOverscroll":Z
    sub-int v2, v0, v4

    iget v9, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1588
    iget v2, v1, Landroid/widget/ScrollView;->mScrollX:I

    iget v6, v1, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v6, v4, v5}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1590
    if-eqz v13, :cond_6e

    if-eqz v3, :cond_6e

    .line 1591
    if-gez v11, :cond_5e

    if-ltz v5, :cond_5e

    .line 1592
    iget-object v2, v1, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v6, v1, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_6e

    .line 1593
    :cond_5e
    if-le v11, v7, :cond_6e

    if-gt v5, v7, :cond_6e

    .line 1594
    iget-object v2, v1, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v6, v1, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1599
    .end local v7    # "range":I
    .end local v12    # "overscrollMode":I
    .end local v13    # "canOverscroll":Z
    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_77

    .line 1601
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1605
    :cond_77
    invoke-static {}, Landroid/view/flags/Flags;->viewVelocityApi()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1606
    iget-object v2, v1, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setFrameContentVelocity(F)V

    .line 1608
    .end local v0    # "x":I
    .end local v3    # "deltaY":I
    .end local v4    # "oldX":I
    .end local v5    # "oldY":I
    .end local v11    # "y":I
    :cond_8a
    goto :goto_98

    .line 1609
    :cond_8b
    move-object v1, p0

    iget-object v0, v1, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_98

    .line 1610
    iget-object v0, v1, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1611
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1614
    :cond_98
    :goto_98
    return-void
.end method

.method protected whitelist computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 9
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1705
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1707
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 1708
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 1709
    .local v2, "screenTop":I
    add-int v3, v2, v0

    .line 1711
    .local v3, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1714
    .local v4, "fadingEdge":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1b

    .line 1715
    add-int/2addr v2, v4

    .line 1719
    :cond_1b
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_28

    .line 1720
    sub-int/2addr v3, v4

    .line 1723
    :cond_28
    const/4 v5, 0x0

    .line 1725
    .local v5, "scrollYDelta":I
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_4f

    iget v6, p1, Landroid/graphics/Rect;->top:I

    if-le v6, v2, :cond_4f

    .line 1730
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v6, v0, :cond_3c

    .line 1732
    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v2

    add-int/2addr v5, v6

    goto :goto_40

    .line 1735
    :cond_3c
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    .line 1739
    :goto_40
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1740
    .local v1, "bottom":I
    sub-int v6, v1, v3

    .line 1741
    .local v6, "distanceToBottom":I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1743
    .end local v1    # "bottom":I
    .end local v6    # "distanceToBottom":I
    :cond_4e
    goto :goto_71

    :cond_4f
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_4e

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v3, :cond_4e

    .line 1748
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v1, v0, :cond_63

    .line 1750
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v1

    sub-int/2addr v5, v1

    goto :goto_68

    .line 1753
    :cond_63
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    sub-int/2addr v5, v1

    .line 1757
    :goto_68
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1759
    :goto_71
    return v5
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .registers 3

    .line 1517
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist computeVerticalScrollRange()I
    .registers 7

    .line 1497
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1498
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    .line 1499
    .local v1, "contentHeight":I
    if-nez v0, :cond_11

    .line 1500
    return v1

    .line 1503
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1504
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1505
    .local v4, "scrollY":I
    sub-int v5, v3, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1506
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_26

    .line 1507
    sub-int/2addr v3, v4

    goto :goto_2b

    .line 1508
    :cond_26
    if-le v4, v2, :cond_2b

    .line 1509
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    .line 1512
    :cond_2b
    :goto_2b
    return v3
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 514
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2055
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2056
    invoke-direct {p0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 2057
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2058
    .local v0, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v1

    .line 2059
    .local v1, "clipToPadding":Z
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 2060
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2065
    .local v2, "restoreCount":I
    if-eqz v1, :cond_38

    .line 2066
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 2067
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 2068
    .local v4, "height":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v5, v5

    .line 2069
    .local v5, "translateX":F
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v6, v6

    .local v6, "translateY":F
    goto :goto_42

    .line 2071
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":F
    .end local v6    # "translateY":F
    :cond_38
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    .line 2072
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 2073
    .restart local v4    # "height":I
    const/4 v5, 0x0

    .line 2074
    .restart local v5    # "translateX":F
    const/4 v6, 0x0

    .line 2076
    .restart local v6    # "translateY":F
    :goto_42
    const/4 v7, 0x0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2077
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2078
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 2079
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2081
    :cond_5c
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2083
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":F
    .end local v6    # "translateY":F
    :cond_5f
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_bd

    .line 2084
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2089
    .restart local v2    # "restoreCount":I
    if-eqz v1, :cond_88

    .line 2090
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 2091
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 2092
    .restart local v4    # "height":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v5, v5

    .line 2093
    .restart local v5    # "translateX":F
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v6, v6

    .restart local v6    # "translateY":F
    goto :goto_92

    .line 2095
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":F
    .end local v6    # "translateY":F
    :cond_88
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    .line 2096
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 2097
    .restart local v4    # "height":I
    const/4 v5, 0x0

    .line 2098
    .restart local v5    # "translateX":F
    const/4 v6, 0x0

    .line 2100
    .restart local v6    # "translateY":F
    :goto_92
    neg-int v7, v3

    int-to-float v7, v7

    add-float/2addr v7, v5

    .line 2101
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v4

    int-to-float v8, v8

    add-float/2addr v8, v6

    .line 2100
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2102
    int-to-float v7, v3

    const/4 v8, 0x0

    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {p1, v9, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2103
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2104
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 2105
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2107
    :cond_ba
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2110
    .end local v0    # "scrollY":I
    .end local v1    # "clipToPadding":Z
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":F
    .end local v6    # "translateY":F
    :cond_bd
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 2172
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2173
    const-string v0, "fillViewport"

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2174
    return-void
.end method

.method public whitelist executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 526
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 528
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v0

    const/16 v1, 0x82

    if-nez v0, :cond_41

    .line 529
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_40

    .line 530
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x6f

    if-eq v0, v3, :cond_40

    .line 531
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 532
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_2a

    const/4 v0, 0x0

    .line 533
    :cond_2a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 535
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz v3, :cond_3e

    if-eq v3, p0, :cond_3e

    .line 537
    invoke-virtual {v3, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    nop

    .line 535
    :goto_3f
    return v2

    .line 539
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v3    # "nextFocused":Landroid/view/View;
    :cond_40
    return v2

    .line 542
    :cond_41
    const/4 v0, 0x0

    .line 543
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_92

    .line 544
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x21

    sparse-switch v2, :sswitch_data_94

    goto :goto_92

    .line 563
    :sswitch_52
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    .line 564
    goto :goto_92

    .line 560
    :sswitch_57
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    .line 561
    goto :goto_92

    .line 569
    :sswitch_5c
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    move-result v0

    .line 570
    goto :goto_92

    .line 566
    :sswitch_61
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    move-result v0

    .line 567
    goto :goto_92

    .line 572
    :sswitch_66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_6d

    move v1, v3

    :cond_6d
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    move-result v0

    goto :goto_92

    .line 553
    :sswitch_72
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 554
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_92

    .line 556
    :cond_7d
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    .line 558
    goto :goto_92

    .line 546
    :sswitch_82
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 547
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_92

    .line 549
    :cond_8d
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    .line 551
    nop

    .line 577
    :cond_92
    :goto_92
    return v0

    nop

    :sswitch_data_94
    .sparse-switch
        0x13 -> :sswitch_82
        0x14 -> :sswitch_72
        0x3e -> :sswitch_66
        0x5c -> :sswitch_61
        0x5d -> :sswitch_5c
        0x7a -> :sswitch_57
        0x7b -> :sswitch_52
    .end sparse-switch
.end method

.method public whitelist fling(I)V
    .registers 16
    .param p1, "velocityY"    # I

    .line 1912
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_53

    .line 1913
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v0, v1

    .line 1914
    .local v0, "height":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1916
    .local v2, "bottom":I
    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v6, v2, v0

    .line 1917
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    div-int/lit8 v13, v0, 0x2

    .line 1916
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v7, p1

    .end local p1    # "velocityY":I
    .local v7, "velocityY":I
    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1920
    invoke-static {}, Landroid/view/flags/Flags;->viewVelocityApi()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 1921
    iget-object p1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setFrameContentVelocity(F)V

    .line 1923
    :cond_43
    iget-object p1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez p1, :cond_4f

    .line 1924
    const-string p1, "ScrollView-fling"

    invoke-static {p1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1927
    :cond_4f
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_54

    .line 1912
    .end local v0    # "height":I
    .end local v2    # "bottom":I
    .end local v7    # "velocityY":I
    .restart local p1    # "velocityY":I
    :cond_53
    move v7, p1

    .line 1929
    .end local p1    # "velocityY":I
    .restart local v7    # "velocityY":I
    :goto_54
    return-void
.end method

.method public whitelist fullScroll(I)Z
    .registers 9
    .param p1, "direction"    # I

    .line 1299
    const/16 v0, 0x82

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 1300
    .local v0, "down":Z
    :goto_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1302
    .local v2, "height":I
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 1303
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1305
    if-eqz v0, :cond_36

    .line 1306
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 1307
    .local v1, "count":I
    if-lez v1, :cond_36

    .line 1308
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1309
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1310
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1314
    .end local v1    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_36
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v3}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v1

    return v1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1123
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBottomEdgeEffectColor()I
    .registers 2

    .line 356
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .registers 6

    .line 277
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 278
    const/4 v0, 0x0

    return v0

    .line 281
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 282
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    .line 283
    .local v1, "bottomEdge":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 284
    .local v2, "span":I
    if-ge v2, v0, :cond_26

    .line 285
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    return v3

    .line 288
    :cond_26
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public whitelist getMaxScrollAmount()I
    .registers 3

    .line 364
    iget v0, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v1, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getTopEdgeEffectColor()I
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .registers 4

    .line 263
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 264
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 268
    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_16

    .line 269
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 272
    :cond_16
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public whitelist isFillViewport()Z
    .registers 2

    .line 439
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public whitelist isSmoothScrollingEnabled()Z
    .registers 2

    .line 462
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected whitelist measureChild(Landroid/view/View;II)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .line 1523
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1528
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1530
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    .line 1531
    .local v2, "verticalPadding":I
    nop

    .line 1532
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1531
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1535
    .local v3, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1536
    return-void
.end method

.method protected whitelist measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 1541
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1543
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1546
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    .line 1548
    .local v2, "usedTotal":I
    nop

    .line 1549
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1548
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1552
    .local v3, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1553
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 1829
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1831
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1832
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1833
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1835
    :cond_f
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1a

    .line 1836
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1837
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1839
    :cond_1a
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 990
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_e6

    goto/16 :goto_e1

    .line 993
    :pswitch_d
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 994
    const/16 v2, 0x9

    .local v2, "axis":I
    goto :goto_23

    .line 995
    .end local v2    # "axis":I
    :cond_17
    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 996
    const/16 v2, 0x1a

    .restart local v2    # "axis":I
    goto :goto_23

    .line 998
    .end local v2    # "axis":I
    :cond_22
    const/4 v2, -0x1

    .line 1001
    .restart local v2    # "axis":I
    :goto_23
    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    const/4 v3, 0x0

    goto :goto_2c

    :cond_28
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 1002
    .local v3, "axisValue":F
    :goto_2c
    iget v4, v0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1003
    .local v4, "delta":I
    if-eqz v4, :cond_e1

    .line 1007
    const/4 v5, 0x0

    .line 1008
    .local v5, "hitLimit":Z
    invoke-direct {v0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 1009
    .local v6, "range":I
    iget v7, v0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1010
    .local v7, "oldScrollY":I
    sub-int v8, v7, v4

    .line 1012
    .local v8, "newScrollY":I
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v9

    .line 1013
    .local v9, "overscrollMode":I
    const/16 v10, 0x2002

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v10

    const/4 v12, 0x1

    if-nez v10, :cond_53

    if-eqz v9, :cond_51

    if-ne v9, v12, :cond_53

    if-lez v6, :cond_53

    :cond_51
    move v10, v12

    goto :goto_54

    :cond_53
    const/4 v10, 0x0

    .line 1016
    .local v10, "canOverscroll":Z
    :goto_54
    const/4 v13, 0x0

    .line 1018
    .local v13, "absorbed":Z
    const/high16 v14, 0x3f000000    # 0.5f

    if-gez v8, :cond_79

    .line 1019
    if-eqz v10, :cond_74

    .line 1020
    iget-object v15, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v11, v8

    neg-float v11, v11

    move/from16 v16, v12

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {v15, v11, v14}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1021
    iget-object v11, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1022
    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1023
    const/4 v13, 0x1

    goto :goto_76

    .line 1019
    :cond_74
    move/from16 v16, v12

    .line 1025
    :goto_76
    const/4 v8, 0x0

    .line 1026
    const/4 v5, 0x1

    goto :goto_99

    .line 1027
    :cond_79
    move/from16 v16, v12

    if-le v8, v6, :cond_99

    .line 1028
    if-eqz v10, :cond_97

    .line 1029
    iget-object v11, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    sub-int v12, v8, v6

    int-to-float v12, v12

    .line 1030
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v12, v15

    .line 1029
    invoke-virtual {v11, v12, v14}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1031
    iget-object v11, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1032
    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1033
    const/4 v11, 0x1

    move v13, v11

    .line 1035
    :cond_97
    move v8, v6

    .line 1036
    const/4 v5, 0x1

    .line 1038
    :cond_99
    :goto_99
    if-eq v8, v7, :cond_de

    .line 1039
    iget v11, v0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {v0, v11, v8}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1040
    if-eqz v5, :cond_bf

    .line 1041
    invoke-static {}, Landroid/view/flags/Flags;->scrollFeedbackApi()Z

    move-result v11

    if-eqz v11, :cond_dd

    .line 1042
    invoke-direct {v0}, Landroid/widget/ScrollView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 1043
    iget-object v11, v0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 1044
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v14

    if-nez v8, :cond_ba

    move/from16 v15, v16

    goto :goto_bb

    :cond_ba
    const/4 v15, 0x0

    .line 1043
    :goto_bb
    invoke-virtual {v11, v12, v14, v2, v15}, Landroid/view/HapticScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    goto :goto_dd

    .line 1048
    :cond_bf
    invoke-static {}, Landroid/view/flags/Flags;->scrollFeedbackApi()Z

    move-result v11

    if-eqz v11, :cond_d5

    .line 1049
    invoke-direct {v0}, Landroid/widget/ScrollView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 1050
    iget-object v11, v0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 1051
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v14

    .line 1050
    invoke-virtual {v11, v12, v14, v2, v4}, Landroid/view/HapticScrollFeedbackProvider;->onScrollProgress(IIII)V

    .line 1053
    :cond_d5
    invoke-direct {v0}, Landroid/widget/ScrollView;->initDifferentialFlingHelperIfNotExists()V

    .line 1054
    iget-object v11, v0, Landroid/widget/ScrollView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    invoke-virtual {v11, v1, v2}, Landroid/widget/DifferentialMotionFlingHelper;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 1056
    :cond_dd
    :goto_dd
    return v16

    .line 1058
    :cond_de
    if-eqz v13, :cond_e1

    .line 1059
    return v16

    .line 1065
    .end local v2    # "axis":I
    .end local v3    # "axisValue":F
    .end local v4    # "delta":I
    .end local v5    # "hitLimit":Z
    .end local v6    # "range":I
    .end local v7    # "oldScrollY":I
    .end local v8    # "newScrollY":I
    .end local v9    # "overscrollMode":I
    .end local v10    # "canOverscroll":Z
    .end local v13    # "absorbed":Z
    :cond_e1
    :goto_e1
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_data_e6
    .packed-switch 0x8
        :pswitch_d
    .end packed-switch
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1150
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1151
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1152
    .local v0, "scrollable":Z
    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1153
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1154
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1155
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1129
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1130
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1131
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 1132
    .local v0, "scrollRange":I
    if-lez v0, :cond_2f

    .line 1133
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1134
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_21

    .line 1135
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1137
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1139
    :cond_21
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_2f

    .line 1140
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1141
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1145
    .end local v0    # "scrollRange":I
    :cond_2f
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 650
    .local v2, "action":I
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_11

    .line 651
    return v3

    .line 654
    :cond_11
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 655
    return v3

    .line 661
    :cond_18
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_26

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_26

    .line 662
    return v6

    .line 665
    :cond_26
    and-int/lit16 v5, v2, 0xff

    const-string v7, "ScrollView-scroll"

    const/4 v8, -0x1

    packed-switch v5, :pswitch_data_164

    :pswitch_2e
    goto/16 :goto_160

    .line 766
    :pswitch_30
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_160

    .line 676
    :pswitch_35
    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 677
    .local v5, "activePointerId":I
    if-ne v5, v8, :cond_3b

    .line 679
    goto/16 :goto_160

    .line 682
    :cond_3b
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 683
    .local v9, "pointerIndex":I
    if-ne v9, v8, :cond_61

    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onInterceptTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScrollView"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    goto/16 :goto_160

    .line 689
    :cond_61
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    .line 690
    .local v8, "y":I
    iget v10, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 691
    .local v10, "yDiff":I
    iget v11, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v10, v11, :cond_160

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v11

    and-int/2addr v4, v11

    if-nez v4, :cond_160

    .line 692
    iput-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 693
    iput v8, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 694
    invoke-direct {v0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 695
    iget-object v4, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 696
    iput v6, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 697
    iget-object v4, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v4, :cond_91

    .line 698
    invoke-static {v7}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 700
    :cond_91
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 701
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_9a

    .line 702
    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 704
    .end local v4    # "parent":Landroid/view/ViewParent;
    :cond_9a
    goto/16 :goto_160

    .line 757
    .end local v5    # "activePointerId":I
    .end local v8    # "y":I
    .end local v9    # "pointerIndex":I
    .end local v10    # "yDiff":I
    :pswitch_9c
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 758
    iput v8, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 759
    invoke-direct {v0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 760
    iget-object v11, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v12, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v13, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v16, 0x0

    invoke-direct {v0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v17

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v11 .. v17}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 761
    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 763
    :cond_ba
    invoke-virtual {v0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    .line 764
    goto/16 :goto_160

    .line 709
    :pswitch_bf
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 710
    .local v5, "y":I
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v0, v8, v5}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v8

    if-nez v8, :cond_d6

    .line 711
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 712
    invoke-direct {v0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 713
    goto/16 :goto_160

    .line 720
    :cond_d6
    iput v5, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 721
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 723
    invoke-direct {v0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 724
    iget-object v8, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 731
    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 734
    invoke-static {}, Landroid/view/flags/Flags;->viewVelocityApi()Z

    move-result v8

    if-eqz v8, :cond_fe

    .line 735
    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setFrameContentVelocity(F)V

    .line 738
    :cond_fe
    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_119

    iget-object v8, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_119

    iget-object v8, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 739
    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_117

    goto :goto_119

    :cond_117
    move v3, v6

    goto :goto_11a

    :cond_119
    :goto_119
    nop

    :goto_11a
    iput-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 741
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_134

    .line 742
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v3, v6, v8}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 744
    :cond_134
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_14e

    .line 745
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v8

    invoke-virtual {v3, v6, v9}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 747
    :cond_14e
    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_15c

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_15c

    .line 748
    invoke-static {v7}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 750
    :cond_15c
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 751
    nop

    .line 774
    .end local v5    # "y":I
    :cond_160
    :goto_160
    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    return v3

    nop

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_9c
        :pswitch_35
        :pswitch_9c
        :pswitch_2e
        :pswitch_2e
        :pswitch_30
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1843
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1844
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "b":I
    .local p2, "changed":Z
    .local p3, "l":I
    .local p4, "t":I
    .local p5, "r":I
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1846
    iget-object v2, p1, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v2, :cond_1d

    iget-object v2, p1, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v2, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1847
    iget-object v2, p1, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->scrollToDescendant(Landroid/view/View;)V

    .line 1849
    :cond_1d
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1851
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 1852
    iget-object v3, p1, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v3, :cond_32

    .line 1853
    iget-object v3, p1, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v3, v3, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v3, p1, Landroid/widget/ScrollView;->mScrollY:I

    .line 1854
    iput-object v2, p1, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 1857
    :cond_32
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_41

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_42

    :cond_41
    move v2, v1

    .line 1858
    .local v2, "childHeight":I
    :goto_42
    sub-int v3, v0, p4

    iget v4, p1, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int v3, v2, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1862
    .local v3, "scrollRange":I
    iget v4, p1, Landroid/widget/ScrollView;->mScrollY:I

    if-le v4, v3, :cond_57

    .line 1863
    iput v3, p1, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_5d

    .line 1864
    :cond_57
    iget v4, p1, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v4, :cond_5d

    .line 1865
    iput v1, p1, Landroid/widget/ScrollView;->mScrollY:I

    .line 1870
    .end local v2    # "childHeight":I
    .end local v3    # "scrollRange":I
    :cond_5d
    :goto_5d
    iget v1, p1, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p1, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1871
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 475
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 477
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v0, :cond_8

    .line 478
    return-void

    .line 481
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 482
    .local v0, "heightMode":I
    if-nez v0, :cond_f

    .line 483
    return-void

    .line 486
    :cond_f
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_69

    .line 487
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 490
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 491
    .local v2, "targetSdkVersion":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 492
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x17

    if-lt v2, v4, :cond_45

    .line 493
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 494
    .local v4, "widthPadding":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .local v5, "heightPadding":I
    goto :goto_4f

    .line 496
    .end local v4    # "widthPadding":I
    .end local v5    # "heightPadding":I
    :cond_45
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    .line 497
    .restart local v4    # "widthPadding":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    .line 500
    .restart local v5    # "heightPadding":I
    :goto_4f
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v5

    .line 501
    .local v6, "desiredHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-ge v7, v6, :cond_69

    .line 502
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v4, v7}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v7

    .line 504
    .local v7, "childWidthMeasureSpec":I
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 506
    .local v8, "childHeightMeasureSpec":I
    invoke-virtual {v1, v7, v8}, Landroid/view/View;->measure(II)V

    .line 509
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "targetSdkVersion":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "widthPadding":I
    .end local v5    # "heightPadding":I
    .end local v6    # "desiredHeight":I
    .end local v7    # "childWidthMeasureSpec":I
    .end local v8    # "childHeightMeasureSpec":I
    :cond_69
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 2046
    if-nez p4, :cond_8

    .line 2047
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 2048
    const/4 v0, 0x1

    return v0

    .line 2050
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .registers 14
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 2034
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2035
    .local v0, "oldScrollY":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2036
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v4, v1, v0

    .line 2037
    .local v4, "myConsumed":I
    sub-int v6, p5, v4

    .line 2038
    .local v6, "myUnconsumed":I
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 2039
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 2019
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2020
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 2021
    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .registers 16
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 1072
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1073
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1074
    .local v0, "oldX":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1075
    .local v1, "oldY":I
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1076
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1077
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 1078
    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1079
    if-eqz p4, :cond_2c

    .line 1080
    iget-object v4, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1082
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :cond_2c
    goto :goto_30

    .line 1083
    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1086
    :goto_30
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1087
    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 1789
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 1790
    const/16 p1, 0x82

    goto :goto_b

    .line 1791
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1792
    const/16 p1, 0x21

    .line 1795
    :cond_b
    :goto_b
    if-nez p2, :cond_17

    .line 1796
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1f

    .line 1797
    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1f
    nop

    .line 1800
    .local v0, "nextFocus":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 1801
    return v1

    .line 1804
    :cond_24
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1805
    return v1

    .line 1808
    :cond_2b
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2144
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_10

    .line 2147
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2148
    return-void

    .line 2150
    :cond_10
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .line 2151
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2152
    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2153
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 2154
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 2158
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_11

    .line 2161
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 2163
    :cond_11
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2164
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2165
    .local v1, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v1, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    .line 2166
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1875
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1877
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1878
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_27

    if-ne p0, v0, :cond_c

    goto :goto_27

    .line 1884
    :cond_c
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1885
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1886
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1887
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1888
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1890
    .end local v1    # "scrollDelta":I
    :cond_26
    return-void

    .line 1879
    :cond_27
    :goto_27
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 2014
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .registers 2
    .param p1, "target"    # Landroid/view/View;

    .line 2028
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 2029
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 783
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    invoke-direct {v0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 785
    invoke-static {v10}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    .line 787
    .local v11, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    .line 789
    .local v12, "actionMasked":I
    const/4 v1, 0x0

    if-nez v12, :cond_14

    .line 790
    iput v1, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 792
    :cond_14
    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v2, v2

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 794
    const/4 v2, -0x1

    const/4 v14, 0x1

    packed-switch v12, :pswitch_data_2e8

    :pswitch_20
    goto/16 :goto_2d8

    .line 959
    :pswitch_22
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 960
    iget v1, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_2d8

    .line 953
    :pswitch_34
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 954
    .local v1, "index":I
    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 955
    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 956
    goto/16 :goto_2d8

    .line 944
    .end local v1    # "index":I
    :pswitch_47
    iget-boolean v1, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_2d8

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2d8

    .line 945
    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v4, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v8, 0x0

    invoke-direct {v0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 946
    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 948
    :cond_67
    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 949
    invoke-direct {v0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_2d8

    .line 825
    :pswitch_6e
    iget v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v10, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 826
    .local v15, "activePointerIndex":I
    if-ne v15, v2, :cond_98

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrollView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    goto/16 :goto_2d8

    .line 831
    :cond_98
    invoke-virtual {v10, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 832
    .local v2, "y":I
    iget v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int/2addr v3, v2

    .line 833
    .local v3, "deltaY":I
    iget-object v4, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 834
    iget-object v4, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    aget v4, v4, v14

    sub-int/2addr v3, v4

    .line 835
    iget-object v4, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v4, v4, v14

    int-to-float v4, v4

    invoke-virtual {v11, v13, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 836
    iget v4, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v5, v5, v14

    add-int/2addr v4, v5

    iput v4, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 838
    :cond_c0
    iget-boolean v4, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v4, :cond_e0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v4, v5, :cond_e0

    .line 839
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 840
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_d5

    .line 841
    invoke-interface {v4, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 843
    :cond_d5
    iput-boolean v14, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 844
    if-lez v3, :cond_dd

    .line 845
    iget v5, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v3, v5

    goto :goto_e0

    .line 847
    :cond_dd
    iget v5, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v3, v5

    .line 850
    .end local v4    # "parent":Landroid/view/ViewParent;
    :cond_e0
    :goto_e0
    const/16 v16, 0x0

    .line 851
    .local v16, "hitTopLimit":Z
    const/16 v17, 0x0

    .line 852
    .local v17, "hitBottomLimit":Z
    iget-boolean v4, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v4, :cond_213

    .line 854
    iget-object v4, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v4, v4, v14

    sub-int v4, v2, v4

    iput v4, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 856
    iget v4, v0, Landroid/widget/ScrollView;->mScrollY:I

    .line 857
    .local v4, "oldY":I
    invoke-direct {v0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 858
    .local v6, "range":I
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v5

    .line 859
    .local v5, "overscrollMode":I
    if-eqz v5, :cond_100

    if-ne v5, v14, :cond_101

    if-lez v6, :cond_101

    :cond_100
    move v1, v14

    :cond_101
    move/from16 v18, v1

    .line 862
    .local v18, "canOverscroll":Z
    invoke-virtual {v10, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v1, v7

    .line 863
    .local v1, "displacement":F
    const/high16 v19, 0x3f800000    # 1.0f

    if-eqz v18, :cond_167

    .line 864
    const/4 v7, 0x0

    .line 865
    .local v7, "consumed":I
    if-gez v3, :cond_13c

    iget-object v8, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v8

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_13c

    .line 866
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move/from16 v20, v14

    int-to-float v14, v3

    .line 867
    move/from16 v21, v13

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v14, v13

    sub-float v13, v19, v1

    invoke-virtual {v9, v14, v13}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v9

    mul-float/2addr v8, v9

    .line 866
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_165

    .line 865
    :cond_13c
    move/from16 v21, v13

    move/from16 v20, v14

    .line 869
    if-lez v3, :cond_165

    iget-object v8, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v8

    cmpl-float v8, v8, v21

    if-eqz v8, :cond_165

    .line 870
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    iget-object v9, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v13, v3

    int-to-float v13, v13

    .line 871
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-virtual {v9, v13, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v9

    mul-float/2addr v8, v9

    .line 870
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 874
    :cond_165
    :goto_165
    sub-int/2addr v3, v7

    goto :goto_16b

    .line 863
    .end local v7    # "consumed":I
    :cond_167
    move/from16 v21, v13

    move/from16 v20, v14

    .line 879
    :goto_16b
    move v7, v4

    .end local v4    # "oldY":I
    .local v7, "oldY":I
    iget v4, v0, Landroid/widget/ScrollView;->mScrollY:I

    iget v8, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v9, 0x1

    move v13, v1

    .end local v1    # "displacement":F
    .local v13, "displacement":F
    const/4 v1, 0x0

    move v14, v2

    move v2, v3

    .end local v3    # "deltaY":I
    .local v2, "deltaY":I
    .local v14, "y":I
    const/4 v3, 0x0

    move/from16 v22, v5

    .end local v5    # "overscrollMode":I
    .local v22, "overscrollMode":I
    const/4 v5, 0x0

    move/from16 v23, v7

    .end local v7    # "oldY":I
    .local v23, "oldY":I
    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 881
    move v7, v6

    move v6, v2

    .end local v2    # "deltaY":I
    .local v6, "deltaY":I
    .local v7, "range":I
    iget v1, v0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, v1, v23

    .line 882
    .local v2, "scrolledDeltaY":I
    sub-int v4, v6, v2

    .line 883
    .local v4, "unconsumedY":I
    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 884
    iget v1, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v3, v3, v20

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 885
    iget-object v1, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v1, v1, v20

    int-to-float v1, v1

    move/from16 v3, v21

    invoke-virtual {v11, v3, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 886
    iget v1, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v3, v3, v20

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    goto :goto_20f

    .line 887
    :cond_1ad
    if-eqz v18, :cond_20f

    int-to-float v1, v6

    const/16 v21, 0x0

    cmpl-float v1, v1, v21

    if-eqz v1, :cond_20f

    .line 888
    add-int v1, v23, v6

    .line 889
    .local v1, "pulledToY":I
    if-gez v1, :cond_1d7

    .line 890
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v5, v6

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    invoke-virtual {v3, v5, v13}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 892
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1d4

    .line 893
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 895
    :cond_1d4
    const/16 v16, 0x1

    goto :goto_1f6

    .line 896
    :cond_1d7
    if-le v1, v7, :cond_1f6

    .line 897
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v5, v6

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    sub-float v8, v19, v13

    invoke-virtual {v3, v5, v8}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 899
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1f4

    .line 900
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 902
    :cond_1f4
    const/16 v17, 0x1

    .line 904
    :cond_1f6
    :goto_1f6
    invoke-direct {v0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v3

    if-eqz v3, :cond_20f

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 905
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_20c

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_20f

    .line 906
    :cond_20c
    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 912
    .end local v1    # "pulledToY":I
    .end local v2    # "scrolledDeltaY":I
    .end local v4    # "unconsumedY":I
    .end local v7    # "range":I
    .end local v13    # "displacement":F
    .end local v18    # "canOverscroll":Z
    .end local v22    # "overscrollMode":I
    .end local v23    # "oldY":I
    :cond_20f
    :goto_20f
    move v3, v6

    move/from16 v1, v16

    goto :goto_218

    .line 852
    .end local v6    # "deltaY":I
    .end local v14    # "y":I
    .local v2, "y":I
    .restart local v3    # "deltaY":I
    :cond_213
    move/from16 v20, v14

    move v14, v2

    .end local v2    # "y":I
    .restart local v14    # "y":I
    move/from16 v1, v16

    .line 912
    .end local v16    # "hitTopLimit":Z
    .local v1, "hitTopLimit":Z
    :goto_218
    invoke-static {}, Landroid/view/flags/Flags;->enableScrollFeedbackForTouch()Z

    move-result v2

    if-eqz v2, :cond_2d8

    .line 913
    if-nez v1, :cond_23d

    if-eqz v17, :cond_223

    goto :goto_23d

    .line 918
    :cond_223
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eqz v2, :cond_2d8

    .line 919
    invoke-direct {v0}, Landroid/widget/ScrollView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 920
    iget-object v2, v0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    .line 921
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    .line 920
    move/from16 v6, v20

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/HapticScrollFeedbackProvider;->onScrollProgress(IIII)V

    goto/16 :goto_2d8

    .line 914
    :cond_23d
    :goto_23d
    invoke-direct {v0}, Landroid/widget/ScrollView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 915
    iget-object v2, v0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    .line 916
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    .line 915
    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/view/HapticScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    goto/16 :goto_2d8

    .line 926
    .end local v1    # "hitTopLimit":Z
    .end local v3    # "deltaY":I
    .end local v14    # "y":I
    .end local v15    # "activePointerIndex":I
    .end local v17    # "hitBottomLimit":Z
    :pswitch_250
    iget-boolean v1, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_2d8

    .line 927
    iget-object v1, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 928
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    iget v3, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 929
    iget v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v3, v3

    .line 931
    .local v3, "initialVelocity":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v4, v5, :cond_272

    .line 932
    neg-int v4, v3

    invoke-direct {v0, v4}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    goto :goto_28b

    .line 933
    :cond_272
    iget-object v13, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v14, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v15, v0, Landroid/widget/ScrollView;->mScrollY:I

    .line 934
    invoke-direct {v0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v19

    .line 933
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v4

    if-eqz v4, :cond_28b

    .line 935
    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 938
    :cond_28b
    :goto_28b
    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 939
    invoke-direct {v0}, Landroid/widget/ScrollView;->endDrag()V

    .line 940
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 941
    .end local v1    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v3    # "initialVelocity":I
    goto :goto_2d8

    .line 796
    :pswitch_294
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_29b

    .line 797
    return v1

    .line 799
    :cond_29b
    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2ad

    .line 800
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 801
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v2, :cond_2ad

    .line 802
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 810
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_2ad
    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2c6

    .line 811
    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 812
    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_2c6

    .line 813
    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 814
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 819
    :cond_2c6
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 820
    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 821
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 822
    nop

    .line 964
    :cond_2d8
    :goto_2d8
    iget-object v1, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2e1

    .line 965
    iget-object v1, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 967
    :cond_2e1
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 968
    const/16 v20, 0x1

    return v20

    nop

    :pswitch_data_2e8
    .packed-switch 0x0
        :pswitch_294
        :pswitch_250
        :pswitch_6e
        :pswitch_47
        :pswitch_20
        :pswitch_34
        :pswitch_22
    .end packed-switch
.end method

.method public whitelist pageScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 1263
    const/16 v0, 0x82

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 1264
    .local v0, "down":Z
    :goto_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1266
    .local v2, "height":I
    if-eqz v0, :cond_38

    .line 1267
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 1268
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 1269
    .local v1, "count":I
    if-lez v1, :cond_37

    .line 1270
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1271
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_37

    .line 1272
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1275
    .end local v1    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_37
    goto :goto_4b

    .line 1276
    :cond_38
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1277
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_4b

    .line 1278
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 1281
    :cond_4b
    :goto_4b
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 1283
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v3}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v1

    return v1
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1092
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1093
    return v1

    .line 1095
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 1096
    return v2

    .line 1098
    :cond_10
    sparse-switch p1, :sswitch_data_4c

    .line 1118
    return v2

    .line 1110
    :sswitch_14
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v0, v3

    .line 1111
    .local v0, "viewportHeight":I
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v3, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1112
    .local v3, "targetScrollY":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v3, v4, :cond_2d

    .line 1113
    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1114
    return v1

    .line 1116
    .end local v0    # "viewportHeight":I
    .end local v3    # "targetScrollY":I
    :cond_2d
    return v2

    .line 1101
    :sswitch_2e
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v0, v3

    .line 1102
    .restart local v0    # "viewportHeight":I
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v3, v0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1103
    .restart local v3    # "targetScrollY":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v3, v4, :cond_4b

    .line 1104
    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1105
    return v1

    .line 1107
    .end local v0    # "viewportHeight":I
    .end local v3    # "targetScrollY":I
    :cond_4b
    return v2

    :sswitch_data_4c
    .sparse-switch
        0x1000 -> :sswitch_2e
        0x2000 -> :sswitch_14
        0x1020038 -> :sswitch_14
        0x102003a -> :sswitch_2e
    .end sparse-switch
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 1764
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1765
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_10

    .line 1766
    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->scrollToDescendant(Landroid/view/View;)V

    goto :goto_12

    .line 1769
    :cond_10
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1772
    :cond_12
    :goto_12
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1773
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 1815
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1816
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1815
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1818
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .line 629
    if-eqz p1, :cond_5

    .line 630
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 632
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 633
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 1823
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1824
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1825
    return-void
.end method

.method public whitelist scrollTo(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2002
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3a

    .line 2003
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2004
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 2005
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 2006
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_37

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_3a

    .line 2007
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2010
    .end local v0    # "child":Landroid/view/View;
    :cond_3a
    return-void
.end method

.method public whitelist scrollToDescendant(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 1659
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1b

    .line 1660
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1663
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1665
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1667
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_1a

    .line 1668
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1670
    .end local v0    # "scrollDelta":I
    :cond_1a
    goto :goto_1d

    .line 1671
    :cond_1b
    iput-object p1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1673
    :goto_1d
    return-void
.end method

.method public whitelist setBottomEdgeEffectColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 315
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 316
    return-void
.end method

.method public whitelist setEdgeEffectColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 301
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setTopEdgeEffectColor(I)V

    .line 302
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setBottomEdgeEffectColor(I)V

    .line 303
    return-void
.end method

.method public whitelist setFillViewport(Z)V
    .registers 3
    .param p1, "fillViewport"    # Z

    .line 452
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 453
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 454
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 456
    :cond_9
    return-void
.end method

.method public whitelist setSmoothScrollingEnabled(Z)V
    .registers 2
    .param p1, "smoothScrollingEnabled"    # Z

    .line 470
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 471
    return-void
.end method

.method public whitelist setTopEdgeEffectColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 328
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 329
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist smoothScrollBy(II)V
    .registers 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 1454
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1456
    return-void

    .line 1458
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    .line 1459
    .local v0, "duration":J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_46

    .line 1460
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    .line 1461
    .local v2, "height":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1462
    .local v4, "bottom":I
    sub-int v5, v4, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1463
    .local v5, "maxY":I
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1464
    .local v6, "scrollY":I
    add-int v7, v6, p2

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int p2, v7, v6

    .line 1466
    iget-object v7, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v7, v8, v6, v3, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1467
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1468
    .end local v2    # "height":I
    .end local v4    # "bottom":I
    .end local v5    # "maxY":I
    .end local v6    # "scrollY":I
    goto :goto_62

    .line 1469
    :cond_46
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 1470
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1471
    iget-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_5f

    .line 1472
    iget-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 1473
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1476
    :cond_5f
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1478
    :goto_62
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 1479
    return-void
.end method

.method public final whitelist smoothScrollTo(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1488
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1489
    return-void
.end method
