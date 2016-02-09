.class final Landroid/view/HardwareLayer;
.super Ljava/lang/Object;
.source "HardwareLayer.java"


# instance fields
.field private mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderer:Landroid/view/HardwareRenderer;


# direct methods
.method private constructor <init>(Landroid/view/HardwareRenderer;J)V
    .locals 4
    .param p1, "renderer"    # Landroid/view/HardwareRenderer;
    .param p2, "deferredUpdater"    # J

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    if-eqz p1, :cond_0

    #@5
    const-wide/16 v0, 0x0

    #@7
    cmp-long v0, p2, v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Either hardware renderer: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 42
    const-string/jumbo v2, " or deferredUpdater: "

    #@20
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 42
    const-string/jumbo v2, " is invalid"

    #@2b
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 44
    :cond_1
    iput-object p1, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/HardwareRenderer;

    #@39
    .line 45
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    #@3b
    invoke-direct {v0, p2, p3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    #@3e
    iput-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@40
    .line 39
    return-void
.end method

.method static adoptTextureLayer(Landroid/view/HardwareRenderer;J)Landroid/view/HardwareLayer;
    .locals 1
    .param p0, "renderer"    # Landroid/view/HardwareRenderer;
    .param p1, "layer"    # J

    #@0
    .prologue
    .line 144
    new-instance v0, Landroid/view/HardwareLayer;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/view/HardwareLayer;-><init>(Landroid/view/HardwareRenderer;J)V

    #@5
    return-object v0
.end method

.method private static native nGetTexName(J)I
.end method

.method private static native nPrepare(JIIZ)Z
.end method

.method private static native nSetLayerPaint(JJ)V
.end method

.method private static native nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;Z)V
.end method

.method private static native nSetTransform(JJ)V
.end method

.method private static native nUpdateRenderLayer(JJIIII)V
.end method

.method private static native nUpdateSurfaceTexture(J)V
.end method


# virtual methods
.method public copyInto(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/HardwareRenderer;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/view/HardwareRenderer;->copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public destroy()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 72
    invoke-virtual {p0}, Landroid/view/HardwareLayer;->isValid()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 74
    return-void

    #@8
    .line 76
    :cond_0
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/HardwareRenderer;

    #@a
    invoke-virtual {v0, p0}, Landroid/view/HardwareRenderer;->onLayerDestroyed(Landroid/view/HardwareLayer;)V

    #@d
    .line 77
    iput-object v1, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/HardwareRenderer;

    #@f
    .line 78
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    #@14
    .line 79
    iput-object v1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@16
    .line 71
    return-void
.end method

.method public detachSurfaceTexture()V
    .locals 4

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/HardwareRenderer;

    #@2
    iget-object v1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v2, v3}, Landroid/view/HardwareRenderer;->detachSurfaceTexture(J)V

    #@b
    .line 125
    return-void
.end method

.method public getDeferredLayerUpdater()J
    .locals 2

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getLayerHandle()J
    .locals 2

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public isValid()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 65
    iget-object v1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@7
    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@a
    move-result-wide v2

    #@b
    const-wide/16 v4, 0x0

    #@d
    cmp-long v1, v2, v4

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method public prepare(IIZ)Z
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOpaque"    # Z

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/HardwareLayer;->nPrepare(JIIZ)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v0

    #@6
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    #@9
    move-result-wide v2

    #@a
    invoke-static {v0, v1, v2, v3}, Landroid/view/HardwareLayer;->nSetLayerPaint(JJ)V

    #@d
    .line 56
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/HardwareRenderer;

    #@f
    invoke-virtual {v0, p0}, Landroid/view/HardwareRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    #@12
    .line 54
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v0

    #@6
    const/4 v2, 0x0

    #@7
    invoke-static {v0, v1, p1, v2}, Landroid/view/HardwareLayer;->nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;Z)V

    #@a
    .line 135
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/HardwareRenderer;

    #@c
    invoke-virtual {v0, p0}, Landroid/view/HardwareRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    #@f
    .line 133
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v0

    #@6
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@8
    invoke-static {v0, v1, v2, v3}, Landroid/view/HardwareLayer;->nSetTransform(JJ)V

    #@b
    .line 119
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/HardwareRenderer;

    #@d
    invoke-virtual {v0, p0}, Landroid/view/HardwareRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    #@10
    .line 117
    return-void
.end method

.method public updateSurfaceTexture()V
    .locals 2

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1}, Landroid/view/HardwareLayer;->nUpdateSurfaceTexture(J)V

    #@9
    .line 140
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/HardwareRenderer;

    #@b
    invoke-virtual {v0, p0}, Landroid/view/HardwareRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    #@e
    .line 138
    return-void
.end method
