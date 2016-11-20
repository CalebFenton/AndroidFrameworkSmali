.class Lcom/android/server/display/OverlayDisplayWindow$2;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/OverlayDisplayWindow;

    #@0
    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 7
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-get3(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;

    #@5
    move-result-object v1

    #@6
    .line 318
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@8
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-get1(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    #@13
    move-result v3

    #@14
    .line 319
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@16
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-get1(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;

    #@19
    move-result-object v0

    #@1a
    iget-wide v4, v0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@1c
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@1e
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-get1(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;

    #@21
    move-result-object v0

    #@22
    iget v6, v0, Landroid/view/DisplayInfo;->state:I

    #@24
    move-object v2, p1

    #@25
    .line 317
    invoke-interface/range {v1 .. v6}, Lcom/android/server/display/OverlayDisplayWindow$Listener;->onWindowCreated(Landroid/graphics/SurfaceTexture;FJI)V

    #@28
    .line 316
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-get3(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/android/server/display/OverlayDisplayWindow$Listener;->onWindowDestroyed()V

    #@9
    .line 325
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 330
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    .line 334
    return-void
.end method
