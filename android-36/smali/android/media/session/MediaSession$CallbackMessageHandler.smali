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
.field private static final greylist-max-o MSG_ADJUST_VOLUME:I = 0x16

.field private static final greylist-max-o MSG_COMMAND:I = 0x1

.field private static final greylist-max-o MSG_CUSTOM_ACTION:I = 0x15

.field private static final greylist-max-o MSG_FAST_FORWARD:I = 0x10

.field private static final greylist-max-o MSG_MEDIA_BUTTON:I = 0x2

.field private static final greylist-max-o MSG_NEXT:I = 0xe

.field private static final greylist-max-o MSG_PAUSE:I = 0xc

.field private static final greylist-max-o MSG_PLAY:I = 0x7

.field private static final greylist-max-o MSG_PLAY_MEDIA_ID:I = 0x8

.field private static final greylist-max-o MSG_PLAY_PAUSE_KEY_DOUBLE_TAP_TIMEOUT:I = 0x18

.field private static final greylist-max-o MSG_PLAY_SEARCH:I = 0x9

.field private static final greylist-max-o MSG_PLAY_URI:I = 0xa

.field private static final greylist-max-o MSG_PREPARE:I = 0x3

.field private static final greylist-max-o MSG_PREPARE_MEDIA_ID:I = 0x4

.field private static final greylist-max-o MSG_PREPARE_SEARCH:I = 0x5

.field private static final greylist-max-o MSG_PREPARE_URI:I = 0x6

.field private static final greylist-max-o MSG_PREVIOUS:I = 0xf

.field private static final greylist-max-o MSG_RATE:I = 0x13

.field private static final greylist-max-o MSG_REWIND:I = 0x11

.field private static final greylist-max-o MSG_SEEK_TO:I = 0x12

.field private static final blacklist MSG_SET_PLAYBACK_SPEED:I = 0x14

.field private static final greylist-max-o MSG_SET_VOLUME:I = 0x17

.field private static final greylist-max-o MSG_SKIP_TO_ITEM:I = 0xb

.field private static final greylist-max-o MSG_STOP:I = 0xd


# instance fields
.field private greylist-max-o mCallback:Landroid/media/session/MediaSession$Callback;

.field private greylist-max-o mCurrentControllerInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

.field final synthetic blacklist this$0:Landroid/media/session/MediaSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentControllerInfo(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCurrentControllerInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/media/session/MediaSession$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1572
    iput-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    .line 1573
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1574
    iput-object p3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    .line 1575
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-static {p1, p0}, Landroid/media/session/MediaSession$Callback;->-$$Nest$fputmHandler(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)V

    .line 1576
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1592
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    iput-object v0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCurrentControllerInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 1595
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1597
    .local v0, "obj":Ljava/lang/Object;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_13e

    goto/16 :goto_13a

    .line 1679
    :pswitch_17
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-static {v1}, Landroid/media/session/MediaSession$Callback;->-$$Nest$mhandleMediaPlayPauseKeySingleTapIfPending(Landroid/media/session/MediaSession$Callback;)V

    goto/16 :goto_13a

    .line 1671
    :pswitch_1e
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v1}, Landroid/media/session/MediaSession;->-$$Nest$fgetmLock(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1672
    :try_start_25
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-$$Nest$fgetmVolumeProvider(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;

    move-result-object v2

    .line 1673
    .local v2, "vp":Landroid/media/VolumeProvider;
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3a

    .line 1674
    if-eqz v2, :cond_13a

    .line 1675
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/VolumeProvider;->onSetVolumeTo(I)V

    goto/16 :goto_13a

    .line 1673
    .end local v2    # "vp":Landroid/media/VolumeProvider;
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v2

    .line 1663
    :pswitch_3d
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v1}, Landroid/media/session/MediaSession;->-$$Nest$fgetmLock(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1664
    :try_start_44
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-$$Nest$fgetmVolumeProvider(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;

    move-result-object v2

    .line 1665
    .restart local v2    # "vp":Landroid/media/VolumeProvider;
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_59

    .line 1666
    if-eqz v2, :cond_13a

    .line 1667
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/VolumeProvider;->onAdjustVolume(I)V

    goto/16 :goto_13a

    .line 1665
    .end local v2    # "vp":Landroid/media/VolumeProvider;
    :catchall_59
    move-exception v2

    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v2

    .line 1660
    :pswitch_5c
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1661
    goto/16 :goto_13a

    .line 1657
    :pswitch_6a
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$Callback;->onSetPlaybackSpeed(F)V

    .line 1658
    goto/16 :goto_13a

    .line 1654
    :pswitch_78
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Landroid/media/Rating;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$Callback;->onSetRating(Landroid/media/Rating;)V

    .line 1655
    goto/16 :goto_13a

    .line 1651
    :pswitch_82
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onSeekTo(J)V

    .line 1652
    goto/16 :goto_13a

    .line 1648
    :pswitch_90
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    .line 1649
    goto/16 :goto_13a

    .line 1645
    :pswitch_97
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    .line 1646
    goto/16 :goto_13a

    .line 1642
    :pswitch_9e
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    .line 1643
    goto/16 :goto_13a

    .line 1639
    :pswitch_a5
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    .line 1640
    goto/16 :goto_13a

    .line 1636
    :pswitch_ac
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onStop()V

    .line 1637
    goto/16 :goto_13a

    .line 1633
    :pswitch_b3
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 1634
    goto/16 :goto_13a

    .line 1630
    :pswitch_ba
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onSkipToQueueItem(J)V

    .line 1631
    goto/16 :goto_13a

    .line 1627
    :pswitch_c8
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1628
    goto :goto_13a

    .line 1624
    :pswitch_d5
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1625
    goto :goto_13a

    .line 1621
    :pswitch_e2
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1622
    goto :goto_13a

    .line 1618
    :pswitch_ef
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 1619
    goto :goto_13a

    .line 1615
    :pswitch_f5
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1616
    goto :goto_13a

    .line 1612
    :pswitch_102
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1613
    goto :goto_13a

    .line 1609
    :pswitch_10f
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1610
    goto :goto_13a

    .line 1606
    :pswitch_11c
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onPrepare()V

    .line 1607
    goto :goto_13a

    .line 1603
    :pswitch_122
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    .line 1604
    goto :goto_13a

    .line 1599
    :pswitch_12b
    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaSession$Command;

    .line 1600
    .local v1, "cmd":Landroid/media/session/MediaSession$Command;
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v3, v1, Landroid/media/session/MediaSession$Command;->command:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/session/MediaSession$Command;->extras:Landroid/os/Bundle;

    iget-object v5, v1, Landroid/media/session/MediaSession$Command;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/session/MediaSession$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1601
    nop

    .line 1682
    .end local v1    # "cmd":Landroid/media/session/MediaSession$Command;
    :cond_13a
    :goto_13a
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCurrentControllerInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 1683
    return-void

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_12b
        :pswitch_122
        :pswitch_11c
        :pswitch_10f
        :pswitch_102
        :pswitch_f5
        :pswitch_ef
        :pswitch_e2
        :pswitch_d5
        :pswitch_c8
        :pswitch_ba
        :pswitch_b3
        :pswitch_ac
        :pswitch_a5
        :pswitch_9e
        :pswitch_97
        :pswitch_90
        :pswitch_82
        :pswitch_78
        :pswitch_6a
        :pswitch_5c
        :pswitch_3d
        :pswitch_1e
        :pswitch_17
    .end packed-switch
.end method

.method greylist-max-o post(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V
    .registers 11
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "data"    # Landroid/os/Bundle;
    .param p5, "delayMs"    # J

    .line 1579
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1580
    .local v0, "objWithCaller":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/Object;>;"
    invoke-virtual {p0, p2, v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1581
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1582
    invoke-virtual {v1, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1583
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_19

    .line 1584
    invoke-virtual {p0, v1, p5, p6}, Landroid/media/session/MediaSession$CallbackMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1c

    .line 1586
    :cond_19
    invoke-virtual {p0, v1}, Landroid/media/session/MediaSession$CallbackMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1588
    :goto_1c
    return-void
.end method
