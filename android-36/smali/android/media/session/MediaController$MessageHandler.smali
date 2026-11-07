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
.field private final greylist-max-o mCallback:Landroid/media/session/MediaController$Callback;

.field private greylist-max-o mRegistered:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/session/MediaController$MessageHandler;)Landroid/media/session/MediaController$Callback;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRegistered(Landroid/media/session/MediaController$MessageHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/session/MediaController$MessageHandler;->mRegistered:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Looper;Landroid/media/session/MediaController$Callback;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cb"    # Landroid/media/session/MediaController$Callback;

    .line 1188
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaController$MessageHandler;->mRegistered:Z

    .line 1189
    iput-object p2, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    .line 1190
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1194
    iget-boolean v0, p0, Landroid/media/session/MediaController$MessageHandler;->mRegistered:Z

    if-nez v0, :cond_5

    .line 1195
    return-void

    .line 1197
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_66

    goto :goto_65

    .line 1221
    :pswitch_b
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0}, Landroid/media/session/MediaController$Callback;->onSessionDestroyed()V

    goto :goto_65

    .line 1215
    :pswitch_11
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 1216
    goto :goto_65

    .line 1212
    :pswitch_1b
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 1213
    goto :goto_65

    .line 1208
    :pswitch_25
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_2d

    const/4 v1, 0x0

    goto :goto_35

    .line 1209
    :cond_2d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 1208
    :goto_35
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController$Callback;->onQueueChanged(Ljava/util/List;)V

    .line 1210
    goto :goto_65

    .line 1218
    :pswitch_39
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController$Callback;->onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V

    .line 1219
    goto :goto_65

    .line 1205
    :pswitch_43
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaMetadata;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 1206
    goto :goto_65

    .line 1202
    :pswitch_4d
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 1203
    goto :goto_65

    .line 1199
    :pswitch_57
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1200
    nop

    .line 1224
    :goto_65
    return-void

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_57
        :pswitch_4d
        :pswitch_43
        :pswitch_39
        :pswitch_25
        :pswitch_1b
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 1227
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1228
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1229
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1230
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1231
    return-void
.end method
