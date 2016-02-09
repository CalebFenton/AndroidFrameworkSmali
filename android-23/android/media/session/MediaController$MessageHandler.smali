.class final Landroid/media/session/MediaController$MessageHandler;
.super Landroid/os/Handler;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageHandler"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/session/MediaController$Callback;

.field private mRegistered:Z


# direct methods
.method static synthetic -get0(Landroid/media/session/MediaController$MessageHandler;)Landroid/media/session/MediaController$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/media/session/MediaController$MessageHandler;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/media/session/MediaController$MessageHandler;->mRegistered:Z

    #@2
    return p1
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/media/session/MediaController$Callback;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cb"    # Landroid/media/session/MediaController$Callback;

    #@0
    .prologue
    .line 983
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@5
    .line 980
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/media/session/MediaController$MessageHandler;->mRegistered:Z

    #@8
    .line 984
    iput-object p2, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    #@a
    .line 982
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 989
    iget-boolean v0, p0, Landroid/media/session/MediaController$MessageHandler;->mRegistered:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 990
    return-void

    #@5
    .line 992
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 988
    :goto_0
    return-void

    #@b
    .line 994
    :pswitch_0
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    #@d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    check-cast v0, Ljava/lang/String;

    #@11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v0, v2}, Landroid/media/session/MediaController$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@18
    goto :goto_0

    #@19
    .line 997
    :pswitch_1
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    #@1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    check-cast v0, Landroid/media/session/PlaybackState;

    #@1f
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    #@22
    goto :goto_0

    #@23
    .line 1000
    :pswitch_2
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    #@25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@27
    check-cast v0, Landroid/media/MediaMetadata;

    #@29
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    #@2c
    goto :goto_0

    #@2d
    .line 1003
    :pswitch_3
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    #@2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31
    check-cast v0, Ljava/util/List;

    #@33
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$Callback;->onQueueChanged(Ljava/util/List;)V

    #@36
    goto :goto_0

    #@37
    .line 1006
    :pswitch_4
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    #@39
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b
    check-cast v0, Ljava/lang/CharSequence;

    #@3d
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    #@40
    goto :goto_0

    #@41
    .line 1009
    :pswitch_5
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    #@43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@45
    check-cast v0, Landroid/os/Bundle;

    #@47
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    #@4a
    goto :goto_0

    #@4b
    .line 1012
    :pswitch_6
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    #@4d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4f
    check-cast v0, Landroid/media/session/MediaController$PlaybackInfo;

    #@51
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$Callback;->onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V

    #@54
    goto :goto_0

    #@55
    .line 1015
    :pswitch_7
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    #@57
    invoke-virtual {v0}, Landroid/media/session/MediaController$Callback;->onSessionDestroyed()V

    #@5a
    goto :goto_0

    #@5b
    .line 992
    nop

    #@5c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1021
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 1022
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@7
    .line 1023
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 1020
    return-void
.end method
