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
.field private mSession:Landroid/media/session/MediaSession;


# direct methods
.method static synthetic -set0(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 712
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 895
    return-void
.end method

.method public onFastForward()V
    .locals 0

    #@0
    .prologue
    .line 856
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const-wide/16 v12, 0x0

    #@3
    const/4 v10, 0x1

    #@4
    .line 729
    iget-object v5, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 730
    const-string/jumbo v5, "android.intent.action.MEDIA_BUTTON"

    #@b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@e
    move-result-object v8

    #@f
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v5

    #@13
    .line 729
    if-eqz v5, :cond_0

    #@15
    .line 731
    const-string/jumbo v5, "android.intent.extra.KEY_EVENT"

    #@18
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroid/view/KeyEvent;

    #@1e
    .line 732
    .local v3, "ke":Landroid/view/KeyEvent;
    if-eqz v3, :cond_0

    #@20
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_0

    #@26
    .line 733
    iget-object v5, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    #@28
    invoke-static {v5}, Landroid/media/session/MediaSession;->-get1(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    #@2b
    move-result-object v4

    #@2c
    .line 734
    .local v4, "state":Landroid/media/session/PlaybackState;
    if-nez v4, :cond_1

    #@2e
    const-wide/16 v6, 0x0

    #@30
    .line 735
    .local v6, "validActions":J
    :goto_0
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    #@33
    move-result v5

    #@34
    sparse-switch v5, :sswitch_data_0

    #@37
    .line 797
    .end local v3    # "ke":Landroid/view/KeyEvent;
    .end local v4    # "state":Landroid/media/session/PlaybackState;
    .end local v6    # "validActions":J
    :cond_0
    return v11

    #@38
    .line 734
    .restart local v3    # "ke":Landroid/view/KeyEvent;
    .restart local v4    # "state":Landroid/media/session/PlaybackState;
    :cond_1
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getActions()J

    #@3b
    move-result-wide v6

    #@3c
    .restart local v6    # "validActions":J
    goto :goto_0

    #@3d
    .line 737
    :sswitch_0
    const-wide/16 v8, 0x4

    #@3f
    and-long/2addr v8, v6

    #@40
    cmp-long v5, v8, v12

    #@42
    if-eqz v5, :cond_0

    #@44
    .line 738
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    #@47
    .line 739
    return v10

    #@48
    .line 743
    :sswitch_1
    const-wide/16 v8, 0x2

    #@4a
    and-long/2addr v8, v6

    #@4b
    cmp-long v5, v8, v12

    #@4d
    if-eqz v5, :cond_0

    #@4f
    .line 744
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    #@52
    .line 745
    return v10

    #@53
    .line 749
    :sswitch_2
    const-wide/16 v8, 0x20

    #@55
    and-long/2addr v8, v6

    #@56
    cmp-long v5, v8, v12

    #@58
    if-eqz v5, :cond_0

    #@5a
    .line 750
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    #@5d
    .line 751
    return v10

    #@5e
    .line 755
    :sswitch_3
    const-wide/16 v8, 0x10

    #@60
    and-long/2addr v8, v6

    #@61
    cmp-long v5, v8, v12

    #@63
    if-eqz v5, :cond_0

    #@65
    .line 756
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    #@68
    .line 757
    return v10

    #@69
    .line 761
    :sswitch_4
    const-wide/16 v8, 0x1

    #@6b
    and-long/2addr v8, v6

    #@6c
    cmp-long v5, v8, v12

    #@6e
    if-eqz v5, :cond_0

    #@70
    .line 762
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    #@73
    .line 763
    return v10

    #@74
    .line 767
    :sswitch_5
    const-wide/16 v8, 0x40

    #@76
    and-long/2addr v8, v6

    #@77
    cmp-long v5, v8, v12

    #@79
    if-eqz v5, :cond_0

    #@7b
    .line 768
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    #@7e
    .line 769
    return v10

    #@7f
    .line 773
    :sswitch_6
    const-wide/16 v8, 0x8

    #@81
    and-long/2addr v8, v6

    #@82
    cmp-long v5, v8, v12

    #@84
    if-eqz v5, :cond_0

    #@86
    .line 774
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    #@89
    .line 775
    return v10

    #@8a
    .line 780
    :sswitch_7
    if-nez v4, :cond_2

    #@8c
    const/4 v2, 0x0

    #@8d
    .line 782
    .local v2, "isPlaying":Z
    :goto_1
    const-wide/16 v8, 0x204

    #@8f
    and-long/2addr v8, v6

    #@90
    cmp-long v5, v8, v12

    #@92
    if-eqz v5, :cond_4

    #@94
    const/4 v1, 0x1

    #@95
    .line 784
    .local v1, "canPlay":Z
    :goto_2
    const-wide/16 v8, 0x202

    #@97
    and-long/2addr v8, v6

    #@98
    cmp-long v5, v8, v12

    #@9a
    if-eqz v5, :cond_5

    #@9c
    const/4 v0, 0x1

    #@9d
    .line 786
    .local v0, "canPause":Z
    :goto_3
    if-eqz v2, :cond_6

    #@9f
    if-eqz v0, :cond_6

    #@a1
    .line 787
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    #@a4
    .line 788
    return v10

    #@a5
    .line 781
    .end local v0    # "canPause":Z
    .end local v1    # "canPlay":Z
    .end local v2    # "isPlaying":Z
    :cond_2
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    #@a8
    move-result v5

    #@a9
    const/4 v8, 0x3

    #@aa
    if-ne v5, v8, :cond_3

    #@ac
    const/4 v2, 0x1

    #@ad
    .restart local v2    # "isPlaying":Z
    goto :goto_1

    #@ae
    .end local v2    # "isPlaying":Z
    :cond_3
    const/4 v2, 0x0

    #@af
    .restart local v2    # "isPlaying":Z
    goto :goto_1

    #@b0
    .line 782
    :cond_4
    const/4 v1, 0x0

    #@b1
    .restart local v1    # "canPlay":Z
    goto :goto_2

    #@b2
    .line 784
    :cond_5
    const/4 v0, 0x0

    #@b3
    .restart local v0    # "canPause":Z
    goto :goto_3

    #@b4
    .line 789
    :cond_6
    if-nez v2, :cond_0

    #@b6
    if-eqz v1, :cond_0

    #@b8
    .line 790
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    #@bb
    .line 791
    return v10

    #@bc
    .line 735
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

.method public onPause()V
    .locals 0

    #@0
    .prologue
    .line 838
    return-void
.end method

.method public onPlay()V
    .locals 0

    #@0
    .prologue
    .line 803
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 810
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 819
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 825
    return-void
.end method

.method public onRewind()V
    .locals 0

    #@0
    .prologue
    .line 862
    return-void
.end method

.method public onSeekTo(J)V
    .locals 0
    .param p1, "pos"    # J

    #@0
    .prologue
    .line 876
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 0
    .param p1, "rating"    # Landroid/media/Rating;

    #@0
    .prologue
    .line 884
    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    #@0
    .prologue
    .line 844
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    #@0
    .prologue
    .line 850
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0
    .param p1, "id"    # J

    #@0
    .prologue
    .line 832
    return-void
.end method

.method public onStop()V
    .locals 0

    #@0
    .prologue
    .line 868
    return-void
.end method
