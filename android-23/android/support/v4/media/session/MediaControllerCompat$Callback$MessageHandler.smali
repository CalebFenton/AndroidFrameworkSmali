.class Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;
.super Landroid/os/Handler;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0x8

.field private static final MSG_EVENT:I = 0x1

.field private static final MSG_UPDATE_EXTRAS:I = 0x7

.field private static final MSG_UPDATE_METADATA:I = 0x3

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x5

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x6

.field private static final MSG_UPDATE_VOLUME:I = 0x4


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 520
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    .line 521
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 520
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->-get2(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 527
    return-void

    #@9
    .line 529
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    #@b
    packed-switch v0, :pswitch_data_0

    #@e
    .line 525
    :goto_0
    return-void

    #@f
    .line 531
    :pswitch_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1c
    goto :goto_0

    #@1d
    .line 534
    :pswitch_1
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21
    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    #@23
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    #@26
    goto :goto_0

    #@27
    .line 537
    :pswitch_2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b
    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    #@2d
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    #@30
    goto :goto_0

    #@31
    .line 540
    :pswitch_3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@35
    check-cast v0, Ljava/util/List;

    #@37
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onQueueChanged(Ljava/util/List;)V

    #@3a
    goto :goto_0

    #@3b
    .line 543
    :pswitch_4
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@3d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3f
    check-cast v0, Ljava/lang/CharSequence;

    #@41
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    #@44
    goto :goto_0

    #@45
    .line 546
    :pswitch_5
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@49
    check-cast v0, Landroid/os/Bundle;

    #@4b
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    #@4e
    goto :goto_0

    #@4f
    .line 549
    :pswitch_6
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@51
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@53
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    #@55
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V

    #@58
    goto :goto_0

    #@59
    .line 552
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@5b
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    #@5e
    goto :goto_0

    #@5f
    .line 529
    nop

    #@60
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
    .line 558
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 557
    return-void
.end method
