.class Landroid/widget/MediaController$3;
.super Landroid/os/Handler;
.source "MediaController.java"


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
    .line 407
    iput-object p1, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 411
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 409
    :cond_0
    :goto_0
    return-void

    #@6
    .line 413
    :pswitch_0
    iget-object v1, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    #@8
    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    #@b
    goto :goto_0

    #@c
    .line 416
    :pswitch_1
    iget-object v1, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    #@e
    invoke-static {v1}, Landroid/widget/MediaController;->-wrap0(Landroid/widget/MediaController;)I

    #@11
    move-result v0

    #@12
    .line 417
    .local v0, "pos":I
    iget-object v1, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    #@14
    invoke-static {v1}, Landroid/widget/MediaController;->-get3(Landroid/widget/MediaController;)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    iget-object v1, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    #@1c
    invoke-static {v1}, Landroid/widget/MediaController;->-get6(Landroid/widget/MediaController;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_0

    #@22
    iget-object v1, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    #@24
    invoke-static {v1}, Landroid/widget/MediaController;->-get5(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    #@27
    move-result-object v1

    #@28
    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 418
    const/4 v1, 0x2

    #@2f
    invoke-virtual {p0, v1}, Landroid/widget/MediaController$3;->obtainMessage(I)Landroid/os/Message;

    #@32
    move-result-object p1

    #@33
    .line 419
    rem-int/lit16 v1, v0, 0x3e8

    #@35
    rsub-int v1, v1, 0x3e8

    #@37
    int-to-long v2, v1

    #@38
    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/MediaController$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@3b
    goto :goto_0

    #@3c
    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
