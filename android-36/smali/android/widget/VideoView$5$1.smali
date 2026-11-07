.class Landroid/widget/VideoView$5$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/VideoView$5;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/VideoView$5;


# direct methods
.method constructor blacklist <init>(Landroid/widget/VideoView$5;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/VideoView$5;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 604
    iput-object p1, p0, Landroid/widget/VideoView$5$1;->this$1:Landroid/widget/VideoView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 609
    iget-object v0, p0, Landroid/widget/VideoView$5$1;->this$1:Landroid/widget/VideoView$5;

    iget-object v0, v0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmOnCompletionListener(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 610
    iget-object v0, p0, Landroid/widget/VideoView$5$1;->this$1:Landroid/widget/VideoView$5;

    iget-object v0, v0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmOnCompletionListener(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$5$1;->this$1:Landroid/widget/VideoView$5;

    iget-object v1, v1, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaPlayer(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 612
    :cond_1d
    return-void
.end method
