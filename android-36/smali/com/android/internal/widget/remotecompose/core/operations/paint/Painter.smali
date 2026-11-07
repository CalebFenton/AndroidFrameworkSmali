.class Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
.super Ljava/lang/Object;
.source "Painter.java"


# instance fields
.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist commit()Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    return-object v0
.end method

.method public blacklist setAlpha(F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 4
    .param p1, "alpha"    # F

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_d

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v1, p1, v1

    goto :goto_e

    :cond_d
    move v1, p1

    :goto_e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setAlpha(F)V

    .line 118
    return-object p0
.end method

.method public blacklist setAntiAlias(Z)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3
    .param p1, "aa"    # Z

    .line 32
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setAntiAlias(Z)V

    .line 33
    return-object p0
.end method

.method public blacklist setColor(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3
    .param p1, "color"    # I

    .line 38
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 39
    return-object p0
.end method

.method public blacklist setColorId(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3
    .param p1, "colorId"    # I

    .line 44
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColorId(I)V

    .line 45
    return-object p0
.end method

.method public blacklist setFilterBitmap(Z)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3
    .param p1, "filter"    # Z

    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setFilterBitmap(Z)V

    .line 245
    return-object p0
.end method

.method public blacklist setLinearGradient(FFFF[I[FI)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 17
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F
    .param p5, "colors"    # [I
    .param p6, "positions"    # [F
    .param p7, "tileMode"    # I

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v2, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v1, p5

    move-object v3, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setLinearGradient([II[FFFFFI)V

    .line 156
    return-object p0
.end method

.method public blacklist setPorterDuffColorFilter(II)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 4
    .param p1, "color"    # I
    .param p2, "mode"    # I

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColorFilter(II)V

    .line 130
    return-object p0
.end method

.method public blacklist setRadialGradient(FFF[I[FI)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 15
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F
    .param p4, "colors"    # [I
    .param p5, "positions"    # [F
    .param p6, "tileMode"    # I

    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v2, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v1, p4

    move-object v3, p5

    move v7, p6

    .end local p1    # "centerX":F
    .end local p2    # "centerY":F
    .end local p3    # "radius":F
    .end local p4    # "colors":[I
    .end local p5    # "positions":[F
    .end local p6    # "tileMode":I
    .local v1, "colors":[I
    .local v3, "positions":[F
    .local v4, "centerX":F
    .local v5, "centerY":F
    .local v6, "radius":F
    .local v7, "tileMode":I
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setRadialGradient([II[FFFFI)V

    .line 181
    return-object p0
.end method

.method public blacklist setShader(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3
    .param p1, "id"    # I

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setShader(I)V

    .line 251
    return-object p0
.end method

.method public blacklist setStrokeCap(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3
    .param p1, "cap"    # I

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeCap(I)V

    .line 93
    return-object p0
.end method

.method public blacklist setStrokeJoin(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3
    .param p1, "join"    # I

    .line 55
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeJoin(I)V

    .line 56
    return-object p0
.end method

.method public blacklist setStrokeMiter(F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3
    .param p1, "miter"    # F

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeMiter(F)V

    .line 106
    return-object p0
.end method

.method public blacklist setStrokeWidth(F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3
    .param p1, "width"    # F

    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeWidth(F)V

    .line 69
    return-object p0
.end method

.method public blacklist setStyle(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3
    .param p1, "style"    # I

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStyle(I)V

    .line 81
    return-object p0
.end method

.method public blacklist setSweepGradient(FF[I[F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 11
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "colors"    # [I
    .param p4, "positions"    # [F

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v2, 0x0

    move v4, p1

    move v5, p2

    move-object v1, p3

    move-object v3, p4

    .end local p1    # "centerX":F
    .end local p2    # "centerY":F
    .end local p3    # "colors":[I
    .end local p4    # "positions":[F
    .local v1, "colors":[I
    .local v3, "positions":[F
    .local v4, "centerX":F
    .local v5, "centerY":F
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setSweepGradient([II[FFF)V

    .line 200
    return-object p0
.end method

.method public blacklist setTextSize(F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3
    .param p1, "size"    # F

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextSize(F)V

    .line 211
    return-object p0
.end method

.method public blacklist setTypeface(IIZ)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 5
    .param p1, "fontType"    # I
    .param p2, "weight"    # I
    .param p3, "italic"    # Z

    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextStyle(IIZ)V

    .line 239
    return-object p0
.end method
