.class Landroid/media/session/MediaSession$CallbackMessageHandler;
.super Landroid/os/Handler;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMessageHandler"
.end annotation


# static fields
.field private static final MSG_ADJUST_VOLUME:I = 0x10

.field private static final MSG_COMMAND:I = 0xf

.field private static final MSG_CUSTOM_ACTION:I = 0xd

.field private static final MSG_FAST_FORWARD:I = 0x9

.field private static final MSG_MEDIA_BUTTON:I = 0xe

.field private static final MSG_NEXT:I = 0x7

.field private static final MSG_PAUSE:I = 0x5

.field private static final MSG_PLAY:I = 0x1

.field private static final MSG_PLAY_MEDIA_ID:I = 0x2

.field private static final MSG_PLAY_SEARCH:I = 0x3

.field private static final MSG_PLAY_URI:I = 0x12

.field private static final MSG_PREVIOUS:I = 0x8

.field private static final MSG_RATE:I = 0xc

.field private static final MSG_REWIND:I = 0xa

.field private static final MSG_SEEK_TO:I = 0xb

.field private static final MSG_SET_VOLUME:I = 0x11

.field private static final MSG_SKIP_TO_ITEM:I = 0x4

.field private static final MSG_STOP:I = 0x6


# instance fields
.field private mCallback:Landroid/media/session/MediaSession$Callback;

.field final synthetic this$0:Landroid/media/session/MediaSession;


# direct methods
.method static synthetic -get0(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/session/MediaSession;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/media/session/MediaSession$Callback;

    #@0
    .prologue
    .line 1179
    iput-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    #@2
    .line 1180
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1181
    iput-object p3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@9
    .line 1179
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1205
    iget v2, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v2, :pswitch_data_0

    #@5
    .line 1203
    :cond_0
    :goto_0
    return-void

    #@6
    .line 1207
    :pswitch_0
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@8
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    #@b
    goto :goto_0

    #@c
    .line 1210
    :pswitch_1
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10
    check-cast v2, Ljava/lang/String;

    #@12
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    #@19
    goto :goto_0

    #@1a
    .line 1213
    :pswitch_2
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@1c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e
    check-cast v2, Ljava/lang/String;

    #@20
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    #@27
    goto :goto_0

    #@28
    .line 1216
    :pswitch_3
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@2a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c
    check-cast v2, Landroid/net/Uri;

    #@2e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@35
    goto :goto_0

    #@36
    .line 1219
    :pswitch_4
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@38
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a
    check-cast v2, Ljava/lang/Long;

    #@3c
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@3f
    move-result-wide v4

    #@40
    invoke-virtual {v3, v4, v5}, Landroid/media/session/MediaSession$Callback;->onSkipToQueueItem(J)V

    #@43
    goto :goto_0

    #@44
    .line 1222
    :pswitch_5
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@46
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onPause()V

    #@49
    goto :goto_0

    #@4a
    .line 1225
    :pswitch_6
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@4c
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onStop()V

    #@4f
    goto :goto_0

    #@50
    .line 1228
    :pswitch_7
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@52
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    #@55
    goto :goto_0

    #@56
    .line 1231
    :pswitch_8
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@58
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    #@5b
    goto :goto_0

    #@5c
    .line 1234
    :pswitch_9
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@5e
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    #@61
    goto :goto_0

    #@62
    .line 1237
    :pswitch_a
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@64
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    #@67
    goto :goto_0

    #@68
    .line 1240
    :pswitch_b
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@6a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6c
    check-cast v2, Ljava/lang/Long;

    #@6e
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@71
    move-result-wide v4

    #@72
    invoke-virtual {v3, v4, v5}, Landroid/media/session/MediaSession$Callback;->onSeekTo(J)V

    #@75
    goto :goto_0

    #@76
    .line 1243
    :pswitch_c
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@78
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7a
    check-cast v2, Landroid/media/Rating;

    #@7c
    invoke-virtual {v3, v2}, Landroid/media/session/MediaSession$Callback;->onSetRating(Landroid/media/Rating;)V

    #@7f
    goto :goto_0

    #@80
    .line 1246
    :pswitch_d
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@82
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@84
    check-cast v2, Ljava/lang/String;

    #@86
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@89
    move-result-object v4

    #@8a
    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    #@8d
    goto/16 :goto_0

    #@8f
    .line 1249
    :pswitch_e
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@91
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@93
    check-cast v2, Landroid/content/Intent;

    #@95
    invoke-virtual {v3, v2}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    #@98
    goto/16 :goto_0

    #@9a
    .line 1252
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9c
    check-cast v0, Landroid/media/session/MediaSession$Command;

    #@9e
    .line 1253
    .local v0, "cmd":Landroid/media/session/MediaSession$Command;
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@a0
    iget-object v3, v0, Landroid/media/session/MediaSession$Command;->command:Ljava/lang/String;

    #@a2
    iget-object v4, v0, Landroid/media/session/MediaSession$Command;->extras:Landroid/os/Bundle;

    #@a4
    iget-object v5, v0, Landroid/media/session/MediaSession$Command;->stub:Landroid/os/ResultReceiver;

    #@a6
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/session/MediaSession$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    #@a9
    goto/16 :goto_0

    #@ab
    .line 1256
    .end local v0    # "cmd":Landroid/media/session/MediaSession$Command;
    :pswitch_10
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    #@ad
    invoke-static {v2}, Landroid/media/session/MediaSession;->-get0(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    #@b0
    move-result-object v3

    #@b1
    monitor-enter v3

    #@b2
    .line 1257
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    #@b4
    invoke-static {v2}, Landroid/media/session/MediaSession;->-get2(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b7
    move-result-object v1

    #@b8
    .local v1, "vp":Landroid/media/VolumeProvider;
    monitor-exit v3

    #@b9
    .line 1259
    if-eqz v1, :cond_0

    #@bb
    .line 1260
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bd
    check-cast v2, Ljava/lang/Integer;

    #@bf
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@c2
    move-result v2

    #@c3
    invoke-virtual {v1, v2}, Landroid/media/VolumeProvider;->onAdjustVolume(I)V

    #@c6
    goto/16 :goto_0

    #@c8
    .line 1256
    .end local v1    # "vp":Landroid/media/VolumeProvider;
    :catchall_0
    move-exception v2

    #@c9
    monitor-exit v3

    #@ca
    throw v2

    #@cb
    .line 1264
    :pswitch_11
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    #@cd
    invoke-static {v2}, Landroid/media/session/MediaSession;->-get0(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    #@d0
    move-result-object v3

    #@d1
    monitor-enter v3

    #@d2
    .line 1265
    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    #@d4
    invoke-static {v2}, Landroid/media/session/MediaSession;->-get2(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@d7
    move-result-object v1

    #@d8
    .restart local v1    # "vp":Landroid/media/VolumeProvider;
    monitor-exit v3

    #@d9
    .line 1267
    if-eqz v1, :cond_0

    #@db
    .line 1268
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@dd
    check-cast v2, Ljava/lang/Integer;

    #@df
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@e2
    move-result v2

    #@e3
    invoke-virtual {v1, v2}, Landroid/media/VolumeProvider;->onSetVolumeTo(I)V

    #@e6
    goto/16 :goto_0

    #@e8
    .line 1264
    .end local v1    # "vp":Landroid/media/VolumeProvider;
    :catchall_1
    move-exception v2

    #@e9
    monitor-exit v3

    #@ea
    throw v2

    #@eb
    .line 1205
    nop

    #@ec
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_3
    .end packed-switch
.end method

.method public post(I)V
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 1195
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->post(ILjava/lang/Object;)V

    #@4
    .line 1194
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1191
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 1190
    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    #@0
    .prologue
    .line 1199
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@8
    .line 1198
    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1185
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 1186
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@7
    .line 1187
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 1184
    return-void
.end method
