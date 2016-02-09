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
.field private mCanvas:Landroid/view/DisplayListCanvas;

.field private mHwuiRenderer:J

.field private final mRenderNode:Landroid/view/RenderNode;

.field final synthetic this$0:Landroid/view/Surface;


# direct methods
.method constructor <init>(Landroid/view/Surface;)V
    .locals 4
    .param p1, "this$0"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 577
    iput-object p1, p0, Landroid/view/Surface$HwuiContext;->this$0:Landroid/view/Surface;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 578
    const-string/jumbo v0, "HwuiCanvas"

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    #@f
    .line 579
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    #@15
    .line 580
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    #@17
    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    #@19
    iget-wide v2, p1, Landroid/view/Surface;->mNativeObject:J

    #@1b
    invoke-static {v0, v1, v2, v3}, Landroid/view/Surface;->-wrap0(JJ)J

    #@1e
    move-result-wide v0

    #@1f
    iput-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    #@21
    .line 577
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 606
    iget-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 607
    iget-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    #@a
    invoke-static {v0, v1}, Landroid/view/Surface;->-wrap1(J)V

    #@d
    .line 608
    iput-wide v2, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    #@f
    .line 605
    :cond_0
    return-void
.end method

.method lockCanvas(II)Landroid/graphics/Canvas;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 584
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 585
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Surface was already locked!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 587
    :cond_0
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    #@f
    invoke-virtual {v0, p1, p2}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    #@15
    .line 588
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    #@17
    return-object v0
.end method

.method unlockAndPost(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "canvas object must be the same instance that was previously returned by lockCanvas"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 596
    :cond_0
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    #@f
    iget-object v1, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    #@11
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    #@14
    .line 597
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    #@17
    .line 598
    iget-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    #@19
    invoke-static {v0, v1}, Landroid/view/Surface;->-wrap2(J)V

    #@1c
    .line 591
    return-void
.end method

.method updateSurface()V
    .locals 4

    #@0
    .prologue
    .line 602
    iget-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    #@2
    iget-object v2, p0, Landroid/view/Surface$HwuiContext;->this$0:Landroid/view/Surface;

    #@4
    iget-wide v2, v2, Landroid/view/Surface;->mNativeObject:J

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/view/Surface;->-wrap3(JJ)V

    #@9
    .line 601
    return-void
.end method
