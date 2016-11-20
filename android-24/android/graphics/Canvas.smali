.class public Landroid/graphics/Canvas;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Canvas$EdgeType;,
        Landroid/graphics/Canvas$NoImagePreloadHolder;,
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

.field private static final NATIVE_ALLOCATION_SIZE:J = 0x20dL

.field public static sCompatibilityRestore:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mDensity:I

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private mFinalizer:Ljava/lang/Runnable;

.field protected mNativeCanvasWrapper:J

.field protected mScreenDensity:I


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    #@0
    invoke-static {}, Landroid/graphics/Canvas;->getNativeFinalizer()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 51
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    #@3
    .line 49
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
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 77
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@7
    .line 84
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    #@9
    .line 110
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 112
    invoke-static {v1}, Landroid/graphics/Canvas;->initRaster(Landroid/graphics/Bitmap;)J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@15
    .line 113
    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    #@17
    .line 114
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@19
    .line 113
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    #@1f
    .line 109
    :goto_0
    return-void

    #@20
    .line 116
    :cond_0
    iput-object v1, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    #@22
    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 5
    .param p1, "nativeCanvas"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 77
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@6
    .line 84
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    #@8
    .line 143
    const-wide/16 v0, 0x0

    #@a
    cmp-long v0, p1, v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@13
    throw v0

    #@14
    .line 146
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@16
    .line 147
    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    #@18
    .line 148
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@1a
    .line 147
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    #@20
    .line 149
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@26
    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 77
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@6
    .line 84
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    #@8
    .line 130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    const-string/jumbo v1, "Immutable bitmap passed to Canvas constructor"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 133
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@1a
    .line 134
    invoke-static {p1}, Landroid/graphics/Canvas;->initRaster(Landroid/graphics/Bitmap;)J

    #@1d
    move-result-wide v0

    #@1e
    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@20
    .line 135
    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    #@22
    .line 136
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@24
    .line 135
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    #@2a
    .line 137
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    #@2c
    .line 138
    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    #@2e
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@30
    .line 129
    return-void
.end method

.method protected static checkRange(III)V
    .locals 1
    .param p0, "length"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 1519
    or-int v0, p1, p2

    #@2
    if-ltz v0, :cond_0

    #@4
    add-int v0, p1, p2

    #@6
    if-le v0, p0, :cond_1

    #@8
    .line 1520
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@d
    throw v0

    #@e
    .line 1518
    :cond_1
    return-void
.end method

.method public static native freeCaches()V
.end method

.method public static native freeTextLayoutCaches()V
.end method

.method private static native getNativeFinalizer()J
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

.method private native native_drawNinePatch(JJJFFFFJII)V
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

.method private static native native_drawRegion(JJJ)V
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

.method private static native native_setHighContrastText(JZ)V
.end method

.method private static native native_setMatrix(JJ)V
.end method

.method private static native native_skew(JFF)V
.end method

.method private static native native_translate(JFF)V
.end method


# virtual methods
.method public clipPath(Landroid/graphics/Path;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 801
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
    .line 791
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
    .line 761
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    .line 762
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
    .line 761
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
    .line 744
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
    .line 779
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
    .line 780
    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@8
    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    #@a
    .line 779
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
    .line 723
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
    .line 724
    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@10
    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    #@12
    .line 723
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
    .line 699
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
    .line 700
    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    #@10
    .line 699
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
    .line 711
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
    .line 712
    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@c
    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    #@e
    .line 711
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
    .line 686
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
    .line 687
    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    #@c
    .line 686
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 838
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 820
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
    .line 624
    if-eqz p1, :cond_0

    #@2
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@4
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->native_concat(JJ)V

    #@9
    .line 623
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
    .line 985
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    #@7
    .line 984
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
    .line 1221
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    .line 1222
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
    .line 1221
    invoke-static/range {v0 .. v10}, Landroid/graphics/Canvas;->native_drawArc(JFFFFFFZJ)V

    #@13
    .line 1220
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
    .line 1194
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
    .line 1193
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
    .line 1336
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@3
    .line 1337
    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@5
    .line 1338
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
    .line 1337
    invoke-direct/range {v0 .. v10}, Landroid/graphics/Canvas;->native_drawBitmap(JLandroid/graphics/Bitmap;FFJIII)V

    #@18
    .line 1335
    return-void

    #@19
    .line 1338
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
    .line 1511
    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    #@5
    move-result-wide v4

    #@6
    .line 1512
    if-eqz p3, :cond_0

    #@8
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    #@b
    move-result-wide v6

    #@c
    :goto_0
    move-object v3, p1

    #@d
    .line 1511
    invoke-static/range {v1 .. v7}, Landroid/graphics/Canvas;->nativeDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V

    #@10
    .line 1510
    return-void

    #@11
    .line 1512
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
    .line 1412
    if-nez p3, :cond_0

    #@2
    .line 1413
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1415
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@b
    .line 1416
    if-nez p4, :cond_1

    #@d
    const-wide/16 v14, 0x0

    #@f
    .line 1419
    .local v14, "nativePaint":J
    :goto_0
    if-nez p2, :cond_2

    #@11
    .line 1420
    const/16 v21, 0x0

    #@13
    .local v21, "top":I
    const/16 v19, 0x0

    #@15
    .line 1421
    .local v19, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@18
    move-result v20

    #@19
    .line 1422
    .local v20, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@1c
    move-result v18

    #@1d
    .line 1430
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
    .line 1431
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
    .line 1432
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
    .line 1430
    invoke-direct/range {v2 .. v17}, Landroid/graphics/Canvas;->native_drawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    #@54
    .line 1411
    return-void

    #@55
    .line 1416
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
    .line 1424
    :cond_2
    move-object/from16 v0, p2

    #@5c
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@5e
    move/from16 v19, v0

    #@60
    .line 1425
    .restart local v19    # "left":I
    move-object/from16 v0, p2

    #@62
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@64
    move/from16 v20, v0

    #@66
    .line 1426
    .restart local v20    # "right":I
    move-object/from16 v0, p2

    #@68
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@6a
    move/from16 v21, v0

    #@6c
    .line 1427
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
    .line 1365
    if-nez p3, :cond_0

    #@2
    .line 1366
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1368
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@b
    .line 1369
    if-nez p4, :cond_1

    #@d
    const-wide/16 v14, 0x0

    #@f
    .line 1372
    .local v14, "nativePaint":J
    :goto_0
    if-nez p2, :cond_2

    #@11
    .line 1373
    const/4 v7, 0x0

    #@12
    .local v7, "top":F
    const/4 v6, 0x0

    #@13
    .line 1374
    .local v6, "left":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@16
    move-result v2

    #@17
    int-to-float v8, v2

    #@18
    .line 1375
    .local v8, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@1b
    move-result v2

    #@1c
    int-to-float v9, v2

    #@1d
    .line 1383
    .local v9, "bottom":F
    :goto_1
    move-object/from16 v0, p0

    #@1f
    iget-wide v3, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@21
    .line 1384
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
    .line 1385
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
    .line 1383
    invoke-direct/range {v2 .. v17}, Landroid/graphics/Canvas;->native_drawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    #@44
    .line 1364
    return-void

    #@45
    .line 1369
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
    .line 1377
    :cond_2
    move-object/from16 v0, p2

    #@4c
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@4e
    int-to-float v6, v2

    #@4f
    .line 1378
    .restart local v6    # "left":F
    move-object/from16 v0, p2

    #@51
    iget v2, v0, Landroid/graphics/Rect;->right:I

    #@53
    int-to-float v8, v2

    #@54
    .line 1379
    .restart local v8    # "right":F
    move-object/from16 v0, p2

    #@56
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@58
    int-to-float v7, v2

    #@59
    .line 1380
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
    .line 1463
    if-gez p6, :cond_0

    #@2
    .line 1464
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "width must be >= 0"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1466
    :cond_0
    if-gez p7, :cond_1

    #@d
    .line 1467
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "height must be >= 0"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 1469
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    #@19
    move-result v2

    #@1a
    move/from16 v0, p6

    #@1c
    if-ge v2, v0, :cond_2

    #@1e
    .line 1470
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v3, "abs(stride) must be >= width"

    #@23
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 1472
    :cond_2
    add-int/lit8 v2, p7, -0x1

    #@29
    mul-int v2, v2, p3

    #@2b
    add-int v14, p2, v2

    #@2d
    .line 1473
    .local v14, "lastScanline":I
    move-object/from16 v0, p1

    #@2f
    array-length v15, v0

    #@30
    .line 1474
    .local v15, "length":I
    if-ltz p2, :cond_3

    #@32
    add-int v2, p2, p6

    #@34
    if-le v2, v15, :cond_4

    #@36
    .line 1476
    :cond_3
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@38
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@3b
    throw v2

    #@3c
    .line 1474
    :cond_4
    if-ltz v14, :cond_3

    #@3e
    .line 1475
    add-int v2, v14, p6

    #@40
    if-gt v2, v15, :cond_3

    #@42
    .line 1479
    if-eqz p6, :cond_5

    #@44
    if-nez p7, :cond_6

    #@46
    .line 1480
    :cond_5
    return-void

    #@47
    .line 1483
    :cond_6
    move-object/from16 v0, p0

    #@49
    iget-wide v2, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@4b
    .line 1484
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
    .line 1483
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawBitmap(J[IIIFFIIZJ)V

    #@64
    .line 1461
    return-void

    #@65
    .line 1484
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
    .line 1499
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
    .line 1497
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
    .line 1553
    or-int v1, p2, p3

    #@2
    or-int v1, v1, p5

    #@4
    or-int v1, v1, p7

    #@6
    if-gez v1, :cond_0

    #@8
    .line 1554
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@d
    throw v1

    #@e
    .line 1556
    :cond_0
    if-eqz p2, :cond_1

    #@10
    if-nez p3, :cond_2

    #@12
    .line 1557
    :cond_1
    return-void

    #@13
    .line 1559
    :cond_2
    add-int/lit8 v1, p2, 0x1

    #@15
    add-int/lit8 v2, p3, 0x1

    #@17
    mul-int v12, v1, v2

    #@19
    .line 1561
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
    .line 1562
    if-eqz p6, :cond_3

    #@25
    .line 1564
    move-object/from16 v0, p6

    #@27
    array-length v1, v0

    #@28
    move/from16 v0, p7

    #@2a
    invoke-static {v1, v0, v12}, Landroid/graphics/Canvas;->checkRange(III)V

    #@2d
    .line 1566
    :cond_3
    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2f
    .line 1568
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
    .line 1566
    invoke-static/range {v1 .. v11}, Landroid/graphics/Canvas;->nativeDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V

    #@44
    .line 1552
    return-void

    #@45
    .line 1568
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
    .line 1166
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
    .line 1165
    return-void
.end method

.method public drawColor(I)V
    .locals 3
    .param p1, "color"    # I

    #@0
    .prologue
    .line 995
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #@4
    iget v2, v2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    #@6
    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Canvas;->native_drawColor(JII)V

    #@9
    .line 994
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 1006
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    #@4
    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Canvas;->native_drawColor(JII)V

    #@7
    .line 1005
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
    .line 1069
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
    .line 1068
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
    .line 1089
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
    .line 1088
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1093
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    #@5
    .line 1092
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
    .line 1152
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
    .line 1151
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1141
    if-nez p1, :cond_0

    #@2
    .line 1142
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1144
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
    .line 1140
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1017
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->native_drawPaint(JJ)V

    #@9
    .line 1016
    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 18
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1290
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    #@3
    move-result-object v2

    #@4
    .line 1291
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    #@6
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@9
    .line 1292
    if-nez p3, :cond_0

    #@b
    const-wide/16 v14, 0x0

    #@d
    .line 1293
    .local v14, "nativePaint":J
    :goto_0
    move-object/from16 v0, p0

    #@f
    iget-wide v4, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@11
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    #@14
    move-result-wide v6

    #@15
    move-object/from16 v0, p1

    #@17
    iget-wide v8, v0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@19
    .line 1294
    move-object/from16 v0, p2

    #@1b
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@1d
    int-to-float v10, v3

    #@1e
    move-object/from16 v0, p2

    #@20
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@22
    int-to-float v11, v3

    #@23
    move-object/from16 v0, p2

    #@25
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@27
    int-to-float v12, v3

    #@28
    move-object/from16 v0, p2

    #@2a
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    #@2c
    int-to-float v13, v3

    #@2d
    .line 1295
    move-object/from16 v0, p0

    #@2f
    iget v0, v0, Landroid/graphics/Canvas;->mDensity:I

    #@31
    move/from16 v16, v0

    #@33
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    #@36
    move-result v17

    #@37
    move-object/from16 v3, p0

    #@39
    .line 1293
    invoke-direct/range {v3 .. v17}, Landroid/graphics/Canvas;->native_drawNinePatch(JJJFFFFJII)V

    #@3c
    .line 1289
    return-void

    #@3d
    .line 1292
    .end local v14    # "nativePaint":J
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    #@40
    move-result-wide v14

    #@41
    .restart local v14    # "nativePaint":J
    goto :goto_0
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 18
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1308
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    #@3
    move-result-object v2

    #@4
    .line 1309
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    #@6
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@9
    .line 1310
    if-nez p3, :cond_0

    #@b
    const-wide/16 v14, 0x0

    #@d
    .line 1311
    .local v14, "nativePaint":J
    :goto_0
    move-object/from16 v0, p0

    #@f
    iget-wide v4, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@11
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    #@14
    move-result-wide v6

    #@15
    move-object/from16 v0, p1

    #@17
    iget-wide v8, v0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@19
    .line 1312
    move-object/from16 v0, p2

    #@1b
    iget v10, v0, Landroid/graphics/RectF;->left:F

    #@1d
    move-object/from16 v0, p2

    #@1f
    iget v11, v0, Landroid/graphics/RectF;->top:F

    #@21
    move-object/from16 v0, p2

    #@23
    iget v12, v0, Landroid/graphics/RectF;->right:F

    #@25
    move-object/from16 v0, p2

    #@27
    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    #@29
    .line 1313
    move-object/from16 v0, p0

    #@2b
    iget v0, v0, Landroid/graphics/Canvas;->mDensity:I

    #@2d
    move/from16 v16, v0

    #@2f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    #@32
    move-result v17

    #@33
    move-object/from16 v3, p0

    #@35
    .line 1311
    invoke-direct/range {v3 .. v17}, Landroid/graphics/Canvas;->native_drawNinePatch(JJJFFFFJII)V

    #@38
    .line 1307
    return-void

    #@39
    .line 1310
    .end local v14    # "nativePaint":J
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    #@3c
    move-result-wide v14

    #@3d
    .restart local v14    # "nativePaint":J
    goto :goto_0
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1259
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1260
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@a
    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@c
    iget-wide v2, v2, Landroid/graphics/Region;->mNativeRegion:J

    #@e
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    #@11
    move-result-wide v4

    #@12
    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawRegion(JJJ)V

    #@15
    .line 1258
    :goto_0
    return-void

    #@16
    .line 1262
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@18
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    #@1b
    move-result-wide v2

    #@1c
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    #@1f
    move-result-wide v4

    #@20
    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawPath(JJJ)V

    #@23
    goto :goto_0
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 1
    .param p1, "picture"    # Landroid/graphics/Picture;

    #@0
    .prologue
    .line 1935
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    #@3
    .line 1936
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    #@6
    move-result v0

    #@7
    .line 1937
    .local v0, "restoreCount":I
    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    #@a
    .line 1938
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@d
    .line 1934
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1958
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 1959
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
    .line 1960
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
    .line 1961
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
    .line 1962
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
    .line 1961
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@31
    .line 1964
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    #@34
    .line 1965
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    #@37
    .line 1957
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 1945
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 1946
    iget v0, p2, Landroid/graphics/RectF;->left:F

    #@5
    iget v1, p2, Landroid/graphics/RectF;->top:F

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@a
    .line 1947
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
    .line 1948
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
    .line 1950
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    #@30
    .line 1951
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    #@33
    .line 1944
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1052
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
    .line 1051
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
    .line 1038
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
    .line 1037
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1045
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    #@5
    .line 1044
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
    .line 1876
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
    .line 1875
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
    .line 1853
    if-ltz p2, :cond_0

    #@2
    add-int v0, p2, p3

    #@4
    array-length v1, p1

    #@5
    if-le v0, v1, :cond_1

    #@7
    .line 1854
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v0

    #@d
    .line 1853
    :cond_1
    mul-int/lit8 v0, p3, 0x2

    #@f
    array-length v1, p4

    #@10
    if-gt v0, v1, :cond_0

    #@12
    .line 1856
    const/4 v7, 0x0

    #@13
    .local v7, "i":I
    :goto_0
    if-ge v7, p3, :cond_2

    #@15
    .line 1857
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
    .line 1856
    add-int/lit8 v7, v7, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1852
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
    .line 972
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    #@7
    .line 971
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
    .line 1131
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
    .line 1130
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1116
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
    .line 1115
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1104
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    .line 1105
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
    .line 1104
    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawRect(JFFFFJ)V

    #@11
    .line 1103
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
    .line 1248
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
    .line 1247
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
    .line 1235
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
    .line 1234
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
    .line 1706
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
    .line 1707
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@10
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@13
    throw v2

    #@14
    .line 1709
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    #@16
    if-nez v2, :cond_1

    #@18
    instance-of v2, p1, Landroid/text/SpannedString;

    #@1a
    if-nez v2, :cond_1

    #@1c
    .line 1710
    instance-of v2, p1, Landroid/text/SpannableString;

    #@1e
    .line 1709
    if-eqz v2, :cond_2

    #@20
    .line 1711
    :cond_1
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@22
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    .line 1712
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
    .line 1711
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(JLjava/lang/String;IIFFIJJ)V

    #@3d
    .line 1705
    :goto_0
    return-void

    #@3e
    .line 1713
    :cond_2
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    #@40
    if-eqz v2, :cond_3

    #@42
    move-object v2, p1

    #@43
    .line 1714
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
    .line 1717
    :cond_3
    sub-int v2, p3, p2

    #@56
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@59
    move-result-object v4

    #@5a
    .line 1718
    .local v4, "buf":[C
    const/4 v2, 0x0

    #@5b
    move/from16 v0, p2

    #@5d
    move/from16 v1, p3

    #@5f
    invoke-static {p1, v0, v1, v4, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@62
    .line 1719
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@64
    sub-int v6, p3, p2

    #@66
    .line 1720
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
    .line 1719
    const/4 v5, 0x0

    #@73
    move/from16 v7, p4

    #@75
    move/from16 v8, p5

    #@77
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(J[CIIFFIJJ)V

    #@7a
    .line 1721
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
    .line 1667
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
    .line 1668
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    #@d
    move-result-wide v10

    #@e
    move-object/from16 v0, p4

    #@10
    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@12
    .line 1667
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
    .line 1666
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
    .line 1684
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
    .line 1685
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@10
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@13
    throw v2

    #@14
    .line 1687
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@16
    move-object/from16 v0, p6

    #@18
    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@1a
    .line 1688
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
    .line 1687
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(JLjava/lang/String;IIFFIJJ)V

    #@2e
    .line 1683
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
    .line 1649
    or-int v2, p2, p3

    #@2
    add-int v3, p2, p3

    #@4
    or-int/2addr v2, v3

    #@5
    .line 1650
    array-length v3, p1

    #@6
    sub-int v3, v3, p2

    #@8
    sub-int v3, v3, p3

    #@a
    .line 1649
    or-int/2addr v2, v3

    #@b
    if-gez v2, :cond_0

    #@d
    .line 1651
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@f
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@12
    throw v2

    #@13
    .line 1653
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@15
    move-object/from16 v0, p6

    #@17
    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@19
    .line 1654
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
    .line 1653
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(J[CIIFFIJJ)V

    #@2d
    .line 1648
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
    .line 1917
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    if-lez v2, :cond_0

    #@6
    .line 1918
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@8
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->ni()J

    #@b
    move-result-wide v5

    #@c
    .line 1919
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
    .line 1918
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawTextOnPath(JLjava/lang/String;JFFIJJ)V

    #@20
    .line 1916
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
    .line 1894
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
    .line 1895
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@b
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@e
    throw v2

    #@f
    .line 1897
    :cond_1
    move-object/from16 v0, p0

    #@11
    iget-wide v2, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@13
    .line 1898
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->ni()J

    #@16
    move-result-wide v7

    #@17
    .line 1899
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
    .line 1897
    invoke-static/range {v2 .. v15}, Landroid/graphics/Canvas;->native_drawTextOnPath(J[CIIJFFIJJ)V

    #@30
    .line 1893
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
    .line 1805
    if-nez p1, :cond_0

    #@2
    .line 1806
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "text is null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 1808
    :cond_0
    if-nez p9, :cond_1

    #@d
    .line 1809
    new-instance v4, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v5, "paint is null"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 1811
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
    .line 1812
    sub-int v5, p5, p3

    #@24
    .line 1811
    or-int/2addr v4, v5

    #@25
    .line 1812
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@28
    move-result v5

    #@29
    sub-int v5, v5, p5

    #@2b
    .line 1811
    or-int/2addr v4, v5

    #@2c
    if-gez v4, :cond_2

    #@2e
    .line 1813
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@30
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@33
    throw v4

    #@34
    .line 1816
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
    .line 1817
    move-object/from16 v0, p1

    #@42
    instance-of v4, v0, Landroid/text/SpannableString;

    #@44
    .line 1816
    if-eqz v4, :cond_4

    #@46
    .line 1818
    :cond_3
    move-object/from16 v0, p0

    #@48
    iget-wide v4, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@4a
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    .line 1819
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
    .line 1818
    invoke-static/range {v4 .. v17}, Landroid/graphics/Canvas;->native_drawTextRun(JLjava/lang/String;IIIIFFZJJ)V

    #@69
    .line 1803
    :goto_0
    return-void

    #@6a
    .line 1820
    :cond_4
    move-object/from16 v0, p1

    #@6c
    instance-of v4, v0, Landroid/text/GraphicsOperations;

    #@6e
    if-eqz v4, :cond_5

    #@70
    move-object/from16 v4, p1

    #@72
    .line 1821
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
    .line 1824
    :cond_5
    sub-int v10, p5, p4

    #@8c
    .line 1825
    .local v10, "contextLen":I
    sub-int v8, p3, p2

    #@8e
    .line 1826
    .local v8, "len":I
    invoke-static {v10}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@91
    move-result-object v6

    #@92
    .line 1827
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
    .line 1828
    move-object/from16 v0, p0

    #@9e
    iget-wide v4, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@a0
    sub-int v7, p2, p4

    #@a2
    .line 1829
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
    .line 1828
    invoke-static/range {v4 .. v17}, Landroid/graphics/Canvas;->native_drawTextRun(J[CIIIIFFZJJ)V

    #@b6
    .line 1830
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
    .line 1751
    if-nez p1, :cond_0

    #@2
    .line 1752
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "text is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1754
    :cond_0
    if-nez p9, :cond_1

    #@d
    .line 1755
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v3, "paint is null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 1757
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
    .line 1758
    add-int v3, p4, p5

    #@21
    add-int v4, p2, p3

    #@23
    sub-int/2addr v3, v4

    #@24
    .line 1757
    or-int/2addr v2, v3

    #@25
    .line 1759
    move-object/from16 v0, p1

    #@27
    array-length v3, v0

    #@28
    add-int v4, p4, p5

    #@2a
    sub-int/2addr v3, v4

    #@2b
    .line 1757
    or-int/2addr v2, v3

    #@2c
    if-gez v2, :cond_2

    #@2e
    .line 1760
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@30
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@33
    throw v2

    #@34
    .line 1763
    :cond_2
    move-object/from16 v0, p0

    #@36
    iget-wide v2, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@38
    .line 1764
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
    .line 1763
    invoke-static/range {v2 .. v15}, Landroid/graphics/Canvas;->native_drawTextRun(J[CIIIIFFZJJ)V

    #@53
    .line 1749
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
    .line 1620
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
    .line 1621
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1622
    return-void

    #@11
    .line 1624
    :cond_0
    if-eqz p5, :cond_1

    #@13
    .line 1625
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
    .line 1627
    :cond_1
    if-eqz p7, :cond_2

    #@1f
    .line 1628
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
    .line 1630
    :cond_2
    if-eqz p9, :cond_3

    #@2b
    .line 1631
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
    .line 1633
    :cond_3
    move-object/from16 v0, p0

    #@37
    iget-wide v2, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@39
    move-object/from16 v0, p1

    #@3b
    iget v4, v0, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    #@3d
    .line 1635
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
    .line 1633
    invoke-static/range {v2 .. v16}, Landroid/graphics/Canvas;->nativeDrawVertices(JII[FI[FI[II[SIIJ)V

    #@58
    .line 1619
    return-void
.end method

.method public final getClipBounds()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 958
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    .line 959
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    #@8
    .line 960
    return-object v0
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 949
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
    .line 259
    iget v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@2
    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    #@0
    .prologue
    .line 842
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
    .line 161
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    #@0
    .prologue
    .line 244
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
    .line 672
    new-instance v0, Landroid/graphics/Matrix;

    #@2
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@5
    .line 674
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    #@8
    .line 675
    return-object v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "ctm"    # Landroid/graphics/Matrix;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 657
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->native_getCTM(JJ)V

    #@7
    .line 656
    return-void
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    #@0
    .prologue
    .line 305
    const/16 v0, 0x7ffe

    #@2
    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    #@0
    .prologue
    .line 294
    const/16 v0, 0x7ffe

    #@2
    return v0
.end method

.method public getNativeCanvasWrapper()J
    .locals 2

    #@0
    .prologue
    .line 62
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    return-wide v0
.end method

.method public getSaveCount()I
    .locals 2

    #@0
    .prologue
    .line 530
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
    .line 235
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
    .line 217
    return-void
.end method

.method public insertReorderBarrier()V
    .locals 0

    #@0
    .prologue
    .line 214
    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    #@0
    .prologue
    .line 174
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isOpaque()Z
    .locals 2

    #@0
    .prologue
    .line 226
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
    .line 66
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
    .line 935
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
    .line 910
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
    .line 890
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    .line 891
    iget v2, p1, Landroid/graphics/RectF;->left:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->top:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->right:F

    #@8
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    #@a
    .line 890
    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_quickReject(JFFFF)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public release()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1974
    const-wide/16 v0, 0x0

    #@3
    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@5
    .line 1975
    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1976
    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    #@b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@e
    .line 1977
    iput-object v2, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    #@10
    .line 1973
    :cond_0
    return-void
.end method

.method public restore()V
    .locals 4

    #@0
    .prologue
    .line 521
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
    .line 522
    .local v0, "throwOnUnderflow":Z
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@d
    invoke-static {v2, v3, v0}, Landroid/graphics/Canvas;->native_restore(JZ)V

    #@10
    .line 520
    return-void

    #@11
    .line 521
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
    .line 547
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
    .line 548
    .local v0, "throwOnUnderflow":Z
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@d
    invoke-static {v2, v3, p1, v0}, Landroid/graphics/Canvas;->native_restoreToCount(JIZ)V

    #@10
    .line 546
    return-void

    #@11
    .line 547
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
    .line 591
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->native_rotate(JF)V

    #@5
    .line 590
    return-void
.end method

.method public final rotate(FFF)V
    .locals 2
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    #@0
    .prologue
    .line 602
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    #@3
    .line 603
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    #@6
    .line 604
    neg-float v0, p2

    #@7
    neg-float v1, p3

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@b
    .line 601
    return-void
.end method

.method public save()I
    .locals 3

    #@0
    .prologue
    .line 372
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
    .line 392
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
    .line 453
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
    .line 444
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    .line 445
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
    .line 444
    invoke-static/range {v0 .. v8}, Landroid/graphics/Canvas;->native_saveLayer(JFFFFJI)I

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 445
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
    .line 436
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
    .line 426
    if-nez p1, :cond_0

    #@2
    .line 427
    new-instance p1, Landroid/graphics/RectF;

    #@4
    .end local p1    # "bounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    #@b
    .line 429
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
    .line 512
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
    .line 503
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
    .line 504
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
    .line 495
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
    .line 485
    if-nez p1, :cond_0

    #@2
    .line 486
    new-instance p1, Landroid/graphics/RectF;

    #@4
    .end local p1    # "bounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    #@b
    .line 488
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
    .line 568
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->native_scale(JFF)V

    #@5
    .line 567
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
    .line 580
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    #@3
    .line 581
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    #@6
    .line 582
    neg-float v0, p3

    #@7
    neg-float v1, p4

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@b
    .line 579
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 188
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v1, "Can\'t set a bitmap device on a HW accelerated canvas"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 192
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 193
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@14
    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_setBitmap(JLandroid/graphics/Bitmap;)V

    #@17
    .line 194
    const/4 v0, 0x0

    #@18
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    #@1a
    .line 205
    :goto_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    #@1c
    .line 187
    return-void

    #@1d
    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_2

    #@23
    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    #@25
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@28
    throw v0

    #@29
    .line 199
    :cond_2
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@2c
    .line 201
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2e
    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->native_setBitmap(JLandroid/graphics/Bitmap;)V

    #@31
    .line 202
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
    .line 275
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 276
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    #@9
    .line 278
    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    #@b
    .line 274
    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 4
    .param p1, "filter"    # Landroid/graphics/DrawFilter;

    #@0
    .prologue
    .line 846
    const-wide/16 v0, 0x0

    #@2
    .line 847
    .local v0, "nativeFilter":J
    if-eqz p1, :cond_0

    #@4
    .line 848
    iget-wide v0, p1, Landroid/graphics/DrawFilter;->mNativeInt:J

    #@6
    .line 850
    :cond_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    #@8
    .line 851
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@a
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Canvas;->nativeSetDrawFilter(JJ)V

    #@d
    .line 845
    return-void
.end method

.method public setHighContrastText(Z)V
    .locals 2
    .param p1, "highContrastText"    # Z

    #@0
    .prologue
    .line 210
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->native_setHighContrastText(JZ)V

    #@5
    .line 209
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 641
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    .line 642
    if-nez p1, :cond_0

    #@4
    const-wide/16 v0, 0x0

    #@6
    .line 641
    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Canvas;->native_setMatrix(JJ)V

    #@9
    .line 640
    return-void

    #@a
    .line 642
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
    .line 283
    iput p1, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    #@2
    .line 282
    return-void
.end method

.method public skew(FF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    #@0
    .prologue
    .line 614
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->native_skew(JFF)V

    #@5
    .line 613
    return-void
.end method

.method protected throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1270
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1271
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
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 1273
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_1

    #@26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@29
    move-result-object v0

    #@2a
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@2c
    if-ne v0, v1, :cond_1

    #@2e
    .line 1274
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@31
    move-result v0

    #@32
    .line 1273
    if-eqz v0, :cond_1

    #@34
    .line 1275
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
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 1269
    :cond_1
    return-void
.end method

.method public translate(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 558
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->native_translate(JFF)V

    #@5
    .line 557
    return-void
.end method
