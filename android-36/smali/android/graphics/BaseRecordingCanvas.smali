.class public Landroid/graphics/BaseRecordingCanvas;
.super Landroid/graphics/Canvas;
.source "BaseRecordingCanvas.java"


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 3
    .param p1, "nativeCanvas"    # J

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/graphics/Canvas;-><init>(J)V

    .line 52
    return-void
.end method

.method private static native blacklist nDrawArc(JFFFFFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmap(JJFFFFFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmap(JJFFJIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmap(J[IIIFFIIZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmapMatrix(JJJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmapMesh(JJII[FI[IIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawCircle(JFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawColor(JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawColor(JJJI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawGlyphs(J[I[FIIIJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawLine(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawLines(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawMesh(JJIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawNinePatch(JJJFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawOval(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPaint(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPath(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPoint(JFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPoints(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawRect(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawRegion(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawRoundRect(JFFFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawText(JLjava/lang/String;IIFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawText(J[CIIFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextOnPath(JLjava/lang/String;JFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextOnPath(J[CIIJFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextRun(J[CIIIIFFZJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawVertices(JII[FI[FI[II[SIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nPunchHole(JFFFFFFF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public final whitelist drawARGB(IIII)V
    .registers 6
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 70
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseRecordingCanvas;->drawColor(I)V

    .line 71
    return-void
.end method

.method public final whitelist drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .registers 20
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 57
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 58
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 57
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawArc(JFFFFFFZJ)V

    .line 59
    return-void
.end method

.method public final whitelist drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .registers 15
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 64
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
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/BaseRecordingCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 66
    return-void
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .registers 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 76
    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 77
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    .line 78
    if-eqz p4, :cond_10

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_12

    :cond_10
    const-wide/16 v4, 0x0

    :goto_12
    move-wide v6, v4

    iget v8, p0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    iget v9, p0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    iget v10, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 77
    move v4, p2

    move v5, p3

    .end local p2    # "left":F
    .end local p3    # "top":F
    .local v4, "left":F
    .local v5, "top":F
    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(JJFFJIII)V

    .line 80
    return-void
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .registers 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 85
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    .line 86
    if-eqz p3, :cond_11

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    goto :goto_13

    :cond_11
    const-wide/16 v6, 0x0

    .line 85
    :goto_13
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmapMatrix(JJJJ)V

    .line 87
    return-void
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 29
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_6b

    .line 95
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 96
    if-nez p4, :cond_10

    const-wide/16 v3, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_14
    move-wide/from16 v17, v3

    .line 99
    .local v17, "nativePaint":J
    if-nez v1, :cond_23

    .line 100
    const/4 v3, 0x0

    move v4, v3

    .line 101
    .local v3, "left":I
    .local v4, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 102
    .local v5, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .local v6, "bottom":I
    goto :goto_2b

    .line 104
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "right":I
    .end local v6    # "bottom":I
    :cond_23
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 105
    .restart local v3    # "left":I
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 106
    .restart local v5    # "right":I
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 107
    .restart local v4    # "top":I
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 110
    .restart local v6    # "bottom":I
    :goto_2b
    iget-wide v7, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move-wide v9, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-wide v10, v9

    int-to-float v9, v3

    move-wide v11, v10

    int-to-float v10, v4

    move-wide v12, v11

    int-to-float v11, v5

    move-wide v13, v12

    int-to-float v12, v6

    iget v15, v2, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    move/from16 v16, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    move/from16 v19, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    move/from16 v20, v1

    iget v1, v0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    move-object/from16 v0, p1

    move/from16 v21, v1

    iget v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v22, v20

    move/from16 v20, v1

    move v1, v5

    move/from16 v23, v21

    move/from16 v21, v6

    move-wide v5, v13

    move v13, v15

    move/from16 v14, v16

    move/from16 v15, v19

    move/from16 v16, v22

    move/from16 v19, v23

    .end local v5    # "right":I
    .end local v6    # "bottom":I
    .local v1, "right":I
    .local v21, "bottom":I
    invoke-static/range {v5 .. v20}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 113
    return-void

    .line 93
    .end local v1    # "right":I
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v17    # "nativePaint":J
    .end local v21    # "bottom":I
    :cond_6b
    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 26
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_57

    .line 121
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 122
    if-nez p4, :cond_10

    const-wide/16 v3, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_14
    move-wide/from16 v17, v3

    .line 125
    .local v17, "nativePaint":J
    if-nez v1, :cond_29

    .line 126
    const/4 v3, 0x0

    move v4, v3

    .line 127
    .local v3, "left":F
    .local v4, "top":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 128
    .local v5, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    .local v6, "bottom":F
    goto :goto_39

    .line 130
    .end local v3    # "left":F
    .end local v4    # "top":F
    .end local v5    # "right":F
    .end local v6    # "bottom":F
    :cond_29
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 131
    .restart local v3    # "left":F
    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v4

    .line 132
    .restart local v5    # "right":F
    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 133
    .restart local v4    # "top":F
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    .line 136
    .end local v3    # "left":F
    .end local v4    # "top":F
    .end local v5    # "right":F
    .local v9, "left":F
    .local v10, "top":F
    .local v11, "right":F
    .local v12, "bottom":F
    :goto_39
    iget-wide v5, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    iget v13, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->top:F

    iget v15, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v20, v1

    move/from16 v16, v3

    move/from16 v19, v4

    invoke-static/range {v5 .. v20}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 139
    return-void

    .line 119
    .end local v9    # "left":F
    .end local v10    # "top":F
    .end local v11    # "right":F
    .end local v12    # "bottom":F
    .end local v17    # "nativePaint":J
    :cond_57
    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public final whitelist drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .registers 24
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

    .line 147
    move/from16 v7, p6

    if-ltz v7, :cond_59

    .line 150
    if-ltz p7, :cond_50

    .line 153
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v7, :cond_48

    .line 156
    add-int/lit8 v0, p7, -0x1

    mul-int v0, v0, p3

    add-int v12, p2, v0

    .line 157
    .local v12, "lastScanline":I
    array-length v13, p1

    .line 158
    .local v13, "length":I
    if-ltz p2, :cond_42

    add-int v0, p2, v7

    if-gt v0, v13, :cond_42

    if-ltz v12, :cond_42

    add-int v0, v12, v7

    if-gt v0, v13, :cond_42

    .line 163
    if-eqz v7, :cond_41

    if-nez p7, :cond_24

    goto :goto_41

    .line 167
    :cond_24
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 168
    if-eqz p9, :cond_2d

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_2f

    :cond_2d
    const-wide/16 v2, 0x0

    :goto_2f
    move-wide v10, v2

    .line 167
    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v11}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    .line 169
    return-void

    .line 164
    :cond_41
    :goto_41
    return-void

    .line 160
    :cond_42
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 154
    .end local v12    # "lastScanline":I
    .end local v13    # "length":I
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
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

    .line 177
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

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 179
    return-void
.end method

.method public final whitelist drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .registers 22
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 185
    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    or-int v0, p2, p3

    or-int/2addr v0, v7

    or-int/2addr v0, v9

    if-ltz v0, :cond_3d

    .line 188
    if-eqz p2, :cond_3c

    if-nez p3, :cond_11

    goto :goto_3c

    .line 191
    :cond_11
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p3, 0x1

    mul-int v12, v0, v1

    .line 193
    .local v12, "count":I
    move-object/from16 v6, p4

    array-length v0, v6

    mul-int/lit8 v1, v12, 0x2

    invoke-static {v0, v7, v1}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    .line 194
    if-eqz v8, :cond_25

    .line 196
    array-length v0, v8

    invoke-static {v0, v9, v12}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    .line 198
    :cond_25
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    .line 200
    if-eqz p8, :cond_32

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_34

    :cond_32
    const-wide/16 v4, 0x0

    :goto_34
    move-wide v10, v4

    .line 198
    move v4, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v11}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmapMesh(JJII[FI[IIJ)V

    .line 201
    return-void

    .line 189
    .end local v12    # "count":I
    :cond_3c
    :goto_3c
    return-void

    .line 186
    :cond_3d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist drawCircle(FFFLandroid/graphics/Paint;)V
    .registers 12
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 205
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

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
    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawCircle(JFFFJ)V

    .line 206
    return-void
.end method

.method public final whitelist drawColor(I)V
    .registers 5
    .param p1, "color"    # I

    .line 210
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JII)V

    .line 211
    return-void
.end method

.method public final whitelist drawColor(ILandroid/graphics/BlendMode;)V
    .registers 6
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/BlendMode;

    .line 220
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JII)V

    .line 221
    return-void
.end method

.method public final whitelist drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 6
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 215
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JII)V

    .line 216
    return-void
.end method

.method public final whitelist drawColor(JLandroid/graphics/BlendMode;)V
    .registers 12
    .param p1, "color"    # J
    .param p3, "mode"    # Landroid/graphics/BlendMode;

    .line 225
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 226
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    .line 227
    invoke-virtual {p3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v5

    iget v7, v5, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 226
    move-wide v5, p1

    .end local p1    # "color":J
    .local v5, "color":J
    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JJJI)V

    .line 228
    return-void
.end method

.method public final whitelist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 27
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRx"    # F
    .param p3, "outerRy"    # F
    .param p4, "inner"    # Landroid/graphics/RectF;
    .param p5, "innerRx"    # F
    .param p6, "innerRy"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 404
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    iget-wide v3, v2, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    .line 407
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v17

    .line 404
    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-static/range {v3 .. v18}, Landroid/graphics/BaseRecordingCanvas;->nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V

    .line 408
    return-void
.end method

.method public final whitelist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .registers 23
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRadii"    # [F
    .param p3, "inner"    # Landroid/graphics/RectF;
    .param p4, "innerRadii"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 413
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    iget-wide v3, v2, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    iget v10, v1, Landroid/graphics/RectF;->left:F

    iget v11, v1, Landroid/graphics/RectF;->top:F

    iget v12, v1, Landroid/graphics/RectF;->right:F

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    .line 416
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v15

    .line 413
    move-object/from16 v9, p2

    move-object/from16 v14, p4

    invoke-static/range {v3 .. v16}, Landroid/graphics/BaseRecordingCanvas;->nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V

    .line 417
    return-void
.end method

.method public whitelist drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .registers 21
    .param p1, "glyphIds"    # [I
    .param p2, "glyphIdOffset"    # I
    .param p3, "positions"    # [F
    .param p4, "positionOffset"    # I
    .param p5, "glyphCount"    # I
    .param p6, "font"    # Landroid/graphics/fonts/Font;
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 428
    move-object/from16 v3, p3

    const-string/jumbo v0, "glyphIds must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    const-string/jumbo v0, "positions must not be null."

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    const-string v0, "font must not be null."

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v0, "paint must not be null."

    move-object/from16 v12, p7

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 432
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 434
    const-string v0, " of elements"

    if-ltz p2, :cond_68

    add-int v1, p2, p5

    array-length v2, p1

    if-gt v1, v2, :cond_68

    .line 438
    if-ltz p4, :cond_46

    mul-int/lit8 v1, p5, 0x2

    add-int v1, p4, v1

    array-length v2, v3

    if-gt v1, v2, :cond_46

    .line 443
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 444
    invoke-virtual {v11}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v7

    invoke-virtual {v12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 443
    move-object v2, p1

    move v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawGlyphs(J[I[FIIIJJ)V

    .line 445
    return-void

    .line 439
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

    .line 435
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

.method public final whitelist drawLine(FFFFLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 233
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

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
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawLine(JFFFFJ)V

    .line 234
    return-void
.end method

.method public final whitelist drawLines([FIILandroid/graphics/Paint;)V
    .registers 12
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 239
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

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
    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawLines(J[FIIJ)V

    .line 240
    return-void
.end method

.method public final whitelist drawLines([FLandroid/graphics/Paint;)V
    .registers 5
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 244
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/BaseRecordingCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 245
    return-void
.end method

.method public final whitelist drawMesh(Landroid/graphics/Mesh;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)V
    .registers 11
    .param p1, "mesh"    # Landroid/graphics/Mesh;
    .param p2, "blendMode"    # Landroid/graphics/BlendMode;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 618
    if-nez p2, :cond_4

    .line 619
    sget-object p2, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    .line 621
    :cond_4
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Mesh;->getNativeWrapperInstance()J

    move-result-wide v2

    .line 622
    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    .line 621
    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawMesh(JJIJ)V

    .line 623
    return-void
.end method

.method public final whitelist drawOval(FFFFLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 250
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

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
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawOval(JFFFFJ)V

    .line 251
    return-void
.end method

.method public final whitelist drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 255
    if-eqz p1, :cond_10

    .line 258
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    .end local p2    # "paint":Landroid/graphics/Paint;
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 259
    return-void

    .line 256
    .end local v5    # "paint":Landroid/graphics/Paint;
    .restart local p2    # "paint":Landroid/graphics/Paint;
    :cond_10
    move-object v5, p2

    .end local p2    # "paint":Landroid/graphics/Paint;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    throw p2
.end method

.method public final whitelist drawPaint(Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 263
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BaseRecordingCanvas;->nDrawPaint(JJ)V

    .line 264
    return-void
.end method

.method public final whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 23
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 270
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 271
    if-nez p3, :cond_10

    const-wide/16 v3, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_14
    move-wide v15, v3

    .line 272
    .local v15, "nativePaint":J
    iget-wide v5, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-object/from16 v3, p1

    iget-wide v9, v3, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v13, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v4

    iget v4, v0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    .line 274
    invoke-virtual {v3}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v18

    .line 272
    move/from16 v17, v4

    invoke-static/range {v5 .. v18}, Landroid/graphics/BaseRecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 275
    return-void
.end method

.method public final whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 23
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 281
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 282
    if-nez p3, :cond_10

    const-wide/16 v3, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_14
    move-wide v15, v3

    .line 283
    .local v15, "nativePaint":J
    iget-wide v5, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-object/from16 v3, p1

    iget-wide v9, v3, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    .line 285
    invoke-virtual {v3}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v18

    .line 283
    move/from16 v17, v4

    invoke-static/range {v5 .. v18}, Landroid/graphics/BaseRecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 286
    return-void
.end method

.method public final whitelist drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 290
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->nDrawPath(JJJ)V

    .line 291
    return-void
.end method

.method public final whitelist drawPicture(Landroid/graphics/Picture;)V
    .registers 3
    .param p1, "picture"    # Landroid/graphics/Picture;

    .line 300
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 301
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    move-result v0

    .line 302
    .local v0, "restoreCount":I
    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 303
    invoke-virtual {p0, v0}, Landroid/graphics/BaseRecordingCanvas;->restoreToCount(I)V

    .line 304
    return-void
.end method

.method public final whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .line 308
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    .line 309
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->translate(FF)V

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_31

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_31

    .line 311
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 312
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 311
    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->scale(FF)V

    .line 314
    :cond_31
    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 315
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->restore()V

    .line 316
    return-void
.end method

.method public final whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .registers 6
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/RectF;

    .line 320
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    .line 321
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->translate(FF)V

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_2d

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_2d

    .line 323
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->scale(FF)V

    .line 325
    :cond_2d
    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 326
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->restore()V

    .line 327
    return-void
.end method

.method public final whitelist drawPoint(FFLandroid/graphics/Paint;)V
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 331
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    .end local p1    # "x":F
    .end local p2    # "y":F
    .local v2, "x":F
    .local v3, "y":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->nDrawPoint(JFFJ)V

    .line 332
    return-void
.end method

.method public final whitelist drawPoints([FIILandroid/graphics/Paint;)V
    .registers 12
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 337
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

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
    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawPoints(J[FIIJ)V

    .line 338
    return-void
.end method

.method public final whitelist drawPoints([FLandroid/graphics/Paint;)V
    .registers 5
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 342
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/BaseRecordingCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 343
    return-void
.end method

.method public final whitelist drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
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
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 365
    return-void
.end method

.method public final whitelist drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    if-ltz p2, :cond_26

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_26

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_26

    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, p3, :cond_25

    .line 355
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
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 357
    .end local v0    # "i":I
    .end local v2    # "text":[C
    .end local v7    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "text":[C
    .restart local p5    # "paint":Landroid/graphics/Paint;
    :cond_25
    return-void

    .line 351
    :cond_26
    move-object v2, p1

    move-object v7, p5

    .line 352
    .end local p1    # "text":[C
    .end local p5    # "paint":Landroid/graphics/Paint;
    .restart local v2    # "text":[C
    .restart local v7    # "paint":Landroid/graphics/Paint;
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final whitelist drawRGB(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 386
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseRecordingCanvas;->drawColor(I)V

    .line 387
    return-void
.end method

.method public final whitelist drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 370
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

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
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawRect(JFFFFJ)V

    .line 371
    return-void
.end method

.method public final whitelist drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 10
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 375
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
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/BaseRecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 376
    return-void
.end method

.method public final whitelist drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 11
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 380
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 381
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 380
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawRect(JFFFFJ)V

    .line 382
    return-void
.end method

.method public whitelist drawRegion(Landroid/graphics/Region;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 295
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->nDrawRegion(JJJ)V

    .line 296
    return-void
.end method

.method public final whitelist drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .registers 18
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 392
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 393
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 392
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->nDrawRoundRect(JFFFFFFJ)V

    .line 394
    return-void
.end method

.method public final whitelist drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 13
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 398
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
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 399
    return-void
.end method

.method public final whitelist drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 30
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 461
    move-object/from16 v7, p1

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v1, v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_85

    .line 464
    instance-of v0, v7, Ljava/lang/String;

    if-nez v0, :cond_69

    instance-of v0, v7, Landroid/text/SpannedString;

    if-nez v0, :cond_69

    instance-of v0, v7, Landroid/text/SpannableString;

    if-eqz v0, :cond_25

    move-object/from16 v1, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v6, p6

    goto :goto_71

    .line 468
    :cond_25
    instance-of v0, v7, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3e

    .line 469
    move-object v0, v7

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    move v11, v2

    move v12, v3

    goto :goto_84

    .line 472
    :cond_3e
    move-object/from16 v1, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v6, p6

    sub-int v0, v12, v11

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v15

    .line 473
    .local v15, "buf":[C
    const/4 v0, 0x0

    invoke-static {v7, v11, v12, v15, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 474
    iget-wide v13, v1, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    sub-int v17, v12, v11

    iget v0, v6, Landroid/graphics/Paint;->mBidiFlags:I

    .line 475
    invoke-virtual {v6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v21

    .line 474
    const/16 v16, 0x0

    move/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, v0

    invoke-static/range {v13 .. v22}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(J[CIIFFIJ)V

    .line 476
    invoke-static {v15}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_84

    .line 464
    .end local v15    # "buf":[C
    :cond_69
    move-object/from16 v1, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v6, p6

    .line 466
    :goto_71
    iget-wide v8, v1, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget v15, v6, Landroid/graphics/Paint;->mBidiFlags:I

    .line 467
    invoke-virtual {v6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .line 466
    move/from16 v13, p4

    move/from16 v14, p5

    invoke-static/range {v8 .. v17}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 478
    :goto_84
    return-void

    .line 462
    :cond_85
    move-object/from16 v1, p0

    move-object/from16 v6, p6

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 482
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v7, p4, Landroid/graphics/Paint;->mBidiFlags:I

    .line 483
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 482
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
    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 484
    return-void
.end method

.method public final whitelist drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 489
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_21

    .line 492
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 493
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 492
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 494
    return-void

    .line 490
    :cond_21
    move-object/from16 v0, p6

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public final whitelist drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 18
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 450
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1f

    .line 454
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 455
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 454
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(J[CIIFFIJ)V

    .line 456
    return-void

    .line 452
    :cond_1f
    move-object/from16 v0, p6

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public final whitelist drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 510
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    .line 511
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v4

    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 512
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 511
    move-object v3, p1

    move v6, p3

    move v7, p4

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJ)V

    goto :goto_1d

    .line 510
    :cond_1b
    move-object/from16 v0, p5

    .line 514
    :goto_1d
    return-void
.end method

.method public final whitelist drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 22
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 499
    if-ltz p2, :cond_22

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_22

    .line 502
    iget-wide v2, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 503
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v7

    move-object/from16 v0, p7

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 504
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    .line 502
    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v2 .. v13}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextOnPath(J[CIIJFFIJ)V

    .line 505
    return-void

    .line 499
    :cond_22
    move-object/from16 v0, p7

    .line 500
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
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

    .line 590
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v2

    sub-int v4, p3, p2

    sub-int v6, p5, p4

    .line 591
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 592
    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v12

    .line 590
    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v13}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 593
    return-void
.end method

.method public final whitelist drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
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

    .line 540
    move-object/from16 v10, p1

    if-eqz v10, :cond_fc

    .line 543
    if-eqz p9, :cond_f1

    .line 546
    or-int v0, p2, p3

    or-int v0, v0, p4

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    .line 547
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_e9

    .line 551
    instance-of v0, v10, Ljava/lang/String;

    if-nez v0, :cond_c7

    instance-of v0, v10, Landroid/text/SpannedString;

    if-nez v0, :cond_c7

    instance-of v0, v10, Landroid/text/SpannableString;

    if-eqz v0, :cond_36

    move-object/from16 v0, p0

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v11, p4

    move/from16 v12, p5

    goto/16 :goto_d1

    .line 555
    :cond_36
    instance-of v0, v10, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_5a

    .line 556
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

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    move v14, v2

    move v15, v3

    move v11, v4

    move v12, v5

    move-object/from16 v0, p0

    goto/16 :goto_e8

    .line 559
    :cond_5a
    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v11, p4

    move/from16 v12, p5

    instance-of v0, v10, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_9c

    .line 560
    move-object v13, v10

    check-cast v13, Landroid/text/PrecomputedText;

    .line 561
    .local v13, "pt":Landroid/text/PrecomputedText;
    invoke-virtual {v13, v14}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 562
    .local v0, "paraIndex":I
    invoke-virtual {v13, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v1

    if-gt v15, v1, :cond_97

    .line 563
    invoke-virtual {v13, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v16

    .line 564
    .local v16, "paraStart":I
    invoke-virtual {v13, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v17

    .line 566
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
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    .line 572
    return-void

    .line 562
    .end local v16    # "paraStart":I
    .end local v17    # "mp":Landroid/text/MeasuredParagraph;
    .end local v18    # "paraIndex":I
    .restart local v0    # "paraIndex":I
    :cond_97
    move/from16 v18, v0

    move-object/from16 v0, p0

    .end local v0    # "paraIndex":I
    .restart local v18    # "paraIndex":I
    goto :goto_9e

    .line 559
    .end local v13    # "pt":Landroid/text/PrecomputedText;
    .end local v18    # "paraIndex":I
    :cond_9c
    move-object/from16 v0, p0

    .line 575
    :goto_9e
    sub-int v22, v12, v11

    .line 576
    .local v22, "contextLen":I
    sub-int v20, v15, v14

    .line 577
    .local v20, "len":I
    invoke-static/range {v22 .. v22}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 578
    .local v1, "buf":[C
    const/4 v2, 0x0

    invoke-static {v10, v11, v12, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 579
    iget-wide v2, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    sub-int v19, v14, v11

    .line 580
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v26

    .line 579
    const/16 v21, 0x0

    const-wide/16 v28, 0x0

    move/from16 v23, p6

    move/from16 v24, p7

    move/from16 v25, p8

    move-object/from16 v18, v1

    move-wide/from16 v16, v2

    .end local v1    # "buf":[C
    .local v18, "buf":[C
    invoke-static/range {v16 .. v29}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 582
    invoke-static/range {v18 .. v18}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_e8

    .line 551
    .end local v18    # "buf":[C
    .end local v20    # "len":I
    .end local v22    # "contextLen":I
    :cond_c7
    move-object/from16 v0, p0

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 553
    :goto_d1
    iget-wide v11, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 554
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v21

    .line 553
    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    invoke-static/range {v11 .. v22}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V

    .line 584
    :goto_e8
    return-void

    .line 548
    :cond_e9
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 544
    :cond_f1
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "paint is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 541
    :cond_fc
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "text is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .registers 24
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 520
    move-object v2, p1

    if-eqz v2, :cond_44

    .line 523
    if-eqz p9, :cond_3b

    .line 526
    or-int v0, p2, p3

    or-int v0, v0, p4

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    add-int v1, p4, p5

    add-int v3, p2, p3

    sub-int/2addr v1, v3

    or-int/2addr v0, v1

    array-length v1, v2

    add-int v3, p4, p5

    sub-int/2addr v1, v3

    or-int/2addr v0, v1

    if-ltz v0, :cond_35

    .line 532
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 533
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 532
    const-wide/16 v12, 0x0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v13}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 534
    return-void

    .line 529
    :cond_35
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 524
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
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

    .line 600
    move/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v4, p3

    array-length v0, v4

    move/from16 v5, p4

    invoke-static {v0, v5, v3}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    .line 601
    if-eqz v6, :cond_19

    .line 602
    array-length v0, v6

    move/from16 v7, p6

    invoke-static {v0, v7, v3}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    goto :goto_1b

    .line 601
    :cond_19
    move/from16 v7, p6

    .line 604
    :goto_1b
    if-eqz v8, :cond_26

    .line 605
    array-length v0, v8

    div-int/lit8 v1, v3, 0x2

    move/from16 v9, p8

    invoke-static {v0, v9, v1}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    goto :goto_28

    .line 604
    :cond_26
    move/from16 v9, p8

    .line 607
    :goto_28
    if-eqz v10, :cond_33

    .line 608
    array-length v0, v10

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static {v0, v11, v12}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    goto :goto_37

    .line 607
    :cond_33
    move/from16 v11, p10

    move/from16 v12, p11

    .line 610
    :goto_37
    move-object/from16 v15, p0

    iget-wide v0, v15, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v2, p1

    iget v13, v2, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 612
    move v2, v13

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v13

    .line 610
    invoke-static/range {v0 .. v14}, Landroid/graphics/BaseRecordingCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 613
    return-void
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

    .line 631
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/BaseRecordingCanvas;->nPunchHole(JFFFFFFF)V

    .line 632
    return-void
.end method
