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
    .line 2846
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@2
    .line 2847
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 2848
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@7
    .line 2846
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2853
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@4
    move-object/from16 v24, v0

    #@6
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)J

    #@9
    move-result-wide v24

    #@a
    const-wide/16 v26, 0x0

    #@c
    cmp-long v24, v24, v26

    #@e
    if-nez v24, :cond_0

    #@10
    .line 2854
    const-string/jumbo v24, "MediaPlayer"

    #@13
    const-string/jumbo v25, "mediaplayer went away with unhandled events"

    #@16
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 2855
    return-void

    #@1a
    .line 2857
    :cond_0
    move-object/from16 v0, p1

    #@1c
    iget v0, v0, Landroid/os/Message;->what:I

    #@1e
    move/from16 v24, v0

    #@20
    sparse-switch v24, :sswitch_data_0

    #@23
    .line 3032
    const-string/jumbo v24, "MediaPlayer"

    #@26
    new-instance v25, Ljava/lang/StringBuilder;

    #@28
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v26, "Unknown message type "

    #@2e
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v25

    #@32
    move-object/from16 v0, p1

    #@34
    iget v0, v0, Landroid/os/Message;->what:I

    #@36
    move/from16 v26, v0

    #@38
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v25

    #@3c
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v25

    #@40
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 3033
    return-void

    #@44
    .line 2860
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@48
    move-object/from16 v24, v0

    #@4a
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 2869
    :goto_0
    move-object/from16 v0, p0

    #@4f
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@51
    move-object/from16 v24, v0

    #@53
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    #@56
    move-result-object v15

    #@57
    .line 2870
    .local v15, "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    if-eqz v15, :cond_1

    #@59
    .line 2871
    move-object/from16 v0, p0

    #@5b
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@5d
    move-object/from16 v24, v0

    #@5f
    move-object/from16 v0, v24

    #@61
    invoke-interface {v15, v0}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    #@64
    .line 2872
    :cond_1
    return-void

    #@65
    .line 2861
    .end local v15    # "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    :catch_0
    move-exception v8

    #@66
    .line 2866
    .local v8, "e":Ljava/lang/RuntimeException;
    const/16 v24, 0x64

    #@68
    const/16 v25, 0x1

    #@6a
    const/16 v26, -0x3f2

    #@6c
    const/16 v27, 0x0

    #@6e
    .line 2865
    move-object/from16 v0, p0

    #@70
    move/from16 v1, v24

    #@72
    move/from16 v2, v25

    #@74
    move/from16 v3, v26

    #@76
    move-object/from16 v4, v27

    #@78
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@7b
    move-result-object v10

    #@7c
    .line 2867
    .local v10, "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    #@7e
    invoke-virtual {v0, v10}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@81
    goto :goto_0

    #@82
    .line 2876
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "msg2":Landroid/os/Message;
    :sswitch_1
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@86
    move-object/from16 v24, v0

    #@88
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    #@8b
    move-result-object v12

    #@8c
    .line 2877
    .local v12, "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v12, :cond_2

    #@8e
    .line 2878
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@92
    move-object/from16 v24, v0

    #@94
    move-object/from16 v0, v24

    #@96
    invoke-interface {v12, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    #@99
    .line 2880
    :cond_2
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@9d
    move-object/from16 v24, v0

    #@9f
    const/16 v25, 0x0

    #@a1
    invoke-static/range {v24 .. v25}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Z)V

    #@a4
    .line 2881
    return-void

    #@a5
    .line 2885
    .end local v12    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    :sswitch_2
    move-object/from16 v0, p0

    #@a7
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@a9
    move-object/from16 v24, v0

    #@ab
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    #@ae
    move-result-object v23

    #@af
    .line 2886
    .local v23, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v23, :cond_3

    #@b1
    .line 2887
    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V

    #@b4
    .line 2852
    .end local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_3
    :goto_1
    :sswitch_3
    return-void

    #@b5
    .line 2895
    :sswitch_4
    move-object/from16 v0, p0

    #@b7
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@b9
    move-object/from16 v24, v0

    #@bb
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    #@be
    move-result-object v23

    #@bf
    .line 2896
    .restart local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v23, :cond_3

    #@c1
    .line 2897
    move-object/from16 v0, p1

    #@c3
    iget v0, v0, Landroid/os/Message;->what:I

    #@c5
    move/from16 v24, v0

    #@c7
    const/16 v25, 0x7

    #@c9
    move/from16 v0, v24

    #@cb
    move/from16 v1, v25

    #@cd
    if-ne v0, v1, :cond_4

    #@cf
    const/16 v24, 0x1

    #@d1
    :goto_2
    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V

    #@d4
    goto :goto_1

    #@d5
    :cond_4
    const/16 v24, 0x0

    #@d7
    goto :goto_2

    #@d8
    .line 2903
    .end local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_5
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@dc
    move-object/from16 v24, v0

    #@de
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@e1
    move-result-object v11

    #@e2
    .line 2904
    .local v11, "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    if-eqz v11, :cond_5

    #@e4
    .line 2905
    move-object/from16 v0, p0

    #@e6
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@e8
    move-object/from16 v24, v0

    #@ea
    move-object/from16 v0, p1

    #@ec
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@ee
    move/from16 v25, v0

    #@f0
    move-object/from16 v0, v24

    #@f2
    move/from16 v1, v25

    #@f4
    invoke-interface {v11, v0, v1}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    #@f7
    .line 2906
    :cond_5
    return-void

    #@f8
    .line 2909
    .end local v11    # "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    :sswitch_6
    move-object/from16 v0, p0

    #@fa
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@fc
    move-object/from16 v24, v0

    #@fe
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    #@101
    move-result-object v16

    #@102
    .line 2910
    .local v16, "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    if-eqz v16, :cond_6

    #@104
    .line 2911
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@108
    move-object/from16 v24, v0

    #@10a
    move-object/from16 v0, v16

    #@10c
    move-object/from16 v1, v24

    #@10e
    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    #@111
    .line 2917
    .end local v16    # "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    :cond_6
    :sswitch_7
    move-object/from16 v0, p0

    #@113
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@115
    move-object/from16 v24, v0

    #@117
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    #@11a
    move-result-object v23

    #@11b
    .line 2918
    .restart local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v23, :cond_7

    #@11d
    .line 2919
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@121
    move-object/from16 v24, v0

    #@123
    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V

    #@126
    .line 2922
    :cond_7
    return-void

    #@127
    .line 2925
    .end local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_8
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@12b
    move-object/from16 v24, v0

    #@12d
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@130
    move-result-object v20

    #@131
    .line 2926
    .local v20, "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    if-eqz v20, :cond_8

    #@133
    .line 2928
    move-object/from16 v0, p0

    #@135
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@137
    move-object/from16 v24, v0

    #@139
    move-object/from16 v0, p1

    #@13b
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@13d
    move/from16 v25, v0

    #@13f
    move-object/from16 v0, p1

    #@141
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@143
    move/from16 v26, v0

    #@145
    .line 2927
    move-object/from16 v0, v20

    #@147
    move-object/from16 v1, v24

    #@149
    move/from16 v2, v25

    #@14b
    move/from16 v3, v26

    #@14d
    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    #@150
    .line 2930
    :cond_8
    return-void

    #@151
    .line 2933
    .end local v20    # "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    :sswitch_9
    const-string/jumbo v24, "MediaPlayer"

    #@154
    new-instance v25, Ljava/lang/StringBuilder;

    #@156
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@159
    const-string/jumbo v26, "Error ("

    #@15c
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v25

    #@160
    move-object/from16 v0, p1

    #@162
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@164
    move/from16 v26, v0

    #@166
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@169
    move-result-object v25

    #@16a
    const-string/jumbo v26, ","

    #@16d
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v25

    #@171
    move-object/from16 v0, p1

    #@173
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@175
    move/from16 v26, v0

    #@177
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v25

    #@17b
    const-string/jumbo v26, ")"

    #@17e
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v25

    #@182
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185
    move-result-object v25

    #@186
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@189
    .line 2934
    const/4 v9, 0x0

    #@18a
    .line 2935
    .local v9, "error_was_handled":Z
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@18e
    move-object/from16 v24, v0

    #@190
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    #@193
    move-result-object v13

    #@194
    .line 2936
    .local v13, "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    if-eqz v13, :cond_9

    #@196
    .line 2937
    move-object/from16 v0, p0

    #@198
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@19a
    move-object/from16 v24, v0

    #@19c
    move-object/from16 v0, p1

    #@19e
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1a0
    move/from16 v25, v0

    #@1a2
    move-object/from16 v0, p1

    #@1a4
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1a6
    move/from16 v26, v0

    #@1a8
    move-object/from16 v0, v24

    #@1aa
    move/from16 v1, v25

    #@1ac
    move/from16 v2, v26

    #@1ae
    invoke-interface {v13, v0, v1, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    #@1b1
    move-result v9

    #@1b2
    .line 2940
    .end local v9    # "error_was_handled":Z
    :cond_9
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@1b6
    move-object/from16 v24, v0

    #@1b8
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    #@1bb
    move-result-object v12

    #@1bc
    .line 2941
    .restart local v12    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v12, :cond_a

    #@1be
    if-eqz v9, :cond_b

    #@1c0
    .line 2945
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@1c4
    move-object/from16 v24, v0

    #@1c6
    const/16 v25, 0x0

    #@1c8
    invoke-static/range {v24 .. v25}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Z)V

    #@1cb
    .line 2946
    return-void

    #@1cc
    .line 2942
    :cond_b
    move-object/from16 v0, p0

    #@1ce
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@1d0
    move-object/from16 v24, v0

    #@1d2
    move-object/from16 v0, v24

    #@1d4
    invoke-interface {v12, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    #@1d7
    goto :goto_3

    #@1d8
    .line 2949
    .end local v12    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    .end local v13    # "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    :sswitch_a
    move-object/from16 v0, p1

    #@1da
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1dc
    move/from16 v24, v0

    #@1de
    sparse-switch v24, :sswitch_data_1

    #@1e1
    .line 2979
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    #@1e3
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@1e5
    move-object/from16 v24, v0

    #@1e7
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    #@1ea
    move-result-object v14

    #@1eb
    .line 2980
    .local v14, "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    if-eqz v14, :cond_d

    #@1ed
    .line 2981
    move-object/from16 v0, p0

    #@1ef
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@1f1
    move-object/from16 v24, v0

    #@1f3
    move-object/from16 v0, p1

    #@1f5
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1f7
    move/from16 v25, v0

    #@1f9
    move-object/from16 v0, p1

    #@1fb
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1fd
    move/from16 v26, v0

    #@1ff
    move-object/from16 v0, v24

    #@201
    move/from16 v1, v25

    #@203
    move/from16 v2, v26

    #@205
    invoke-interface {v14, v0, v1, v2}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    #@208
    .line 2984
    :cond_d
    return-void

    #@209
    .line 2951
    .end local v14    # "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    :sswitch_b
    const-string/jumbo v24, "MediaPlayer"

    #@20c
    new-instance v25, Ljava/lang/StringBuilder;

    #@20e
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@211
    const-string/jumbo v26, "Info ("

    #@214
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@217
    move-result-object v25

    #@218
    move-object/from16 v0, p1

    #@21a
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@21c
    move/from16 v26, v0

    #@21e
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@221
    move-result-object v25

    #@222
    const-string/jumbo v26, ","

    #@225
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    move-result-object v25

    #@229
    move-object/from16 v0, p1

    #@22b
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@22d
    move/from16 v26, v0

    #@22f
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@232
    move-result-object v25

    #@233
    const-string/jumbo v26, ")"

    #@236
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v25

    #@23a
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23d
    move-result-object v25

    #@23e
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@241
    goto :goto_4

    #@242
    .line 2955
    :sswitch_c
    :try_start_1
    move-object/from16 v0, p0

    #@244
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@246
    move-object/from16 v24, v0

    #@248
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@24b
    .line 2964
    :goto_5
    :sswitch_d
    const/16 v24, 0x322

    #@24d
    move/from16 v0, v24

    #@24f
    move-object/from16 v1, p1

    #@251
    iput v0, v1, Landroid/os/Message;->arg1:I

    #@253
    .line 2966
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@257
    move-object/from16 v24, v0

    #@259
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    #@25c
    move-result-object v24

    #@25d
    if-eqz v24, :cond_c

    #@25f
    .line 2967
    move-object/from16 v0, p0

    #@261
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@263
    move-object/from16 v24, v0

    #@265
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    #@268
    move-result-object v24

    #@269
    invoke-virtual/range {v24 .. v24}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    #@26c
    goto/16 :goto_4

    #@26e
    .line 2956
    :catch_1
    move-exception v8

    #@26f
    .line 2958
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    const/16 v24, 0x64

    #@271
    const/16 v25, 0x1

    #@273
    const/16 v26, -0x3f2

    #@275
    const/16 v27, 0x0

    #@277
    .line 2957
    move-object/from16 v0, p0

    #@279
    move/from16 v1, v24

    #@27b
    move/from16 v2, v25

    #@27d
    move/from16 v3, v26

    #@27f
    move-object/from16 v4, v27

    #@281
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@284
    move-result-object v10

    #@285
    .line 2959
    .restart local v10    # "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    #@287
    invoke-virtual {v0, v10}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@28a
    goto :goto_5

    #@28b
    .line 2972
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "msg2":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p0

    #@28d
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@28f
    move-object/from16 v24, v0

    #@291
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    #@294
    move-result-object v23

    #@295
    .line 2973
    .restart local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v23, :cond_c

    #@297
    .line 2974
    move-object/from16 v0, p1

    #@299
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@29b
    move/from16 v24, v0

    #@29d
    const/16 v25, 0x2bd

    #@29f
    move/from16 v0, v24

    #@2a1
    move/from16 v1, v25

    #@2a3
    if-ne v0, v1, :cond_e

    #@2a5
    const/16 v24, 0x1

    #@2a7
    :goto_6
    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    #@2aa
    goto/16 :goto_4

    #@2ac
    :cond_e
    const/16 v24, 0x0

    #@2ae
    goto :goto_6

    #@2af
    .line 2986
    .end local v23    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_f
    move-object/from16 v0, p0

    #@2b1
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@2b3
    move-object/from16 v24, v0

    #@2b5
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    #@2b8
    move-result-object v19

    #@2b9
    .line 2987
    .local v19, "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    if-nez v19, :cond_f

    #@2bb
    .line 2988
    return-void

    #@2bc
    .line 2989
    :cond_f
    move-object/from16 v0, p1

    #@2be
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c0
    move-object/from16 v24, v0

    #@2c2
    if-nez v24, :cond_11

    #@2c4
    .line 2990
    move-object/from16 v0, p0

    #@2c6
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2c8
    move-object/from16 v24, v0

    #@2ca
    const/16 v25, 0x0

    #@2cc
    move-object/from16 v0, v19

    #@2ce
    move-object/from16 v1, v24

    #@2d0
    move-object/from16 v2, v25

    #@2d2
    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    #@2d5
    .line 2999
    :cond_10
    :goto_7
    return-void

    #@2d6
    .line 2992
    :cond_11
    move-object/from16 v0, p1

    #@2d8
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2da
    move-object/from16 v24, v0

    #@2dc
    move-object/from16 v0, v24

    #@2de
    instance-of v0, v0, Landroid/os/Parcel;

    #@2e0
    move/from16 v24, v0

    #@2e2
    if-eqz v24, :cond_10

    #@2e4
    .line 2993
    move-object/from16 v0, p1

    #@2e6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e8
    move-object/from16 v21, v0

    #@2ea
    check-cast v21, Landroid/os/Parcel;

    #@2ec
    .line 2994
    .local v21, "parcel":Landroid/os/Parcel;
    new-instance v22, Landroid/media/TimedText;

    #@2ee
    move-object/from16 v0, v22

    #@2f0
    move-object/from16 v1, v21

    #@2f2
    invoke-direct {v0, v1}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    #@2f5
    .line 2995
    .local v22, "text":Landroid/media/TimedText;
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->recycle()V

    #@2f8
    .line 2996
    move-object/from16 v0, p0

    #@2fa
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2fc
    move-object/from16 v24, v0

    #@2fe
    move-object/from16 v0, v19

    #@300
    move-object/from16 v1, v24

    #@302
    move-object/from16 v2, v22

    #@304
    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    #@307
    goto :goto_7

    #@308
    .line 3002
    .end local v19    # "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    .end local v21    # "parcel":Landroid/os/Parcel;
    .end local v22    # "text":Landroid/media/TimedText;
    :sswitch_10
    move-object/from16 v0, p0

    #@30a
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@30c
    move-object/from16 v24, v0

    #@30e
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@311
    move-result-object v17

    #@312
    .line 3003
    .local v17, "onSubtitleDataListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    if-nez v17, :cond_12

    #@314
    .line 3004
    return-void

    #@315
    .line 3006
    :cond_12
    move-object/from16 v0, p1

    #@317
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@319
    move-object/from16 v24, v0

    #@31b
    move-object/from16 v0, v24

    #@31d
    instance-of v0, v0, Landroid/os/Parcel;

    #@31f
    move/from16 v24, v0

    #@321
    if-eqz v24, :cond_13

    #@323
    .line 3007
    move-object/from16 v0, p1

    #@325
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@327
    move-object/from16 v21, v0

    #@329
    check-cast v21, Landroid/os/Parcel;

    #@32b
    .line 3008
    .restart local v21    # "parcel":Landroid/os/Parcel;
    new-instance v6, Landroid/media/SubtitleData;

    #@32d
    move-object/from16 v0, v21

    #@32f
    invoke-direct {v6, v0}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    #@332
    .line 3009
    .local v6, "data":Landroid/media/SubtitleData;
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->recycle()V

    #@335
    .line 3010
    move-object/from16 v0, p0

    #@337
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@339
    move-object/from16 v24, v0

    #@33b
    move-object/from16 v0, v17

    #@33d
    move-object/from16 v1, v24

    #@33f
    invoke-interface {v0, v1, v6}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    #@342
    .line 3012
    .end local v6    # "data":Landroid/media/SubtitleData;
    .end local v21    # "parcel":Landroid/os/Parcel;
    :cond_13
    return-void

    #@343
    .line 3016
    .end local v17    # "onSubtitleDataListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    :sswitch_11
    move-object/from16 v0, p0

    #@345
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #@347
    move-object/from16 v24, v0

    #@349
    invoke-static/range {v24 .. v24}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    #@34c
    move-result-object v18

    #@34d
    .line 3017
    .local v18, "onTimedMetaDataAvailableListener":Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    if-nez v18, :cond_14

    #@34f
    .line 3018
    return-void

    #@350
    .line 3020
    :cond_14
    move-object/from16 v0, p1

    #@352
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@354
    move-object/from16 v24, v0

    #@356
    move-object/from16 v0, v24

    #@358
    instance-of v0, v0, Landroid/os/Parcel;

    #@35a
    move/from16 v24, v0

    #@35c
    if-eqz v24, :cond_15

    #@35e
    .line 3021
    move-object/from16 v0, p1

    #@360
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@362
    move-object/from16 v21, v0

    #@364
    check-cast v21, Landroid/os/Parcel;

    #@366
    .line 3022
    .restart local v21    # "parcel":Landroid/os/Parcel;
    invoke-static/range {v21 .. v21}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    #@369
    move-result-object v7

    #@36a
    .line 3023
    .local v7, "data":Landroid/media/TimedMetaData;
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->recycle()V

    #@36d
    .line 3024
    move-object/from16 v0, p0

    #@36f
    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@371
    move-object/from16 v24, v0

    #@373
    move-object/from16 v0, v18

    #@375
    move-object/from16 v1, v24

    #@377
    invoke-interface {v0, v1, v7}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    #@37a
    .line 3026
    .end local v7    # "data":Landroid/media/TimedMetaData;
    .end local v21    # "parcel":Landroid/os/Parcel;
    :cond_15
    return-void

    #@37b
    .line 2857
    nop

    #@37c
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

    #@3ba
    .line 2949
    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_b
        0x2bd -> :sswitch_e
        0x2be -> :sswitch_e
        0x322 -> :sswitch_c
        0x323 -> :sswitch_d
    .end sparse-switch
.end method
