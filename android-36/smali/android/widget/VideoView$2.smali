.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 479
    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPrepared(Landroid/media/MediaPlayer;)V
    .registers 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 481
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-$$Nest$fputmCurrentState(Landroid/widget/VideoView;I)V

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v2

    .line 487
    .local v2, "data":Landroid/media/Metadata;
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_4f

    .line 488
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 489
    invoke-virtual {v2, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_20

    :cond_1e
    move v6, v0

    goto :goto_21

    :cond_20
    :goto_20
    move v6, v4

    :goto_21
    invoke-static {v5, v6}, Landroid/widget/VideoView;->-$$Nest$fputmCanPause(Landroid/widget/VideoView;Z)V

    .line 490
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/media/Metadata;->has(I)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 491
    invoke-virtual {v2, v1}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_35

    :cond_33
    move v1, v0

    goto :goto_36

    :cond_35
    :goto_35
    move v1, v4

    :goto_36
    invoke-static {v5, v1}, Landroid/widget/VideoView;->-$$Nest$fputmCanSeekBack(Landroid/widget/VideoView;Z)V

    .line 492
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 493
    invoke-virtual {v2, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_48

    goto :goto_4a

    :cond_48
    move v5, v0

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v5, v4

    :goto_4b
    invoke-static {v1, v5}, Landroid/widget/VideoView;->-$$Nest$fputmCanSeekForward(Landroid/widget/VideoView;Z)V

    goto :goto_5e

    .line 495
    :cond_4f
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v6, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v6, v4}, Landroid/widget/VideoView;->-$$Nest$fputmCanSeekForward(Landroid/widget/VideoView;Z)V

    invoke-static {v5, v4}, Landroid/widget/VideoView;->-$$Nest$fputmCanSeekBack(Landroid/widget/VideoView;Z)V

    invoke-static {v1, v4}, Landroid/widget/VideoView;->-$$Nest$fputmCanPause(Landroid/widget/VideoView;Z)V

    .line 498
    :goto_5e
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-$$Nest$fgetmOnPreparedListener(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_75

    .line 499
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-$$Nest$fgetmOnPreparedListener(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v5}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaPlayer(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 501
    :cond_75
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 502
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 504
    :cond_86
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-static {v1, v4}, Landroid/widget/VideoView;->-$$Nest$fputmVideoWidth(Landroid/widget/VideoView;I)V

    .line 505
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-static {v1, v4}, Landroid/widget/VideoView;->-$$Nest$fputmVideoHeight(Landroid/widget/VideoView;I)V

    .line 507
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-$$Nest$fgetmSeekWhenPrepared(Landroid/widget/VideoView;)I

    move-result v1

    .line 508
    .local v1, "seekToPosition":I
    if-eqz v1, :cond_a5

    .line 509
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v4, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 511
    :cond_a5
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoWidth(Landroid/widget/VideoView;)I

    move-result v4

    if-eqz v4, :cond_129

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoHeight(Landroid/widget/VideoView;)I

    move-result v4

    if-eqz v4, :cond_129

    .line 513
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v5}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoWidth(Landroid/widget/VideoView;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v6}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoHeight(Landroid/widget/VideoView;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 514
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->-$$Nest$fgetmSurfaceWidth(Landroid/widget/VideoView;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v5}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoWidth(Landroid/widget/VideoView;)I

    move-result v5

    if-ne v4, v5, :cond_136

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->-$$Nest$fgetmSurfaceHeight(Landroid/widget/VideoView;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v5}, Landroid/widget/VideoView;->-$$Nest$fgetmVideoHeight(Landroid/widget/VideoView;)I

    move-result v5

    if-ne v4, v5, :cond_136

    .line 518
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->-$$Nest$fgetmTargetState(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v4, v3, :cond_105

    .line 519
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 520
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_136

    .line 521
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_136

    .line 523
    :cond_105
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_136

    if-nez v1, :cond_117

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 524
    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    if-lez v3, :cond_136

    .line 525
    :cond_117
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    if-eqz v3, :cond_136

    .line 527
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/MediaController;->show(I)V

    goto :goto_136

    .line 534
    :cond_129
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmTargetState(Landroid/widget/VideoView;)I

    move-result v0

    if-ne v0, v3, :cond_136

    .line 535
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 538
    :cond_136
    :goto_136
    return-void
.end method
