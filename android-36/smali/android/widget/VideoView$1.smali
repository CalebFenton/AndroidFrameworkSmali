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
.field final synthetic blacklist this$0:Landroid/widget/VideoView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/VideoView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/VideoView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 467
    iput-object p1, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 469
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-$$Nest$fputmVideoWidth(Landroid/widget/VideoView;I)V

    .line 470
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-$$Nest$fputmVideoHeight(Landroid/widget/VideoView;I)V

    .line 471
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoWidth(Landroid/widget/VideoView;)I

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoHeight(Landroid/widget/VideoView;)I

    move-result v0

    if-eqz v0, :cond_3c

    .line 472
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoWidth(Landroid/widget/VideoView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoHeight(Landroid/widget/VideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 473
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestLayout()V

    .line 475
    :cond_3c
    return-void
.end method
