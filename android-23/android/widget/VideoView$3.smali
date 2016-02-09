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
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/VideoView;

    #@0
    .prologue
    .line 475
    iput-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    #@0
    .prologue
    const/4 v1, 0x5

    #@1
    .line 477
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #@3
    invoke-static {v0, v1}, Landroid/widget/VideoView;->-set4(Landroid/widget/VideoView;I)I

    #@6
    .line 478
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #@8
    invoke-static {v0, v1}, Landroid/widget/VideoView;->-set8(Landroid/widget/VideoView;I)I

    #@b
    .line 479
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #@d
    invoke-static {v0}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 480
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #@15
    invoke-static {v0}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    #@1c
    .line 482
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #@1e
    invoke-static {v0}, Landroid/widget/VideoView;->-get4(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    #@21
    move-result-object v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 483
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #@26
    invoke-static {v0}, Landroid/widget/VideoView;->-get4(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    #@29
    move-result-object v0

    #@2a
    iget-object v1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #@2c
    invoke-static {v1}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    #@2f
    move-result-object v1

    #@30
    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    #@33
    .line 476
    :cond_1
    return-void
.end method
