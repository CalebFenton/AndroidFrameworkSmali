.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2792
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@2
    .line 2793
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 2794
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@7
    .line 2792
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2799
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)J

    #@5
    move-result-wide v8

    #@6
    const-wide/16 v10, 0x0

    #@8
    cmp-long v8, v8, v10

    #@a
    if-nez v8, :cond_0

    #@c
    .line 2800
    const-string/jumbo v8, "MediaPlayer"

    #@f
    const-string/jumbo v9, "mediaplayer went away with unhandled events"

    #@12
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 2801
    return-void

    #@16
    .line 2803
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    #@18
    sparse-switch v8, :sswitch_data_0

    #@1b
    .line 2962
    const-string/jumbo v8, "MediaPlayer"

    #@1e
    new-instance v9, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v10, "Unknown message type "

    #@26
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v9

    #@2a
    iget v10, p1, Landroid/os/Message;->what:I

    #@2c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v9

    #@34
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 2963
    return-void

    #@38
    .line 2806
    :sswitch_0
    :try_start_0
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@3a
    invoke-static {v8}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 2815
    :goto_0
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@3f
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    #@42
    move-result-object v8

    #@43
    if-eqz v8, :cond_1

    #@45
    .line 2816
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@47
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    #@4a
    move-result-object v8

    #@4b
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@4d
    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    #@50
    .line 2817
    :cond_1
    return-void

    #@51
    .line 2807
    :catch_0
    move-exception v2

    #@52
    .line 2812
    .local v2, "e":Ljava/lang/RuntimeException;
    const/16 v8, 0x64

    #@54
    const/4 v9, 0x1

    #@55
    const/16 v10, -0x3f2

    #@57
    const/4 v11, 0x0

    #@58
    .line 2811
    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@5b
    move-result-object v4

    #@5c
    .line 2813
    .local v4, "msg2":Landroid/os/Message;
    invoke-virtual {p0, v4}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@5f
    goto :goto_0

    #@60
    .line 2820
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "msg2":Landroid/os/Message;
    :sswitch_1
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@62
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    #@65
    move-result-object v8

    #@66
    if-eqz v8, :cond_2

    #@68
    .line 2821
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@6a
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    #@6d
    move-result-object v8

    #@6e
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@70
    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    #@73
    .line 2822
    :cond_2
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@75
    const/4 v9, 0x0

    #@76
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Z)V

    #@79
    .line 2823
    return-void

    #@7a
    .line 2827
    :sswitch_2
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@7c
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    #@7f
    move-result-object v7

    #@80
    .line 2828
    .local v7, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v7, :cond_3

    #@82
    .line 2829
    invoke-virtual {v7}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V

    #@85
    .line 2798
    .end local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_3
    :goto_1
    :sswitch_3
    return-void

    #@86
    .line 2837
    :sswitch_4
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@88
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    #@8b
    move-result-object v7

    #@8c
    .line 2838
    .restart local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v7, :cond_3

    #@8e
    .line 2839
    iget v8, p1, Landroid/os/Message;->what:I

    #@90
    const/4 v9, 0x7

    #@91
    if-ne v8, v9, :cond_4

    #@93
    const/4 v8, 0x1

    #@94
    :goto_2
    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V

    #@97
    goto :goto_1

    #@98
    :cond_4
    const/4 v8, 0x0

    #@99
    goto :goto_2

    #@9a
    .line 2845
    .end local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_5
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@9c
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@9f
    move-result-object v8

    #@a0
    if-eqz v8, :cond_5

    #@a2
    .line 2846
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@a4
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@a7
    move-result-object v8

    #@a8
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@aa
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@ac
    invoke-interface {v8, v9, v10}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    #@af
    .line 2847
    :cond_5
    return-void

    #@b0
    .line 2850
    :sswitch_6
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@b2
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    #@b5
    move-result-object v8

    #@b6
    if-eqz v8, :cond_6

    #@b8
    .line 2851
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@ba
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    #@bd
    move-result-object v8

    #@be
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@c0
    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    #@c3
    .line 2857
    :cond_6
    :sswitch_7
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@c5
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    #@c8
    move-result-object v7

    #@c9
    .line 2858
    .restart local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v7, :cond_7

    #@cb
    .line 2859
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@cd
    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V

    #@d0
    .line 2862
    :cond_7
    return-void

    #@d1
    .line 2865
    .end local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_8
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@d3
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@d6
    move-result-object v8

    #@d7
    if-eqz v8, :cond_8

    #@d9
    .line 2866
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@db
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@de
    move-result-object v8

    #@df
    .line 2867
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@e1
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@e3
    iget v11, p1, Landroid/os/Message;->arg2:I

    #@e5
    .line 2866
    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    #@e8
    .line 2869
    :cond_8
    return-void

    #@e9
    .line 2872
    :sswitch_9
    const-string/jumbo v8, "MediaPlayer"

    #@ec
    new-instance v9, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    const-string/jumbo v10, "Error ("

    #@f4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v9

    #@f8
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@fa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v9

    #@fe
    const-string/jumbo v10, ","

    #@101
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v9

    #@105
    iget v10, p1, Landroid/os/Message;->arg2:I

    #@107
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v9

    #@10b
    const-string/jumbo v10, ")"

    #@10e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v9

    #@112
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v9

    #@116
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@119
    .line 2873
    const/4 v3, 0x0

    #@11a
    .line 2874
    .local v3, "error_was_handled":Z
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@11c
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    #@11f
    move-result-object v8

    #@120
    if-eqz v8, :cond_9

    #@122
    .line 2875
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@124
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    #@127
    move-result-object v8

    #@128
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@12a
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@12c
    iget v11, p1, Landroid/os/Message;->arg2:I

    #@12e
    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    #@131
    move-result v3

    #@132
    .line 2877
    .end local v3    # "error_was_handled":Z
    :cond_9
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@134
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    #@137
    move-result-object v8

    #@138
    if-eqz v8, :cond_a

    #@13a
    if-eqz v3, :cond_b

    #@13c
    .line 2880
    :cond_a
    :goto_3
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@13e
    const/4 v9, 0x0

    #@13f
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Z)V

    #@142
    .line 2881
    return-void

    #@143
    .line 2878
    :cond_b
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@145
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    #@148
    move-result-object v8

    #@149
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@14b
    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    #@14e
    goto :goto_3

    #@14f
    .line 2884
    :sswitch_a
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@151
    sparse-switch v8, :sswitch_data_1

    #@154
    .line 2914
    :cond_c
    :goto_4
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@156
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    #@159
    move-result-object v8

    #@15a
    if-eqz v8, :cond_d

    #@15c
    .line 2915
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@15e
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    #@161
    move-result-object v8

    #@162
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@164
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@166
    iget v11, p1, Landroid/os/Message;->arg2:I

    #@168
    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    #@16b
    .line 2918
    :cond_d
    return-void

    #@16c
    .line 2886
    :sswitch_b
    const-string/jumbo v8, "MediaPlayer"

    #@16f
    new-instance v9, Ljava/lang/StringBuilder;

    #@171
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v10, "Info ("

    #@177
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v9

    #@17b
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@17d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@180
    move-result-object v9

    #@181
    const-string/jumbo v10, ","

    #@184
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v9

    #@188
    iget v10, p1, Landroid/os/Message;->arg2:I

    #@18a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v9

    #@18e
    const-string/jumbo v10, ")"

    #@191
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v9

    #@195
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@198
    move-result-object v9

    #@199
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@19c
    goto :goto_4

    #@19d
    .line 2890
    :sswitch_c
    :try_start_1
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@19f
    invoke-static {v8}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@1a2
    .line 2899
    :goto_5
    :sswitch_d
    const/16 v8, 0x322

    #@1a4
    iput v8, p1, Landroid/os/Message;->arg1:I

    #@1a6
    .line 2901
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@1a8
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    #@1ab
    move-result-object v8

    #@1ac
    if-eqz v8, :cond_c

    #@1ae
    .line 2902
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@1b0
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    #@1b3
    move-result-object v8

    #@1b4
    invoke-virtual {v8}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    #@1b7
    goto :goto_4

    #@1b8
    .line 2891
    :catch_1
    move-exception v2

    #@1b9
    .line 2893
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    const/16 v8, 0x64

    #@1bb
    const/4 v9, 0x1

    #@1bc
    const/16 v10, -0x3f2

    #@1be
    const/4 v11, 0x0

    #@1bf
    .line 2892
    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1c2
    move-result-object v4

    #@1c3
    .line 2894
    .restart local v4    # "msg2":Landroid/os/Message;
    invoke-virtual {p0, v4}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@1c6
    goto :goto_5

    #@1c7
    .line 2907
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "msg2":Landroid/os/Message;
    :sswitch_e
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@1c9
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    #@1cc
    move-result-object v7

    #@1cd
    .line 2908
    .restart local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v7, :cond_c

    #@1cf
    .line 2909
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@1d1
    const/16 v9, 0x2bd

    #@1d3
    if-ne v8, v9, :cond_e

    #@1d5
    const/4 v8, 0x1

    #@1d6
    :goto_6
    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    #@1d9
    goto/16 :goto_4

    #@1db
    :cond_e
    const/4 v8, 0x0

    #@1dc
    goto :goto_6

    #@1dd
    .line 2920
    .end local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_f
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@1df
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    #@1e2
    move-result-object v8

    #@1e3
    if-nez v8, :cond_f

    #@1e5
    .line 2921
    return-void

    #@1e6
    .line 2922
    :cond_f
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e8
    if-nez v8, :cond_11

    #@1ea
    .line 2923
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@1ec
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    #@1ef
    move-result-object v8

    #@1f0
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@1f2
    const/4 v10, 0x0

    #@1f3
    invoke-interface {v8, v9, v10}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    #@1f6
    .line 2932
    :cond_10
    :goto_7
    return-void

    #@1f7
    .line 2925
    :cond_11
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f9
    instance-of v8, v8, Landroid/os/Parcel;

    #@1fb
    if-eqz v8, :cond_10

    #@1fd
    .line 2926
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ff
    check-cast v5, Landroid/os/Parcel;

    #@201
    .line 2927
    .local v5, "parcel":Landroid/os/Parcel;
    new-instance v6, Landroid/media/TimedText;

    #@203
    invoke-direct {v6, v5}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    #@206
    .line 2928
    .local v6, "text":Landroid/media/TimedText;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    #@209
    .line 2929
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@20b
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    #@20e
    move-result-object v8

    #@20f
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@211
    invoke-interface {v8, v9, v6}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    #@214
    goto :goto_7

    #@215
    .line 2935
    .end local v5    # "parcel":Landroid/os/Parcel;
    .end local v6    # "text":Landroid/media/TimedText;
    :sswitch_10
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@217
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@21a
    move-result-object v8

    #@21b
    if-nez v8, :cond_12

    #@21d
    .line 2936
    return-void

    #@21e
    .line 2938
    :cond_12
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@220
    instance-of v8, v8, Landroid/os/Parcel;

    #@222
    if-eqz v8, :cond_13

    #@224
    .line 2939
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@226
    check-cast v5, Landroid/os/Parcel;

    #@228
    .line 2940
    .restart local v5    # "parcel":Landroid/os/Parcel;
    new-instance v0, Landroid/media/SubtitleData;

    #@22a
    invoke-direct {v0, v5}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    #@22d
    .line 2941
    .local v0, "data":Landroid/media/SubtitleData;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    #@230
    .line 2942
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@232
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@235
    move-result-object v8

    #@236
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@238
    invoke-interface {v8, v9, v0}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    #@23b
    .line 2944
    .end local v0    # "data":Landroid/media/SubtitleData;
    .end local v5    # "parcel":Landroid/os/Parcel;
    :cond_13
    return-void

    #@23c
    .line 2947
    :sswitch_11
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@23e
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    #@241
    move-result-object v8

    #@242
    if-nez v8, :cond_14

    #@244
    .line 2948
    return-void

    #@245
    .line 2950
    :cond_14
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@247
    instance-of v8, v8, Landroid/os/Parcel;

    #@249
    if-eqz v8, :cond_15

    #@24b
    .line 2951
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@24d
    check-cast v5, Landroid/os/Parcel;

    #@24f
    .line 2952
    .restart local v5    # "parcel":Landroid/os/Parcel;
    invoke-static {v5}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    #@252
    move-result-object v1

    #@253
    .line 2953
    .local v1, "data":Landroid/media/TimedMetaData;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    #@256
    .line 2954
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@258
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    #@25b
    move-result-object v8

    #@25c
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@25e
    invoke-interface {v8, v9, v1}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    #@261
    .line 2956
    .end local v1    # "data":Landroid/media/TimedMetaData;
    .end local v5    # "parcel":Landroid/os/Parcel;
    :cond_15
    return-void

    #@262
    .line 2803
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_2
        0x9 -> :sswitch_7
        0x63 -> :sswitch_f
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_a
        0xc9 -> :sswitch_10
        0xca -> :sswitch_11
    .end sparse-switch

    #@2a0
    .line 2884
    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_b
        0x2bd -> :sswitch_e
        0x2be -> :sswitch_e
        0x322 -> :sswitch_c
        0x323 -> :sswitch_d
    .end sparse-switch
.end method
