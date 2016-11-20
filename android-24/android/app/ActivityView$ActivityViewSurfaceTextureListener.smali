.class Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityViewSurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView;


# direct methods
.method private constructor <init>(Landroid/app/ActivityView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityView;

    #@0
    .prologue
    .line 362
    iput-object p1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityView;Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;-><init>(Landroid/app/ActivityView;)V

    #@3
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@2
    invoke-static {v0}, Landroid/app/ActivityView;->-get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 367
    return-void

    #@9
    .line 371
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@b
    invoke-static {v0, p2}, Landroid/app/ActivityView;->-set2(Landroid/app/ActivityView;I)I

    #@e
    .line 372
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@10
    invoke-static {v0, p3}, Landroid/app/ActivityView;->-set0(Landroid/app/ActivityView;I)I

    #@13
    .line 373
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@15
    new-instance v1, Landroid/view/Surface;

    #@17
    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    #@1a
    invoke-static {v0, v1}, Landroid/app/ActivityView;->-set1(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;

    #@1d
    .line 374
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@1f
    iget-object v1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@21
    invoke-static {v1}, Landroid/app/ActivityView;->-get5(Landroid/app/ActivityView;)Landroid/view/Surface;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@27
    invoke-static {v2}, Landroid/app/ActivityView;->-get6(Landroid/app/ActivityView;)I

    #@2a
    move-result v2

    #@2b
    iget-object v3, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@2d
    invoke-static {v3}, Landroid/app/ActivityView;->-get4(Landroid/app/ActivityView;)I

    #@30
    move-result v3

    #@31
    iget-object v4, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@33
    invoke-static {v4}, Landroid/app/ActivityView;->-get3(Landroid/app/ActivityView;)I

    #@36
    move-result v4

    #@37
    const/4 v5, 0x1

    #@38
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityView;->-wrap0(Landroid/app/ActivityView;Landroid/view/Surface;IIIZ)V

    #@3b
    .line 365
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 6
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 388
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@4
    invoke-static {v0}, Landroid/app/ActivityView;->-get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 389
    return v5

    #@b
    .line 392
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@d
    invoke-static {v0}, Landroid/app/ActivityView;->-get5(Landroid/app/ActivityView;)Landroid/view/Surface;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    #@14
    .line 393
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@16
    invoke-static {v0, v1}, Landroid/app/ActivityView;->-set1(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;

    #@19
    .line 394
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@1b
    iget-object v2, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@1d
    invoke-static {v2}, Landroid/app/ActivityView;->-get6(Landroid/app/ActivityView;)I

    #@20
    move-result v2

    #@21
    iget-object v3, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@23
    invoke-static {v3}, Landroid/app/ActivityView;->-get4(Landroid/app/ActivityView;)I

    #@26
    move-result v3

    #@27
    iget-object v4, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@29
    invoke-static {v4}, Landroid/app/ActivityView;->-get3(Landroid/app/ActivityView;)I

    #@2c
    move-result v4

    #@2d
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityView;->-wrap0(Landroid/app/ActivityView;Landroid/view/Surface;IIIZ)V

    #@30
    .line 395
    return v5
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 380
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@2
    invoke-static {v0}, Landroid/app/ActivityView;->-get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 381
    return-void

    #@9
    .line 379
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    .line 399
    return-void
.end method
