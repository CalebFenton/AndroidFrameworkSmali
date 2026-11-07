.class Landroid/widget/MediaController$7;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/MediaController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/MediaController;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/MediaController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 617
    iput-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 11
    .param p1, "bar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromuser"    # Z

    .line 634
    if-nez p3, :cond_3

    .line 637
    return-void

    .line 640
    :cond_3
    iget-object v0, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$fgetmPlayer(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 641
    .local v0, "duration":J
    int-to-long v2, p2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 642
    .local v2, "newposition":J
    iget-object v4, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {v4}, Landroid/widget/MediaController;->-$$Nest$fgetmPlayer(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v4

    long-to-int v5, v2

    invoke-interface {v4, v5}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 643
    iget-object v4, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {v4}, Landroid/widget/MediaController;->-$$Nest$fgetmCurrentTime(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 644
    iget-object v4, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {v4}, Landroid/widget/MediaController;->-$$Nest$fgetmCurrentTime(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    long-to-int v6, v2

    invoke-static {v5, v6}, Landroid/widget/MediaController;->-$$Nest$mstringForTime(Landroid/widget/MediaController;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_35
    return-void
.end method

.method public whitelist onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .line 620
    iget-object v0, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 622
    iget-object v0, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/MediaController;->-$$Nest$fputmDragging(Landroid/widget/MediaController;Z)V

    .line 629
    iget-object v0, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    iget-object v1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->-$$Nest$fgetmShowProgress(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 630
    return-void
.end method

.method public whitelist onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .line 649
    iget-object v0, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/MediaController;->-$$Nest$fputmDragging(Landroid/widget/MediaController;Z)V

    .line 650
    iget-object v0, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$msetProgress(Landroid/widget/MediaController;)I

    .line 651
    iget-object v0, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$mupdatePausePlay(Landroid/widget/MediaController;)V

    .line 652
    iget-object v0, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 657
    iget-object v0, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    iget-object v1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->-$$Nest$fgetmShowProgress(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->post(Ljava/lang/Runnable;)Z

    .line 658
    return-void
.end method
