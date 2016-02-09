.class Lcom/android/server/wm/BlackFrame$BlackSurface;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BlackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlackSurface"
.end annotation


# instance fields
.field final layer:I

.field final left:I

.field final surface:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/BlackFrame;

.field final top:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/server/wm/BlackFrame;
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "layer"    # I
    .param p4, "l"    # I
    .param p5, "t"    # I
    .param p6, "r"    # I
    .param p7, "b"    # I
    .param p8, "layerStack"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    #@0
    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 41
    iput p4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    #@7
    .line 42
    iput p5, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    #@9
    .line 43
    iput p3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->layer:I

    #@b
    .line 44
    sub-int v3, p6, p4

    #@d
    .line 45
    .local v3, "w":I
    sub-int v4, p7, p5

    #@f
    .line 52
    .local v4, "h":I
    new-instance v0, Landroid/view/SurfaceControl;

    #@11
    const-string/jumbo v2, "BlackSurface"

    #@14
    .line 53
    const/4 v5, -0x1

    #@15
    const v6, 0x20004

    #@18
    move-object v1, p2

    #@19
    .line 52
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    #@1c
    iput-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    #@1e
    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    #@20
    const/high16 v1, 0x3f800000    # 1.0f

    #@22
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@25
    .line 57
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    #@27
    invoke-virtual {v0, p8}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@2a
    .line 58
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    #@2c
    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@2f
    .line 59
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    #@31
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    #@34
    .line 40
    return-void
.end method


# virtual methods
.method clearMatrix()V
    .locals 3

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    const/4 v1, 0x0

    #@3
    .line 90
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v0, v2, v1, v1, v2}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@8
    .line 89
    return-void
.end method

.method setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@5
    .line 65
    return-void
.end method

.method setMatrix(Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    #@4
    iget v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    #@6
    int-to-float v1, v1

    #@7
    iget v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    #@9
    int-to-float v2, v2

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@d
    .line 71
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    #@f
    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    #@11
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@14
    .line 72
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    #@16
    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    #@18
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    #@1a
    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    #@1c
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    #@1f
    .line 73
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    #@21
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    #@23
    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    #@25
    const/4 v2, 0x2

    #@26
    aget v1, v1, v2

    #@28
    .line 74
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    #@2a
    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    #@2c
    const/4 v3, 0x5

    #@2d
    aget v2, v2, v3

    #@2f
    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@32
    .line 75
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    #@34
    .line 76
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    #@36
    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    #@38
    const/4 v2, 0x0

    #@39
    aget v1, v1, v2

    #@3b
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    #@3d
    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    #@3f
    const/4 v3, 0x3

    #@40
    aget v2, v2, v3

    #@42
    .line 77
    iget-object v3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    #@44
    iget-object v3, v3, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    #@46
    const/4 v4, 0x1

    #@47
    aget v3, v3, v4

    #@49
    iget-object v4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    #@4b
    iget-object v4, v4, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    #@4d
    const/4 v5, 0x4

    #@4e
    aget v4, v4, v5

    #@50
    .line 75
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@53
    .line 69
    return-void
.end method
