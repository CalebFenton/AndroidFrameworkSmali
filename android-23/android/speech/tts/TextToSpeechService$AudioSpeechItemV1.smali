.class Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;
.super Landroid/speech/tts/TextToSpeechService$SpeechItemV1;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioSpeechItemV1"
.end annotation


# instance fields
.field private final mItem:Landroid/speech/tts/AudioPlaybackQueueItem;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;
    .param p7, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1054
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    .line 1056
    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    #@5
    .line 1057
    new-instance v0, Landroid/speech/tts/AudioPlaybackQueueItem;

    #@7
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;->getCallerIdentity()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    .line 1058
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;->getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@e
    move-result-object v5

    #@f
    move-object v1, p0

    #@10
    move-object v3, p1

    #@11
    move-object v4, p7

    #@12
    .line 1057
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/AudioPlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/speech/tts/TextToSpeechService$AudioOutputParams;)V

    #@15
    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;->mItem:Landroid/speech/tts/AudioPlaybackQueueItem;

    #@17
    .line 1055
    return-void
.end method


# virtual methods
.method getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .locals 2

    #@0
    .prologue
    .line 1083
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;->mParams:Landroid/os/Bundle;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->createFromV1ParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1078
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;->mParams:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "utteranceId"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    #@0
    .prologue
    .line 1063
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected playImpl()V
    .locals 2

    #@0
    .prologue
    .line 1068
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-get0(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;->mItem:Landroid/speech/tts/AudioPlaybackQueueItem;

    #@8
    invoke-virtual {v0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    #@b
    .line 1067
    return-void
.end method

.method protected stopImpl()V
    .locals 0

    #@0
    .prologue
    .line 1072
    return-void
.end method
