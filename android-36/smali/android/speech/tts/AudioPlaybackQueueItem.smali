.class Landroid/speech/tts/AudioPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "AudioPlaybackQueueItem.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TTS.AudioQueueItem"


# instance fields
.field private final greylist-max-o mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mDone:Landroid/os/ConditionVariable;

.field private volatile greylist-max-o mFinished:Z

.field private greylist-max-o mPlayer:Landroid/media/MediaPlayer;

.field private final greylist-max-o mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDone(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFinished(Landroid/speech/tts/AudioPlaybackQueueItem;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/speech/tts/TextToSpeechService$AudioOutputParams;)V
    .registers 7
    .param p1, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "audioParams"    # Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    .line 43
    iput-object p3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    .line 44
    iput-object p4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    .line 45
    iput-object p5, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 47
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    .line 50
    return-void
.end method

.method private static final greylist-max-o clip(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 113
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpg-float v0, p0, p2

    if-gez v0, :cond_c

    move v0, p0

    goto :goto_d

    :cond_c
    move v0, p2

    :goto_d
    return v0
.end method

.method private greylist-max-o finish()V
    .registers 2

    .line 118
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6

    .line 121
    goto :goto_7

    .line 119
    :catch_6
    move-exception v0

    .line 122
    :goto_7
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 123
    return-void
.end method

.method private static greylist-max-o setupVolume(Landroid/media/MediaPlayer;FF)V
    .registers 10
    .param p0, "player"    # Landroid/media/MediaPlayer;
    .param p1, "volume"    # F
    .param p2, "pan"    # F

    .line 100
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/speech/tts/AudioPlaybackQueueItem;->clip(FFF)F

    move-result v2

    .line 101
    .local v2, "vol":F
    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p2, v3, v1}, Landroid/speech/tts/AudioPlaybackQueueItem;->clip(FFF)F

    move-result v3

    .line 103
    .local v3, "panning":F
    move v4, v2

    .local v4, "volLeft":F
    move v5, v2

    .line 104
    .local v5, "volRight":F
    cmpl-float v6, v3, v0

    if-lez v6, :cond_16

    .line 105
    sub-float/2addr v1, v3

    mul-float/2addr v4, v1

    goto :goto_1c

    .line 106
    :cond_16
    cmpg-float v0, v3, v0

    if-gez v0, :cond_1c

    .line 107
    add-float/2addr v1, v3

    mul-float/2addr v5, v1

    .line 109
    :cond_1c
    :goto_1c
    invoke-virtual {p0, v4, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 110
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 53
    invoke-virtual {p0}, Landroid/speech/tts/AudioPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    .line 55
    .local v0, "dispatcher":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 57
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v1, v1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    .line 58
    .local v1, "sessionId":I
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget-object v4, v4, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 60
    if-lez v1, :cond_17

    move v5, v1

    goto :goto_18

    :cond_17
    const/4 v5, 0x0

    .line 58
    :goto_18
    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    .line 61
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_28

    .line 62
    const/4 v2, -0x5

    invoke-interface {v0, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 63
    return-void

    .line 67
    :cond_28
    :try_start_28
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Landroid/speech/tts/AudioPlaybackQueueItem$1;

    invoke-direct {v3, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$1;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 75
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Landroid/speech/tts/AudioPlaybackQueueItem$2;

    invoke-direct {v3, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$2;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 83
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v3, v3, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    iget-object v4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v4, v4, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    invoke-static {v2, v3, v4}, Landroid/speech/tts/AudioPlaybackQueueItem;->setupVolume(Landroid/media/MediaPlayer;FF)V

    .line 84
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 85
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 86
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackQueueItem;->finish()V
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_56} :catch_57

    .line 90
    goto :goto_64

    .line 87
    :catch_57
    move-exception v2

    .line 88
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "TTS.AudioQueueItem"

    const-string v4, "MediaPlayer failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 92
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_64
    iget-boolean v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    if-eqz v2, :cond_6c

    .line 93
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    goto :goto_6f

    .line 95
    :cond_6c
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    .line 97
    :goto_6f
    return-void
.end method

.method greylist-max-o stop(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 127
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 128
    return-void
.end method
