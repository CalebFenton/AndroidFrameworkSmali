.class Landroid/media/RemoteController$EventHandler;
.super Landroid/os/Handler;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method public constructor <init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteController;
    .param p2, "rc"    # Landroid/media/RemoteController;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 507
    iput-object p1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@2
    .line 508
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 507
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 513
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 524
    const-string/jumbo v0, "RemoteController"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "unknown event "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v2, p1, Landroid/os/Message;->what:I

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 512
    :goto_0
    return-void

    #@23
    .line 515
    :pswitch_0
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@25
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@27
    if-ne v2, v0, :cond_0

    #@29
    :goto_1
    invoke-static {v1, v0}, Landroid/media/RemoteController;->-wrap0(Landroid/media/RemoteController;Z)V

    #@2c
    goto :goto_0

    #@2d
    :cond_0
    const/4 v0, 0x0

    #@2e
    goto :goto_1

    #@2f
    .line 518
    :pswitch_1
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33
    check-cast v0, Landroid/media/session/PlaybackState;

    #@35
    invoke-static {v1, v0}, Landroid/media/RemoteController;->-wrap2(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V

    #@38
    goto :goto_0

    #@39
    .line 521
    :pswitch_2
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@3b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3d
    check-cast v0, Landroid/media/MediaMetadata;

    #@3f
    invoke-static {v1, v0}, Landroid/media/RemoteController;->-wrap1(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V

    #@42
    goto :goto_0

    #@43
    .line 513
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
