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
    .line 748
    iput-object p1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@2
    .line 749
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 748
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 754
    iget v2, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 781
    const-string/jumbo v0, "RemoteController"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "unknown event "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget v2, p1, Landroid/os/Message;->what:I

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 753
    :goto_0
    return-void

    #@24
    .line 756
    :pswitch_0
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@26
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a
    check-cast v0, Landroid/app/PendingIntent;

    #@2c
    invoke-static {v1, v2, v0}, Landroid/media/RemoteController;->-wrap4(Landroid/media/RemoteController;ILandroid/app/PendingIntent;)V

    #@2f
    goto :goto_0

    #@30
    .line 759
    :pswitch_1
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@32
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@34
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36
    check-cast v0, Landroid/media/RemoteController$PlaybackInfo;

    #@38
    invoke-static {v1, v2, v0}, Landroid/media/RemoteController;->-wrap5(Landroid/media/RemoteController;ILandroid/media/RemoteController$PlaybackInfo;)V

    #@3b
    goto :goto_0

    #@3c
    .line 762
    :pswitch_2
    iget-object v0, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@3e
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@40
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@42
    invoke-static {v0, v1, v2}, Landroid/media/RemoteController;->-wrap7(Landroid/media/RemoteController;II)V

    #@45
    goto :goto_0

    #@46
    .line 765
    :pswitch_3
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@48
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@4a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4c
    check-cast v0, Landroid/os/Bundle;

    #@4e
    invoke-static {v1, v2, v0}, Landroid/media/RemoteController;->-wrap3(Landroid/media/RemoteController;ILandroid/os/Bundle;)V

    #@51
    goto :goto_0

    #@52
    .line 768
    :pswitch_4
    iget-object v2, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@54
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@56
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@58
    if-ne v4, v0, :cond_0

    #@5a
    :goto_1
    invoke-static {v2, v3, v0}, Landroid/media/RemoteController;->-wrap0(Landroid/media/RemoteController;IZ)V

    #@5d
    goto :goto_0

    #@5e
    :cond_0
    move v0, v1

    #@5f
    goto :goto_1

    #@60
    .line 771
    :pswitch_5
    iget-object v2, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@62
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@64
    if-ne v3, v0, :cond_1

    #@66
    :goto_2
    invoke-static {v2, v0}, Landroid/media/RemoteController;->-wrap1(Landroid/media/RemoteController;Z)V

    #@69
    goto :goto_0

    #@6a
    :cond_1
    move v0, v1

    #@6b
    goto :goto_2

    #@6c
    .line 775
    :pswitch_6
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@6e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@70
    check-cast v0, Landroid/media/session/PlaybackState;

    #@72
    invoke-static {v1, v0}, Landroid/media/RemoteController;->-wrap6(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V

    #@75
    goto :goto_0

    #@76
    .line 778
    :pswitch_7
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    #@78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7a
    check-cast v0, Landroid/media/MediaMetadata;

    #@7c
    invoke-static {v1, v0}, Landroid/media/RemoteController;->-wrap2(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V

    #@7f
    goto :goto_0

    #@80
    .line 754
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
