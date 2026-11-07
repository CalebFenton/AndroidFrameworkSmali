.class public final Landroid/graphics/HardwareBufferRenderer$RenderRequest;
.super Ljava/lang/Object;
.source "HardwareBufferRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareBufferRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RenderRequest"
.end annotation


# instance fields
.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private blacklist mTransform:I

.field final synthetic blacklist this$0:Landroid/graphics/HardwareBufferRenderer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreset(Landroid/graphics/HardwareBufferRenderer$RenderRequest;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->reset()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/HardwareBufferRenderer;)V
    .registers 3
    .param p1, "this$0"    # Landroid/graphics/HardwareBufferRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 255
    iput-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$sfgetDEFAULT_COLORSPACE()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    .line 255
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/HardwareBufferRenderer;Landroid/graphics/HardwareBufferRenderer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/HardwareBufferRenderer$RenderRequest;-><init>(Landroid/graphics/HardwareBufferRenderer;)V

    return-void
.end method

.method static synthetic blacklist lambda$draw$0(Ljava/util/function/Consumer;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V
    .registers 2
    .param p0, "renderCallback"    # Ljava/util/function/Consumer;
    .param p1, "consumable"    # Landroid/graphics/HardwareBufferRenderer$RenderResult;

    .line 277
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$draw$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "renderCallback"    # Ljava/util/function/Consumer;
    .param p2, "consumable"    # Landroid/graphics/HardwareBufferRenderer$RenderResult;

    .line 276
    new-instance v0, Landroid/graphics/HardwareBufferRenderer$RenderRequest$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/graphics/HardwareBufferRenderer$RenderRequest$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist reset()V
    .registers 2

    .line 304
    invoke-static {}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$sfgetDEFAULT_COLORSPACE()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    .line 306
    return-void
.end method


# virtual methods
.method public whitelist draw(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/HardwareBufferRenderer$RenderResult;",
            ">;)V"
        }
    .end annotation

    .line 276
    .local p2, "renderCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/HardwareBufferRenderer$RenderResult;>;"
    new-instance v0, Landroid/graphics/HardwareBufferRenderer$RenderRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/graphics/HardwareBufferRenderer$RenderRequest$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    move-object v8, v0

    .line 278
    .local v8, "wrapped":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/HardwareBufferRenderer$RenderResult;>;"
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareBufferRenderer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_59

    .line 281
    iget v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_30

    iget v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_19

    goto :goto_30

    .line 286
    :cond_19
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {v0}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    .line 287
    .local v0, "renderWidth":I
    iget-object v1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {v1}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    move v4, v0

    move v5, v1

    .local v1, "renderHeight":I
    goto :goto_46

    .line 283
    .end local v0    # "renderWidth":I
    .end local v1    # "renderHeight":I
    :cond_30
    :goto_30
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {v0}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    .line 284
    .restart local v0    # "renderWidth":I
    iget-object v1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {v1}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    move v4, v0

    move v5, v1

    .line 290
    .end local v0    # "renderWidth":I
    .local v4, "renderWidth":I
    .local v5, "renderHeight":I
    :goto_46
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {v0}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmProxy(Landroid/graphics/HardwareBufferRenderer;)J

    move-result-wide v1

    iget v3, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 295
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v6

    .line 290
    invoke-static/range {v1 .. v8}, Landroid/graphics/HardwareBufferRenderer;->nRender(JIIIJLjava/util/function/Consumer;)I

    .line 297
    .end local v4    # "renderWidth":I
    .end local v5    # "renderHeight":I
    nop

    .line 301
    return-void

    .line 298
    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to draw with a HardwareBufferRenderer instance that has already been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBufferTransform(I)Landroid/graphics/HardwareBufferRenderer$RenderRequest;
    .registers 5
    .param p1, "bufferTransform"    # I

    .line 338
    if-eqz p1, :cond_e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    const/4 v0, 0x7

    if-ne p1, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    .line 342
    .local v0, "validTransform":Z
    :goto_f
    if-eqz v0, :cond_14

    .line 343
    iput p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    .line 348
    return-object p0

    .line 345
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid transform provided, must be one ofthe SurfaceControl.BufferTransform values"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setColorSpace(Landroid/graphics/ColorSpace;)Landroid/graphics/HardwareBufferRenderer$RenderRequest;
    .registers 3
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 320
    if-nez p1, :cond_9

    .line 321
    invoke-static {}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$sfgetDEFAULT_COLORSPACE()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_b

    .line 323
    :cond_9
    iput-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 325
    :goto_b
    return-object p0
.end method
