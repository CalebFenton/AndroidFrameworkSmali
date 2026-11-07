.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private greylist-max-o mMediaPlayPauseKeyPending:Z

.field private greylist-max-o mSession:Landroid/media/session/MediaSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmHandler(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)V
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)V
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMediaPlayPauseKeySingleTapIfPending(Landroid/media/session/MediaSession$Callback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    return-void
.end method

.method private greylist-max-o handleMediaPlayPauseKeySingleTapIfPending()V
    .registers 12

    .line 1012
    iget-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-nez v0, :cond_5

    .line 1013
    return-void

    .line 1015
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 1016
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    .line 1017
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v1}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 1018
    .local v1, "state":Landroid/media/session/PlaybackState;
    const-wide/16 v2, 0x0

    if-nez v1, :cond_1b

    move-wide v4, v2

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    .line 1019
    .local v4, "validActions":J
    :goto_1f
    const/4 v6, 0x1

    if-eqz v1, :cond_2b

    .line 1020
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2b

    move v7, v6

    goto :goto_2c

    :cond_2b
    move v7, v0

    .line 1021
    .local v7, "isPlaying":Z
    :goto_2c
    const-wide/16 v8, 0x204

    and-long/2addr v8, v4

    cmp-long v8, v8, v2

    if-eqz v8, :cond_35

    move v8, v6

    goto :goto_36

    :cond_35
    move v8, v0

    .line 1023
    .local v8, "canPlay":Z
    :goto_36
    const-wide/16 v9, 0x202

    and-long/2addr v9, v4

    cmp-long v2, v9, v2

    if-eqz v2, :cond_3e

    move v0, v6

    .line 1025
    .local v0, "canPause":Z
    :cond_3e
    if-eqz v7, :cond_46

    if-eqz v0, :cond_46

    .line 1026
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    goto :goto_4d

    .line 1027
    :cond_46
    if-nez v7, :cond_4d

    if-eqz v8, :cond_4d

    .line 1028
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 1030
    :cond_4d
    :goto_4d
    return-void
.end method


# virtual methods
.method public whitelist onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 912
    return-void
.end method

.method public whitelist onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1189
    return-void
.end method

.method public whitelist onFastForward()V
    .registers 1

    .line 1134
    return-void
.end method

.method public whitelist onMediaButtonEvent(Landroid/content/Intent;)Z
    .registers 14
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .line 928
    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_cd

    .line 929
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 930
    const-string v0, "android.intent.extra.KEY_EVENT"

    const-class v2, Landroid/view/KeyEvent;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 931
    .local v0, "ke":Landroid/view/KeyEvent;
    if-eqz v0, :cond_cd

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_cd

    .line 932
    iget-object v2, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 933
    .local v2, "state":Landroid/media/session/PlaybackState;
    const-wide/16 v3, 0x0

    if-nez v2, :cond_33

    move-wide v5, v3

    goto :goto_37

    :cond_33
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v5

    .line 934
    .local v5, "validActions":J
    :goto_37
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const-wide/16 v8, 0x20

    const/4 v10, 0x1

    sparse-switch v7, :sswitch_data_ce

    .line 958
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    .line 962
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_d8

    goto/16 :goto_cd

    .line 937
    :sswitch_4d
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_57

    .line 939
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    goto :goto_80

    .line 940
    :cond_57
    iget-boolean v7, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-eqz v7, :cond_6e

    .line 942
    iget-object v7, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v11, 0x18

    invoke-virtual {v7, v11}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    .line 944
    iput-boolean v1, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 945
    and-long v7, v5, v8

    cmp-long v1, v7, v3

    if-eqz v1, :cond_80

    .line 946
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    goto :goto_80

    .line 949
    :cond_6e
    iput-boolean v10, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 950
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    iget-object v3, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    .line 951
    invoke-virtual {v3}, Landroid/media/session/MediaSession;->getCurrentControllerInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v3

    .line 952
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v7, v4

    .line 950
    invoke-virtual {v1, v3, p1, v7, v8}, Landroid/media/session/MediaSession;->dispatchMediaButtonDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V

    .line 954
    :cond_80
    :goto_80
    return v10

    .line 970
    :sswitch_81
    const-wide/16 v7, 0x2

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_cd

    .line 971
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 972
    return v10

    .line 964
    :sswitch_8c
    const-wide/16 v7, 0x4

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_cd

    .line 965
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 966
    return v10

    .line 994
    :sswitch_97
    const-wide/16 v7, 0x40

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_cd

    .line 995
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    .line 996
    return v10

    .line 1000
    :sswitch_a2
    const-wide/16 v7, 0x8

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_cd

    .line 1001
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    .line 1002
    return v10

    .line 982
    :sswitch_ad
    const-wide/16 v7, 0x10

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_cd

    .line 983
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    .line 984
    return v10

    .line 976
    :sswitch_b8
    and-long v7, v5, v8

    cmp-long v3, v7, v3

    if-eqz v3, :cond_cd

    .line 977
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    .line 978
    return v10

    .line 988
    :sswitch_c2
    const-wide/16 v7, 0x1

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_cd

    .line 989
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    .line 990
    return v10

    .line 1008
    .end local v0    # "ke":Landroid/view/KeyEvent;
    .end local v2    # "state":Landroid/media/session/PlaybackState;
    .end local v5    # "validActions":J
    :cond_cd
    :goto_cd
    return v1

    :sswitch_data_ce
    .sparse-switch
        0x4f -> :sswitch_4d
        0x55 -> :sswitch_4d
    .end sparse-switch

    :sswitch_data_d8
    .sparse-switch
        0x56 -> :sswitch_c2
        0x57 -> :sswitch_b8
        0x58 -> :sswitch_ad
        0x59 -> :sswitch_a2
        0x5a -> :sswitch_97
        0x7e -> :sswitch_8c
        0x7f -> :sswitch_81
    .end sparse-switch
.end method

.method public whitelist onPause()V
    .registers 1

    .line 1116
    return-void
.end method

.method public whitelist onPlay()V
    .registers 1

    .line 1081
    return-void
.end method

.method public whitelist onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1097
    return-void
.end method

.method public whitelist onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1090
    return-void
.end method

.method public whitelist onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1103
    return-void
.end method

.method public whitelist onPrepare()V
    .registers 1

    .line 1039
    return-void
.end method

.method public whitelist onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1051
    return-void
.end method

.method public whitelist onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1063
    return-void
.end method

.method public whitelist onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1075
    return-void
.end method

.method public whitelist onRewind()V
    .registers 1

    .line 1140
    return-void
.end method

.method public whitelist onSeekTo(J)V
    .registers 3
    .param p1, "pos"    # J

    .line 1154
    return-void
.end method

.method public whitelist onSetPlaybackSpeed(F)V
    .registers 2
    .param p1, "speed"    # F

    .line 1178
    return-void
.end method

.method public whitelist onSetRating(Landroid/media/Rating;)V
    .registers 2
    .param p1, "rating"    # Landroid/media/Rating;

    .line 1162
    return-void
.end method

.method public whitelist onSkipToNext()V
    .registers 1

    .line 1122
    return-void
.end method

.method public whitelist onSkipToPrevious()V
    .registers 1

    .line 1128
    return-void
.end method

.method public whitelist onSkipToQueueItem(J)V
    .registers 3
    .param p1, "id"    # J

    .line 1110
    return-void
.end method

.method public whitelist onStop()V
    .registers 1

    .line 1146
    return-void
.end method
