.class Landroid/speech/tts/AudioPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "AudioPlaybackQueueItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTS.AudioQueueItem"


# instance fields
.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private final mContext:Landroid/content/Context;

.field private final mDone:Landroid/os/ConditionVariable;

.field private volatile mFinished:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/speech/tts/AudioPlaybackQueueItem;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    #@2
    return p1
.end method

.method constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/speech/tts/TextToSpeechService$AudioOutputParams;)V
    .locals 1
    .param p1, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "audioParams"    # Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    #@3
    .line 43
    iput-object p3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    #@5
    .line 44
    iput-object p4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    #@7
    .line 45
    iput-object p5, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@9
    .line 47
    new-instance v0, Landroid/os/ConditionVariable;

    #@b
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    #@e
    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    #@10
    .line 48
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    #@13
    .line 49
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    #@16
    .line 40
    return-void
.end method

.method private static final clip(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    #@0
    .prologue
    .line 113
    cmpg-float v0, p0, p1

    #@2
    if-gez v0, :cond_0

    #@4
    .end local p1    # "min":F
    :goto_0
    return p1

    #@5
    .restart local p1    # "min":F
    :cond_0
    cmpg-float v0, p0, p2

    #@7
    if-gez v0, :cond_1

    #@9
    move p1, p0

    #@a
    goto :goto_0

    #@b
    :cond_1
    move p1, p2

    #@c
    goto :goto_0
.end method

.method private finish()V
    .locals 2

    #@0
    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    #@2
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 122
    :goto_0
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    #@7
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    #@a
    .line 116
    return-void

    #@b
    .line 119
    :catch_0
    move-exception v0

    #@c
    .local v0, "ex":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method private static setupVolume(Landroid/media/MediaPlayer;FF)V
    .locals 7
    .param p0, "player"    # Landroid/media/MediaPlayer;
    .param p1, "volume"    # F
    .param p2, "pan"    # F

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/high16 v5, 0x3f800000    # 1.0f

    #@3
    .line 100
    invoke-static {p1, v6, v5}, Landroid/speech/tts/AudioPlaybackQueueItem;->clip(FFF)F

    #@6
    move-result v1

    #@7
    .line 101
    .local v1, "vol":F
    const/high16 v4, -0x40800000    # -1.0f

    #@9
    invoke-static {p2, v4, v5}, Landroid/speech/tts/AudioPlaybackQueueItem;->clip(FFF)F

    #@c
    move-result v0

    #@d
    .line 103
    .local v0, "panning":F
    move v2, v1

    #@e
    .local v2, "volLeft":F
    move v3, v1

    #@f
    .line 104
    .local v3, "volRight":F
    cmpl-float v4, v0, v6

    #@11
    if-lez v4, :cond_1

    #@13
    .line 105
    sub-float v4, v5, v0

    #@15
    mul-float/2addr v2, v4

    #@16
    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    #@19
    .line 99
    return-void

    #@1a
    .line 106
    :cond_1
    cmpg-float v4, v0, v6

    #@1c
    if-gez v4, :cond_0

    #@1e
    .line 107
    add-float v4, v5, v0

    #@20
    mul-float/2addr v3, v4

    #@21
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 53
    invoke-virtual {p0}, Landroid/speech/tts/AudioPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@5
    move-result-object v0

    #@6
    .line 55
    .local v0, "dispatcher":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    #@9
    .line 57
    iget-object v4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@b
    iget v2, v4, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    #@d
    .line 59
    .local v2, "sessionId":I
    iget-object v4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    #@f
    iget-object v5, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    #@11
    iget-object v6, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@13
    iget-object v6, v6, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@15
    .line 60
    if-lez v2, :cond_0

    #@17
    .line 58
    .end local v2    # "sessionId":I
    :goto_0
    invoke-static {v4, v5, v7, v6, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    #@1a
    move-result-object v3

    #@1b
    iput-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    #@1d
    .line 61
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    #@1f
    if-nez v3, :cond_1

    #@21
    .line 62
    const/4 v3, -0x5

    #@22
    invoke-interface {v0, v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    #@25
    .line 63
    return-void

    #@26
    .restart local v2    # "sessionId":I
    :cond_0
    move v2, v3

    #@27
    .line 60
    goto :goto_0

    #@28
    .line 67
    .end local v2    # "sessionId":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    #@2a
    new-instance v4, Landroid/speech/tts/AudioPlaybackQueueItem$1;

    #@2c
    invoke-direct {v4, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$1;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    #@2f
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    #@32
    .line 75
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    #@34
    new-instance v4, Landroid/speech/tts/AudioPlaybackQueueItem$2;

    #@36
    invoke-direct {v4, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$2;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    #@39
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    #@3c
    .line 83
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    #@3e
    iget-object v4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@40
    iget v4, v4, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    #@42
    iget-object v5, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@44
    iget v5, v5, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    #@46
    invoke-static {v3, v4, v5}, Landroid/speech/tts/AudioPlaybackQueueItem;->setupVolume(Landroid/media/MediaPlayer;FF)V

    #@49
    .line 84
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    #@4b
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    #@4e
    .line 85
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    #@50
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    #@53
    .line 86
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackQueueItem;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    .line 92
    :goto_1
    iget-boolean v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    #@58
    if-eqz v3, :cond_2

    #@5a
    .line 93
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    #@5d
    .line 52
    :goto_2
    return-void

    #@5e
    .line 87
    :catch_0
    move-exception v1

    #@5f
    .line 88
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "TTS.AudioQueueItem"

    #@62
    const-string/jumbo v4, "MediaPlayer failed"

    #@65
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    .line 89
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    #@6a
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    #@6d
    goto :goto_1

    #@6e
    .line 95
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    #@71
    goto :goto_2
.end method

.method stop(I)V
    .locals 1
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    #@2
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    #@5
    .line 126
    return-void
.end method
