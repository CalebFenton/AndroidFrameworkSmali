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
    .line 298
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
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@2
    invoke-static {v0}, Landroid/app/ActivityView;->-get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 303
    return-void

    #@9
    .line 307
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@b
    invoke-static {v0, p2}, Landroid/app/ActivityView;->-set2(Landroid/app/ActivityView;I)I

    #@e
    .line 308
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@10
    invoke-static {v0, p3}, Landroid/app/ActivityView;->-set0(Landroid/app/ActivityView;I)I

    #@13
    .line 309
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@15
    invoke-static {v0}, Landroid/app/ActivityView;->-wrap0(Landroid/app/ActivityView;)V

    #@18
    .line 310
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@1a
    invoke-static {v0}, Landroid/app/ActivityView;->-get1(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    #@1d
    move-result-object v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 311
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@22
    invoke-static {v0}, Landroid/app/ActivityView;->-get1(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@28
    invoke-virtual {v0, v1}, Landroid/app/ActivityView$ActivityViewCallback;->onSurfaceAvailable(Landroid/app/ActivityView;)V

    #@2b
    .line 301
    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 7
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 326
    iget-object v1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@4
    invoke-static {v1}, Landroid/app/ActivityView;->-get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    #@7
    move-result-object v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 327
    return v6

    #@b
    .line 330
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@d
    invoke-static {v1}, Landroid/app/ActivityView;->-get3(Landroid/app/ActivityView;)Landroid/view/Surface;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    #@14
    .line 331
    iget-object v1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@16
    invoke-static {v1, v2}, Landroid/app/ActivityView;->-set1(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;

    #@19
    .line 333
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@1b
    invoke-static {v1}, Landroid/app/ActivityView;->-get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@21
    invoke-static {v2}, Landroid/app/ActivityView;->-get4(Landroid/app/ActivityView;)I

    #@24
    move-result v2

    #@25
    iget-object v3, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@27
    invoke-static {v3}, Landroid/app/ActivityView;->-get2(Landroid/app/ActivityView;)I

    #@2a
    move-result v3

    #@2b
    iget-object v4, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@2d
    iget-object v4, v4, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    #@2f
    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    #@31
    const/4 v5, 0x0

    #@32
    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/ActivityView$ActivityContainerWrapper;->setSurface(Landroid/view/Surface;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 338
    iget-object v1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@37
    invoke-static {v1}, Landroid/app/ActivityView;->-get1(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    #@3a
    move-result-object v1

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 339
    iget-object v1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@3f
    invoke-static {v1}, Landroid/app/ActivityView;->-get1(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    #@42
    move-result-object v1

    #@43
    iget-object v2, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@45
    invoke-virtual {v1, v2}, Landroid/app/ActivityView$ActivityViewCallback;->onSurfaceDestroyed(Landroid/app/ActivityView;)V

    #@48
    .line 341
    :cond_1
    return v6

    #@49
    .line 334
    :catch_0
    move-exception v0

    #@4a
    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@4c
    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v3, "ActivityView: Unable to set surface of ActivityContainer. "

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    .line 335
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@63
    throw v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    #@2
    invoke-static {v0}, Landroid/app/ActivityView;->-get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 319
    return-void

    #@9
    .line 317
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    .line 345
    return-void
.end method
