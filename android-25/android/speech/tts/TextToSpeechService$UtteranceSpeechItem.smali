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
.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I

    #@0
    .prologue
    .line 832
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    .line 833
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    #@5
    .line 832
    return-void
.end method


# virtual methods
.method public dispatchOnAudioAvailable([B)V
    .locals 3
    .param p1, "audio"    # [B

    #@0
    .prologue
    .line 878
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 879
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 880
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@8
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2, v0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnAudioAvailable(Ljava/lang/Object;Ljava/lang/String;[B)V

    #@13
    .line 877
    :cond_0
    return-void
.end method

.method public dispatchOnBeginSynthesis(III)V
    .locals 6
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I

    #@0
    .prologue
    .line 870
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 871
    .local v2, "utteranceId":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@6
    .line 872
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@8
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    move v3, p1

    #@11
    move v4, p2

    #@12
    move v5, p3

    #@13
    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnBeginSynthesis(Ljava/lang/Object;Ljava/lang/String;III)V

    #@16
    .line 869
    :cond_0
    return-void
.end method

.method public dispatchOnError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 862
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 863
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 864
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@8
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2, v0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnError(Ljava/lang/Object;Ljava/lang/String;I)V

    #@13
    .line 861
    :cond_0
    return-void
.end method

.method public dispatchOnStart()V
    .locals 3

    #@0
    .prologue
    .line 854
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 855
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 856
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@8
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStart(Ljava/lang/Object;Ljava/lang/String;)V

    #@13
    .line 853
    :cond_0
    return-void
.end method

.method public dispatchOnStop()V
    .locals 4

    #@0
    .prologue
    .line 846
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 847
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 848
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@8
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isStarted()Z

    #@13
    move-result v3

    #@14
    invoke-virtual {v1, v2, v0, v3}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStop(Ljava/lang/Object;Ljava/lang/String;Z)V

    #@17
    .line 845
    :cond_0
    return-void
.end method

.method public dispatchOnSuccess()V
    .locals 3

    #@0
    .prologue
    .line 838
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 839
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 840
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@8
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    #@13
    .line 837
    :cond_0
    return-void
.end method

.method getFloatParam(Landroid/os/Bundle;Ljava/lang/String;F)F
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    #@0
    .prologue
    .line 895
    if-nez p1, :cond_0

    #@2
    .end local p3    # "defaultValue":F
    :goto_0
    return p3

    #@3
    .restart local p3    # "defaultValue":F
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    #@6
    move-result p3

    #@7
    goto :goto_0
.end method

.method getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    #@0
    .prologue
    .line 891
    if-nez p1, :cond_0

    #@2
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    #@3
    .restart local p3    # "defaultValue":I
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@6
    move-result p3

    #@7
    goto :goto_0
.end method

.method getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 887
    if-nez p1, :cond_0

    #@2
    .end local p3    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p3

    #@3
    .restart local p3    # "defaultValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object p3

    #@7
    goto :goto_0
.end method

.method public abstract getUtteranceId()Ljava/lang/String;
.end method
