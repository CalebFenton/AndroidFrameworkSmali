.class Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilenceSpeechItem"
.end annotation


# instance fields
.field private final greylist-max-o mDuration:J

.field private final greylist-max-o mUtteranceId:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;J)V
    .registers 8
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "utteranceId"    # Ljava/lang/String;
    .param p6, "duration"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1170
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1171
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    .line 1172
    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->mUtteranceId:Ljava/lang/String;

    .line 1173
    iput-wide p6, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->mDuration:J

    .line 1174
    return-void
.end method


# virtual methods
.method public greylist-max-o getUtteranceId()Ljava/lang/String;
    .registers 2

    .line 1194
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->mUtteranceId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o isValid()Z
    .registers 2

    .line 1178
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o playImpl()V
    .registers 6

    .line 1183
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v0

    new-instance v1, Landroid/speech/tts/SilencePlaybackQueueItem;

    .line 1184
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    iget-wide v3, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->mDuration:J

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/speech/tts/SilencePlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;J)V

    .line 1183
    invoke-virtual {v0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    .line 1185
    return-void
.end method

.method protected greylist-max-o stopImpl()V
    .registers 1

    .line 1190
    return-void
.end method
