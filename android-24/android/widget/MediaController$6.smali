.class Landroid/widget/MediaController$6;
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
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/MediaController;

    #@0
    .prologue
    .line 571
    iput-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "bar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromuser"    # Z

    #@0
    .prologue
    .line 588
    if-nez p3, :cond_0

    #@2
    .line 591
    return-void

    #@3
    .line 594
    :cond_0
    iget-object v4, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@5
    invoke-static {v4}, Landroid/widget/MediaController;->-get4(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    #@8
    move-result-object v4

    #@9
    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    #@c
    move-result v4

    #@d
    int-to-long v0, v4

    #@e
    .line 595
    .local v0, "duration":J
    int-to-long v4, p2

    #@f
    mul-long/2addr v4, v0

    #@10
    const-wide/16 v6, 0x3e8

    #@12
    div-long v2, v4, v6

    #@14
    .line 596
    .local v2, "newposition":J
    iget-object v4, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@16
    invoke-static {v4}, Landroid/widget/MediaController;->-get4(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    #@19
    move-result-object v4

    #@1a
    long-to-int v5, v2

    #@1b
    invoke-interface {v4, v5}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    #@1e
    .line 597
    iget-object v4, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@20
    invoke-static {v4}, Landroid/widget/MediaController;->-get0(Landroid/widget/MediaController;)Landroid/widget/TextView;

    #@23
    move-result-object v4

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 598
    iget-object v4, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@28
    invoke-static {v4}, Landroid/widget/MediaController;->-get0(Landroid/widget/MediaController;)Landroid/widget/TextView;

    #@2b
    move-result-object v4

    #@2c
    iget-object v5, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@2e
    long-to-int v6, v2

    #@2f
    invoke-static {v5, v6}, Landroid/widget/MediaController;->-wrap1(Landroid/widget/MediaController;I)Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@36
    .line 587
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "bar"    # Landroid/widget/SeekBar;

    #@0
    .prologue
    .line 574
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@2
    const v1, 0x36ee80

    #@5
    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    #@8
    .line 576
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-static {v0, v1}, Landroid/widget/MediaController;->-set0(Landroid/widget/MediaController;Z)Z

    #@e
    .line 583
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@10
    iget-object v1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@12
    invoke-static {v1}, Landroid/widget/MediaController;->-get5(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@19
    .line 573
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "bar"    # Landroid/widget/SeekBar;

    #@0
    .prologue
    .line 603
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/widget/MediaController;->-set0(Landroid/widget/MediaController;Z)Z

    #@6
    .line 604
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@8
    invoke-static {v0}, Landroid/widget/MediaController;->-wrap0(Landroid/widget/MediaController;)I

    #@b
    .line 605
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@d
    invoke-static {v0}, Landroid/widget/MediaController;->-wrap4(Landroid/widget/MediaController;)V

    #@10
    .line 606
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@12
    const/16 v1, 0xbb8

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    #@17
    .line 611
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@19
    iget-object v1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #@1b
    invoke-static {v1}, Landroid/widget/MediaController;->-get5(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->post(Ljava/lang/Runnable;)Z

    #@22
    .line 602
    return-void
.end method
