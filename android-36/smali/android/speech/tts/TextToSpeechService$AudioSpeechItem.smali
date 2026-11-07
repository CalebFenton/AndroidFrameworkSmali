.class Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioSpeechItem"
.end annotation


# instance fields
.field private final greylist-max-o mItem:Landroid/speech/tts/AudioPlaybackQueueItem;

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 13
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;
    .param p7, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 1133
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1134
    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    .line 1135
    move-object v0, p2

    move v1, p3

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    .end local p2    # "callerIdentity":Ljava/lang/Object;
    .end local p3    # "callerUid":I
    .end local p4    # "callerPid":I
    .end local p5    # "params":Landroid/os/Bundle;
    .end local p6    # "utteranceId":Ljava/lang/String;
    .local v0, "callerIdentity":Ljava/lang/Object;
    .local v1, "callerUid":I
    .local v2, "callerPid":I
    .local v3, "params":Landroid/os/Bundle;
    .local v4, "utteranceId":Ljava/lang/String;
    move-object p4, p1

    new-instance p1, Landroid/speech/tts/AudioPlaybackQueueItem;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object p3

    .line 1136
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    move-result-object p6

    move-object p2, p0

    move-object p5, p7

    .end local p7    # "uri":Landroid/net/Uri;
    .local p5, "uri":Landroid/net/Uri;
    invoke-direct/range {p1 .. p6}, Landroid/speech/tts/AudioPlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/speech/tts/TextToSpeechService$AudioOutputParams;)V

    iput-object p1, p2, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mItem:Landroid/speech/tts/AudioPlaybackQueueItem;

    .line 1137
    return-void
.end method


# virtual methods
.method greylist-max-o getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .registers 3

    .line 1161
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mParams:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->createFromParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getUtteranceId()Ljava/lang/String;
    .registers 4

    .line 1156
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "utteranceId"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o isValid()Z
    .registers 2

    .line 1141
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o playImpl()V
    .registers 3

    .line 1146
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mItem:Landroid/speech/tts/AudioPlaybackQueueItem;

    invoke-virtual {v0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    .line 1147
    return-void
.end method

.method protected greylist-max-o stopImpl()V
    .registers 1

    .line 1152
    return-void
.end method
