.class public Landroid/graphics/HardwareBufferRenderer;
.super Ljava/lang/Object;
.source "HardwareBufferRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/HardwareBufferRenderer$HardwareBufferRendererHolder;,
        Landroid/graphics/HardwareBufferRenderer$RenderRequest;,
        Landroid/graphics/HardwareBufferRenderer$RenderResult;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_COLORSPACE:Landroid/graphics/ColorSpace;


# instance fields
.field private final blacklist mCleaner:Ljava/lang/Runnable;

.field private final blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private blacklist mProxy:J

.field private final blacklist mRenderRequest:Landroid/graphics/HardwareBufferRenderer$RenderRequest;

.field private final blacklist mRootNode:Landroid/graphics/RenderNode;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;
    .registers 1

    iget-object p0, p0, Landroid/graphics/HardwareBufferRenderer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProxy(Landroid/graphics/HardwareBufferRenderer;)J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/HardwareBufferRenderer;->mProxy:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_COLORSPACE()Landroid/graphics/ColorSpace;
    .registers 1

    sget-object v0, Landroid/graphics/HardwareBufferRenderer;->DEFAULT_COLORSPACE:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/HardwareBufferRenderer;->nGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sput-object v0, Landroid/graphics/HardwareBufferRenderer;->DEFAULT_COLORSPACE:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/HardwareBuffer;)V
    .registers 6
    .param p1, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Landroid/graphics/HardwareBufferRenderer;->nCreateRootRenderNode()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->adopt(J)Landroid/graphics/RenderNode;

    move-result-object v0

    .line 82
    .local v0, "rootNode":Landroid/graphics/RenderNode;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 83
    iget-wide v1, v0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {p1, v1, v2}, Landroid/graphics/HardwareBufferRenderer;->nCreateHardwareBufferRenderer(Landroid/hardware/HardwareBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/graphics/HardwareBufferRenderer;->mProxy:J

    .line 84
    sget-object v1, Landroid/graphics/HardwareBufferRenderer$HardwareBufferRendererHolder;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/HardwareBufferRenderer;->mProxy:J

    invoke-virtual {v1, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/HardwareBufferRenderer;->mCleaner:Ljava/lang/Runnable;

    .line 85
    new-instance v1, Landroid/graphics/HardwareBufferRenderer$RenderRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/graphics/HardwareBufferRenderer$RenderRequest;-><init>(Landroid/graphics/HardwareBufferRenderer;Landroid/graphics/HardwareBufferRenderer-IA;)V

    iput-object v1, p0, Landroid/graphics/HardwareBufferRenderer;->mRenderRequest:Landroid/graphics/HardwareBufferRenderer$RenderRequest;

    .line 86
    iput-object v0, p0, Landroid/graphics/HardwareBufferRenderer;->mRootNode:Landroid/graphics/RenderNode;

    .line 87
    iput-object p1, p0, Landroid/graphics/HardwareBufferRenderer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 88
    return-void
.end method

.method private static blacklist invokeRenderCallback(Ljava/util/function/Consumer;II)V
    .registers 6
    .param p1, "fd"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/HardwareBufferRenderer$RenderResult;",
            ">;II)V"
        }
    .end annotation

    .line 380
    .local p0, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/HardwareBufferRenderer$RenderResult;>;"
    new-instance v0, Landroid/graphics/HardwareBufferRenderer$RenderResult;

    invoke-static {p1}, Landroid/hardware/SyncFence;->adopt(I)Landroid/hardware/SyncFence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Landroid/graphics/HardwareBufferRenderer$RenderResult;-><init>(Landroid/hardware/SyncFence;ILandroid/graphics/HardwareBufferRenderer-IA;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method private static native blacklist nCreateHardwareBufferRenderer(Landroid/hardware/HardwareBuffer;J)J
.end method

.method private static native blacklist nCreateRootRenderNode()J
.end method

.method private static native blacklist nDestroyRootRenderNode(J)V
.end method

.method private static native blacklist nGetFinalizer()J
.end method

.method static native blacklist nRender(JIIIJLjava/util/function/Consumer;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIIJ",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/HardwareBufferRenderer$RenderResult;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native blacklist nSetLightAlpha(JFF)V
.end method

.method private static native blacklist nSetLightGeometry(JFFFF)V
.end method

.method private static blacklist validateAlpha(FLjava/lang/String;)V
    .registers 5
    .param p0, "alpha"    # F
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 384
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_c

    .line 388
    return-void

    .line 385
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a valid alpha, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range of 0.0f to 1.0f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateFinite(FLjava/lang/String;)V
    .registers 5
    .param p0, "f"    # F
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 391
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 394
    return-void

    .line 392
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be finite, given="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validatePositive(FLjava/lang/String;)V
    .registers 5
    .param p0, "f"    # F
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 397
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_c

    .line 401
    return-void

    .line 398
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a finite positive, given="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5

    .line 141
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v0, v0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareBufferRenderer;->nDestroyRootRenderNode(J)V

    .line 142
    iget-wide v0, p0, Landroid/graphics/HardwareBufferRenderer;->mProxy:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 143
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 144
    iput-wide v2, p0, Landroid/graphics/HardwareBufferRenderer;->mProxy:J

    .line 146
    :cond_16
    return-void
.end method

.method public whitelist isClosed()Z
    .registers 5

    .line 128
    iget-wide v0, p0, Landroid/graphics/HardwareBufferRenderer;->mProxy:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist obtainRenderRequest()Landroid/graphics/HardwareBufferRenderer$RenderRequest;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer;->mRenderRequest:Landroid/graphics/HardwareBufferRenderer$RenderRequest;

    invoke-static {v0}, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->-$$Nest$mreset(Landroid/graphics/HardwareBufferRenderer$RenderRequest;)V

    .line 119
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer;->mRenderRequest:Landroid/graphics/HardwareBufferRenderer$RenderRequest;

    return-object v0
.end method

.method public whitelist setContentRoot(Landroid/graphics/RenderNode;)V
    .registers 4
    .param p1, "content"    # Landroid/graphics/RenderNode;

    .line 101
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 102
    .local v0, "canvas":Landroid/graphics/RecordingCanvas;
    if-eqz p1, :cond_b

    .line 103
    invoke-virtual {v0, p1}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 105
    :cond_b
    iget-object v1, p0, Landroid/graphics/HardwareBufferRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 106
    return-void
.end method

.method public whitelist setLightSourceAlpha(FF)V
    .registers 5
    .param p1, "ambientShadowAlpha"    # F
    .param p2, "spotShadowAlpha"    # F

    .line 198
    const-string v0, "ambientShadowAlpha"

    invoke-static {p1, v0}, Landroid/graphics/HardwareBufferRenderer;->validateAlpha(FLjava/lang/String;)V

    .line 199
    const-string/jumbo v0, "spotShadowAlpha"

    invoke-static {p2, v0}, Landroid/graphics/HardwareBufferRenderer;->validateAlpha(FLjava/lang/String;)V

    .line 200
    iget-wide v0, p0, Landroid/graphics/HardwareBufferRenderer;->mProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareBufferRenderer;->nSetLightAlpha(JFF)V

    .line 201
    return-void
.end method

.method public whitelist setLightSourceGeometry(FFFF)V
    .registers 12
    .param p1, "lightX"    # F
    .param p2, "lightY"    # F
    .param p3, "lightZ"    # F
    .param p4, "lightRadius"    # F

    .line 174
    const-string/jumbo v0, "lightX"

    invoke-static {p1, v0}, Landroid/graphics/HardwareBufferRenderer;->validateFinite(FLjava/lang/String;)V

    .line 175
    const-string/jumbo v0, "lightY"

    invoke-static {p2, v0}, Landroid/graphics/HardwareBufferRenderer;->validateFinite(FLjava/lang/String;)V

    .line 176
    const-string/jumbo v0, "lightZ"

    invoke-static {p3, v0}, Landroid/graphics/HardwareBufferRenderer;->validatePositive(FLjava/lang/String;)V

    .line 177
    const-string/jumbo v0, "lightRadius"

    invoke-static {p4, v0}, Landroid/graphics/HardwareBufferRenderer;->validatePositive(FLjava/lang/String;)V

    .line 178
    iget-wide v1, p0, Landroid/graphics/HardwareBufferRenderer;->mProxy:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "lightX":F
    .end local p2    # "lightY":F
    .end local p3    # "lightZ":F
    .end local p4    # "lightRadius":F
    .local v3, "lightX":F
    .local v4, "lightY":F
    .local v5, "lightZ":F
    .local v6, "lightRadius":F
    invoke-static/range {v1 .. v6}, Landroid/graphics/HardwareBufferRenderer;->nSetLightGeometry(JFFFF)V

    .line 179
    return-void
.end method
