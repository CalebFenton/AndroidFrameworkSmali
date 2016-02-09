.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

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
.field final synthetic this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1759
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    .line 1760
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1759
    return-void
.end method

.method private onMediaButtonEvent(Landroid/view/KeyEvent;)V
    .locals 10
    .param p1, "ke"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 1852
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 1853
    :cond_0
    return-void

    #@b
    .line 1855
    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@d
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get15(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    #@10
    move-result-object v3

    #@11
    if-nez v3, :cond_3

    #@13
    const-wide/16 v4, 0x0

    #@15
    .line 1856
    .local v4, "validActions":J
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@18
    move-result v3

    #@19
    sparse-switch v3, :sswitch_data_0

    #@1c
    .line 1851
    :cond_2
    :goto_1
    return-void

    #@1d
    .line 1855
    .end local v4    # "validActions":J
    :cond_3
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@1f
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get15(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    #@26
    move-result-wide v4

    #@27
    .restart local v4    # "validActions":J
    goto :goto_0

    #@28
    .line 1859
    :sswitch_0
    const-wide/16 v6, 0x4

    #@2a
    and-long/2addr v6, v4

    #@2b
    cmp-long v3, v6, v8

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 1860
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@31
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    #@38
    goto :goto_1

    #@39
    .line 1865
    :sswitch_1
    const-wide/16 v6, 0x2

    #@3b
    and-long/2addr v6, v4

    #@3c
    cmp-long v3, v6, v8

    #@3e
    if-eqz v3, :cond_2

    #@40
    .line 1866
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@42
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    #@49
    goto :goto_1

    #@4a
    .line 1870
    :sswitch_2
    const-wide/16 v6, 0x20

    #@4c
    and-long/2addr v6, v4

    #@4d
    cmp-long v3, v6, v8

    #@4f
    if-eqz v3, :cond_2

    #@51
    .line 1871
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@53
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    #@5a
    goto :goto_1

    #@5b
    .line 1875
    :sswitch_3
    const-wide/16 v6, 0x10

    #@5d
    and-long/2addr v6, v4

    #@5e
    cmp-long v3, v6, v8

    #@60
    if-eqz v3, :cond_2

    #@62
    .line 1876
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@64
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    #@6b
    goto :goto_1

    #@6c
    .line 1880
    :sswitch_4
    const-wide/16 v6, 0x1

    #@6e
    and-long/2addr v6, v4

    #@6f
    cmp-long v3, v6, v8

    #@71
    if-eqz v3, :cond_2

    #@73
    .line 1881
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@75
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    #@7c
    goto :goto_1

    #@7d
    .line 1885
    :sswitch_5
    const-wide/16 v6, 0x40

    #@7f
    and-long/2addr v6, v4

    #@80
    cmp-long v3, v6, v8

    #@82
    if-eqz v3, :cond_2

    #@84
    .line 1886
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@86
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    #@8d
    goto :goto_1

    #@8e
    .line 1890
    :sswitch_6
    const-wide/16 v6, 0x8

    #@90
    and-long/2addr v6, v4

    #@91
    cmp-long v3, v6, v8

    #@93
    if-eqz v3, :cond_2

    #@95
    .line 1891
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@97
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    #@9e
    goto/16 :goto_1

    #@a0
    .line 1896
    :sswitch_7
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@a2
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get15(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    #@a5
    move-result-object v3

    #@a6
    if-eqz v3, :cond_5

    #@a8
    .line 1897
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@aa
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get15(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    #@ad
    move-result-object v3

    #@ae
    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    #@b1
    move-result v3

    #@b2
    const/4 v6, 0x3

    #@b3
    if-ne v3, v6, :cond_4

    #@b5
    const/4 v2, 0x1

    #@b6
    .line 1898
    .local v2, "isPlaying":Z
    :goto_2
    const-wide/16 v6, 0x204

    #@b8
    and-long/2addr v6, v4

    #@b9
    cmp-long v3, v6, v8

    #@bb
    if-eqz v3, :cond_6

    #@bd
    const/4 v1, 0x1

    #@be
    .line 1900
    .local v1, "canPlay":Z
    :goto_3
    const-wide/16 v6, 0x202

    #@c0
    and-long/2addr v6, v4

    #@c1
    cmp-long v3, v6, v8

    #@c3
    if-eqz v3, :cond_7

    #@c5
    const/4 v0, 0x1

    #@c6
    .line 1902
    .local v0, "canPause":Z
    :goto_4
    if-eqz v2, :cond_8

    #@c8
    if-eqz v0, :cond_8

    #@ca
    .line 1903
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@cc
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@cf
    move-result-object v3

    #@d0
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    #@d3
    goto/16 :goto_1

    #@d5
    .line 1897
    .end local v0    # "canPause":Z
    .end local v1    # "canPlay":Z
    .end local v2    # "isPlaying":Z
    :cond_4
    const/4 v2, 0x0

    #@d6
    .restart local v2    # "isPlaying":Z
    goto :goto_2

    #@d7
    .line 1896
    .end local v2    # "isPlaying":Z
    :cond_5
    const/4 v2, 0x0

    #@d8
    .restart local v2    # "isPlaying":Z
    goto :goto_2

    #@d9
    .line 1898
    :cond_6
    const/4 v1, 0x0

    #@da
    .restart local v1    # "canPlay":Z
    goto :goto_3

    #@db
    .line 1900
    :cond_7
    const/4 v0, 0x0

    #@dc
    .restart local v0    # "canPause":Z
    goto :goto_4

    #@dd
    .line 1904
    :cond_8
    if-nez v2, :cond_2

    #@df
    if-eqz v1, :cond_2

    #@e1
    .line 1905
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@e3
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@e6
    move-result-object v3

    #@e7
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    #@ea
    goto/16 :goto_1

    #@ec
    .line 1856
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_7
        0x55 -> :sswitch_7
        0x56 -> :sswitch_4
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
        0x59 -> :sswitch_6
        0x5a -> :sswitch_5
        0x7e -> :sswitch_0
        0x7f -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1783
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@3
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@6
    move-result-object v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 1784
    return-void

    #@a
    .line 1786
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    #@c
    packed-switch v3, :pswitch_data_0

    #@f
    .line 1782
    :cond_1
    :goto_0
    return-void

    #@10
    .line 1788
    :pswitch_0
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@12
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    #@19
    goto :goto_0

    #@1a
    .line 1791
    :pswitch_1
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@1c
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@1f
    move-result-object v4

    #@20
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22
    check-cast v3, Ljava/lang/String;

    #@24
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v4, v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    #@2b
    goto :goto_0

    #@2c
    .line 1794
    :pswitch_2
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2e
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@31
    move-result-object v4

    #@32
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34
    check-cast v3, Ljava/lang/String;

    #@36
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v4, v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3d
    goto :goto_0

    #@3e
    .line 1797
    :pswitch_3
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@40
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@43
    move-result-object v4

    #@44
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@46
    check-cast v3, Landroid/net/Uri;

    #@48
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v4, v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@4f
    goto :goto_0

    #@50
    .line 1800
    :pswitch_4
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@52
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@55
    move-result-object v4

    #@56
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@58
    check-cast v3, Ljava/lang/Long;

    #@5a
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@5d
    move-result-wide v6

    #@5e
    invoke-virtual {v4, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    #@61
    goto :goto_0

    #@62
    .line 1803
    :pswitch_5
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@64
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    #@6b
    goto :goto_0

    #@6c
    .line 1806
    :pswitch_6
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@6e
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    #@75
    goto :goto_0

    #@76
    .line 1809
    :pswitch_7
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@78
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    #@7f
    goto :goto_0

    #@80
    .line 1812
    :pswitch_8
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@82
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    #@89
    goto :goto_0

    #@8a
    .line 1815
    :pswitch_9
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@8c
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@8f
    move-result-object v3

    #@90
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    #@93
    goto/16 :goto_0

    #@95
    .line 1818
    :pswitch_a
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@97
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    #@9e
    goto/16 :goto_0

    #@a0
    .line 1821
    :pswitch_b
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@a2
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@a5
    move-result-object v4

    #@a6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a8
    check-cast v3, Ljava/lang/Long;

    #@aa
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@ad
    move-result-wide v6

    #@ae
    invoke-virtual {v4, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    #@b1
    goto/16 :goto_0

    #@b3
    .line 1824
    :pswitch_c
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@b5
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@b8
    move-result-object v4

    #@b9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bb
    check-cast v3, Landroid/support/v4/media/RatingCompat;

    #@bd
    invoke-virtual {v4, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    #@c0
    goto/16 :goto_0

    #@c2
    .line 1827
    :pswitch_d
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@c4
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@c7
    move-result-object v4

    #@c8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ca
    check-cast v3, Ljava/lang/String;

    #@cc
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@cf
    move-result-object v5

    #@d0
    invoke-virtual {v4, v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    #@d3
    goto/16 :goto_0

    #@d5
    .line 1830
    :pswitch_e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d7
    check-cast v2, Landroid/view/KeyEvent;

    #@d9
    .line 1831
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    #@db
    const-string/jumbo v3, "android.intent.action.MEDIA_BUTTON"

    #@de
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e1
    .line 1832
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.KEY_EVENT"

    #@e4
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e7
    .line 1834
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@e9
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@ec
    move-result-object v3

    #@ed
    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    #@f0
    move-result v3

    #@f1
    if-nez v3, :cond_1

    #@f3
    .line 1835
    invoke-direct {p0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onMediaButtonEvent(Landroid/view/KeyEvent;)V

    #@f6
    goto/16 :goto_0

    #@f8
    .line 1839
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fa
    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;

    #@fc
    .line 1840
    .local v0, "cmd":Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@fe
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    #@101
    move-result-object v3

    #@102
    iget-object v4, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->command:Ljava/lang/String;

    #@104
    iget-object v5, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->extras:Landroid/os/Bundle;

    #@106
    iget-object v6, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->stub:Landroid/os/ResultReceiver;

    #@108
    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    #@10b
    goto/16 :goto_0

    #@10d
    .line 1843
    .end local v0    # "cmd":Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;
    :pswitch_10
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@10f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@111
    check-cast v3, Ljava/lang/Integer;

    #@113
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@116
    move-result v3

    #@117
    invoke-static {v4, v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    #@11a
    goto/16 :goto_0

    #@11c
    .line 1846
    :pswitch_11
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@11e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@120
    check-cast v3, Ljava/lang/Integer;

    #@122
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@125
    move-result v3

    #@126
    invoke-static {v4, v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    #@129
    goto/16 :goto_0

    #@12b
    .line 1786
    nop

    #@12c
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
    .line 1774
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    #@4
    .line 1773
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1770
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@7
    .line 1769
    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    #@0
    .prologue
    .line 1778
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@8
    .line 1777
    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1764
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 1765
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@7
    .line 1766
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 1763
    return-void
.end method
