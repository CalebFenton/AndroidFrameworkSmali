.class public final Landroid/graphics/TextureLayer;
.super Ljava/lang/Object;
.source "TextureLayer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private blacklist mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

.field private blacklist mRenderer:Landroid/graphics/HardwareRenderer;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/HardwareRenderer;J)V
    .registers 7
    .param p1, "renderer"    # Landroid/graphics/HardwareRenderer;
    .param p2, "deferredUpdater"    # J

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p1, :cond_15

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_15

    .line 42
    iput-object p1, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    .line 43
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 44
    return-void

    .line 39
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either hardware renderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or deferredUpdater: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist adoptTextureLayer(Landroid/graphics/HardwareRenderer;J)Landroid/graphics/TextureLayer;
    .registers 4
    .param p0, "renderer"    # Landroid/graphics/HardwareRenderer;
    .param p1, "layer"    # J

    .line 144
    new-instance v0, Landroid/graphics/TextureLayer;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/TextureLayer;-><init>(Landroid/graphics/HardwareRenderer;J)V

    return-object v0
.end method

.method private blacklist isValid()Z
    .registers 5

    .line 63
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static native blacklist nPrepare(JIIZ)Z
.end method

.method private static native blacklist nSetLayerPaint(JJ)V
.end method

.method private static native blacklist nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;)V
.end method

.method private static native blacklist nSetTransform(JJ)V
.end method

.method private static native blacklist nUpdateSurfaceTexture(J)V
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 71
    invoke-direct {p0}, Landroid/graphics/TextureLayer;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 73
    return-void

    .line 75
    :cond_7
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer;->onLayerDestroyed(Landroid/graphics/TextureLayer;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    .line 77
    iget-object v1, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 78
    iput-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 79
    return-void
.end method

.method public blacklist copyInto(Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 93
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/HardwareRenderer;->copyLayerInto(Landroid/graphics/TextureLayer;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public blacklist detachSurfaceTexture()V
    .registers 4

    .line 125
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    iget-object v1, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->detachSurfaceTexture(J)V

    .line 126
    return-void
.end method

.method blacklist getDeferredLayerUpdater()J
    .registers 3

    .line 82
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getLayerHandle()J
    .registers 3

    .line 129
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist prepare(IIZ)Z
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOpaque"    # Z

    .line 108
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/TextureLayer;->nPrepare(JIIZ)Z

    move-result v0

    return v0
.end method

.method public blacklist setLayerPaint(Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_f

    :cond_d
    const-wide/16 v2, 0x0

    :goto_f
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/TextureLayer;->nSetLayerPaint(JJ)V

    .line 54
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer;->pushLayerUpdate(Landroid/graphics/TextureLayer;)V

    .line 55
    return-void
.end method

.method public blacklist setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 133
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/TextureLayer;->nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;)V

    .line 134
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer;->pushLayerUpdate(Landroid/graphics/TextureLayer;)V

    .line 135
    return-void
.end method

.method public blacklist setTransform(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 117
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/TextureLayer;->nSetTransform(JJ)V

    .line 118
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer;->pushLayerUpdate(Landroid/graphics/TextureLayer;)V

    .line 119
    return-void
.end method

.method public blacklist updateSurfaceTexture()V
    .registers 3

    .line 138
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/TextureLayer;->nUpdateSurfaceTexture(J)V

    .line 139
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer;->pushLayerUpdate(Landroid/graphics/TextureLayer;)V

    .line 140
    return-void
.end method
