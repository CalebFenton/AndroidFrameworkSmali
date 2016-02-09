.class public Landroid/view/DisplayListCanvas;
.super Landroid/graphics/Canvas;
.source "DisplayListCanvas.java"


# static fields
.field private static final POOL_LIMIT:I = 0x19

.field private static sIsAvailable:Z

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/DisplayListCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHeight:I

.field mNode:Landroid/view/RenderNode;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 45
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0x19

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 44
    sput-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 80
    invoke-static {}, Landroid/view/DisplayListCanvas;->nIsAvailable()Z

    #@c
    move-result v0

    #@d
    sput-boolean v0, Landroid/view/DisplayListCanvas;->sIsAvailable:Z

    #@f
    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 91
    invoke-static {}, Landroid/view/DisplayListCanvas;->nCreateDisplayListCanvas()J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/graphics/Canvas;-><init>(J)V

    #@7
    .line 92
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/view/DisplayListCanvas;->mDensity:I

    #@a
    .line 90
    return-void
.end method

.method static isAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 83
    sget-boolean v0, Landroid/view/DisplayListCanvas;->sIsAvailable:Z

    #@2
    return v0
.end method

.method private static native nCallDrawGLFunction(JJ)V
.end method

.method private static native nCreateDisplayListCanvas()J
.end method

.method private static native nDrawCircle(JJJJJ)V
.end method

.method private static native nDrawLayer(JJFF)V
.end method

.method private static native nDrawPatch(JLandroid/graphics/Bitmap;JFFFFJ)V
.end method

.method private static native nDrawRects(JJJ)V
.end method

.method private static native nDrawRenderNode(JJ)V
.end method

.method private static native nDrawRoundRect(JJJJJJJJ)V
.end method

.method private static native nFinish(J)V
.end method

.method protected static native nFinishRecording(J)J
.end method

.method private static native nGetMaximumTextureHeight()I
.end method

.method private static native nGetMaximumTextureWidth()I
.end method

.method private static native nInsertReorderBarrier(JZ)V
.end method

.method private static native nIsAvailable()Z
.end method

.method private static native nPrepare(J)V
.end method

.method private static native nPrepareDirty(JIIII)V
.end method

.method private static native nSetHighContrastText(JZ)V
.end method

.method private static native nSetViewport(JII)V
.end method

.method static obtain(Landroid/view/RenderNode;)Landroid/view/DisplayListCanvas;
    .locals 3
    .param p0, "node"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 52
    if-nez p0, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "node cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 53
    :cond_0
    sget-object v1, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@d
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/view/DisplayListCanvas;

    #@13
    .line 54
    .local v0, "canvas":Landroid/view/DisplayListCanvas;
    if-nez v0, :cond_1

    #@15
    .line 55
    new-instance v0, Landroid/view/DisplayListCanvas;

    #@17
    .end local v0    # "canvas":Landroid/view/DisplayListCanvas;
    invoke-direct {v0}, Landroid/view/DisplayListCanvas;-><init>()V

    #@1a
    .line 57
    .restart local v0    # "canvas":Landroid/view/DisplayListCanvas;
    :cond_1
    iput-object p0, v0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    #@1c
    .line 58
    return-object v0
.end method


# virtual methods
.method public callDrawGLFunction2(J)V
    .locals 3
    .param p1, "drawGLFunction"    # J

    #@0
    .prologue
    .line 223
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/view/DisplayListCanvas;->nCallDrawGLFunction(JJ)V

    #@5
    .line 222
    return-void
.end method

.method public drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 294
    .local p1, "cx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "cy":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "radius":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@9
    move-result-wide v4

    #@a
    .line 295
    invoke-virtual {p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@d
    move-result-wide v6

    #@e
    invoke-virtual {p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@11
    move-result-wide v8

    #@12
    .line 294
    invoke-static/range {v0 .. v9}, Landroid/view/DisplayListCanvas;->nDrawCircle(JJJJJ)V

    #@15
    .line 293
    return-void
.end method

.method drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 259
    invoke-virtual {p1, p4}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    #@3
    .line 260
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@5
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getLayerHandle()J

    #@8
    move-result-wide v2

    #@9
    move v4, p2

    #@a
    move v5, p3

    #@b
    invoke-static/range {v0 .. v5}, Landroid/view/DisplayListCanvas;->nDrawLayer(JJFF)V

    #@e
    .line 258
    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    #@3
    move-result-object v3

    #@4
    .line 273
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v3}, Landroid/view/DisplayListCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@7
    .line 274
    if-nez p3, :cond_0

    #@9
    const-wide/16 v10, 0x0

    #@b
    .line 275
    .local v10, "nativePaint":J
    :goto_0
    iget-wide v1, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@d
    iget-wide v4, p1, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@f
    .line 276
    iget v0, p2, Landroid/graphics/Rect;->left:I

    #@11
    int-to-float v6, v0

    #@12
    iget v0, p2, Landroid/graphics/Rect;->top:I

    #@14
    int-to-float v7, v0

    #@15
    iget v0, p2, Landroid/graphics/Rect;->right:I

    #@17
    int-to-float v8, v0

    #@18
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    #@1a
    int-to-float v9, v0

    #@1b
    .line 275
    invoke-static/range {v1 .. v11}, Landroid/view/DisplayListCanvas;->nDrawPatch(JLandroid/graphics/Bitmap;JFFFFJ)V

    #@1e
    .line 271
    return-void

    #@1f
    .line 274
    .end local v10    # "nativePaint":J
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    #@22
    move-result-wide v10

    #@23
    .restart local v10    # "nativePaint":J
    goto :goto_0
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    #@3
    move-result-object v3

    #@4
    .line 283
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v3}, Landroid/view/DisplayListCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    #@7
    .line 284
    if-nez p3, :cond_0

    #@9
    const-wide/16 v10, 0x0

    #@b
    .line 285
    .local v10, "nativePaint":J
    :goto_0
    iget-wide v1, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@d
    iget-wide v4, p1, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@f
    .line 286
    iget v6, p2, Landroid/graphics/RectF;->left:F

    #@11
    iget v7, p2, Landroid/graphics/RectF;->top:F

    #@13
    iget v8, p2, Landroid/graphics/RectF;->right:F

    #@15
    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    #@17
    .line 285
    invoke-static/range {v1 .. v11}, Landroid/view/DisplayListCanvas;->nDrawPatch(JLandroid/graphics/Bitmap;JFFFFJ)V

    #@1a
    .line 281
    return-void

    #@1b
    .line 284
    .end local v10    # "nativePaint":J
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    #@1e
    move-result-wide v10

    #@1f
    .restart local v10    # "nativePaint":J
    goto :goto_0
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 316
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 317
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 318
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@a
    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@c
    iget-wide v2, v2, Landroid/graphics/Region;->mNativeRegion:J

    #@e
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    #@11
    move-result-wide v4

    #@12
    invoke-static/range {v0 .. v5}, Landroid/view/DisplayListCanvas;->nDrawRects(JJJ)V

    #@15
    .line 315
    :cond_0
    :goto_0
    return-void

    #@16
    .line 321
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@19
    goto :goto_0
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "renderNode"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 241
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@2
    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->nDrawRenderNode(JJ)V

    #@9
    .line 240
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 304
    .local p1, "left":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "top":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "right":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "bottom":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p5, "rx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p6, "ry":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p7, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    move-object/from16 v0, p0

    #@2
    iget-wide v2, v0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@7
    move-result-wide v4

    #@8
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@b
    move-result-wide v6

    #@c
    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@f
    move-result-wide v8

    #@10
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@13
    move-result-wide v10

    #@14
    .line 306
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@17
    move-result-wide v12

    #@18
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@1b
    move-result-wide v14

    #@1c
    .line 307
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@1f
    move-result-wide v16

    #@20
    .line 304
    invoke-static/range {v2 .. v17}, Landroid/view/DisplayListCanvas;->nDrawRoundRect(JJJJJJJJ)V

    #@23
    .line 303
    return-void
.end method

.method finishRecording()J
    .locals 2

    #@0
    .prologue
    .line 67
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1}, Landroid/view/DisplayListCanvas;->nFinishRecording(J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid/view/DisplayListCanvas;->mHeight:I

    #@2
    return v0
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    #@0
    .prologue
    .line 139
    invoke-static {}, Landroid/view/DisplayListCanvas;->nGetMaximumTextureHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    #@0
    .prologue
    .line 134
    invoke-static {}, Landroid/view/DisplayListCanvas;->nGetMaximumTextureWidth()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method getRenderer()J
    .locals 2

    #@0
    .prologue
    .line 149
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@2
    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 124
    iget v0, p0, Landroid/view/DisplayListCanvas;->mWidth:I

    #@2
    return v0
.end method

.method public insertInorderBarrier()V
    .locals 3

    #@0
    .prologue
    .line 181
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@2
    const/4 v2, 0x0

    #@3
    invoke-static {v0, v1, v2}, Landroid/view/DisplayListCanvas;->nInsertReorderBarrier(JZ)V

    #@6
    .line 180
    return-void
.end method

.method public insertReorderBarrier()V
    .locals 3

    #@0
    .prologue
    .line 176
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@2
    const/4 v2, 0x1

    #@3
    invoke-static {v0, v1, v2}, Landroid/view/DisplayListCanvas;->nInsertReorderBarrier(JZ)V

    #@6
    .line 175
    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    #@0
    .prologue
    .line 109
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isOpaque()Z
    .locals 1

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public onPostDraw()V
    .locals 2

    #@0
    .prologue
    .line 206
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1}, Landroid/view/DisplayListCanvas;->nFinish(J)V

    #@5
    .line 205
    return-void
.end method

.method public onPreDraw(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 192
    if-eqz p1, :cond_0

    #@2
    .line 193
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@4
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@6
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@8
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@a
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@c
    invoke-static/range {v0 .. v5}, Landroid/view/DisplayListCanvas;->nPrepareDirty(JIIII)V

    #@f
    .line 191
    :goto_0
    return-void

    #@10
    .line 195
    :cond_0
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@12
    invoke-static {v0, v1}, Landroid/view/DisplayListCanvas;->nPrepare(J)V

    #@15
    goto :goto_0
.end method

.method recycle()V
    .locals 1

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    #@3
    .line 63
    sget-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 61
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setDensity(I)V
    .locals 0
    .param p1, "density"    # I

    #@0
    .prologue
    .line 103
    return-void
.end method

.method public setHighContrastText(Z)V
    .locals 2
    .param p1, "highContrastText"    # Z

    #@0
    .prologue
    .line 169
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/DisplayListCanvas;->nSetHighContrastText(JZ)V

    #@5
    .line 168
    return-void
.end method

.method public setViewport(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 158
    iput p1, p0, Landroid/view/DisplayListCanvas;->mWidth:I

    #@2
    .line 159
    iput p2, p0, Landroid/view/DisplayListCanvas;->mHeight:I

    #@4
    .line 161
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    #@6
    invoke-static {v0, v1, p1, p2}, Landroid/view/DisplayListCanvas;->nSetViewport(JII)V

    #@9
    .line 157
    return-void
.end method
