.class Landroid/view/SurfaceView$3;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/SurfaceView;

    #@0
    .prologue
    .line 172
    iput-object p1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 176
    iget-object v3, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    #@4
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    #@6
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_0

    #@c
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    #@e
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    #@11
    move-result v0

    #@12
    if-lez v0, :cond_0

    #@14
    move v0, v1

    #@15
    :goto_0
    iput-boolean v0, v3, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@17
    .line 177
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    #@19
    invoke-virtual {v0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@1c
    .line 178
    return v1

    #@1d
    :cond_0
    move v0, v2

    #@1e
    .line 176
    goto :goto_0
.end method
