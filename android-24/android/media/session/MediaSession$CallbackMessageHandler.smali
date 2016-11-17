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
.field private static final MSG_ADJUST_VOLUME:I = 0x15

.field private static final MSG_COMMAND:I = 0x1

.field private static final MSG_CUSTOM_ACTION:I = 0x14

.field private static final MSG_FAST_FORWARD:I = 0x10

.field private static final MSG_MEDIA_BUTTON:I = 0x2

.field private static final MSG_NEXT:I = 0xe

.field private static final MSG_PAUSE:I = 0xc

.field private static final MSG_PLAY:I = 0x7

.field private static final MSG_PLAY_MEDIA_ID:I = 0x8

.field private static final MSG_PLAY_SEARCH:I = 0x9

.field private static final MSG_PLAY_URI:I = 0xa

.field private static final MSG_PREPARE:I = 0x3

.field private static final MSG_PREPARE_MEDIA_ID:I = 0x4

.field private static final MSG_PREPARE_SEARCH:I = 0x5

.field private static final MSG_PREPARE_URI:I = 0x6

.field private static final MSG_PREVIOUS:I = 0xf

.field private static final MSG_RATE:I = 0x13

.field private static final MSG_REWIND:I = 0x11

.field private static final MSG_SEEK_TO:I = 0x12

.field private static final MSG_SET_VOLUME:I = 0x16

.field private static final MSG_SKIP_TO_ITEM:I = 0xb

.field private static final MSG_STOP:I = 0xd


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
    .line 1292
    iput-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    #@2
    .line 1293
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1294
    iput-object p3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@9
    .line 1292
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1318
    iget v2, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v2, :pswitch_data_0

    #@5
    .line 1316
    :cond_0
    :goto_0
    return-void

    #@6
    .line 1320
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/media/session/MediaSession$Command;

    #@a
    .line 1321
    .local v0, "cmd":Landroid/media/session/MediaSession$Command;
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@c
    iget-object v3, v0, Landroid/media/session/MediaSession$Command;->command:Ljava/lang/String;

    #@e
    iget-object v4, v0, Landroid/media/session/MediaSession$Command;->extras:Landroid/os/Bundle;

    #@10
    iget-object v5, v0, Landroid/media/session/MediaSession$Command;->stub:Landroid/os/ResultReceiver;

    #@12
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/session/MediaSession$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    #@15
    goto :goto_0

    #@16
    .line 1324
    .end local v0    # "cmd":Landroid/media/session/MediaSession$Command;
    :pswitch_1
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@18
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a
    check-cast v2, Landroid/content/Intent;

    #@1c
    invoke-virtual {v3, v2}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    #@1f
    goto :goto_0

    #@20
    .line 1327
    :pswitch_2
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@22
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onPrepare()V

    #@25
    goto :goto_0

    #@26
    .line 1330
    :pswitch_3
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@28
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a
    check-cast v2, Ljava/lang/String;

    #@2c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    #@33
    goto :goto_0

    #@34
    .line 1333
    :pswitch_4
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@36
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@38
    check-cast v2, Ljava/lang/String;

    #@3a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    #@41
    goto :goto_0

    #@42
    .line 1336
    :pswitch_5
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@44
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@46
    check-cast v2, Landroid/net/Uri;

    #@48
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@4f
    goto :goto_0

    #@50
    .line 1339
    :pswitch_6
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@52
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    #@55
    goto :goto_0

    #@56
    .line 1342
    :pswitch_7
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@58
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5a
    check-cast v2, Ljava/lang/String;

    #@5c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    #@63
    goto :goto_0

    #@64
    .line 1345
    :pswitch_8
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@66
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@68
    check-cast v2, Ljava/lang/String;

    #@6a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    #@71
    goto :goto_0

    #@72
    .line 1348
    :pswitch_9
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@74
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@76
    check-cast v2, Landroid/net/Uri;

    #@78
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@7f
    goto :goto_0

    #@80
    .line 1351
    :pswitch_a
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@82
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@84
    check-cast v2, Ljava/lang/Long;

    #@86
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@89
    move-result-wide v4

    #@8a
    invoke-virtual {v3, v4, v5}, Landroid/media/session/MediaSession$Callback;->onSkipToQueueItem(J)V

    #@8d
    goto/16 :goto_0

    #@8f
    .line 1354
    :pswitch_b
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@91
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onPause()V

    #@94
    goto/16 :goto_0

    #@96
    .line 1357
    :pswitch_c
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@98
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onStop()V

    #@9b
    goto/16 :goto_0

    #@9d
    .line 1360
    :pswitch_d
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@9f
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    #@a2
    goto/16 :goto_0

    #@a4
    .line 1363
    :pswitch_e
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@a6
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    #@a9
    goto/16 :goto_0

    #@ab
    .line 1366
    :pswitch_f
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@ad
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    #@b0
    goto/16 :goto_0

    #@b2
    .line 1369
    :pswitch_10
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@b4
    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    #@b7
    goto/16 :goto_0

    #@b9
    .line 1372
    :pswitch_11
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@bb
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bd
    check-cast v2, Ljava/lang/Long;

    #@bf
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@c2
    move-result-wide v4

    #@c3
    invoke-virtual {v3, v4, v5}, Landroid/media/session/MediaSession$Callback;->onSeekTo(J)V

    #@c6
    goto/16 :goto_0

    #@c8
    .line 1375
    :pswitch_12
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@ca
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@cc
    check-cast v2, Landroid/media/Rating;

    #@ce
    invoke-virtual {v3, v2}, Landroid/media/session/MediaSession$Callback;->onSetRating(Landroid/media/Rating;)V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 1378
    :pswitch_13
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    #@d5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d7
    check-cast v2, Ljava/lang/String;

    #@d9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@dc
    move-result-object v4

    #@dd
    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    #@e0
    goto/16 :goto_0

    #@e2
    .line 1381
    :pswitch_14
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    #@e4
    invoke-static {v2}, Landroid/media/session/MediaSession;->-get0(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    #@e7
    move-result-object v3

    #@e8
    monitor-enter v3

    #@e9
    .line 1382
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    #@eb
    invoke-static {v2}, Landroid/media/session/MediaSession;->-get2(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ee
    move-result-object v1

    #@ef
    .local v1, "vp":Landroid/media/VolumeProvider;
    monitor-exit v3

    #@f0
    .line 1384
    if-eqz v1, :cond_0

    #@f2
    .line 1385
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f4
    check-cast v2, Ljava/lang/Integer;

    #@f6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@f9
    move-result v2

    #@fa
    invoke-virtual {v1, v2}, Landroid/media/VolumeProvider;->onAdjustVolume(I)V

    #@fd
    goto/16 :goto_0

    #@ff
    .line 1381
    .end local v1    # "vp":Landroid/media/VolumeProvider;
    :catchall_0
    move-exception v2

    #@100
    monitor-exit v3

    #@101
    throw v2

    #@102
    .line 1389
    :pswitch_15
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    #@104
    invoke-static {v2}, Landroid/media/session/MediaSession;->-get0(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    #@107
    move-result-object v3

    #@108
    monitor-enter v3

    #@109
    .line 1390
    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    #@10b
    invoke-static {v2}, Landroid/media/session/MediaSession;->-get2(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@10e
    move-result-object v1

    #@10f
    .restart local v1    # "vp":Landroid/media/VolumeProvider;
    monitor-exit v3

    #@110
    .line 1392
    if-eqz v1, :cond_0

    #@112
    .line 1393
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@114
    check-cast v2, Ljava/lang/Integer;

    #@116
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@119
    move-result v2

    #@11a
    invoke-virtual {v1, v2}, Landroid/media/VolumeProvider;->onSetVolumeTo(I)V

    #@11d
    goto/16 :goto_0

    #@11f
    .line 1389
    .end local v1    # "vp":Landroid/media/VolumeProvider;
    :catchall_1
    move-exception v2

    #@120
    monitor-exit v3

    #@121
    throw v2

    #@122
    .line 1318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public post(I)V
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 1308
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->post(ILjava/lang/Object;)V

    #@4
    .line 1307
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1304
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 1303
    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    #@0
    .prologue
    .line 1312
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@8
    .line 1311
    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1298
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 1299
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@7
    .line 1300
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 1297
    return-void
.end method
