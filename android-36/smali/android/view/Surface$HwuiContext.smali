.class final Landroid/view/Surface$HwuiContext;
.super Ljava/lang/Object;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HwuiContext"
.end annotation


# instance fields
.field private blacklist mCanvas:Landroid/graphics/RecordingCanvas;

.field private blacklist mHardwareRenderer:Landroid/graphics/HardwareRenderer;

.field private final greylist-max-o mIsWideColorGamut:Z

.field private final blacklist mRenderNode:Landroid/graphics/RenderNode;

.field final synthetic blacklist this$0:Landroid/view/Surface;


# direct methods
.method constructor blacklist <init>(Landroid/view/Surface;Z)V
    .registers 6
    .param p2, "isWideColorGamut"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1423
    iput-object p1, p0, Landroid/view/Surface$HwuiContext;->this$0:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    const-string v0, "HwuiCanvas"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/graphics/RenderNode;

    .line 1425
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/graphics/RenderNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 1426
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    .line 1427
    iput-boolean p2, p0, Landroid/view/Surface$HwuiContext;->mIsWideColorGamut:Z

    .line 1429
    new-instance v0, Landroid/graphics/HardwareRenderer;

    invoke-direct {v0}, Landroid/graphics/HardwareRenderer;-><init>()V

    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    .line 1430
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    iget-object v2, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v2}, Landroid/graphics/HardwareRenderer;->setContentRoot(Landroid/graphics/RenderNode;)V

    .line 1431
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;Z)V

    .line 1432
    iget-object p1, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    .line 1433
    if-eqz p2, :cond_35

    .line 1434
    move v1, v2

    goto :goto_36

    .line 1435
    :cond_35
    nop

    .line 1432
    :goto_36
    invoke-virtual {p1, v1}, Landroid/graphics/HardwareRenderer;->setColorMode(I)F

    .line 1436
    iget-object p1, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/HardwareRenderer;->setLightSourceAlpha(FF)V

    .line 1437
    iget-object p1, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/HardwareRenderer;->setLightSourceGeometry(FFFF)V

    .line 1438
    return-void
.end method


# virtual methods
.method greylist-max-o destroy()V
    .registers 2

    .line 1465
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->destroy()V

    .line 1466
    return-void
.end method

.method greylist-max-o isWideColorGamut()Z
    .registers 2

    .line 1469
    iget-boolean v0, p0, Landroid/view/Surface$HwuiContext;->mIsWideColorGamut:Z

    return v0
.end method

.method greylist-max-o lockCanvas(II)Landroid/graphics/Canvas;
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1441
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/graphics/RecordingCanvas;

    if-nez v0, :cond_f

    .line 1444
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/graphics/RecordingCanvas;

    .line 1445
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/graphics/RecordingCanvas;

    return-object v0

    .line 1442
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface was already locked!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o unlockAndPost(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1449
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/graphics/RecordingCanvas;

    if-ne p1, v0, :cond_1e

    .line 1453
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1454
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/graphics/RecordingCanvas;

    .line 1455
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    .line 1456
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    .line 1457
    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    .line 1458
    return-void

    .line 1450
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "canvas object must be the same instance that was previously returned by lockCanvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o updateSurface()V
    .registers 4

    .line 1461
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    iget-object v1, p0, Landroid/view/Surface$HwuiContext;->this$0:Landroid/view/Surface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;Z)V

    .line 1462
    return-void
.end method
