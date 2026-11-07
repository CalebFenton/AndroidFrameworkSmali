.class public abstract Landroid/graphics/BaseCanvas;
.super Ljava/lang/Object;
.source "BaseCanvas.java"


# instance fields
.field private blacklist mAllowHwFeaturesInSwMode:Z

.field protected greylist-max-o mDensity:I

.field protected greylist mNativeCanvasWrapper:J

.field protected greylist-max-o mScreenDensity:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    .line 70
    iput v0, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 71
    iput-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    return-void
.end method

.method protected static final greylist-max-o checkRange(III)V
    .registers 4
    .param p0, "length"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 86
    or-int v0, p1, p2

    if-ltz v0, :cond_9

    add-int v0, p1, p2

    if-gt v0, p0, :cond_9

    .line 89
    return-void

    .line 87
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private static native greylist-max-o nDrawArc(JFFFFFFZJ)V
.end method

.method private static native blacklist nDrawBitmap(JJFFFFFFFFJII)V
.end method

.method private static native blacklist nDrawBitmap(JJFFJIII)V
.end method

.method private static native greylist-max-o nDrawBitmap(J[IIIFFIIZJ)V
.end method

.method private static native blacklist nDrawBitmapMatrix(JJJJ)V
.end method

.method private static native blacklist nDrawBitmapMesh(JJII[FI[IIJ)V
.end method

.method private static native greylist-max-o nDrawCircle(JFFFJ)V
.end method

.method private static native greylist-max-o nDrawColor(JII)V
.end method

.method private static native blacklist nDrawColor(JJJI)V
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V
.end method

.method private static native blacklist nDrawGlyphs(J[I[FIIIJJ)V
.end method

.method private static native greylist-max-o nDrawLine(JFFFFJ)V
.end method

.method private static native greylist-max-o nDrawLines(J[FIIJ)V
.end method

.method private static native blacklist nDrawMesh(JJIJ)V
.end method

.method private static native greylist-max-o nDrawNinePatch(JJJFFFFJII)V
.end method

.method private static native greylist-max-o nDrawOval(JFFFFJ)V
.end method

.method private static native greylist-max-o nDrawPaint(JJ)V
.end method

.method private static native greylist-max-o nDrawPath(JJJ)V
.end method

.method private static native greylist-max-o nDrawPoint(JFFJ)V
.end method

.method private static native greylist-max-o nDrawPoints(J[FIIJ)V
.end method

.method private static native greylist-max-o nDrawRect(JFFFFJ)V
.end method

.method private static native greylist-max-o nDrawRegion(JJJ)V
.end method

.method private static native greylist-max-o nDrawRoundRect(JFFFFFFJ)V
.end method

.method private static native greylist-max-o nDrawText(JLjava/lang/String;IIFFIJ)V
.end method

.method private static native greylist-max-o nDrawText(J[CIIFFIJ)V
.end method

.method private static native greylist-max-o nDrawTextOnPath(JLjava/lang/String;JFFIJ)V
.end method

.method private static native greylist-max-o nDrawTextOnPath(J[CIIJFFIJ)V
.end method

.method private static native greylist-max-o nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V
.end method

.method private static native greylist-max-o nDrawTextRun(J[CIIIIFFZJJ)V
.end method

.method private static native greylist-max-o nDrawVertices(JII[FI[FI[II[SIIJ)V
.end method

.method private static native blacklist nPunchHole(JFFFFFFF)V
.end method

.method private blacklist throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "p"    # Landroid/graphics/Paint;

    .line 738
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_11

    if-nez p1, :cond_9

    goto :goto_11

    .line 741
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V

    .line 742
    return-void

    .line 739
    :cond_11
    :goto_11
    return-void
.end method

.method private blacklist throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V
    .registers 4
    .param p1, "shader"    # Landroid/graphics/Shader;

    .line 745
    if-nez p1, :cond_3

    .line 746
    return-void

    .line 748
    :cond_3
    instance-of v0, p1, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_10

    .line 749
    move-object v0, p1

    check-cast v0, Landroid/graphics/BitmapShader;

    iget-object v0, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    goto :goto_37

    .line 750
    :cond_10
    instance-of v0, p1, Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->onHwFeatureInSwMode()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_23

    .line 751
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Software rendering doesn\'t support RuntimeShader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_23
    :goto_23
    instance-of v0, p1, Landroid/graphics/ComposeShader;

    if-eqz v0, :cond_37

    .line 754
    move-object v0, p1

    check-cast v0, Landroid/graphics/ComposeShader;

    iget-object v0, v0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V

    .line 755
    move-object v0, p1

    check-cast v0, Landroid/graphics/ComposeShader;

    iget-object v0, v0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V

    .line 757
    :cond_37
    :goto_37
    return-void
.end method

.method private greylist-max-o throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 730
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1d

    .line 731
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->onHwFeatureInSwMode()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 732
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Software rendering doesn\'t support hardware bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public greylist-max-o drawARGB(IIII)V
    .registers 6
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 118
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    .line 119
    return-void
.end method

.method public greylist-max-o drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .registers 21
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 105
    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 106
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 106
    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v11}, Landroid/graphics/BaseCanvas;->nDrawArc(JFFFFFFZJ)V

    .line 108
    return-void
.end method

.method public greylist-max-o drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .registers 15
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 112
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 113
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    .end local p2    # "startAngle":F
    .end local p3    # "sweepAngle":F
    .end local p4    # "useCenter":Z
    .end local p5    # "paint":Landroid/graphics/Paint;
    .local v5, "startAngle":F
    .local v6, "sweepAngle":F
    .local v7, "useCenter":Z
    .local v8, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/BaseCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 115
    return-void
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .registers 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 122
    invoke-virtual {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 123
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 124
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    .line 125
    if-eqz p4, :cond_13

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_15

    :cond_13
    const-wide/16 v4, 0x0

    :goto_15
    move-wide v6, v4

    iget v8, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    iget v9, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    iget v10, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 124
    move v4, p2

    move v5, p3

    .end local p2    # "left":F
    .end local p3    # "top":F
    .local v4, "left":F
    .local v5, "top":F
    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JJFFJIII)V

    .line 127
    return-void
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .registers 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 130
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 131
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    .line 132
    if-eqz p3, :cond_14

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    goto :goto_16

    :cond_14
    const-wide/16 v6, 0x0

    .line 131
    :goto_16
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawBitmapMatrix(JJJJ)V

    .line 133
    return-void
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 30
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 137
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v2, :cond_73

    .line 140
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 141
    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 142
    if-nez v3, :cond_15

    const-wide/16 v4, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    :goto_19
    move-wide/from16 v18, v4

    .line 145
    .local v18, "nativePaint":J
    if-nez v1, :cond_28

    .line 146
    const/4 v4, 0x0

    move v5, v4

    .line 147
    .local v4, "left":I
    .local v5, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 148
    .local v6, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .local v7, "bottom":I
    goto :goto_30

    .line 150
    .end local v4    # "left":I
    .end local v5    # "top":I
    .end local v6    # "right":I
    .end local v7    # "bottom":I
    :cond_28
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 151
    .restart local v4    # "left":I
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 152
    .restart local v6    # "right":I
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 153
    .restart local v5    # "top":I
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 156
    .restart local v7    # "bottom":I
    :goto_30
    iget-wide v8, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move-wide v10, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    move-wide v11, v10

    int-to-float v10, v4

    move-wide v12, v11

    int-to-float v11, v5

    move-wide v13, v12

    int-to-float v12, v6

    move-wide v14, v13

    int-to-float v13, v7

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    move/from16 v16, v1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    move/from16 v17, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    move/from16 v20, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    move/from16 v21, v1

    iget v1, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move-object/from16 v0, p1

    move/from16 v22, v1

    iget v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v23, v21

    move/from16 v21, v1

    move v1, v6

    move/from16 v24, v22

    move/from16 v22, v7

    move-wide v6, v14

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v20

    move/from16 v17, v23

    move/from16 v20, v24

    .end local v6    # "right":I
    .end local v7    # "bottom":I
    .local v1, "right":I
    .local v22, "bottom":I
    invoke-static/range {v6 .. v21}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 159
    return-void

    .line 138
    .end local v1    # "right":I
    .end local v4    # "left":I
    .end local v5    # "top":I
    .end local v18    # "nativePaint":J
    .end local v22    # "bottom":I
    :cond_73
    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 27
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v2, :cond_5e

    .line 166
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 167
    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 168
    if-nez v3, :cond_15

    const-wide/16 v4, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    :goto_19
    move-wide/from16 v18, v4

    .line 171
    .local v18, "nativePaint":J
    if-nez v1, :cond_2e

    .line 172
    const/4 v4, 0x0

    move v5, v4

    .line 173
    .local v4, "left":F
    .local v5, "top":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 174
    .local v6, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    .local v7, "bottom":F
    goto :goto_3e

    .line 176
    .end local v4    # "left":F
    .end local v5    # "top":F
    .end local v6    # "right":F
    .end local v7    # "bottom":F
    :cond_2e
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 177
    .restart local v4    # "left":F
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v5

    .line 178
    .restart local v6    # "right":F
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 179
    .restart local v5    # "top":F
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    .line 182
    .end local v4    # "left":F
    .end local v5    # "top":F
    .end local v6    # "right":F
    .local v10, "left":F
    .local v11, "top":F
    .local v12, "right":F
    .local v13, "bottom":F
    :goto_3e
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    iget v14, v2, Landroid/graphics/RectF;->left:F

    iget v15, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move-object/from16 v0, p1

    move/from16 v20, v1

    iget v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v21, v1

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-static/range {v6 .. v21}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 185
    return-void

    .line 164
    .end local v10    # "left":F
    .end local v11    # "top":F
    .end local v12    # "right":F
    .end local v13    # "bottom":F
    .end local v18    # "nativePaint":J
    :cond_5e
    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public greylist-max-o drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .registers 26
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    move-object/from16 v0, p0

    move/from16 v8, p6

    move-object/from16 v13, p9

    if-ltz v8, :cond_61

    .line 194
    if-ltz p7, :cond_58

    .line 197
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v8, :cond_50

    .line 200
    add-int/lit8 v1, p7, -0x1

    mul-int v1, v1, p3

    add-int v14, p2, v1

    .line 201
    .local v14, "lastScanline":I
    move-object/from16 v3, p1

    array-length v15, v3

    .line 202
    .local v15, "length":I
    if-ltz p2, :cond_4a

    add-int v1, p2, v8

    if-gt v1, v15, :cond_4a

    if-ltz v14, :cond_4a

    add-int v1, v14, v8

    if-gt v1, v15, :cond_4a

    .line 206
    invoke-direct {v0, v13}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 208
    if-eqz v8, :cond_49

    if-nez p7, :cond_2d

    goto :goto_49

    .line 212
    :cond_2d
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 213
    if-eqz v13, :cond_36

    invoke-virtual {v13}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_38

    :cond_36
    const-wide/16 v4, 0x0

    :goto_38
    move-wide v11, v4

    .line 212
    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    .line 214
    return-void

    .line 209
    :cond_49
    :goto_49
    return-void

    .line 204
    :cond_4a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 198
    .end local v14    # "lastScanline":I
    .end local v15    # "length":I
    :cond_50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "height must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .registers 22
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v11, p5

    int-to-float v6, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 222
    return-void
.end method

.method public greylist-max-o drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .registers 23
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 227
    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v12, p8

    or-int v0, p2, p3

    or-int/2addr v0, v7

    or-int/2addr v0, v9

    if-ltz v0, :cond_43

    .line 230
    invoke-direct {p0, v12}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 231
    if-eqz p2, :cond_42

    if-nez p3, :cond_16

    goto :goto_42

    .line 234
    :cond_16
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p3, 0x1

    mul-int v13, v0, v1

    .line 236
    .local v13, "count":I
    move-object/from16 v6, p4

    array-length v0, v6

    mul-int/lit8 v1, v13, 0x2

    invoke-static {v0, v7, v1}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 237
    if-eqz v8, :cond_2a

    .line 239
    array-length v0, v8

    invoke-static {v0, v9, v13}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 241
    :cond_2a
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    .line 243
    if-eqz v12, :cond_37

    invoke-virtual {v12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_39

    :cond_37
    const-wide/16 v4, 0x0

    :goto_39
    move-wide v10, v4

    .line 241
    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v11}, Landroid/graphics/BaseCanvas;->nDrawBitmapMesh(JJII[FI[IIJ)V

    .line 244
    return-void

    .line 232
    .end local v13    # "count":I
    :cond_42
    :goto_42
    return-void

    .line 228
    :cond_43
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o drawCircle(FFFLandroid/graphics/Paint;)V
    .registers 12
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 247
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 248
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "cx":F
    .end local p2    # "cy":F
    .end local p3    # "radius":F
    .local v2, "cx":F
    .local v3, "cy":F
    .local v4, "radius":F
    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawCircle(JFFFJ)V

    .line 249
    return-void
.end method

.method public greylist-max-o drawColor(I)V
    .registers 5
    .param p1, "color"    # I

    .line 252
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    .line 253
    return-void
.end method

.method public blacklist drawColor(ILandroid/graphics/BlendMode;)V
    .registers 6
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/BlendMode;

    .line 264
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    .line 265
    return-void
.end method

.method public greylist-max-o drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 6
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 256
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    .line 257
    return-void
.end method

.method public blacklist drawColor(JLandroid/graphics/BlendMode;)V
    .registers 12
    .param p1, "color"    # J
    .param p3, "mode"    # Landroid/graphics/BlendMode;

    .line 272
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 273
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    .line 274
    invoke-virtual {p3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v5

    iget v7, v5, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 273
    move-wide v5, p1

    .end local p1    # "color":J
    .local v5, "color":J
    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->nDrawColor(JJJI)V

    .line 275
    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 28
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRx"    # F
    .param p3, "outerRy"    # F
    .param p4, "inner"    # Landroid/graphics/RectF;
    .param p5, "innerRx"    # F
    .param p6, "innerRy"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 417
    iget v6, v1, Landroid/graphics/RectF;->left:F

    .line 418
    .local v6, "outerLeft":F
    iget v7, v1, Landroid/graphics/RectF;->top:F

    .line 419
    .local v7, "outerTop":F
    iget v8, v1, Landroid/graphics/RectF;->right:F

    .line 420
    .local v8, "outerRight":F
    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    .line 422
    .local v9, "outerBottom":F
    iget v12, v2, Landroid/graphics/RectF;->left:F

    .line 423
    .local v12, "innerLeft":F
    iget v13, v2, Landroid/graphics/RectF;->top:F

    .line 424
    .local v13, "innerTop":F
    iget v14, v2, Landroid/graphics/RectF;->right:F

    .line 425
    .local v14, "innerRight":F
    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    .line 426
    .local v15, "innerBottom":F
    iget-wide v4, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 428
    invoke-virtual {v3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v18

    .line 426
    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v16, p5

    move/from16 v17, p6

    invoke-static/range {v4 .. v19}, Landroid/graphics/BaseCanvas;->nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V

    .line 429
    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .registers 22
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRadii"    # [F
    .param p3, "inner"    # Landroid/graphics/RectF;
    .param p4, "innerRadii"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p3

    move-object/from16 v13, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 438
    if-eqz v13, :cond_35

    if-eqz v8, :cond_35

    array-length v4, v13

    const/16 v5, 0x8

    if-ne v4, v5, :cond_35

    array-length v4, v8

    if-ne v4, v5, :cond_35

    .line 443
    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 444
    .local v4, "outerLeft":F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    .line 445
    .local v5, "outerTop":F
    iget v6, v1, Landroid/graphics/RectF;->right:F

    .line 446
    .local v6, "outerRight":F
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    .line 448
    .local v7, "outerBottom":F
    iget v9, v2, Landroid/graphics/RectF;->left:F

    .line 449
    .local v9, "innerLeft":F
    iget v10, v2, Landroid/graphics/RectF;->top:F

    .line 450
    .local v10, "innerTop":F
    iget v11, v2, Landroid/graphics/RectF;->right:F

    .line 451
    .local v11, "innerRight":F
    iget v12, v2, Landroid/graphics/RectF;->bottom:F

    .line 452
    .local v12, "innerBottom":F
    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 454
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    .line 452
    invoke-static/range {v2 .. v15}, Landroid/graphics/BaseCanvas;->nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V

    .line 455
    return-void

    .line 440
    .end local v4    # "outerLeft":F
    .end local v5    # "outerTop":F
    .end local v6    # "outerRight":F
    .end local v7    # "outerBottom":F
    .end local v9    # "innerLeft":F
    .end local v10    # "innerTop":F
    .end local v11    # "innerRight":F
    .end local v12    # "innerBottom":F
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Both inner and outer radii arrays must contain exactly 8 values"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .registers 21
    .param p1, "glyphIds"    # [I
    .param p2, "glyphIdOffset"    # I
    .param p3, "positions"    # [F
    .param p4, "positionOffset"    # I
    .param p5, "glyphCount"    # I
    .param p6, "font"    # Landroid/graphics/fonts/Font;
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 490
    move-object/from16 v3, p3

    const-string/jumbo v0, "glyphIds must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 491
    const-string/jumbo v0, "positions must not be null."

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 492
    const-string v0, "font must not be null."

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 493
    const-string/jumbo v0, "paint must not be null."

    move-object/from16 v12, p7

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 494
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 496
    const-string v0, " of elements"

    if-ltz p2, :cond_68

    add-int v1, p2, p5

    array-length v2, p1

    if-gt v1, v2, :cond_68

    .line 500
    if-ltz p4, :cond_46

    mul-int/lit8 v1, p5, 0x2

    add-int v1, p4, v1

    array-length v2, v3

    if-gt v1, v2, :cond_46

    .line 505
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 506
    invoke-virtual {v11}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v7

    invoke-virtual {v12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 505
    move-object v2, p1

    move v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseCanvas;->nDrawGlyphs(J[I[FIIIJJ)V

    .line 507
    return-void

    .line 501
    :cond_46
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "positions must have at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, p5, 0x2

    add-int v3, p4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_68
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "glyphIds must have at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p2, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o drawLine(FFFFLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 279
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 280
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "startX":F
    .end local p2    # "startY":F
    .end local p3    # "stopX":F
    .end local p4    # "stopY":F
    .local v2, "startX":F
    .local v3, "startY":F
    .local v4, "stopX":F
    .local v5, "stopY":F
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawLine(JFFFFJ)V

    .line 281
    return-void
.end method

.method public greylist-max-o drawLines([FIILandroid/graphics/Paint;)V
    .registers 12
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 285
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 286
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "pts":[F
    .end local p2    # "offset":I
    .end local p3    # "count":I
    .local v2, "pts":[F
    .local v3, "offset":I
    .local v4, "count":I
    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawLines(J[FIIJ)V

    .line 287
    return-void
.end method

.method public greylist-max-o drawLines([FLandroid/graphics/Paint;)V
    .registers 5
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 290
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 291
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/BaseCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 292
    return-void
.end method

.method public whitelist drawMesh(Landroid/graphics/Mesh;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)V
    .registers 11
    .param p1, "mesh"    # Landroid/graphics/Mesh;
    .param p2, "blendMode"    # Landroid/graphics/BlendMode;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 689
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->onHwFeatureInSwMode()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_16

    .line 690
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "software rendering doesn\'t support meshes"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_16
    :goto_16
    if-nez p2, :cond_1a

    .line 693
    sget-object p2, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    .line 695
    :cond_1a
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Mesh;->getNativeWrapperInstance()J

    move-result-wide v2

    .line 696
    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    .line 695
    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawMesh(JJIJ)V

    .line 697
    return-void
.end method

.method public greylist-max-o drawOval(FFFFLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 295
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 296
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .local v2, "left":F
    .local v3, "top":F
    .local v4, "right":F
    .local v5, "bottom":F
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawOval(JFFFFJ)V

    .line 297
    return-void
.end method

.method public greylist-max-o drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 300
    if-eqz p1, :cond_13

    .line 303
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 304
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    .end local p2    # "paint":Landroid/graphics/Paint;
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 305
    return-void

    .line 301
    .end local v5    # "paint":Landroid/graphics/Paint;
    .restart local p2    # "paint":Landroid/graphics/Paint;
    :cond_13
    move-object v5, p2

    .end local p2    # "paint":Landroid/graphics/Paint;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    throw p2
.end method

.method public greylist-max-o drawPaint(Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 308
    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 309
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BaseCanvas;->nDrawPaint(JJ)V

    .line 310
    return-void
.end method

.method public greylist-max-o drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 24
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 314
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 315
    invoke-direct {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 316
    if-nez v2, :cond_15

    const-wide/16 v4, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    :goto_19
    move-wide/from16 v16, v4

    .line 317
    .local v16, "nativePaint":J
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    move-object/from16 v4, p1

    iget-wide v10, v4, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v12, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v13, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v14, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v5

    iget v5, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 319
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v19

    .line 317
    move/from16 v18, v5

    invoke-static/range {v6 .. v19}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 320
    return-void
.end method

.method public greylist-max-o drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 24
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 324
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 325
    invoke-direct {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 326
    if-nez v2, :cond_15

    const-wide/16 v4, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    :goto_19
    move-wide/from16 v16, v4

    .line 327
    .local v16, "nativePaint":J
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    move-object/from16 v4, p1

    iget-wide v10, v4, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v12, v1, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->top:F

    iget v14, v1, Landroid/graphics/RectF;->right:F

    iget v15, v1, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 329
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v19

    .line 327
    move/from16 v18, v5

    invoke-static/range {v6 .. v19}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 330
    return-void
.end method

.method public greylist-max-o drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 333
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 334
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawPath(JJJ)V

    .line 335
    return-void
.end method

.method public greylist-max-o drawPoint(FFLandroid/graphics/Paint;)V
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 343
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 344
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    .end local p1    # "x":F
    .end local p2    # "y":F
    .local v2, "x":F
    .local v3, "y":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawPoint(JFFJ)V

    .line 345
    return-void
.end method

.method public greylist-max-o drawPoints([FIILandroid/graphics/Paint;)V
    .registers 12
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 349
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 350
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "pts":[F
    .end local p2    # "offset":I
    .end local p3    # "count":I
    .local v2, "pts":[F
    .local v3, "offset":I
    .local v4, "count":I
    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawPoints(J[FIIJ)V

    .line 351
    return-void
.end method

.method public greylist-max-o drawPoints([FLandroid/graphics/Paint;)V
    .registers 5
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 354
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 355
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/BaseCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 356
    return-void
.end method

.method public greylist-max-o drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    .end local p2    # "pos":[F
    .end local p3    # "paint":Landroid/graphics/Paint;
    .local v4, "pos":[F
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 376
    return-void
.end method

.method public greylist-max-o drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    if-ltz p2, :cond_29

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_29

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_29

    .line 365
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, p3, :cond_28

    .line 367
    add-int v3, p2, v0

    mul-int/lit8 v1, v0, 0x2

    aget v5, p4, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v6, p4, v1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p5

    .end local p1    # "text":[C
    .end local p5    # "paint":Landroid/graphics/Paint;
    .local v2, "text":[C
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 369
    .end local v0    # "i":I
    .end local v2    # "text":[C
    .end local v7    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "text":[C
    .restart local p5    # "paint":Landroid/graphics/Paint;
    :cond_28
    return-void

    .line 362
    :cond_29
    move-object v2, p1

    move-object v7, p5

    .line 363
    .end local p1    # "text":[C
    .end local p5    # "paint":Landroid/graphics/Paint;
    .restart local v2    # "text":[C
    .restart local v7    # "paint":Landroid/graphics/Paint;
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public greylist-max-o drawRGB(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 395
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    .line 396
    return-void
.end method

.method public greylist-max-o drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 379
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 380
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .local v2, "left":F
    .local v3, "top":F
    .local v4, "right":F
    .local v5, "bottom":F
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    .line 381
    return-void
.end method

.method public greylist-max-o drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 10
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 384
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 385
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    move-object v1, p0

    move-object v6, p2

    .end local p2    # "paint":Landroid/graphics/Paint;
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 386
    return-void
.end method

.method public greylist-max-o drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 11
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 389
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 390
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 391
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 390
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    .line 392
    return-void
.end method

.method public blacklist drawRegion(Landroid/graphics/Region;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 338
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 339
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawRegion(JJJ)V

    .line 340
    return-void
.end method

.method public greylist-max-o drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .registers 19
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 400
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 401
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 402
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 401
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->nDrawRoundRect(JFFFFFFJ)V

    .line 403
    return-void
.end method

.method public greylist-max-o drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 13
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 406
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 407
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    .end local p2    # "rx":F
    .end local p3    # "ry":F
    .end local p4    # "paint":Landroid/graphics/Paint;
    .local v5, "rx":F
    .local v6, "ry":F
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 408
    return-void
.end method

.method public greylist-max-o drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 30
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 522
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v6, p6

    or-int v0, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v0, v2

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v2, v2, p3

    or-int/2addr v0, v2

    if-ltz v0, :cond_7c

    .line 525
    invoke-direct {v1, v6}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 526
    instance-of v0, v7, Ljava/lang/String;

    if-nez v0, :cond_64

    instance-of v0, v7, Landroid/text/SpannedString;

    if-nez v0, :cond_64

    instance-of v0, v7, Landroid/text/SpannableString;

    if-eqz v0, :cond_28

    move/from16 v11, p2

    move/from16 v12, p3

    goto :goto_68

    .line 530
    :cond_28
    instance-of v0, v7, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3d

    .line 531
    move-object v0, v7

    check-cast v0, Landroid/text/GraphicsOperations;

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    move v11, v2

    move v12, v3

    goto :goto_7b

    .line 534
    :cond_3d
    move/from16 v11, p2

    move/from16 v12, p3

    sub-int v0, v12, v11

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v15

    .line 535
    .local v15, "buf":[C
    const/4 v0, 0x0

    invoke-static {v7, v11, v12, v15, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 536
    iget-wide v13, v1, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sub-int v17, v12, v11

    iget v0, v6, Landroid/graphics/Paint;->mBidiFlags:I

    .line 537
    invoke-virtual {v6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v21

    .line 536
    const/16 v16, 0x0

    move/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, v0

    invoke-static/range {v13 .. v22}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJ)V

    .line 538
    invoke-static {v15}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_7b

    .line 526
    .end local v15    # "buf":[C
    :cond_64
    move/from16 v11, p2

    move/from16 v12, p3

    .line 528
    :goto_68
    iget-wide v8, v1, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget v15, v6, Landroid/graphics/Paint;->mBidiFlags:I

    .line 529
    invoke-virtual {v6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .line 528
    move/from16 v13, p4

    move/from16 v14, p5

    invoke-static/range {v8 .. v17}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 540
    :goto_7b
    return-void

    .line 523
    :cond_7c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 543
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 544
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v7, p4, Landroid/graphics/Paint;->mBidiFlags:I

    .line 545
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 544
    const/4 v3, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .local v2, "text":Ljava/lang/String;
    .local v5, "x":F
    .local v6, "y":F
    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 546
    return-void
.end method

.method public greylist-max-o drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 19
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 550
    move-object/from16 v0, p6

    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_25

    .line 553
    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 554
    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 555
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 554
    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v11}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 556
    return-void

    .line 551
    :cond_25
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public greylist-max-o drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 19
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 511
    move-object/from16 v0, p6

    or-int v1, p2, p3

    add-int v2, p2, p3

    or-int/2addr v1, v2

    array-length v2, p1

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_23

    .line 515
    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 516
    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 517
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 516
    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v11}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJ)V

    .line 518
    return-void

    .line 513
    :cond_23
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public greylist-max-o drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 571
    move-object/from16 v0, p5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    .line 572
    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 573
    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v5

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 574
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 573
    move-object v4, p1

    move v7, p3

    move/from16 v8, p4

    invoke-static/range {v2 .. v11}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJ)V

    .line 576
    :cond_1e
    return-void
.end method

.method public greylist-max-o drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 22
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 560
    move-object/from16 v0, p7

    if-ltz p2, :cond_25

    add-int v1, p2, p3

    move-object v4, p1

    array-length v2, v4

    if-gt v1, v2, :cond_25

    .line 563
    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 564
    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 565
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v7

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 566
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    .line 564
    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v2 .. v13}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(J[CIIJFFIJ)V

    .line 567
    return-void

    .line 561
    :cond_25
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public blacklist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .registers 24
    .param p1, "measuredText"    # Landroid/graphics/text/MeasuredText;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 651
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v2

    sub-int v4, p3, p2

    sub-int v6, p5, p4

    .line 652
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 653
    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v12

    .line 651
    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v13}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 654
    return-void
.end method

.method public greylist-max-o drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .registers 40
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 601
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v9, p9

    if-eqz v10, :cond_f9

    .line 604
    if-eqz v9, :cond_f0

    .line 607
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    sub-int v2, p5, p3

    or-int/2addr v1, v2

    .line 608
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v2, v2, p5

    or-int/2addr v1, v2

    if-ltz v1, :cond_ea

    .line 612
    invoke-direct {v0, v9}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 613
    instance-of v1, v10, Ljava/lang/String;

    if-nez v1, :cond_ca

    instance-of v1, v10, Landroid/text/SpannedString;

    if-nez v1, :cond_ca

    instance-of v1, v10, Landroid/text/SpannableString;

    if-eqz v1, :cond_3b

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v11, p4

    move/from16 v12, p5

    goto/16 :goto_d2

    .line 617
    :cond_3b
    instance-of v1, v10, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_5d

    .line 618
    move-object v0, v10

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    move v14, v2

    move v15, v3

    move v11, v4

    move v12, v5

    move-object/from16 v0, p0

    goto/16 :goto_e9

    .line 621
    :cond_5d
    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v11, p4

    move/from16 v12, p5

    instance-of v0, v10, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_9f

    .line 622
    move-object v13, v10

    check-cast v13, Landroid/text/PrecomputedText;

    .line 623
    .local v13, "pt":Landroid/text/PrecomputedText;
    invoke-virtual {v13, v14}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 624
    .local v0, "paraIndex":I
    invoke-virtual {v13, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v1

    if-gt v15, v1, :cond_9a

    .line 625
    invoke-virtual {v13, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v16

    .line 626
    .local v16, "paraStart":I
    invoke-virtual {v13, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v17

    .line 628
    .local v17, "mp":Landroid/text/MeasuredParagraph;
    invoke-virtual/range {v17 .. v17}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v1

    sub-int v2, v14, v16

    sub-int v3, v15, v16

    sub-int v4, v11, v16

    sub-int v5, v12, v16

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v18, v0

    move-object/from16 v0, p0

    .end local v0    # "paraIndex":I
    .local v18, "paraIndex":I
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    .line 634
    return-void

    .line 624
    .end local v16    # "paraStart":I
    .end local v17    # "mp":Landroid/text/MeasuredParagraph;
    .end local v18    # "paraIndex":I
    .restart local v0    # "paraIndex":I
    :cond_9a
    move/from16 v18, v0

    move-object/from16 v0, p0

    .end local v0    # "paraIndex":I
    .restart local v18    # "paraIndex":I
    goto :goto_a1

    .line 621
    .end local v13    # "pt":Landroid/text/PrecomputedText;
    .end local v18    # "paraIndex":I
    :cond_9f
    move-object/from16 v0, p0

    .line 637
    :goto_a1
    sub-int v22, v12, v11

    .line 638
    .local v22, "contextLen":I
    sub-int v20, v15, v14

    .line 639
    .local v20, "len":I
    invoke-static/range {v22 .. v22}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 640
    .local v1, "buf":[C
    const/4 v2, 0x0

    invoke-static {v10, v11, v12, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 641
    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sub-int v19, v14, v11

    .line 642
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v26

    .line 641
    const/16 v21, 0x0

    const-wide/16 v28, 0x0

    move/from16 v23, p6

    move/from16 v24, p7

    move/from16 v25, p8

    move-object/from16 v18, v1

    move-wide/from16 v16, v2

    .end local v1    # "buf":[C
    .local v18, "buf":[C
    invoke-static/range {v16 .. v29}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 644
    invoke-static/range {v18 .. v18}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_e9

    .line 613
    .end local v18    # "buf":[C
    .end local v20    # "len":I
    .end local v22    # "contextLen":I
    :cond_ca
    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 615
    :goto_d2
    iget-wide v11, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 616
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v21

    .line 615
    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    invoke-static/range {v11 .. v22}, Landroid/graphics/BaseCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V

    .line 646
    :goto_e9
    return-void

    .line 609
    :cond_ea
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 605
    :cond_f0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "paint is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :cond_f9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "text is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .registers 26
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 581
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v15, p9

    if-eqz v3, :cond_4c

    .line 584
    if-eqz v15, :cond_43

    .line 587
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    add-int v2, p4, p5

    add-int v4, p2, p3

    sub-int/2addr v2, v4

    or-int/2addr v1, v2

    array-length v2, v3

    add-int v4, p4, p5

    sub-int/2addr v2, v4

    or-int/2addr v1, v2

    if-ltz v1, :cond_3d

    .line 593
    invoke-direct {v0, v15}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 594
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 595
    invoke-virtual {v15}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 594
    const-wide/16 v13, 0x0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 596
    return-void

    .line 590
    :cond_3d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 585
    :cond_43
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "paint is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    :cond_4c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "text is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .registers 29
    .param p1, "mode"    # Landroid/graphics/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Landroid/graphics/Paint;

    .line 660
    move-object/from16 v0, p0

    move/from16 v4, p2

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v5, p3

    array-length v1, v5

    move/from16 v6, p4

    invoke-static {v1, v6, v4}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 661
    if-eqz v7, :cond_1b

    .line 662
    array-length v1, v7

    move/from16 v8, p6

    invoke-static {v1, v8, v4}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_1d

    .line 661
    :cond_1b
    move/from16 v8, p6

    .line 664
    :goto_1d
    if-eqz v9, :cond_28

    .line 665
    array-length v1, v9

    div-int/lit8 v2, v4, 0x2

    move/from16 v10, p8

    invoke-static {v1, v10, v2}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_2a

    .line 664
    :cond_28
    move/from16 v10, p8

    .line 667
    :goto_2a
    if-eqz v11, :cond_35

    .line 668
    array-length v1, v11

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static {v1, v12, v13}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_39

    .line 667
    :cond_35
    move/from16 v12, p10

    move/from16 v13, p11

    .line 670
    :goto_39
    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 671
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v3, p1

    iget v14, v3, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 673
    move v3, v14

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    .line 671
    invoke-static/range {v1 .. v15}, Landroid/graphics/BaseCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 674
    return-void
.end method

.method public greylist-max-o isHardwareAccelerated()Z
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHwFeaturesInSwModeEnabled()Z
    .registers 2

    .line 718
    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    return v0
.end method

.method protected blacklist onHwFeatureInSwMode()Z
    .registers 2

    .line 726
    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist punchHole(FFFFFFF)V
    .registers 17
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "alpha"    # F

    .line 704
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/BaseCanvas;->nPunchHole(JFFFFFFF)V

    .line 705
    return-void
.end method

.method public blacklist setHwFeaturesInSwModeEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 711
    iput-boolean p1, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    .line 712
    return-void
.end method

.method protected greylist-max-o throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_38

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_34

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_34

    .line 79
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a non-premultiplied bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_34
    :goto_34
    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    .line 83
    return-void

    .line 75
    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
