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
.field private final mDuration:J

.field private final mUtteranceId:Ljava/lang/String;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "utteranceId"    # Ljava/lang/String;
    .param p6, "duration"    # J

    #@0
    .prologue
    .line 1091
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    .line 1093
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    #@5
    .line 1094
    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->mUtteranceId:Ljava/lang/String;

    #@7
    .line 1095
    iput-wide p6, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->mDuration:J

    #@9
    .line 1092
    return-void
.end method


# virtual methods
.method public getUtteranceId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1116
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->mUtteranceId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    #@0
    .prologue
    .line 1100
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected playImpl()V
    .locals 6

    #@0
    .prologue
    .line 1105
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-get0(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Landroid/speech/tts/SilencePlaybackQueueItem;

    #@8
    .line 1106
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    iget-wide v4, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->mDuration:J

    #@e
    .line 1105
    invoke-direct {v1, p0, v2, v4, v5}, Landroid/speech/tts/SilencePlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;J)V

    #@11
    invoke-virtual {v0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    #@14
    .line 1104
    return-void
.end method

.method protected stopImpl()V
    .locals 0

    #@0
    .prologue
    .line 1110
    return-void
.end method
