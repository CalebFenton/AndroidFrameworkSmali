.class Landroid/speech/tts/TextToSpeech$3;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$earcon:Ljava/lang/String;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$queueMode:I

.field final synthetic val$utteranceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;
    .param p2, "val$earcon"    # Ljava/lang/String;
    .param p3, "val$queueMode"    # I
    .param p4, "val$params"    # Landroid/os/Bundle;
    .param p5, "val$utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1161
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$3;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$3;->val$earcon:Ljava/lang/String;

    #@4
    iput p3, p0, Landroid/speech/tts/TextToSpeech$3;->val$queueMode:I

    #@6
    iput-object p4, p0, Landroid/speech/tts/TextToSpeech$3;->val$params:Landroid/os/Bundle;

    #@8
    iput-object p5, p0, Landroid/speech/tts/TextToSpeech$3;->val$utteranceId:Ljava/lang/String;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 6
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1164
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$3;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-get1(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$3;->val$earcon:Ljava/lang/String;

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/net/Uri;

    #@e
    .line 1165
    .local v2, "earconUri":Landroid/net/Uri;
    if-nez v2, :cond_0

    #@10
    .line 1166
    const/4 v0, -0x1

    #@11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 1168
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$3;->this$0:Landroid/speech/tts/TextToSpeech;

    #@18
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-wrap1(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    #@1b
    move-result-object v1

    #@1c
    iget v3, p0, Landroid/speech/tts/TextToSpeech$3;->val$queueMode:I

    #@1e
    .line 1169
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$3;->this$0:Landroid/speech/tts/TextToSpeech;

    #@20
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$3;->val$params:Landroid/os/Bundle;

    #@22
    invoke-static {v0, v4}, Landroid/speech/tts/TextToSpeech;->-wrap0(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@25
    move-result-object v4

    #@26
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$3;->val$utteranceId:Ljava/lang/String;

    #@28
    move-object v0, p1

    #@29
    .line 1168
    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    #@2c
    move-result v0

    #@2d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v0

    #@31
    return-object v0
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 1
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1163
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$3;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
