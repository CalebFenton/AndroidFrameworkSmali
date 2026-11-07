.class abstract Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$SpeechItem;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "UtteranceSpeechItem"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V
    .registers 5
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 858
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 859
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    .line 860
    return-void
.end method


# virtual methods
.method public greylist-max-o dispatchOnAudioAvailable([B)V
    .registers 5
    .param p1, "audio"    # [B

    .line 904
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 906
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmCallbacks(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnAudioAvailable(Ljava/lang/Object;Ljava/lang/String;[B)V

    .line 908
    :cond_13
    return-void
.end method

.method public greylist-max-o dispatchOnBeginSynthesis(III)V
    .registers 10
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I

    .line 896
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v2

    .line 897
    .local v2, "utteranceId":Ljava/lang/String;
    if-eqz v2, :cond_17

    .line 898
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmCallbacks(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "sampleRateInHz":I
    .end local p2    # "audioFormat":I
    .end local p3    # "channelCount":I
    .local v3, "sampleRateInHz":I
    .local v4, "audioFormat":I
    .local v5, "channelCount":I
    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnBeginSynthesis(Ljava/lang/Object;Ljava/lang/String;III)V

    goto :goto_1a

    .line 897
    .end local v3    # "sampleRateInHz":I
    .end local v4    # "audioFormat":I
    .end local v5    # "channelCount":I
    .restart local p1    # "sampleRateInHz":I
    .restart local p2    # "audioFormat":I
    .restart local p3    # "channelCount":I
    :cond_17
    move v3, p1

    move v4, p2

    move v5, p3

    .line 900
    .end local p1    # "sampleRateInHz":I
    .end local p2    # "audioFormat":I
    .end local p3    # "channelCount":I
    .restart local v3    # "sampleRateInHz":I
    .restart local v4    # "audioFormat":I
    .restart local v5    # "channelCount":I
    :goto_1a
    return-void
.end method

.method public greylist-max-o dispatchOnError(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .line 888
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 890
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmCallbacks(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnError(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 892
    :cond_13
    return-void
.end method

.method public greylist-max-o dispatchOnRangeStart(III)V
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "frame"    # I

    .line 912
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v2

    .line 913
    .local v2, "utteranceId":Ljava/lang/String;
    if-eqz v2, :cond_17

    .line 914
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmCallbacks(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v0

    .line 915
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    .line 914
    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "frame":I
    .local v3, "start":I
    .local v4, "end":I
    .local v5, "frame":I
    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnRangeStart(Ljava/lang/Object;Ljava/lang/String;III)V

    goto :goto_1a

    .line 913
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "frame":I
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    .restart local p3    # "frame":I
    :cond_17
    move v3, p1

    move v4, p2

    move v5, p3

    .line 917
    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "frame":I
    .restart local v3    # "start":I
    .restart local v4    # "end":I
    .restart local v5    # "frame":I
    :goto_1a
    return-void
.end method

.method public greylist-max-o dispatchOnStart()V
    .registers 4

    .line 880
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 882
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmCallbacks(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStart(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    :cond_13
    return-void
.end method

.method public greylist-max-o dispatchOnStop()V
    .registers 5

    .line 872
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 874
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmCallbacks(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->isStarted()Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStop(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 876
    :cond_17
    return-void
.end method

.method public greylist-max-o dispatchOnSuccess()V
    .registers 4

    .line 864
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 866
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmCallbacks(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    :cond_13
    return-void
.end method

.method greylist-max-o getFloatParam(Landroid/os/Bundle;Ljava/lang/String;F)F
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .line 930
    if-nez p1, :cond_4

    move v0, p3

    goto :goto_8

    :cond_4
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    :goto_8
    return v0
.end method

.method greylist-max-o getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 926
    if-nez p1, :cond_4

    move v0, p3

    goto :goto_8

    :cond_4
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_8
    return v0
.end method

.method greylist-max-o getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 922
    if-nez p1, :cond_4

    move-object v0, p3

    goto :goto_8

    :cond_4
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method public abstract greylist-max-o getUtteranceId()Ljava/lang/String;
.end method
