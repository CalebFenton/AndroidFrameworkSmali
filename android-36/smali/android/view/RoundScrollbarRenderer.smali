.class public Landroid/view/RoundScrollbarRenderer;
.super Ljava/lang/Object;
.source "RoundScrollbarRenderer.java"


# static fields
.field public static final blacklist BLUECHIP_ENABLED_SYSPROP:Ljava/lang/String; = "persist.cw_build.bluechip.enabled"

.field private static final greylist-max-o DEFAULT_THUMB_COLOR:I = -0x393939

.field private static final greylist-max-o DEFAULT_TRACK_COLOR:I = -0xd0cecf

.field private static final blacklist GAP_BETWEEN_TRACK_AND_THUMB_DP:F = 3.0f

.field private static final blacklist MAX_SCROLLBAR_ANGLE_SWIPE:F = 20.16f

.field private static final blacklist MIN_SCROLLBAR_ANGLE_SWIPE:F = 8.64f

.field private static final blacklist OUTER_PADDING_DP:F = 2.0f

.field private static final blacklist RESIZING_RATE:F = 0.8f

.field private static final blacklist RESIZING_THRESHOLD_PX:I = 0x14

.field private static final blacklist SCROLLBAR_ANGLE_RANGE:F = 28.8f


# instance fields
.field private blacklist mCurrentScrollDiff:F

.field private blacklist mDrawToLeft:Z

.field private final blacklist mGapBetweenThumbAndTrackPx:F

.field private blacklist mGapBetweenTrackAndThumbAsDegrees:F

.field private final blacklist mInset:F

.field private blacklist mMaxScrollDiff:F

.field private final greylist-max-o mParent:Landroid/view/View;

.field private blacklist mPreviousCurrentScroll:F

.field private blacklist mPreviousMaxScroll:F

.field private final greylist-max-o mRect:Landroid/graphics/RectF;

.field private final greylist-max-o mThumbPaint:Landroid/graphics/Paint;

.field private blacklist mThumbStrokeWidthAsDegrees:F

.field private final greylist-max-o mTrackPaint:Landroid/graphics/Paint;

.field private final blacklist mUseRefactoredRoundScrollbar:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 8
    .param p1, "parent"    # Landroid/view/View;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    .line 65
    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    .line 66
    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousCurrentScroll:F

    .line 67
    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    .line 68
    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    .line 69
    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mGapBetweenTrackAndThumbAsDegrees:F

    .line 75
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 77
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iput-object p1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    .local v0, "resources":Landroid/content/res/Resources;
    nop

    .line 91
    const v2, 0x10500d5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 94
    .local v2, "maskThickness":I
    nop

    .line 95
    const v3, 0x1050338

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 96
    .local v3, "thumbWidth":F
    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {p0, v4}, Landroid/view/RoundScrollbarRenderer;->dpToPx(F)F

    move-result v4

    iput v4, p0, Landroid/view/RoundScrollbarRenderer;->mGapBetweenThumbAndTrackPx:F

    .line 97
    iget-object v4, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object v4, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    int-to-float v5, v2

    add-float/2addr v4, v5

    iput v4, p0, Landroid/view/RoundScrollbarRenderer;->mInset:F

    .line 101
    nop

    .line 102
    invoke-static {}, Landroid/view/flags/Flags;->useRefactoredRoundScrollbar()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_92

    .line 103
    const-string v4, "persist.cw_build.bluechip.enabled"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_92

    goto :goto_93

    :cond_92
    move v1, v5

    :goto_93
    iput-boolean v1, p0, Landroid/view/RoundScrollbarRenderer;->mUseRefactoredRoundScrollbar:Z

    .line 104
    return-void
.end method

.method private static greylist-max-o applyAlpha(IF)I
    .registers 6
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    .line 229
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 230
    .local v0, "alphaByte":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method private blacklist applyThumbColor(F)V
    .registers 4
    .param p1, "alpha"    # F

    .line 234
    const v0, -0x393939

    invoke-static {v0, p1}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    move-result v0

    .line 235
    .local v0, "color":I
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_14

    .line 236
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    :cond_14
    return-void
.end method

.method private blacklist applyTrackColor(F)V
    .registers 4
    .param p1, "alpha"    # F

    .line 241
    const v0, -0xd0cecf

    invoke-static {v0, p1}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    move-result v0

    .line 242
    .local v0, "color":I
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_14

    .line 243
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    :cond_14
    return-void
.end method

.method private static greylist-max-o clamp(FFF)F
    .registers 4
    .param p0, "val"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 221
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .line 222
    return p1

    .line 224
    :cond_5
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private blacklist computeScrollExtent(FF)F
    .registers 7
    .param p1, "scrollExtent"    # F
    .param p2, "maxScroll"    # F

    .line 107
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, -0x40800000    # -1.0f

    if-gtz v1, :cond_1b

    .line 108
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 109
    return v2

    .line 111
    :cond_1a
    return v0

    .line 113
    :cond_1b
    cmpg-float v0, p2, p1

    if-gtz v0, :cond_20

    .line 114
    return v2

    .line 116
    :cond_20
    return p1
.end method

.method private blacklist computeStartAngle(FFFF)F
    .registers 8
    .param p1, "currentScroll"    # F
    .param p2, "sweepAngle"    # F
    .param p3, "maxScroll"    # F
    .param p4, "scrollExtent"    # F

    .line 203
    const v0, 0x41e66666    # 28.8f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    sub-float v1, p3, p4

    div-float/2addr v0, v1

    const v1, 0x41666666    # 14.4f

    sub-float/2addr v0, v1

    .line 206
    .local v0, "startAngle":F
    const v2, -0x3e99999a    # -14.4f

    sub-float/2addr v1, p2

    invoke-static {v0, v2, v1}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method private blacklist computeSweepAngle(FF)F
    .registers 6
    .param p1, "scrollExtent"    # F
    .param p2, "maxScroll"    # F

    .line 196
    div-float v0, p1, p2

    const v1, 0x41e66666    # 28.8f

    mul-float/2addr v0, v1

    .line 197
    .local v0, "sweepAngle":F
    const v1, 0x410a3d71    # 8.64f

    const v2, 0x41a147ae    # 20.16f

    invoke-static {v0, v1, v2}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method private blacklist dpToPx(F)F
    .registers 4
    .param p1, "dp"    # F

    .line 248
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private blacklist draw(Landroid/graphics/Canvas;FFF)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "thumbStartAngle"    # F
    .param p3, "thumbSweepAngle"    # F
    .param p4, "alpha"    # F

    .line 265
    const v0, -0x3e99999a    # -14.4f

    iget v1, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    sub-float v1, p2, v1

    iget v2, p0, Landroid/view/RoundScrollbarRenderer;->mGapBetweenTrackAndThumbAsDegrees:F

    sub-float/2addr v1, v2

    invoke-direct {p0, p1, v0, v1, p4}, Landroid/view/RoundScrollbarRenderer;->drawTrack(Landroid/graphics/Canvas;FFF)V

    .line 276
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/RoundScrollbarRenderer;->drawArc(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 278
    add-float v0, p2, p3

    iget v1, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/view/RoundScrollbarRenderer;->mGapBetweenTrackAndThumbAsDegrees:F

    add-float/2addr v0, v1

    const v1, 0x41666666    # 14.4f

    iget v2, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    add-float/2addr v2, v1

    invoke-direct {p0, p1, v0, v2, p4}, Landroid/view/RoundScrollbarRenderer;->drawTrack(Landroid/graphics/Canvas;FFF)V

    .line 290
    return-void
.end method

.method private blacklist drawArc(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 331
    iget-boolean v0, p0, Landroid/view/RoundScrollbarRenderer;->mDrawToLeft:Z

    if-eqz v0, :cond_12

    .line 332
    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/high16 v0, 0x43340000    # 180.0f

    sub-float v3, v0, p2

    neg-float v4, p3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1c

    .line 334
    :cond_12
    iget-object v5, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    move-object v4, p1

    move v6, p2

    move v7, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 336
    :goto_1c
    return-void
.end method

.method private blacklist drawRoundScrollbars(Landroid/graphics/Canvas;FFF)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "alpha"    # F

    .line 173
    iget-boolean v0, p0, Landroid/view/RoundScrollbarRenderer;->mUseRefactoredRoundScrollbar:Z

    if-eqz v0, :cond_8

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/RoundScrollbarRenderer;->draw(Landroid/graphics/Canvas;FFF)V

    goto :goto_1b

    .line 176
    :cond_8
    invoke-direct {p0, p4}, Landroid/view/RoundScrollbarRenderer;->applyTrackColor(F)V

    .line 177
    const v0, 0x41e66666    # 28.8f

    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    const v2, -0x3e99999a    # -14.4f

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/view/RoundScrollbarRenderer;->drawArc(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 178
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/RoundScrollbarRenderer;->drawArc(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 180
    :goto_1b
    return-void
.end method

.method private blacklist drawTrack(Landroid/graphics/Canvas;FFF)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "beginAngle"    # F
    .param p3, "endAngle"    # F
    .param p4, "alpha"    # F

    .line 294
    sub-float v0, p3, p2

    .line 297
    .local v0, "angleBetweenEndAndBegin":F
    iget v1, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float v1, v0, v1

    .line 299
    .local v1, "sweepAngle":F
    const/high16 v3, -0x40800000    # -1.0f

    .line 300
    .local v3, "startAngle":F
    const/high16 v4, -0x40800000    # -1.0f

    .line 301
    .local v4, "strokeWidth":F
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_1c

    .line 305
    iget v2, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    add-float/2addr v2, p2

    .line 306
    .end local v3    # "startAngle":F
    .local v2, "startAngle":F
    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    .end local v4    # "strokeWidth":F
    .local v3, "strokeWidth":F
    goto :goto_4c

    .line 307
    .end local v2    # "startAngle":F
    .local v3, "startAngle":F
    .restart local v4    # "strokeWidth":F
    :cond_1c
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    mul-float/2addr v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5a

    .line 311
    div-float v5, v0, v2

    add-float v3, p2, v5

    .line 315
    iget-object v5, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    invoke-static {v5, v0}, Landroid/view/RoundScrollbarRenderer;->getKiteEdge(FF)F

    move-result v4

    .line 318
    mul-float/2addr v2, v4

    iget-object v5, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr p4, v2

    .line 320
    const/high16 v1, 0x800000

    move v2, v3

    move v3, v4

    .line 325
    .end local v4    # "strokeWidth":F
    .restart local v2    # "startAngle":F
    .local v3, "strokeWidth":F
    :goto_4c
    invoke-direct {p0, p4}, Landroid/view/RoundScrollbarRenderer;->applyTrackColor(F)V

    .line 326
    iget-object v4, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    iget-object v4, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v1, v4}, Landroid/view/RoundScrollbarRenderer;->drawArc(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 328
    return-void

    .line 322
    .end local v2    # "startAngle":F
    .local v3, "startAngle":F
    .restart local v4    # "strokeWidth":F
    :cond_5a
    return-void
.end method

.method private static blacklist getKiteEdge(FF)F
    .registers 7
    .param p0, "knownEdge"    # F
    .param p1, "angleBetweenKnownEdgesInDegrees"    # F

    .line 260
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p0, v0

    float-to-double v1, v1

    div-float v0, p1, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v0, v1

    return v0
.end method

.method private static blacklist getVertexAngle(FF)F
    .registers 7
    .param p0, "edge"    # F
    .param p1, "base"    # F

    .line 253
    mul-float v0, p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 254
    .local v0, "edgeSquare":F
    mul-float v1, p1, p1

    .line 255
    .local v1, "baseSquare":F
    sub-float v2, v0, v1

    div-float/2addr v2, v0

    invoke-static {v2}, Landroid/util/MathUtils;->acos(F)F

    move-result v2

    .line 256
    .local v2, "gapInRadians":F
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method private blacklist resizeGradually(FF)V
    .registers 7
    .param p1, "maxScroll"    # F
    .param p2, "newScroll"    # F

    .line 121
    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_27

    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_27

    .line 123
    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    iget v3, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    sub-float v3, p1, v3

    add-float/2addr v0, v3

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    .line 124
    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    iget v3, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousCurrentScroll:F

    sub-float v3, p2, v3

    add-float/2addr v0, v3

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    .line 127
    :cond_27
    iput p1, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    .line 128
    iput p2, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousCurrentScroll:F

    .line 130
    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_45

    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    .line 131
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_40

    goto :goto_45

    .line 135
    :cond_40
    iput v2, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    .line 136
    iput v2, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    goto :goto_52

    .line 132
    :cond_45
    :goto_45
    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    .line 133
    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    .line 138
    :goto_52
    return-void
.end method

.method private blacklist updateBounds(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 183
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/view/RoundScrollbarRenderer;->mInset:F

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroid/view/RoundScrollbarRenderer;->mInset:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/RoundScrollbarRenderer;->mInset:F

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/RoundScrollbarRenderer;->mInset:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 188
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    .line 189
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Landroid/view/RoundScrollbarRenderer;->getVertexAngle(FF)F

    move-result v0

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    .line 190
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iget v1, p0, Landroid/view/RoundScrollbarRenderer;->mGapBetweenThumbAndTrackPx:F

    .line 191
    invoke-static {v0, v1}, Landroid/view/RoundScrollbarRenderer;->getVertexAngle(FF)F

    move-result v0

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mGapBetweenTrackAndThumbAsDegrees:F

    .line 192
    return-void
.end method


# virtual methods
.method public blacklist drawRoundScrollbars(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Z)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alpha"    # F
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "drawToLeft"    # Z

    .line 141
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    .line 142
    return-void

    .line 145
    :cond_6
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    int-to-float v1, v1

    .line 146
    .local v1, "maxScroll":F
    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v2

    int-to-float v2, v2

    .line 147
    .local v2, "scrollExtent":F
    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v3

    int-to-float v3, v3

    .line 149
    .local v3, "newScroll":F
    invoke-direct {p0, v2, v1}, Landroid/view/RoundScrollbarRenderer;->computeScrollExtent(FF)F

    move-result v2

    .line 150
    cmpg-float v4, v2, v0

    if-gez v4, :cond_24

    .line 151
    return-void

    .line 155
    :cond_24
    invoke-direct {p0, v1, v3}, Landroid/view/RoundScrollbarRenderer;->resizeGradually(FF)V

    .line 156
    iget v4, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    sub-float/2addr v1, v4

    .line 157
    iget v4, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    sub-float/2addr v3, v4

    .line 159
    invoke-direct {p0, p2}, Landroid/view/RoundScrollbarRenderer;->applyThumbColor(F)V

    .line 161
    invoke-direct {p0, v2, v1}, Landroid/view/RoundScrollbarRenderer;->computeSweepAngle(FF)F

    move-result v4

    .line 162
    .local v4, "sweepAngle":F
    nop

    .line 163
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, v0, v4, v1, v2}, Landroid/view/RoundScrollbarRenderer;->computeStartAngle(FFFF)F

    move-result v0

    .line 165
    .local v0, "startAngle":F
    invoke-direct {p0, p3}, Landroid/view/RoundScrollbarRenderer;->updateBounds(Landroid/graphics/Rect;)V

    .line 167
    iput-boolean p4, p0, Landroid/view/RoundScrollbarRenderer;->mDrawToLeft:Z

    .line 168
    invoke-direct {p0, p1, v0, v4, p2}, Landroid/view/RoundScrollbarRenderer;->drawRoundScrollbars(Landroid/graphics/Canvas;FFF)V

    .line 169
    return-void
.end method

.method blacklist getRoundVerticalScrollBarBounds(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 211
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Landroid/view/RoundScrollbarRenderer;->dpToPx(F)F

    move-result v0

    .line 212
    .local v0, "padding":F
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mRight:I

    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    .line 213
    .local v1, "width":I
    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mBottom:I

    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    .line 214
    .local v2, "height":I
    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mScrollX:I

    float-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 215
    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mScrollY:I

    float-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 216
    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v1

    float-to-int v4, v0

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 217
    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v2

    float-to-int v4, v0

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 218
    return-void
.end method
