.class public final Landroid/graphics/RecordingCanvas;
.super Landroid/graphics/BaseRecordingCanvas;
.source "RecordingCanvas.java"


# static fields
.field public static final blacklist MAX_BITMAP_SIZE:I

.field private static final blacklist POOL_LIMIT:I = 0x19

.field private static final blacklist sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/graphics/RecordingCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHeight:I

.field public blacklist mNode:Landroid/graphics/RenderNode;

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    invoke-static {}, Landroid/graphics/RecordingCanvas;->getPanelFrameSize()I

    move-result v0

    sput v0, Landroid/graphics/RecordingCanvas;->MAX_BITMAP_SIZE:I

    .line 52
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/graphics/RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/RenderNode;II)V
    .registers 6
    .param p1, "node"    # Landroid/graphics/RenderNode;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 94
    iget-wide v0, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p2, p3}, Landroid/graphics/RecordingCanvas;->nCreateDisplayListCanvas(JII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;-><init>(J)V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RecordingCanvas;->mDensity:I

    .line 96
    return-void
.end method

.method private static blacklist getPanelFrameSize()I
    .registers 3

    .line 44
    const/high16 v0, 0x9600000

    .line 45
    .local v0, "DefaultSize":I
    const-string/jumbo v1, "ro.hwui.max_texture_allocation_size"

    const/high16 v2, 0x9600000

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private static native blacklist nCreateDisplayListCanvas(JII)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nDrawCircle(JJJJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nDrawRenderNode(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nDrawRipple(JJJJJJJIJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nDrawRoundRect(JJJJJJJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextureLayer(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nDrawWebViewFunctor(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nEnableZ(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nFinishRecording(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetMaximumTextureHeight()I
.end method

.method private static native blacklist nGetMaximumTextureWidth()I
.end method

.method private static native blacklist nResetDisplayListCanvas(JJII)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static blacklist obtain(Landroid/graphics/RenderNode;II)Landroid/graphics/RecordingCanvas;
    .registers 10
    .param p0, "node"    # Landroid/graphics/RenderNode;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 64
    if-eqz p0, :cond_25

    .line 65
    sget-object v0, Landroid/graphics/RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RecordingCanvas;

    .line 66
    .local v0, "canvas":Landroid/graphics/RecordingCanvas;
    if-nez v0, :cond_15

    .line 67
    new-instance v1, Landroid/graphics/RecordingCanvas;

    invoke-direct {v1, p0, p1, p2}, Landroid/graphics/RecordingCanvas;-><init>(Landroid/graphics/RenderNode;II)V

    move-object v0, v1

    move v5, p1

    move v6, p2

    goto :goto_1e

    .line 69
    :cond_15
    iget-wide v1, v0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    iget-wide v3, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v5, p1

    move v6, p2

    .end local p1    # "width":I
    .end local p2    # "height":I
    .local v5, "width":I
    .local v6, "height":I
    invoke-static/range {v1 .. v6}, Landroid/graphics/RecordingCanvas;->nResetDisplayListCanvas(JJII)V

    .line 72
    :goto_1e
    iput-object p0, v0, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    .line 73
    iput v5, v0, Landroid/graphics/RecordingCanvas;->mWidth:I

    .line 74
    iput v6, v0, Landroid/graphics/RecordingCanvas;->mHeight:I

    .line 75
    return-object v0

    .line 64
    .end local v0    # "canvas":Landroid/graphics/RecordingCanvas;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    :cond_25
    move v5, p1

    move v6, p2

    .end local p1    # "width":I
    .end local p2    # "height":I
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "node cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist disableZ()V
    .registers 4

    .line 154
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/RecordingCanvas;->nEnableZ(JZ)V

    .line 155
    return-void
.end method

.method public blacklist drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p1, "cx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "cy":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "radius":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    .line 214
    invoke-virtual {p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual {p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    .line 213
    invoke-static/range {v0 .. v9}, Landroid/graphics/RecordingCanvas;->nDrawCircle(JJJJJ)V

    .line 215
    return-void
.end method

.method public whitelist drawRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "renderNode"    # Landroid/graphics/RenderNode;

    .line 180
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RecordingCanvas;->nDrawRenderNode(JJ)V

    .line 181
    return-void
.end method

.method public blacklist drawRipple(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;ILandroid/graphics/RuntimeShader;)V
    .registers 27
    .param p7, "color"    # I
    .param p8, "shader"    # Landroid/graphics/RuntimeShader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;I",
            "Landroid/graphics/RuntimeShader;",
            ")V"
        }
    .end annotation

    .line 233
    .local p1, "cx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "cy":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "radius":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    .local p5, "progress":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p6, "turbulencePhase":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v5

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v9

    .line 235
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v11

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v13

    .line 236
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/RuntimeShader;->getNativeShaderBuilder()J

    move-result-wide v16

    .line 233
    move/from16 v15, p7

    invoke-static/range {v1 .. v17}, Landroid/graphics/RecordingCanvas;->nDrawRipple(JJJJJJJIJ)V

    .line 237
    return-void
.end method

.method public blacklist drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .line 255
    .local p1, "left":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "top":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "right":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "bottom":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p5, "rx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p6, "ry":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p7, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v5

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v9

    .line 257
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v11

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v13

    .line 258
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v15

    .line 255
    invoke-static/range {v1 .. v16}, Landroid/graphics/RecordingCanvas;->nDrawRoundRect(JJJJJJJJ)V

    .line 259
    return-void
.end method

.method public blacklist drawTextureLayer(Landroid/graphics/TextureLayer;)V
    .registers 6
    .param p1, "layer"    # Landroid/graphics/TextureLayer;

    .line 194
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getLayerHandle()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RecordingCanvas;->nDrawTextureLayer(JJ)V

    .line 195
    return-void
.end method

.method public blacklist drawWebViewFunctor(I)V
    .registers 4
    .param p1, "functor"    # I

    .line 166
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RecordingCanvas;->nDrawWebViewFunctor(JI)V

    .line 167
    return-void
.end method

.method public whitelist enableZ()V
    .registers 4

    .line 149
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/RecordingCanvas;->nEnableZ(JZ)V

    .line 150
    return-void
.end method

.method blacklist finishRecording(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 86
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RecordingCanvas;->nFinishRecording(JJ)V

    .line 87
    return-void
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/graphics/RecordingCanvas;->mHeight:I

    return v0
.end method

.method public whitelist getMaximumBitmapHeight()I
    .registers 2

    .line 140
    invoke-static {}, Landroid/graphics/RecordingCanvas;->nGetMaximumTextureHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getMaximumBitmapWidth()I
    .registers 2

    .line 135
    invoke-static {}, Landroid/graphics/RecordingCanvas;->nGetMaximumTextureWidth()I

    move-result v0

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/graphics/RecordingCanvas;->mWidth:I

    return v0
.end method

.method public whitelist isHardwareAccelerated()Z
    .registers 2

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isOpaque()Z
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method blacklist recycle()V
    .registers 2

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    .line 81
    sget-object v0, Landroid/graphics/RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setDensity(I)V
    .registers 2
    .param p1, "density"    # I

    .line 106
    return-void
.end method

.method protected blacklist throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 264
    invoke-super {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 266
    .local v0, "bitmapSize":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_33

    sget v1, Landroid/graphics/RecordingCanvas;->MAX_BITMAP_SIZE:I

    if-gt v0, v1, :cond_14

    goto :goto_33

    .line 267
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canvas: trying to draw too large("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bytes) bitmap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_33
    :goto_33
    return-void
.end method
