.class Landroid/widget/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    .line 675
    iput-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 679
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, p3}, Landroid/widget/VideoView;->-$$Nest$fputmSurfaceWidth(Landroid/widget/VideoView;I)V

    .line 680
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, p4}, Landroid/widget/VideoView;->-$$Nest$fputmSurfaceHeight(Landroid/widget/VideoView;I)V

    .line 681
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmTargetState(Landroid/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v3

    .line 682
    .local v0, "isValidState":Z
    :goto_18
    iget-object v1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoWidth(Landroid/widget/VideoView;)I

    move-result v1

    if-ne v1, p3, :cond_29

    iget-object v1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoHeight(Landroid/widget/VideoView;)I

    move-result v1

    if-ne v1, p4, :cond_29

    goto :goto_2a

    :cond_29
    move v2, v3

    .line 683
    .local v2, "hasValidSize":Z
    :goto_2a
    iget-object v1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaPlayer(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_4e

    if-eqz v0, :cond_4e

    if-eqz v2, :cond_4e

    .line 684
    iget-object v1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-$$Nest$fgetmSeekWhenPrepared(Landroid/widget/VideoView;)I

    move-result v1

    if-eqz v1, :cond_49

    .line 685
    iget-object v1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->-$$Nest$fgetmSeekWhenPrepared(Landroid/widget/VideoView;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 687
    :cond_49
    iget-object v1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 689
    :cond_4e
    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 693
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, p1}, Landroid/widget/VideoView;->-$$Nest$fputmSurfaceHolder(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)V

    .line 694
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$mopenVideo(Landroid/widget/VideoView;)V

    .line 695
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 700
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-$$Nest$fputmSurfaceHolder(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)V

    .line 701
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 702
    :cond_17
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-$$Nest$mrelease(Landroid/widget/VideoView;Z)V

    .line 703
    return-void
.end method
