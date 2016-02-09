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
    .line 820
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    .line 821
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    #@5
    .line 820
    return-void
.end method


# virtual methods
.method public dispatchOnError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 850
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 851
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 852
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@8
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2, v0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnError(Ljava/lang/Object;Ljava/lang/String;I)V

    #@13
    .line 849
    :cond_0
    return-void
.end method

.method public dispatchOnStart()V
    .locals 3

    #@0
    .prologue
    .line 842
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 843
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 844
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@8
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStart(Ljava/lang/Object;Ljava/lang/String;)V

    #@13
    .line 841
    :cond_0
    return-void
.end method

.method public dispatchOnStop()V
    .locals 4

    #@0
    .prologue
    .line 834
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 835
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 836
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@8
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->isStarted()Z

    #@13
    move-result v3

    #@14
    invoke-virtual {v1, v2, v0, v3}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStop(Ljava/lang/Object;Ljava/lang/String;Z)V

    #@17
    .line 833
    :cond_0
    return-void
.end method

.method public dispatchOnSuccess()V
    .locals 3

    #@0
    .prologue
    .line 826
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 827
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 828
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@8
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    #@13
    .line 825
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
    .line 867
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
    .line 863
    if-nez p1, :cond_0

    #@2
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    #@3
    .restart local p3    # "defaultValue":I
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

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
    .line 859
    if-nez p1, :cond_0

    #@2
    .end local p3    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p3

    #@3
    .restart local p3    # "defaultValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object p3

    #@7
    goto :goto_0
.end method

.method public abstract getUtteranceId()Ljava/lang/String;
.end method
