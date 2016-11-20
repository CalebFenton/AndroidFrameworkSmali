.class Landroid/view/RoundScrollbarRenderer;
.super Ljava/lang/Object;
.source "RoundScrollbarRenderer.java"


# static fields
.field private static final DEFAULT_THUMB_COLOR:I = -0x8a8a8b

.field private static final DEFAULT_TRACK_COLOR:I = 0x21ffffff

.field private static final MAX_SCROLLBAR_ANGLE_SWIPE:I = 0x10

.field private static final MIN_SCROLLBAR_ANGLE_SWIPE:I = 0x6

.field private static final SCROLLBAR_ANGLE_RANGE:I = 0x5a

.field private static final WIDTH_PERCENTAGE:F = 0.02f


# instance fields
.field private final mParent:Landroid/view/View;

.field private final mRect:Landroid/graphics/RectF;

.field private final mThumbPaint:Landroid/graphics/Paint;

.field private final mTrackPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 37
    new-instance v0, Landroid/graphics/Paint;

    #@6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    #@b
    .line 38
    new-instance v0, Landroid/graphics/Paint;

    #@d
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@10
    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    #@12
    .line 39
    new-instance v0, Landroid/graphics/RectF;

    #@14
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@17
    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    #@19
    .line 45
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    #@1b
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@1e
    .line 46
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    #@20
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@25
    .line 47
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    #@27
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@2c
    .line 50
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    #@2e
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@31
    .line 51
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    #@33
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@35
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@38
    .line 52
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    #@3a
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@3c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@3f
    .line 54
    iput-object p1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    #@41
    .line 42
    return-void
.end method

.method private static applyAlpha(IF)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 108
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v1

    #@4
    int-to-float v1, v1

    #@5
    mul-float/2addr v1, p1

    #@6
    float-to-int v0, v1

    #@7
    .line 109
    .local v0, "alphaByte":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@a
    move-result v1

    #@b
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@e
    move-result v2

    #@f
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@12
    move-result v3

    #@13
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    #@16
    move-result v1

    #@17
    return v1
.end method

.method private static clamp(FFF)F
    .locals 1
    .param p0, "val"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    #@0
    .prologue
    .line 98
    cmpg-float v0, p0, p1

    #@2
    if-gez v0, :cond_0

    #@4
    .line 99
    return p1

    #@5
    .line 100
    :cond_0
    cmpl-float v0, p0, p2

    #@7
    if-lez v0, :cond_1

    #@9
    .line 101
    return p2

    #@a
    .line 103
    :cond_1
    return p0
.end method

.method private setThumbColor(I)V
    .locals 1
    .param p1, "thumbColor"    # I

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@5
    move-result v0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 114
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    #@a
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@d
    .line 112
    :cond_0
    return-void
.end method

.method private setTrackColor(I)V
    .locals 1
    .param p1, "trackColor"    # I

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@5
    move-result v0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 120
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    #@a
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@d
    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public drawRoundScrollbars(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alpha"    # F
    .param p3, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 58
    const/4 v1, 0x0

    #@1
    cmpl-float v1, p2, v1

    #@3
    if-nez v1, :cond_0

    #@5
    .line 59
    return-void

    #@6
    .line 62
    :cond_0
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    #@8
    invoke-virtual {v1}, Landroid/view/View;->computeVerticalScrollRange()I

    #@b
    move-result v1

    #@c
    int-to-float v9, v1

    #@d
    .line 63
    .local v9, "maxScroll":F
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    #@f
    invoke-virtual {v1}, Landroid/view/View;->computeVerticalScrollExtent()I

    #@12
    move-result v1

    #@13
    int-to-float v10, v1

    #@14
    .line 64
    .local v10, "scrollExtent":F
    const/4 v1, 0x0

    #@15
    cmpg-float v1, v10, v1

    #@17
    if-lez v1, :cond_1

    #@19
    cmpg-float v1, v9, v10

    #@1b
    if-gtz v1, :cond_2

    #@1d
    .line 65
    :cond_1
    return-void

    #@1e
    .line 67
    :cond_2
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    #@20
    invoke-virtual {v1}, Landroid/view/View;->computeVerticalScrollOffset()I

    #@23
    move-result v1

    #@24
    const/4 v2, 0x0

    #@25
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v1

    #@29
    int-to-float v7, v1

    #@2a
    .line 68
    .local v7, "currentScroll":F
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    #@2c
    invoke-virtual {v1}, Landroid/view/View;->computeVerticalScrollExtent()I

    #@2f
    move-result v1

    #@30
    int-to-float v8, v1

    #@31
    .line 69
    .local v8, "linearThumbLength":F
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    #@33
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@36
    move-result v1

    #@37
    int-to-float v1, v1

    #@38
    const v2, 0x3ca3d70a    # 0.02f

    #@3b
    mul-float v13, v1, v2

    #@3d
    .line 70
    .local v13, "thumbWidth":F
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    #@3f
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@42
    .line 71
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    #@44
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@47
    .line 73
    const v1, -0x8a8a8b

    #@4a
    move/from16 v0, p2

    #@4c
    invoke-static {v1, v0}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    #@4f
    move-result v1

    #@50
    invoke-direct {p0, v1}, Landroid/view/RoundScrollbarRenderer;->setThumbColor(I)V

    #@53
    .line 74
    const v1, 0x21ffffff

    #@56
    move/from16 v0, p2

    #@58
    invoke-static {v1, v0}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    #@5b
    move-result v1

    #@5c
    invoke-direct {p0, v1}, Landroid/view/RoundScrollbarRenderer;->setTrackColor(I)V

    #@5f
    .line 77
    div-float v1, v8, v9

    #@61
    const/high16 v2, 0x42b40000    # 90.0f

    #@63
    mul-float v12, v1, v2

    #@65
    .line 78
    .local v12, "sweepAngle":F
    const/high16 v1, 0x40c00000    # 6.0f

    #@67
    const/high16 v2, 0x41800000    # 16.0f

    #@69
    invoke-static {v12, v1, v2}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    #@6c
    move-result v12

    #@6d
    .line 80
    const/high16 v1, 0x42b40000    # 90.0f

    #@6f
    sub-float/2addr v1, v12

    #@70
    mul-float/2addr v1, v7

    #@71
    .line 81
    sub-float v2, v9, v8

    #@73
    .line 80
    div-float/2addr v1, v2

    #@74
    .line 81
    const/high16 v2, 0x42340000    # 45.0f

    #@76
    .line 80
    sub-float v11, v1, v2

    #@78
    .line 82
    .local v11, "startAngle":F
    const/high16 v1, -0x3dcc0000    # -45.0f

    #@7a
    .line 83
    const/high16 v2, 0x42340000    # 45.0f

    #@7c
    sub-float/2addr v2, v12

    #@7d
    .line 82
    invoke-static {v11, v1, v2}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    #@80
    move-result v11

    #@81
    .line 86
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    #@83
    .line 87
    move-object/from16 v0, p3

    #@85
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@87
    int-to-float v2, v2

    #@88
    const/high16 v3, 0x40000000    # 2.0f

    #@8a
    div-float v3, v13, v3

    #@8c
    sub-float/2addr v2, v3

    #@8d
    .line 88
    move-object/from16 v0, p3

    #@8f
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@91
    int-to-float v3, v3

    #@92
    .line 89
    move-object/from16 v0, p3

    #@94
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@96
    int-to-float v4, v4

    #@97
    const/high16 v5, 0x40000000    # 2.0f

    #@99
    div-float v5, v13, v5

    #@9b
    sub-float/2addr v4, v5

    #@9c
    .line 90
    move-object/from16 v0, p3

    #@9e
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    #@a0
    int-to-float v5, v5

    #@a1
    .line 86
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    #@a4
    .line 92
    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    #@a6
    const/high16 v3, -0x3dcc0000    # -45.0f

    #@a8
    const/high16 v4, 0x42b40000    # 90.0f

    #@aa
    .line 93
    iget-object v6, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    #@ac
    .line 92
    const/4 v5, 0x0

    #@ad
    move-object v1, p1

    #@ae
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@b1
    .line 94
    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    #@b3
    iget-object v6, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    #@b5
    const/4 v5, 0x0

    #@b6
    move-object v1, p1

    #@b7
    move v3, v11

    #@b8
    move v4, v12

    #@b9
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@bc
    .line 57
    return-void
.end method
