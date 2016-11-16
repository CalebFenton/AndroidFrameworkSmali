.class final Landroid/view/HardwareLayer;
.super Ljava/lang/Object;
.source "HardwareLayer.java"


# instance fields
.field private mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderer:Landroid/view/ThreadedRenderer;


# direct methods
.method private constructor <init>(Landroid/view/ThreadedRenderer;J)V
    .locals 4
    .param p1, "renderer"    # Landroid/view/ThreadedRenderer;
    .param p2, "deferredUpdater"    # J

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    if-eqz p1, :cond_0

    #@5
    const-wide/16 v0, 0x0

    #@7
    cmp-long v0, p2, v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 42
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
    .line 43
    const-string/jumbo v2, " or deferredUpdater: "

    #@20
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 43
    const-string/jumbo v2, " is invalid"

    #@2b
    .line 42
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
    .line 45
    :cond_1
    iput-object p1, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@39
    .line 46
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    #@3b
    invoke-direct {v0, p2, p3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    #@3e
    iput-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@40
    .line 40
    return-void
.end method

.method static adoptTextureLayer(Landroid/view/ThreadedRenderer;J)Landroid/view/HardwareLayer;
    .locals 1
    .param p0, "renderer"    # Landroid/view/ThreadedRenderer;
    .param p1, "layer"    # J

    #@0
    .prologue
    .line 145
    new-instance v0, Landroid/view/HardwareLayer;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/view/HardwareLayer;-><init>(Landroid/view/ThreadedRenderer;J)V

    #@5
    return-object v0
.end method

.method private static native nPrepare(JIIZ)Z
.end method

.method private static native nSetLayerPaint(JJ)V
.end method

.method private static native nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;Z)V
.end method

.method private static native nSetTransform(JJ)V
.end method

.method private static native nUpdateSurfaceTexture(J)V
.end method


# virtual methods
.method public copyInto(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/view/ThreadedRenderer;->copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z

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
    .line 73
    invoke-virtual {p0}, Landroid/view/HardwareLayer;->isValid()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 75
    return-void

    #@8
    .line 77
    :cond_0
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@a
    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->onLayerDestroyed(Landroid/view/HardwareLayer;)V

    #@d
    .line 78
    iput-object v1, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@f
    .line 79
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    #@14
    .line 80
    iput-object v1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@16
    .line 72
    return-void
.end method

.method public detachSurfaceTexture()V
    .locals 4

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@2
    iget-object v1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v2, v3}, Landroid/view/ThreadedRenderer;->detachSurfaceTexture(J)V

    #@b
    .line 126
    return-void
.end method

.method public getDeferredLayerUpdater()J
    .locals 2

    #@0
    .prologue
    .line 84
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
    .line 131
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
    .line 66
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
    .line 110
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
    .line 56
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v2

    #@6
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    #@b
    move-result-wide v0

    #@c
    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/view/HardwareLayer;->nSetLayerPaint(JJ)V

    #@f
    .line 57
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@11
    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    #@14
    .line 55
    return-void

    #@15
    .line 56
    :cond_0
    const-wide/16 v0, 0x0

    #@17
    goto :goto_0
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    .line 135
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
    .line 136
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@c
    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    #@f
    .line 134
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 119
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
    .line 120
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@d
    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    #@10
    .line 118
    return-void
.end method

.method public updateSurfaceTexture()V
    .locals 2

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1}, Landroid/view/HardwareLayer;->nUpdateSurfaceTexture(J)V

    #@9
    .line 141
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    #@b
    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    #@e
    .line 139
    return-void
.end method
