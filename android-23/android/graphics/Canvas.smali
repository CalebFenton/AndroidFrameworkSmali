.class public Landroid/graphics/Canvas;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Canvas$CanvasFinalizer;,
        Landroid/graphics/Canvas$EdgeType;,
        Landroid/graphics/Canvas$VertexMode;
    }
.end annotation


# static fields
.field public static final ALL_SAVE_FLAG:I = 0x1f

.field public static final CLIP_SAVE_FLAG:I = 0x2

.field public static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field public static final FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field public static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final MAXMIMUM_BITMAP_SIZE:I = 0x7ffe

.field public static sCompatibilityRestore:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mDensity:I

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private final mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

.field protected mNativeCanvasWrapper:J

.field protected mScreenDensity:I


# direct methods
.method static synthetic -wrap0(J)V
    .locals 0
    .param p0, "nativeCanvas"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/Canvas;->finalizer(J)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    #@3
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 75
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@7
    .line 82
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    #@9
    .line 122
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 124
    invoke-static {v1}, Landroid/graphics/Canvas;->initRaster(Landroid/graphics/Bitmap;)J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@15
    .line 125
    new-instance v0, Landroid/graphics/Canvas$CanvasFinalizer;

    #@17
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@19
    invoke-direct {v0, v2, v3}, Landroid/graphics/Canvas$CanvasFinalizer;-><init>(J)V

    #@1c
    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    #@1e
    .line 121
    :goto_0
    return-void

    #@1f
    .line 127
    :cond_0
    iput-object v1, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    #@21
    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 5
    .param p1, "nativeCanvas"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 75
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@6
    .line 82
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    #@8
    .line 153
    const-wide/16 v0, 0x0

    #@a
    cmp-long v0, p1, v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@13
    throw v0

    #@14
    .line 156
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@16
    .line 157
    new-instance v0, Landroid/graphics/Canvas$CanvasFinalizer;

    #@18
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@1a
    invoke-direct {v0, v2, v3}, Landroid/graphics/Canvas$CanvasFinalizer;-><init>(J)V

    #@1d
    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    #@1f
    .line 158
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@25
    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 75
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@6
    .line 82
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    #@8
    .line 141
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    const-string/jumbo v1, "Immutable bitmap passed to Canvas constructor"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 144
    :cond_0
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@1a
    .line 145
    invoke-static {p1}, Landroid/graphics/Canvas;->initRaster(Landroid/graphics/Bitmap;)J

    #@1d
    move-result-wide v0

    #@1e
    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@20
    .line 146
    new-instance v0, Landroid/graphics/Canvas$CanvasFinalizer;

    #@22
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@24
    invoke-direct {v0, v2, v3}, Landroid/graphics/Canvas$CanvasFinalizer;-><init>(J)V

    #@27
    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    #@29
    .line 147
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    #@2b
    .line 148
    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    #@2d
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@2f
    .line 140
    return-void
.end method

.method protected static checkRange(III)V
    .locals 1
    .param p0, "length"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 1508
    or-int v0, p1, p2

    #@2
    if-ltz v0, :cond_0

    #@4
    add-int v0, p1, p2

    #@6
    if-le v0, p0, :cond_1

    #@8
    .line 1509
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@d
    throw v0

    #@e
    .line 1507
    :cond_1
    return-void
.end method

.method private static native finalizer(J)V
.end method

.method public static native freeCaches()V
.end method

.method public static native freeTextLayoutCaches()V
.end method

.method private static native initRaster(Landroid/graphics/Bitmap;)J
.end method

.method private static native nativeDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V
.end method

.method private static native nativeDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V
.end method

.method private static native nativeDrawVertices(JII[FI[FI[II[SIIJ)V
.end method

.method private static native nativeSetDrawFilter(JJ)V
.end method

.method private static native native_clipPath(JJI)Z
.end method

.method private static native native_clipRect(JFFFFI)Z
.end method

.method private static native native_clipRegion(JJI)Z
.end method

.method private static native native_concat(JJ)V
.end method

.method private static native native_drawArc(JFFFFFFZJ)V
.end method

.method private native native_drawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V
.end method

.method private native native_drawBitmap(JLandroid/graphics/Bitmap;FFJIII)V
.end method

.method private static native native_drawBitmap(J[IIIFFIIZJ)V
.end method

.method private static native native_drawCircle(JFFFJ)V
.end method

.method private static native native_drawColor(JII)V
.end method

.method private static native native_drawLine(JFFFFJ)V
.end method

.method private static native native_drawLines(J[FIIJ)V
.end method

.method private static native native_drawOval(JFFFFJ)V
.end method

.method private static native native_drawPaint(JJ)V
.end method

.method private static native native_drawPath(JJJ)V
.end method

.method private static native native_drawPoint(JFFJ)V
.end method

.method private static native native_drawPoints(J[FIIJ)V
.end method

.method private static native native_drawRect(JFFFFJ)V
.end method

.method private static native native_drawRoundRect(JFFFFFFJ)V
.end method

.method private static native native_drawText(JLjava/lang/String;IIFFIJJ)V
.end method

.method private static native native_drawText(J[CIIFFIJJ)V
.end method

.method private static native native_drawTextOnPath(JLjava/lang/String;JFFIJJ)V
.end method

.method private static native native_drawTextOnPath(J[CIIJFFIJJ)V
.end method

.method private static native native_drawTextRun(JLjava/lang/String;IIIIFFZJJ)V
.end method

.method private static native native_drawTextRun(J[CIIIIFFZJJ)V
.end method

.method private static native native_getCTM(JJ)V
.end method

.method private static native native_getClipBounds(JLandroid/graphics/Rect;)Z
.end method

.method private static native native_getHeight(J)I
.end method

.method private static native native_getSaveCount(J)I
.end method

.method private static native native_getWidth(J)I
.end method

.method private static native native_isOpaque(J)Z
.end method

.method private static native native_quickReject(JFFFF)Z
.end method

.method private static native native_quickReject(JJ)Z
.end method

.method private static native native_restore(JZ)V
.end method

.method private static native native_restoreToCount(JIZ)V
.end method

.method private static native native_rotate(JF)V
.end method

.method private static native native_save(JI)I
.end method

.method private static native native_saveLayer(JFFFFJI)I
.end method

.method private static native native_saveLayerAlpha(JFFFFII)I
.end method

.method private static native native_scale(JFF)V
.end method

.method private static native native_setBitmap(JLandroid/graphics/Bitmap;)V
.end method

.method private static native native_setMatrix(JJ)V
.end method

.method private static native native_skew(JFF)V
.end method

.method private static native native_translate(JFF)V
.end method

.method protected static throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1269
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1270
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Canvas: trying to use a recycled bitmap "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 1272
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_1

    #@26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@29
    move-result-object v0

    #@2a
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@2c
    if-ne v0, v1, :cond_1

    #@2e
    .line 1273
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@31
    move-result v0

    #@32
    .line 1272
    if-eqz v0, :cond_1

    #@34
    .line 1274
    new-instance v0, Ljava/lang/RuntimeException;

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "Canvas: trying to use a non-premultiplied bitmap "

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0

    #@4e
    .line 1268
    :cond_1
    return-void
.end method


# virtual methods
.method public clipPath(Landroid/graphics/Path;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 807
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 5
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    #@0
    .prologue
    .line 797
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    #@5
    move-result-wide v2

    #@6
    iget v4, p2, Landroid/graphics/Region$Op;->nativeInt:I

    #@8
    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->native_clipPath(JJI)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public clipRect(FFFF)Z
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    #@0
    .prologue
    .line 767
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    .line 768
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@4
    iget v6, v2, Landroid/graphics/Region$Op;->nativeInt:I

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    move v5, p4

    #@a
    .line 767
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "op"    # Landroid/graphics/Region$Op;

    #@0
    .prologue
    .line 750
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    iget v6, p5, Landroid/graphics/Region$Op;->nativeInt:I

    #@4
    move v2, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public clipRect(IIII)Z
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 785
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    int-to-float v2, p1

    #@3
    int-to-float v3, p2

    #@4
    int-to-float v4, p3

    #@5
    int-to-float v5, p4

    #@6
    .line 786
    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@8
    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    #@a
    .line 785
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 729
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@4
    int-to-float v2, v2

    #@5
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@7
    int-to-float v3, v3

    #@8
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@a
    int-to-float v4, v4

    #@b
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@d
    int-to-float v5, v5

    #@e
    .line 730
    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@10
    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    #@12
    .line 729
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    #@0
    .prologue
    .line 705
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@4
    int-to-float v2, v2

    #@5
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@7
    int-to-float v3, v3

    #@8
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@a
    int-to-float v4, v4

    #@b
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@d
    int-to-float v5, v5

    #@e
    .line 706
    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    #@10
    .line 705
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 717
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    iget v2, p1, Landroid/graphics/RectF;->left:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->top:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->right:F

    #@8
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    #@a
    .line 718
    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@c
    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    #@e
    .line 717
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    #@0
    .prologue
    .line 692
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    iget v2, p1, Landroid/graphics/RectF;->left:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->top:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->right:F

    #@8
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    #@a
    .line 693
    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    #@c
    .line 692
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 842
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 5
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    #@0
    .prologue
    .line 825
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p1}, Landroid/graphics/Region;->ni()J

    #@5
    move-result-wide v2

    #@6
    iget v4, p2, Landroid/graphics/Region$Op;->nativeInt:I

    #@8
    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->native_clipRegion(JJI)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 642
    if-eqz p1, :cond_0

    #@2
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@4
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->native_concat(JJ)V

    #@9
    .line 641
    :cond_0
    return-void
.end method

.method public drawARGB(IIII)V
    .locals 1
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    #@0
    .prologue
    .line 989
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    #@7
    .line 988
    return-void
.end method

.method public drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1224
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    .line 1225
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v9

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    move v5, p4

    #@a
    move/from16 v6, p5

    #@c
    move/from16 v7, p6

    #@e
    move/from16 v8, p7

    #@10
    .line 1224
    invoke-static/range {v0 .. v10}, Landroid/graphics/Canvas;->native_drawArc(JFFFFFFZJ)V

    #@13
    .line 1223
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1197
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@8
    move-object v0, p0

    #@9
    move v5, p2

    #@a
    move v6, p3

    #@b
    move v7, p4

    #@c
    move-object v8, p5

    #@d
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    #@10
    .line 1196
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1325
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@3
    .line 1326
    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@5
    .line 1327
    if-eqz p4, :cond_0

    #@7
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    #@a
    move-result-wide v6

    #@b
    :goto_0
    iget v8, p0, Landroid/graphics/Canvas;->mDensity:I

    #@d
    iget v9, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    #@f
    iget v10, p1, Landroid/graphics/Bitmap;->mDensity:I

    #@11
    move-object v0, p0

    #@12
    move-object v3, p1

    #@13
    move v4, p2

    #@14
    move v5, p3

    #@15
    .line 1326
    invoke-direct/range {v0 .. v10}, Landroid/graphics/Canvas;->native_drawBitmap(JLandroid/graphics/Bitmap;FFJIII)V

    #@18
    .line 1324
    return-void

    #@19
    .line 1327
    :cond_0
    const-wide/16 v6, 0x0

    #@1b
    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1500
    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    #@5
    move-result-wide v4

    #@6
    .line 1501
    if-eqz p3, :cond_0

    #@8
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    #@b
    move-result-wide v6

    #@c
    :goto_0
    move-object v3, p1

    #@d
    .line 1500
    invoke-static/range {v1 .. v7}, Landroid/graphics/Canvas;->nativeDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V

    #@10
    .line 1499
    return-void

    #@11
    .line 1501
    :cond_0
    const-wide/16 v6, 0x0

    #@13
    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 22
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1401
    if-nez p3, :cond_0

    #@2
    .line 1402
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1404
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@b
    .line 1405
    if-nez p4, :cond_1

    #@d
    const-wide/16 v14, 0x0

    #@f
    .line 1408
    .local v14, "nativePaint":J
    :goto_0
    if-nez p2, :cond_2

    #@11
    .line 1409
    const/16 v21, 0x0

    #@13
    .local v21, "top":I
    const/16 v19, 0x0

    #@15
    .line 1410
    .local v19, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@18
    move-result v20

    #@19
    .line 1411
    .local v20, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@1c
    move-result v18

    #@1d
    .line 1419
    .local v18, "bottom":I
    :goto_1
    move-object/from16 v0, p0

    #@1f
    iget-wide v3, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@21
    move/from16 v0, v19

    #@23
    int-to-float v6, v0

    #@24
    move/from16 v0, v21

    #@26
    int-to-float v7, v0

    #@27
    move/from16 v0, v20

    #@29
    int-to-float v8, v0

    #@2a
    move/from16 v0, v18

    #@2c
    int-to-float v9, v0

    #@2d
    .line 1420
    move-object/from16 v0, p3

    #@2f
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@31
    int-to-float v10, v2

    #@32
    move-object/from16 v0, p3

    #@34
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@36
    int-to-float v11, v2

    #@37
    move-object/from16 v0, p3

    #@39
    iget v2, v0, Landroid/graphics/Rect;->right:I

    #@3b
    int-to-float v12, v2

    #@3c
    move-object/from16 v0, p3

    #@3e
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    #@40
    int-to-float v13, v2

    #@41
    move-object/from16 v0, p0

    #@43
    iget v0, v0, Landroid/graphics/Canvas;->mScreenDensity:I

    #@45
    move/from16 v16, v0

    #@47
    .line 1421
    move-object/from16 v0, p1

    #@49
    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    #@4b
    move/from16 v17, v0

    #@4d
    move-object/from16 v2, p0

    #@4f
    move-object/from16 v5, p1

    #@51
    .line 1419
    invoke-direct/range {v2 .. v17}, Landroid/graphics/Canvas;->native_drawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    #@54
    .line 1400
    return-void

    #@55
    .line 1405
    .end local v14    # "nativePaint":J
    .end local v18    # "bottom":I
    .end local v19    # "left":I
    .end local v20    # "right":I
    .end local v21    # "top":I
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    #@58
    move-result-wide v14

    #@59
    .restart local v14    # "nativePaint":J
    goto :goto_0

    #@5a
    .line 1413
    :cond_2
    move-object/from16 v0, p2

    #@5c
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@5e
    move/from16 v19, v0

    #@60
    .line 1414
    .restart local v19    # "left":I
    move-object/from16 v0, p2

    #@62
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@64
    move/from16 v20, v0

    #@66
    .line 1415
    .restart local v20    # "right":I
    move-object/from16 v0, p2

    #@68
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@6a
    move/from16 v21, v0

    #@6c
    .line 1416
    .restart local v21    # "top":I
    move-object/from16 v0, p2

    #@6e
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@70
    move/from16 v18, v0

    #@72
    .restart local v18    # "bottom":I
    goto :goto_1
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 18
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1354
    if-nez p3, :cond_0

    #@2
    .line 1355
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1357
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@b
    .line 1358
    if-nez p4, :cond_1

    #@d
    const-wide/16 v14, 0x0

    #@f
    .line 1361
    .local v14, "nativePaint":J
    :goto_0
    if-nez p2, :cond_2

    #@11
    .line 1362
    const/4 v7, 0x0

    #@12
    .local v7, "top":F
    const/4 v6, 0x0

    #@13
    .line 1363
    .local v6, "left":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@16
    move-result v2

    #@17
    int-to-float v8, v2

    #@18
    .line 1364
    .local v8, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@1b
    move-result v2

    #@1c
    int-to-float v9, v2

    #@1d
    .line 1372
    .local v9, "bottom":F
    :goto_1
    move-object/from16 v0, p0

    #@1f
    iget-wide v3, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@21
    .line 1373
    move-object/from16 v0, p3

    #@23
    iget v10, v0, Landroid/graphics/RectF;->left:F

    #@25
    move-object/from16 v0, p3

    #@27
    iget v11, v0, Landroid/graphics/RectF;->top:F

    #@29
    move-object/from16 v0, p3

    #@2b
    iget v12, v0, Landroid/graphics/RectF;->right:F

    #@2d
    move-object/from16 v0, p3

    #@2f
    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    #@31
    move-object/from16 v0, p0

    #@33
    iget v0, v0, Landroid/graphics/Canvas;->mScreenDensity:I

    #@35
    move/from16 v16, v0

    #@37
    .line 1374
    move-object/from16 v0, p1

    #@39
    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    #@3b
    move/from16 v17, v0

    #@3d
    move-object/from16 v2, p0

    #@3f
    move-object/from16 v5, p1

    #@41
    .line 1372
    invoke-direct/range {v2 .. v17}, Landroid/graphics/Canvas;->native_drawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    #@44
    .line 1353
    return-void

    #@45
    .line 1358
    .end local v6    # "left":F
    .end local v7    # "top":F
    .end local v8    # "right":F
    .end local v9    # "bottom":F
    .end local v14    # "nativePaint":J
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    #@48
    move-result-wide v14

    #@49
    .restart local v14    # "nativePaint":J
    goto :goto_0

    #@4a
    .line 1366
    :cond_2
    move-object/from16 v0, p2

    #@4c
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@4e
    int-to-float v6, v2

    #@4f
    .line 1367
    .restart local v6    # "left":F
    move-object/from16 v0, p2

    #@51
    iget v2, v0, Landroid/graphics/Rect;->right:I

    #@53
    int-to-float v8, v2

    #@54
    .line 1368
    .restart local v8    # "right":F
    move-object/from16 v0, p2

    #@56
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@58
    int-to-float v7, v2

    #@59
    .line 1369
    .restart local v7    # "top":F
    move-object/from16 v0, p2

    #@5b
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    #@5d
    int-to-float v9, v2

    #@5e
    .restart local v9    # "bottom":F
    goto :goto_1
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 16
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

    #@0
    .prologue
    .line 1452
    if-gez p6, :cond_0

    #@2
    .line 1453
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "width must be >= 0"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1455
    :cond_0
    if-gez p7, :cond_1

    #@d
    .line 1456
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "height must be >= 0"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 1458
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    #@19
    move-result v2

    #@1a
    move/from16 v0, p6

    #@1c
    if-ge v2, v0, :cond_2

    #@1e
    .line 1459
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v3, "abs(stride) must be >= width"

    #@23
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 1461
    :cond_2
    add-int/lit8 v2, p7, -0x1

    #@29
    mul-int v2, v2, p3

    #@2b
    add-int v14, p2, v2

    #@2d
    .line 1462
    .local v14, "lastScanline":I
    move-object/from16 v0, p1

    #@2f
    array-length v15, v0

    #@30
    .line 1463
    .local v15, "length":I
    if-ltz p2, :cond_3

    #@32
    add-int v2, p2, p6

    #@34
    if-le v2, v15, :cond_4

    #@36
    .line 1465
    :cond_3
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@38
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@3b
    throw v2

    #@3c
    .line 1463
    :cond_4
    if-ltz v14, :cond_3

    #@3e
    .line 1464
    add-int v2, v14, p6

    #@40
    if-gt v2, v15, :cond_3

    #@42
    .line 1468
    if-eqz p6, :cond_5

    #@44
    if-nez p7, :cond_6

    #@46
    .line 1469
    :cond_5
    return-void

    #@47
    .line 1472
    :cond_6
    move-object/from16 v0, p0

    #@49
    iget-wide v2, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@4b
    .line 1473
    if-eqz p9, :cond_7

    #@4d
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    #@50
    move-result-wide v12

    #@51
    :goto_0
    move-object/from16 v4, p1

    #@53
    move/from16 v5, p2

    #@55
    move/from16 v6, p3

    #@57
    move/from16 v7, p4

    #@59
    move/from16 v8, p5

    #@5b
    move/from16 v9, p6

    #@5d
    move/from16 v10, p7

    #@5f
    move/from16 v11, p8

    #@61
    .line 1472
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawBitmap(J[IIIFFIIZJ)V

    #@64
    .line 1450
    return-void

    #@65
    .line 1473
    :cond_7
    const-wide/16 v12, 0x0

    #@67
    goto :goto_0
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10
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

    #@0
    .prologue
    .line 1488
    int-to-float v4, p4

    #@1
    int-to-float v5, p5

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move/from16 v6, p6

    #@8
    move/from16 v7, p7

    #@a
    move/from16 v8, p8

    #@c
    move-object/from16 v9, p9

    #@e
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    #@11
    .line 1486
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1542
    or-int v1, p2, p3

    #@2
    or-int v1, v1, p5

    #@4
    or-int v1, v1, p7

    #@6
    if-gez v1, :cond_0

    #@8
    .line 1543
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@d
    throw v1

    #@e
    .line 1545
    :cond_0
    if-eqz p2, :cond_1

    #@10
    if-nez p3, :cond_2

    #@12
    .line 1546
    :cond_1
    return-void

    #@13
    .line 1548
    :cond_2
    add-int/lit8 v1, p2, 0x1

    #@15
    add-int/lit8 v2, p3, 0x1

    #@17
    mul-int v12, v1, v2

    #@19
    .line 1550
    .local v12, "count":I
    move-object/from16 v0, p4

    #@1b
    array-length v1, v0

    #@1c
    mul-int/lit8 v2, v12, 0x2

    #@1e
    move/from16 v0, p5

    #@20
    invoke-static {v1, v0, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    #@23
    .line 1551
    if-eqz p6, :cond_3

    #@25
    .line 1553
    move-object/from16 v0, p6

    #@27
    array-length v1, v0

    #@28
    move/from16 v0, p7

    #@2a
    invoke-static {v1, v0, v12}, Landroid/graphics/Canvas;->checkRange(III)V

    #@2d
    .line 1555
    :cond_3
    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2f
    .line 1557
    if-eqz p8, :cond_4

    #@31
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    #@34
    move-result-wide v10

    #@35
    :goto_0
    move-object v3, p1

    #@36
    move v4, p2

    #@37
    move/from16 v5, p3

    #@39
    move-object/from16 v6, p4

    #@3b
    move/from16 v7, p5

    #@3d
    move-object/from16 v8, p6

    #@3f
    move/from16 v9, p7

    #@41
    .line 1555
    invoke-static/range {v1 .. v11}, Landroid/graphics/Canvas;->nativeDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V

    #@44
    .line 1541
    return-void

    #@45
    .line 1557
    :cond_4
    const-wide/16 v10, 0x0

    #@47
    goto :goto_0
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1169
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v5

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawCircle(JFFFJ)V

    #@c
    .line 1168
    return-void
.end method

.method public drawColor(I)V
    .locals 3
    .param p1, "color"    # I

    #@0
    .prologue
    .line 999
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #@4
    iget v2, v2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    #@6
    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Canvas;->native_drawColor(JII)V

    #@9
    .line 998
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 1010
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    #@4
    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Canvas;->native_drawColor(JII)V

    #@7
    .line 1009
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1073
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v6

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    move v5, p4

    #@a
    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawLine(JFFFFJ)V

    #@d
    .line 1072
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1092
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v5

    #@6
    move-object v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawLines(J[FIIJ)V

    #@c
    .line 1091
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1096
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    #@5
    .line 1095
    return-void
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1155
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v6

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    move v5, p4

    #@a
    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawOval(JFFFFJ)V

    #@d
    .line 1154
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1144
    if-nez p1, :cond_0

    #@2
    .line 1145
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1147
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@a
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@c
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@e
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@10
    move-object v0, p0

    #@11
    move-object v5, p2

    #@12
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    #@15
    .line 1143
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1021
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->native_drawPaint(JJ)V

    #@9
    .line 1020
    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1289
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/NinePatch;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@3
    .line 1288
    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1302
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/NinePatch;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@3
    .line 1301
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1262
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    #@9
    move-result-wide v4

    #@a
    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawPath(JJJ)V

    #@d
    .line 1261
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 1
    .param p1, "picture"    # Landroid/graphics/Picture;

    #@0
    .prologue
    .line 1924
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    #@3
    .line 1925
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    #@6
    move-result v0

    #@7
    .line 1926
    .local v0, "restoreCount":I
    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    #@a
    .line 1927
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@d
    .line 1923
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1947
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 1948
    iget v0, p2, Landroid/graphics/Rect;->left:I

    #@5
    int-to-float v0, v0

    #@6
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@8
    int-to-float v1, v1

    #@9
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@c
    .line 1949
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    #@f
    move-result v0

    #@10
    if-lez v0, :cond_0

    #@12
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    #@15
    move-result v0

    #@16
    if-lez v0, :cond_0

    #@18
    .line 1950
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@1b
    move-result v0

    #@1c
    int-to-float v0, v0

    #@1d
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    #@20
    move-result v1

    #@21
    int-to-float v1, v1

    #@22
    div-float/2addr v0, v1

    #@23
    .line 1951
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    #@26
    move-result v1

    #@27
    int-to-float v1, v1

    #@28
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    #@2b
    move-result v2

    #@2c
    int-to-float v2, v2

    #@2d
    div-float/2addr v1, v2

    #@2e
    .line 1950
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@31
    .line 1953
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    #@34
    .line 1954
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    #@37
    .line 1946
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 1934
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 1935
    iget v0, p2, Landroid/graphics/RectF;->left:F

    #@5
    iget v1, p2, Landroid/graphics/RectF;->top:F

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@a
    .line 1936
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    #@d
    move-result v0

    #@e
    if-lez v0, :cond_0

    #@10
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    #@13
    move-result v0

    #@14
    if-lez v0, :cond_0

    #@16
    .line 1937
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    #@19
    move-result v0

    #@1a
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    #@1d
    move-result v1

    #@1e
    int-to-float v1, v1

    #@1f
    div-float/2addr v0, v1

    #@20
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    #@23
    move-result v1

    #@24
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    #@27
    move-result v2

    #@28
    int-to-float v2, v2

    #@29
    div-float/2addr v1, v2

    #@2a
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@2d
    .line 1939
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    #@30
    .line 1940
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    #@33
    .line 1933
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1056
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v4

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawPoint(JFFJ)V

    #@b
    .line 1055
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1042
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v5

    #@6
    move-object v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawPoints(J[FIIJ)V

    #@c
    .line 1041
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1049
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    #@5
    .line 1048
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1865
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v3

    #@8
    const/4 v2, 0x0

    #@9
    move-object v0, p0

    #@a
    move-object v4, p2

    #@b
    move-object v5, p3

    #@c
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    #@f
    .line 1864
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1842
    if-ltz p2, :cond_0

    #@2
    add-int v0, p2, p3

    #@4
    array-length v1, p1

    #@5
    if-le v0, v1, :cond_1

    #@7
    .line 1843
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v0

    #@d
    .line 1842
    :cond_1
    mul-int/lit8 v0, p3, 0x2

    #@f
    array-length v1, p4

    #@10
    if-gt v0, v1, :cond_0

    #@12
    .line 1845
    const/4 v7, 0x0

    #@13
    .local v7, "i":I
    :goto_0
    if-ge v7, p3, :cond_2

    #@15
    .line 1846
    add-int v2, p2, v7

    #@17
    mul-int/lit8 v0, v7, 0x2

    #@19
    aget v4, p4, v0

    #@1b
    mul-int/lit8 v0, v7, 0x2

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    aget v5, p4, v0

    #@21
    const/4 v3, 0x1

    #@22
    move-object v0, p0

    #@23
    move-object v1, p1

    #@24
    move-object v6, p5

    #@25
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    #@28
    .line 1845
    add-int/lit8 v7, v7, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1841
    :cond_2
    return-void
.end method

.method public drawRGB(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    #@0
    .prologue
    .line 976
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    #@7
    .line 975
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1134
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v6

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    move v5, p4

    #@a
    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawRect(JFFFFJ)V

    #@d
    .line 1133
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1119
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    int-to-float v1, v0

    #@3
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@5
    int-to-float v2, v0

    #@6
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@8
    int-to-float v3, v0

    #@9
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@b
    int-to-float v4, v0

    #@c
    move-object v0, p0

    #@d
    move-object v5, p2

    #@e
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@11
    .line 1118
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1107
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    .line 1108
    iget v2, p1, Landroid/graphics/RectF;->left:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->top:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->right:F

    #@8
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    #@a
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    #@d
    move-result-wide v6

    #@e
    .line 1107
    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawRect(JFFFFJ)V

    #@11
    .line 1106
    return-void
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1251
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v8

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    move v5, p4

    #@a
    move v6, p5

    #@b
    move/from16 v7, p6

    #@d
    invoke-static/range {v0 .. v9}, Landroid/graphics/Canvas;->native_drawRoundRect(JFFFFFFJ)V

    #@10
    .line 1250
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1238
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@8
    move-object v0, p0

    #@9
    move v5, p2

    #@a
    move v6, p3

    #@b
    move-object v7, p4

    #@c
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    #@f
    .line 1237
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1695
    or-int v2, p2, p3

    #@2
    sub-int v3, p3, p2

    #@4
    or-int/2addr v2, v3

    #@5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v3

    #@9
    sub-int v3, v3, p3

    #@b
    or-int/2addr v2, v3

    #@c
    if-gez v2, :cond_0

    #@e
    .line 1696
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@10
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@13
    throw v2

    #@14
    .line 1698
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    #@16
    if-nez v2, :cond_1

    #@18
    instance-of v2, p1, Landroid/text/SpannedString;

    #@1a
    if-nez v2, :cond_1

    #@1c
    .line 1699
    instance-of v2, p1, Landroid/text/SpannableString;

    #@1e
    .line 1698
    if-eqz v2, :cond_2

    #@20
    .line 1700
    :cond_1
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@22
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    .line 1701
    move-object/from16 v0, p6

    #@28
    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@2a
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    #@2d
    move-result-wide v10

    #@2e
    move-object/from16 v0, p6

    #@30
    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@32
    move/from16 v5, p2

    #@34
    move/from16 v6, p3

    #@36
    move/from16 v7, p4

    #@38
    move/from16 v8, p5

    #@3a
    .line 1700
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(JLjava/lang/String;IIFFIJJ)V

    #@3d
    .line 1694
    :goto_0
    return-void

    #@3e
    .line 1702
    :cond_2
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    #@40
    if-eqz v2, :cond_3

    #@42
    move-object v2, p1

    #@43
    .line 1703
    check-cast v2, Landroid/text/GraphicsOperations;

    #@45
    move-object v3, p0

    #@46
    move/from16 v4, p2

    #@48
    move/from16 v5, p3

    #@4a
    move/from16 v6, p4

    #@4c
    move/from16 v7, p5

    #@4e
    move-object/from16 v8, p6

    #@50
    invoke-interface/range {v2 .. v8}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V

    #@53
    goto :goto_0

    #@54
    .line 1706
    :cond_3
    sub-int v2, p3, p2

    #@56
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@59
    move-result-object v4

    #@5a
    .line 1707
    .local v4, "buf":[C
    const/4 v2, 0x0

    #@5b
    move/from16 v0, p2

    #@5d
    move/from16 v1, p3

    #@5f
    invoke-static {p1, v0, v1, v4, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@62
    .line 1708
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@64
    sub-int v6, p3, p2

    #@66
    .line 1709
    move-object/from16 v0, p6

    #@68
    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@6a
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    #@6d
    move-result-wide v10

    #@6e
    move-object/from16 v0, p6

    #@70
    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@72
    .line 1708
    const/4 v5, 0x0

    #@73
    move/from16 v7, p4

    #@75
    move/from16 v8, p5

    #@77
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(J[CIIFFIJJ)V

    #@7a
    .line 1710
    invoke-static {v4}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@7d
    goto :goto_0
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1656
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v6

    #@6
    move-object/from16 v0, p4

    #@8
    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@a
    .line 1657
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    #@d
    move-result-wide v10

    #@e
    move-object/from16 v0, p4

    #@10
    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@12
    .line 1656
    const/4 v5, 0x0

    #@13
    move-object v4, p1

    #@14
    move/from16 v7, p2

    #@16
    move/from16 v8, p3

    #@18
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(JLjava/lang/String;IIFFIJJ)V

    #@1b
    .line 1655
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1673
    or-int v2, p2, p3

    #@2
    sub-int v3, p3, p2

    #@4
    or-int/2addr v2, v3

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    sub-int v3, v3, p3

    #@b
    or-int/2addr v2, v3

    #@c
    if-gez v2, :cond_0

    #@e
    .line 1674
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@10
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@13
    throw v2

    #@14
    .line 1676
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@16
    move-object/from16 v0, p6

    #@18
    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@1a
    .line 1677
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    #@1d
    move-result-wide v10

    #@1e
    move-object/from16 v0, p6

    #@20
    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@22
    move-object v4, p1

    #@23
    move/from16 v5, p2

    #@25
    move/from16 v6, p3

    #@27
    move/from16 v7, p4

    #@29
    move/from16 v8, p5

    #@2b
    .line 1676
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(JLjava/lang/String;IIFFIJJ)V

    #@2e
    .line 1672
    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1638
    or-int v2, p2, p3

    #@2
    add-int v3, p2, p3

    #@4
    or-int/2addr v2, v3

    #@5
    .line 1639
    array-length v3, p1

    #@6
    sub-int v3, v3, p2

    #@8
    sub-int v3, v3, p3

    #@a
    .line 1638
    or-int/2addr v2, v3

    #@b
    if-gez v2, :cond_0

    #@d
    .line 1640
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@f
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@12
    throw v2

    #@13
    .line 1642
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@15
    move-object/from16 v0, p6

    #@17
    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@19
    .line 1643
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    #@1c
    move-result-wide v10

    #@1d
    move-object/from16 v0, p6

    #@1f
    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@21
    move-object v4, p1

    #@22
    move/from16 v5, p2

    #@24
    move/from16 v6, p3

    #@26
    move/from16 v7, p4

    #@28
    move/from16 v8, p5

    #@2a
    .line 1642
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(J[CIIFFIJJ)V

    #@2d
    .line 1637
    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1906
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    if-lez v2, :cond_0

    #@6
    .line 1907
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@8
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->ni()J

    #@b
    move-result-wide v5

    #@c
    .line 1908
    move-object/from16 v0, p5

    #@e
    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@10
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    #@13
    move-result-wide v10

    #@14
    move-object/from16 v0, p5

    #@16
    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@18
    move-object v4, p1

    #@19
    move/from16 v7, p3

    #@1b
    move/from16 v8, p4

    #@1d
    .line 1907
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawTextOnPath(JLjava/lang/String;JFFIJJ)V

    #@20
    .line 1905
    :cond_0
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1883
    if-ltz p2, :cond_0

    #@2
    add-int v2, p2, p3

    #@4
    move-object/from16 v0, p1

    #@6
    array-length v3, v0

    #@7
    if-le v2, v3, :cond_1

    #@9
    .line 1884
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@b
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@e
    throw v2

    #@f
    .line 1886
    :cond_1
    move-object/from16 v0, p0

    #@11
    iget-wide v2, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@13
    .line 1887
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->ni()J

    #@16
    move-result-wide v7

    #@17
    .line 1888
    move-object/from16 v0, p7

    #@19
    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@1b
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    #@1e
    move-result-wide v12

    #@1f
    move-object/from16 v0, p7

    #@21
    iget-wide v14, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@23
    move-object/from16 v4, p1

    #@25
    move/from16 v5, p2

    #@27
    move/from16 v6, p3

    #@29
    move/from16 v9, p5

    #@2b
    move/from16 v10, p6

    #@2d
    .line 1886
    invoke-static/range {v2 .. v15}, Landroid/graphics/Canvas;->native_drawTextOnPath(J[CIIJFFIJJ)V

    #@30
    .line 1882
    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1794
    if-nez p1, :cond_0

    #@2
    .line 1795
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "text is null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 1797
    :cond_0
    if-nez p9, :cond_1

    #@d
    .line 1798
    new-instance v4, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v5, "paint is null"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 1800
    :cond_1
    or-int v4, p2, p3

    #@18
    or-int v4, v4, p4

    #@1a
    or-int v4, v4, p5

    #@1c
    sub-int v5, p2, p4

    #@1e
    or-int/2addr v4, v5

    #@1f
    sub-int v5, p3, p2

    #@21
    or-int/2addr v4, v5

    #@22
    .line 1801
    sub-int v5, p5, p3

    #@24
    .line 1800
    or-int/2addr v4, v5

    #@25
    .line 1801
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@28
    move-result v5

    #@29
    sub-int v5, v5, p5

    #@2b
    .line 1800
    or-int/2addr v4, v5

    #@2c
    if-gez v4, :cond_2

    #@2e
    .line 1802
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@30
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@33
    throw v4

    #@34
    .line 1805
    :cond_2
    move-object/from16 v0, p1

    #@36
    instance-of v4, v0, Ljava/lang/String;

    #@38
    if-nez v4, :cond_3

    #@3a
    move-object/from16 v0, p1

    #@3c
    instance-of v4, v0, Landroid/text/SpannedString;

    #@3e
    if-nez v4, :cond_3

    #@40
    .line 1806
    move-object/from16 v0, p1

    #@42
    instance-of v4, v0, Landroid/text/SpannableString;

    #@44
    .line 1805
    if-eqz v4, :cond_4

    #@46
    .line 1807
    :cond_3
    move-object/from16 v0, p0

    #@48
    iget-wide v4, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@4a
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    .line 1808
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    #@51
    move-result-wide v14

    #@52
    move-object/from16 v0, p9

    #@54
    iget-wide v0, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@56
    move-wide/from16 v16, v0

    #@58
    move/from16 v7, p2

    #@5a
    move/from16 v8, p3

    #@5c
    move/from16 v9, p4

    #@5e
    move/from16 v10, p5

    #@60
    move/from16 v11, p6

    #@62
    move/from16 v12, p7

    #@64
    move/from16 v13, p8

    #@66
    .line 1807
    invoke-static/range {v4 .. v17}, Landroid/graphics/Canvas;->native_drawTextRun(JLjava/lang/String;IIIIFFZJJ)V

    #@69
    .line 1792
    :goto_0
    return-void

    #@6a
    .line 1809
    :cond_4
    move-object/from16 v0, p1

    #@6c
    instance-of v4, v0, Landroid/text/GraphicsOperations;

    #@6e
    if-eqz v4, :cond_5

    #@70
    move-object/from16 v4, p1

    #@72
    .line 1810
    check-cast v4, Landroid/text/GraphicsOperations;

    #@74
    move-object/from16 v5, p0

    #@76
    move/from16 v6, p2

    #@78
    move/from16 v7, p3

    #@7a
    move/from16 v8, p4

    #@7c
    move/from16 v9, p5

    #@7e
    move/from16 v10, p6

    #@80
    move/from16 v11, p7

    #@82
    move/from16 v12, p8

    #@84
    move-object/from16 v13, p9

    #@86
    invoke-interface/range {v4 .. v13}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/Canvas;IIIIFFZLandroid/graphics/Paint;)V

    #@89
    goto :goto_0

    #@8a
    .line 1813
    :cond_5
    sub-int v10, p5, p4

    #@8c
    .line 1814
    .local v10, "contextLen":I
    sub-int v8, p3, p2

    #@8e
    .line 1815
    .local v8, "len":I
    invoke-static {v10}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@91
    move-result-object v6

    #@92
    .line 1816
    .local v6, "buf":[C
    const/4 v4, 0x0

    #@93
    move-object/from16 v0, p1

    #@95
    move/from16 v1, p4

    #@97
    move/from16 v2, p5

    #@99
    invoke-static {v0, v1, v2, v6, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@9c
    .line 1817
    move-object/from16 v0, p0

    #@9e
    iget-wide v4, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@a0
    sub-int v7, p2, p4

    #@a2
    .line 1818
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    #@a5
    move-result-wide v14

    #@a6
    move-object/from16 v0, p9

    #@a8
    iget-wide v0, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@aa
    move-wide/from16 v16, v0

    #@ac
    const/4 v9, 0x0

    #@ad
    move/from16 v11, p6

    #@af
    move/from16 v12, p7

    #@b1
    move/from16 v13, p8

    #@b3
    .line 1817
    invoke-static/range {v4 .. v17}, Landroid/graphics/Canvas;->native_drawTextRun(J[CIIIIFFZJJ)V

    #@b6
    .line 1819
    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@b9
    goto :goto_0
.end method

.method public drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1740
    if-nez p1, :cond_0

    #@2
    .line 1741
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "text is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1743
    :cond_0
    if-nez p9, :cond_1

    #@d
    .line 1744
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v3, "paint is null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 1746
    :cond_1
    or-int v2, p2, p3

    #@18
    or-int v2, v2, p4

    #@1a
    or-int v2, v2, p5

    #@1c
    sub-int v3, p2, p4

    #@1e
    or-int/2addr v2, v3

    #@1f
    .line 1747
    add-int v3, p4, p5

    #@21
    add-int v4, p2, p3

    #@23
    sub-int/2addr v3, v4

    #@24
    .line 1746
    or-int/2addr v2, v3

    #@25
    .line 1748
    move-object/from16 v0, p1

    #@27
    array-length v3, v0

    #@28
    add-int v4, p4, p5

    #@2a
    sub-int/2addr v3, v4

    #@2b
    .line 1746
    or-int/2addr v2, v3

    #@2c
    if-gez v2, :cond_2

    #@2e
    .line 1749
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@30
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@33
    throw v2

    #@34
    .line 1752
    :cond_2
    move-object/from16 v0, p0

    #@36
    iget-wide v2, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@38
    .line 1753
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    #@3b
    move-result-wide v12

    #@3c
    move-object/from16 v0, p9

    #@3e
    iget-wide v14, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@40
    move-object/from16 v4, p1

    #@42
    move/from16 v5, p2

    #@44
    move/from16 v6, p3

    #@46
    move/from16 v7, p4

    #@48
    move/from16 v8, p5

    #@4a
    move/from16 v9, p6

    #@4c
    move/from16 v10, p7

    #@4e
    move/from16 v11, p8

    #@50
    .line 1752
    invoke-static/range {v2 .. v15}, Landroid/graphics/Canvas;->native_drawTextRun(J[CIIIIFFZJJ)V

    #@53
    .line 1738
    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 17
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

    #@0
    .prologue
    .line 1609
    move-object/from16 v0, p3

    #@2
    array-length v2, v0

    #@3
    move/from16 v0, p4

    #@5
    move/from16 v1, p2

    #@7
    invoke-static {v2, v0, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    #@a
    .line 1610
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1611
    return-void

    #@11
    .line 1613
    :cond_0
    if-eqz p5, :cond_1

    #@13
    .line 1614
    move-object/from16 v0, p5

    #@15
    array-length v2, v0

    #@16
    move/from16 v0, p6

    #@18
    move/from16 v1, p2

    #@1a
    invoke-static {v2, v0, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    #@1d
    .line 1616
    :cond_1
    if-eqz p7, :cond_2

    #@1f
    .line 1617
    move-object/from16 v0, p7

    #@21
    array-length v2, v0

    #@22
    div-int/lit8 v3, p2, 0x2

    #@24
    move/from16 v0, p8

    #@26
    invoke-static {v2, v0, v3}, Landroid/graphics/Canvas;->checkRange(III)V

    #@29
    .line 1619
    :cond_2
    if-eqz p9, :cond_3

    #@2b
    .line 1620
    move-object/from16 v0, p9

    #@2d
    array-length v2, v0

    #@2e
    move/from16 v0, p10

    #@30
    move/from16 v1, p11

    #@32
    invoke-static {v2, v0, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    #@35
    .line 1622
    :cond_3
    move-object/from16 v0, p0

    #@37
    iget-wide v2, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@39
    move-object/from16 v0, p1

    #@3b
    iget v4, v0, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    #@3d
    .line 1624
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    #@40
    move-result-wide v15

    #@41
    move/from16 v5, p2

    #@43
    move-object/from16 v6, p3

    #@45
    move/from16 v7, p4

    #@47
    move-object/from16 v8, p5

    #@49
    move/from16 v9, p6

    #@4b
    move-object/from16 v10, p7

    #@4d
    move/from16 v11, p8

    #@4f
    move-object/from16 v12, p9

    #@51
    move/from16 v13, p10

    #@53
    move/from16 v14, p11

    #@55
    .line 1622
    invoke-static/range {v2 .. v16}, Landroid/graphics/Canvas;->nativeDrawVertices(JII[FI[FI[II[SIIJ)V

    #@58
    .line 1608
    return-void
.end method

.method public final getClipBounds()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 962
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    .line 963
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    #@8
    .line 964
    return-object v0
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 953
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->native_getClipBounds(JLandroid/graphics/Rect;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDensity()I
    .locals 1

    #@0
    .prologue
    .line 277
    iget v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@2
    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    #@0
    .prologue
    .line 846
    iget-object v0, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    #@2
    return-object v0
.end method

.method protected getGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 170
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    #@0
    .prologue
    .line 262
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_getHeight(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 678
    new-instance v0, Landroid/graphics/Matrix;

    #@2
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@5
    .line 680
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    #@8
    .line 681
    return-object v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "ctm"    # Landroid/graphics/Matrix;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 669
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->native_getCTM(JJ)V

    #@7
    .line 668
    return-void
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    #@0
    .prologue
    .line 323
    const/16 v0, 0x7ffe

    #@2
    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    #@0
    .prologue
    .line 312
    const/16 v0, 0x7ffe

    #@2
    return v0
.end method

.method public getNativeCanvasWrapper()J
    .locals 2

    #@0
    .prologue
    .line 60
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    return-wide v0
.end method

.method public getSaveCount()I
    .locals 2

    #@0
    .prologue
    .line 548
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_getSaveCount(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWidth()I
    .locals 2

    #@0
    .prologue
    .line 253
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_getWidth(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public insertInorderBarrier()V
    .locals 0

    #@0
    .prologue
    .line 235
    return-void
.end method

.method public insertReorderBarrier()V
    .locals 0

    #@0
    .prologue
    .line 232
    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    #@0
    .prologue
    .line 183
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isOpaque()Z
    .locals 2

    #@0
    .prologue
    .line 244
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_isOpaque(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "type"    # Landroid/graphics/Canvas$EdgeType;

    #@0
    .prologue
    .line 939
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_quickReject(JFFFF)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "type"    # Landroid/graphics/Canvas$EdgeType;

    #@0
    .prologue
    .line 914
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->native_quickReject(JJ)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "type"    # Landroid/graphics/Canvas$EdgeType;

    #@0
    .prologue
    .line 894
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    .line 895
    iget v2, p1, Landroid/graphics/RectF;->left:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->top:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->right:F

    #@8
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    #@a
    .line 894
    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_quickReject(JFFFF)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public release()V
    .locals 1

    #@0
    .prologue
    .line 1963
    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Canvas$CanvasFinalizer;->dispose()V

    #@5
    .line 1962
    return-void
.end method

.method public restore()V
    .locals 4

    #@0
    .prologue
    .line 539
    sget-boolean v1, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    .line 540
    .local v0, "throwOnUnderflow":Z
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@d
    invoke-static {v2, v3, v0}, Landroid/graphics/Canvas;->native_restore(JZ)V

    #@10
    .line 538
    return-void

    #@11
    .line 539
    .end local v0    # "throwOnUnderflow":Z
    :cond_0
    const/4 v0, 0x1

    #@12
    .restart local v0    # "throwOnUnderflow":Z
    goto :goto_0
.end method

.method public restoreToCount(I)V
    .locals 4
    .param p1, "saveCount"    # I

    #@0
    .prologue
    .line 565
    sget-boolean v1, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    .line 566
    .local v0, "throwOnUnderflow":Z
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@d
    invoke-static {v2, v3, p1, v0}, Landroid/graphics/Canvas;->native_restoreToCount(JIZ)V

    #@10
    .line 564
    return-void

    #@11
    .line 565
    .end local v0    # "throwOnUnderflow":Z
    :cond_0
    const/4 v0, 0x1

    #@12
    .restart local v0    # "throwOnUnderflow":Z
    goto :goto_0
.end method

.method public rotate(F)V
    .locals 2
    .param p1, "degrees"    # F

    #@0
    .prologue
    .line 609
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->native_rotate(JF)V

    #@5
    .line 608
    return-void
.end method

.method public final rotate(FFF)V
    .locals 2
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    #@0
    .prologue
    .line 620
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    #@3
    .line 621
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    #@6
    .line 622
    neg-float v0, p2

    #@7
    neg-float v1, p3

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@b
    .line 619
    return-void
.end method

.method public save()I
    .locals 3

    #@0
    .prologue
    .line 390
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    const/4 v2, 0x3

    #@3
    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_save(JI)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public save(I)I
    .locals 2
    .param p1, "saveFlags"    # I

    #@0
    .prologue
    .line 410
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->native_save(JI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;)I
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 471
    const/16 v6, 0x1f

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move-object v5, p5

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "saveFlags"    # I

    #@0
    .prologue
    .line 462
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    .line 463
    if-eqz p5, :cond_0

    #@4
    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    #@7
    move-result-wide v6

    #@8
    :goto_0
    move v2, p1

    #@9
    move v3, p2

    #@a
    move v4, p3

    #@b
    move v5, p4

    #@c
    move v8, p6

    #@d
    .line 462
    invoke-static/range {v0 .. v8}, Landroid/graphics/Canvas;->native_saveLayer(JFFFFJI)I

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 463
    :cond_0
    const-wide/16 v6, 0x0

    #@14
    goto :goto_0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 454
    const/16 v0, 0x1f

    #@2
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "saveFlags"    # I

    #@0
    .prologue
    .line 444
    if-nez p1, :cond_0

    #@2
    .line 445
    new-instance p1, Landroid/graphics/RectF;

    #@4
    .end local p1    # "bounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    #@b
    .line 447
    .restart local p1    # "bounds":Landroid/graphics/RectF;
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@d
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@f
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@11
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@13
    move-object v0, p0

    #@14
    move-object v5, p2

    #@15
    move v6, p3

    #@16
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public saveLayerAlpha(FFFFI)I
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "alpha"    # I

    #@0
    .prologue
    .line 530
    const/16 v6, 0x1f

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "alpha"    # I
    .param p6, "saveFlags"    # I

    #@0
    .prologue
    .line 521
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    const/16 v1, 0xff

    #@7
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@a
    move-result p5

    #@b
    .line 522
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@d
    move v2, p1

    #@e
    move v3, p2

    #@f
    move v4, p3

    #@10
    move v5, p4

    #@11
    move v6, p5

    #@12
    move v7, p6

    #@13
    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_saveLayerAlpha(JFFFFII)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;I)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "alpha"    # I

    #@0
    .prologue
    .line 513
    const/16 v0, 0x1f

    #@2
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "alpha"    # I
    .param p3, "saveFlags"    # I

    #@0
    .prologue
    .line 503
    if-nez p1, :cond_0

    #@2
    .line 504
    new-instance p1, Landroid/graphics/RectF;

    #@4
    .end local p1    # "bounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    #@b
    .line 506
    .restart local p1    # "bounds":Landroid/graphics/RectF;
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@d
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@f
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@11
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@13
    move-object v0, p0

    #@14
    move v5, p2

    #@15
    move v6, p3

    #@16
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public scale(FF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    #@0
    .prologue
    .line 586
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->native_scale(JFF)V

    #@5
    .line 585
    return-void
.end method

.method public final scale(FFFF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    #@0
    .prologue
    .line 598
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    #@3
    .line 599
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    #@6
    .line 600
    neg-float v0, p3

    #@7
    neg-float v1, p4

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@b
    .line 597
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 197
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v1, "Can\'t set a bitmap device on a HW accelerated canvas"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 201
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 202
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@14
    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_setBitmap(JLandroid/graphics/Bitmap;)V

    #@17
    .line 203
    const/4 v0, 0x0

    #@18
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@1a
    .line 214
    :goto_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    #@1c
    .line 196
    return-void

    #@1d
    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_2

    #@23
    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    #@25
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@28
    throw v0

    #@29
    .line 208
    :cond_2
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@2c
    .line 210
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2e
    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->native_setBitmap(JLandroid/graphics/Bitmap;)V

    #@31
    .line 211
    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    #@33
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@35
    goto :goto_0
.end method

.method public setDensity(I)V
    .locals 1
    .param p1, "density"    # I

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 294
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    #@9
    .line 296
    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    #@b
    .line 292
    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 4
    .param p1, "filter"    # Landroid/graphics/DrawFilter;

    #@0
    .prologue
    .line 850
    const-wide/16 v0, 0x0

    #@2
    .line 851
    .local v0, "nativeFilter":J
    if-eqz p1, :cond_0

    #@4
    .line 852
    iget-wide v0, p1, Landroid/graphics/DrawFilter;->mNativeInt:J

    #@6
    .line 854
    :cond_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    #@8
    .line 855
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@a
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Canvas;->nativeSetDrawFilter(JJ)V

    #@d
    .line 849
    return-void
.end method

.method public setHighContrastText(Z)V
    .locals 0
    .param p1, "highContrastText"    # Z

    #@0
    .prologue
    .line 229
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 659
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    .line 660
    if-nez p1, :cond_0

    #@4
    const-wide/16 v0, 0x0

    #@6
    .line 659
    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Canvas;->native_setMatrix(JJ)V

    #@9
    .line 658
    return-void

    #@a
    .line 660
    :cond_0
    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    #@c
    goto :goto_0
.end method

.method public setScreenDensity(I)V
    .locals 0
    .param p1, "density"    # I

    #@0
    .prologue
    .line 301
    iput p1, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    #@2
    .line 300
    return-void
.end method

.method public setViewport(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 226
    return-void
.end method

.method public skew(FF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    #@0
    .prologue
    .line 632
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->native_skew(JFF)V

    #@5
    .line 631
    return-void
.end method

.method public translate(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 576
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->native_translate(JFF)V

    #@5
    .line 575
    return-void
.end method
