.class Landroid/speech/tts/TextToSpeech$Connection$1;
.super Landroid/speech/tts/ITextToSpeechCallback$Stub;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/speech/tts/TextToSpeech$Connection;


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeech$Connection;)V
    .registers 2
    .param p1, "this$1"    # Landroid/speech/tts/TextToSpeech$Connection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2221
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAudioAvailable(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "audio"    # [B

    .line 2269
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2270
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_d

    .line 2271
    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/UtteranceProgressListener;->onAudioAvailable(Ljava/lang/String;[B)V

    .line 2273
    :cond_d
    return-void
.end method

.method public blacklist onBeginSynthesis(Ljava/lang/String;III)V
    .registers 6
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I

    .line 2260
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2261
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_d

    .line 2262
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/speech/tts/UtteranceProgressListener;->onBeginSynthesis(Ljava/lang/String;III)V

    .line 2265
    :cond_d
    return-void
.end method

.method public blacklist onError(Ljava/lang/String;I)V
    .registers 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 2240
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2241
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_d

    .line 2242
    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;I)V

    .line 2244
    :cond_d
    return-void
.end method

.method public blacklist onRangeStart(Ljava/lang/String;III)V
    .registers 6
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "frame"    # I

    .line 2277
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2278
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_d

    .line 2279
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/speech/tts/UtteranceProgressListener;->onRangeStart(Ljava/lang/String;III)V

    .line 2281
    :cond_d
    return-void
.end method

.method public blacklist onStart(Ljava/lang/String;)V
    .registers 3
    .param p1, "utteranceId"    # Ljava/lang/String;

    .line 2248
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2249
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_d

    .line 2250
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    .line 2252
    :cond_d
    return-void
.end method

.method public blacklist onStop(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "isStarted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2224
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2225
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_d

    .line 2226
    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/UtteranceProgressListener;->onStop(Ljava/lang/String;Z)V

    .line 2228
    :cond_d
    return-void
.end method

.method public blacklist onSuccess(Ljava/lang/String;)V
    .registers 3
    .param p1, "utteranceId"    # Ljava/lang/String;

    .line 2232
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2233
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_d

    .line 2234
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    .line 2236
    :cond_d
    return-void
.end method
