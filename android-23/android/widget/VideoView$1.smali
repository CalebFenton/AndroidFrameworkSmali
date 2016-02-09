.class Landroid/widget/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/VideoView;

    #@0
    .prologue
    .line 401
    iput-object p1, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    #@2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, v1}, Landroid/widget/VideoView;->-set10(Landroid/widget/VideoView;I)I

    #@9
    .line 404
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    #@b
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    #@e
    move-result v1

    #@f
    invoke-static {v0, v1}, Landroid/widget/VideoView;->-set9(Landroid/widget/VideoView;I)I

    #@12
    .line 405
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    #@14
    invoke-static {v0}, Landroid/widget/VideoView;->-get13(Landroid/widget/VideoView;)I

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    #@1c
    invoke-static {v0}, Landroid/widget/VideoView;->-get12(Landroid/widget/VideoView;)I

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 406
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    #@24
    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    #@2a
    invoke-static {v1}, Landroid/widget/VideoView;->-get13(Landroid/widget/VideoView;)I

    #@2d
    move-result v1

    #@2e
    iget-object v2, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    #@30
    invoke-static {v2}, Landroid/widget/VideoView;->-get12(Landroid/widget/VideoView;)I

    #@33
    move-result v2

    #@34
    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    #@37
    .line 407
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    #@39
    invoke-virtual {v0}, Landroid/widget/VideoView;->requestLayout()V

    #@3c
    .line 402
    :cond_0
    return-void
.end method
