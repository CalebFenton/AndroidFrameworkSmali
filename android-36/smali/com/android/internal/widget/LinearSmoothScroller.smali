.class public Lcom/android/internal/widget/LinearSmoothScroller;
.super Lcom/android/internal/widget/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MILLISECONDS_PER_INCH:F = 25.0f

.field public static final blacklist SNAP_TO_ANY:I = 0x0

.field public static final blacklist SNAP_TO_END:I = 0x1

.field public static final blacklist SNAP_TO_START:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "LinearSmoothScroller"

.field private static final blacklist TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final blacklist TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final blacklist MILLISECONDS_PER_PX:F

.field protected final blacklist mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected blacklist mInterimTargetDx:I

.field protected blacklist mInterimTargetDy:I

.field protected final blacklist mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected blacklist mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 83
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 85
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    .line 97
    return-void
.end method

.method private blacklist clampApplyScroll(II)I
    .registers 5
    .param p1, "tmpDt"    # I
    .param p2, "dt"    # I

    .line 254
    move v0, p1

    .line 255
    .local v0, "before":I
    sub-int/2addr p1, p2

    .line 256
    mul-int v1, v0, p1

    if-gtz v1, :cond_8

    .line 257
    const/4 v1, 0x0

    return v1

    .line 259
    :cond_8
    return p1
.end method


# virtual methods
.method public blacklist calculateDtToFit(IIIII)I
    .registers 8
    .param p1, "viewStart"    # I
    .param p2, "viewEnd"    # I
    .param p3, "boxStart"    # I
    .param p4, "boxEnd"    # I
    .param p5, "snapPreference"    # I

    .line 268
    packed-switch p5, :pswitch_data_1e

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :pswitch_c
    sub-int v0, p4, p2

    return v0

    .line 274
    :pswitch_f
    sub-int v0, p3, p1

    .line 275
    .local v0, "dtStart":I
    if-lez v0, :cond_14

    .line 276
    return v0

    .line 278
    :cond_14
    sub-int v1, p4, p2

    .line 279
    .local v1, "dtEnd":I
    if-gez v1, :cond_19

    .line 280
    return v1

    .line 287
    .end local v0    # "dtStart":I
    .end local v1    # "dtEnd":I
    :cond_19
    const/4 v0, 0x0

    return v0

    .line 270
    :pswitch_1b
    sub-int v0, p3, p1

    return v0

    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_1b
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method public blacklist calculateDxToMakeVisible(Landroid/view/View;I)I
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 328
    .local v0, "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_e

    move v9, p2

    goto :goto_3b

    .line 331
    :cond_e
    nop

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 333
    .local v1, "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v5, v2, v3

    .line 334
    .local v5, "left":I
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v6, v2, v3

    .line 335
    .local v6, "right":I
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v7

    .line 336
    .local v7, "start":I
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v3

    sub-int v8, v2, v3

    .line 337
    .local v8, "end":I
    move-object v4, p0

    move v9, p2

    .end local p2    # "snapPreference":I
    .local v9, "snapPreference":I
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p2

    return p2

    .line 328
    .end local v1    # "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "start":I
    .end local v8    # "end":I
    .end local v9    # "snapPreference":I
    .restart local p2    # "snapPreference":I
    :cond_3a
    move v9, p2

    .line 329
    .end local p2    # "snapPreference":I
    .restart local v9    # "snapPreference":I
    :goto_3b
    const/4 p2, 0x0

    return p2
.end method

.method public blacklist calculateDyToMakeVisible(Landroid/view/View;I)I
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 303
    .local v0, "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_e

    move v9, p2

    goto :goto_3b

    .line 306
    :cond_e
    nop

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 308
    .local v1, "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v5, v2, v3

    .line 309
    .local v5, "top":I
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v6, v2, v3

    .line 310
    .local v6, "bottom":I
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v7

    .line 311
    .local v7, "start":I
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v3

    sub-int v8, v2, v3

    .line 312
    .local v8, "end":I
    move-object v4, p0

    move v9, p2

    .end local p2    # "snapPreference":I
    .local v9, "snapPreference":I
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p2

    return p2

    .line 303
    .end local v1    # "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .end local v5    # "top":I
    .end local v6    # "bottom":I
    .end local v7    # "start":I
    .end local v8    # "end":I
    .end local v9    # "snapPreference":I
    .restart local p2    # "snapPreference":I
    :cond_3a
    move v9, p2

    .line 304
    .end local p2    # "snapPreference":I
    .restart local v9    # "snapPreference":I
    :goto_3b
    const/4 p2, 0x0

    return p2
.end method

.method protected blacklist calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 4
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 162
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x41c80000    # 25.0f

    div-float/2addr v1, v0

    return v1
.end method

.method protected blacklist calculateTimeForDeceleration(I)I
    .registers 6
    .param p1, "dx"    # I

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected blacklist calculateTimeForScrolling(I)I
    .registers 4
    .param p1, "dx"    # I

    .line 193
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public blacklist computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 5
    .param p1, "targetPosition"    # I

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 353
    .local v0, "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v1, :cond_10

    .line 354
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 355
    invoke-interface {v1, p1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    .line 354
    return-object v1

    .line 357
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 358
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    const-string v2, "LinearSmoothScroller"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v1, 0x0

    return-object v1
.end method

.method protected blacklist getHorizontalSnapPreference()I
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    goto :goto_1a

    .line 207
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_1b

    :cond_18
    const/4 v0, -0x1

    goto :goto_1b

    .line 206
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method protected blacklist getVerticalSnapPreference()I
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    goto :goto_1a

    .line 221
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_1b

    :cond_18
    const/4 v0, -0x1

    goto :goto_1b

    .line 220
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method protected blacklist onSeekTargetStep(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p4, "action"    # Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getChildCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->stop()V

    .line 128
    return-void

    .line 136
    :cond_a
    iget v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 137
    iget v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 139
    iget v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    if-nez v0, :cond_25

    iget v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    if-nez v0, :cond_25

    .line 140
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/LinearSmoothScroller;->updateActionForInterimTarget(Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V

    .line 143
    :cond_25
    return-void
.end method

.method protected blacklist onStart()V
    .registers 1

    .line 105
    return-void
.end method

.method protected blacklist onStop()V
    .registers 2

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 152
    return-void
.end method

.method protected blacklist onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 11
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "action"    # Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v0

    .line 113
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v1

    .line 114
    .local v1, "dy":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 115
    .local v2, "distance":I
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 116
    .local v3, "time":I
    if-lez v3, :cond_28

    .line 117
    neg-int v4, v0

    neg-int v5, v1

    iget-object v6, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v4, v5, v3, v6}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 119
    :cond_28
    return-void
.end method

.method protected blacklist updateActionForInterimTarget(Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 8
    .param p1, "action"    # Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 233
    .local v0, "scrollVector":Landroid/graphics/PointF;
    if-eqz v0, :cond_48

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    goto :goto_48

    .line 239
    :cond_18
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearSmoothScroller;->normalize(Landroid/graphics/PointF;)V

    .line 240
    iput-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 242
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 243
    iget v1, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 244
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v1

    .line 248
    .local v1, "time":I
    iget v2, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v2, v2

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v5, v1

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iget-object v5, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v2, v4, v3, v5}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 251
    return-void

    .line 234
    .end local v1    # "time":I
    :cond_48
    :goto_48
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v1

    .line 235
    .local v1, "target":I
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->stop()V

    .line 237
    return-void
.end method
