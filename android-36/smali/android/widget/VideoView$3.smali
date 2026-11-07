.class Landroid/widget/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 542
    iput-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 544
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-$$Nest$fputmCurrentState(Landroid/widget/VideoView;I)V

    .line 545
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-$$Nest$fputmTargetState(Landroid/widget/VideoView;I)V

    .line 546
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 547
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 549
    :cond_1c
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmOnCompletionListener(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 550
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmOnCompletionListener(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaPlayer(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 552
    :cond_33
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmAudioFocusType(Landroid/widget/VideoView;)I

    move-result v0

    if-eqz v0, :cond_45

    .line 553
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmAudioManager(Landroid/widget/VideoView;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 555
    :cond_45
    return-void
.end method
