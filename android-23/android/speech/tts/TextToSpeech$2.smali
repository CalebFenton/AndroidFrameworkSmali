.class Landroid/speech/tts/TextToSpeech$2;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
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

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$queueMode:I

.field final synthetic val$text:Ljava/lang/CharSequence;

.field final synthetic val$utteranceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;
    .param p2, "val$text"    # Ljava/lang/CharSequence;
    .param p3, "val$queueMode"    # I
    .param p4, "val$params"    # Landroid/os/Bundle;
    .param p5, "val$utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1088
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$2;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$2;->val$text:Ljava/lang/CharSequence;

    #@4
    iput p3, p0, Landroid/speech/tts/TextToSpeech$2;->val$queueMode:I

    #@6
    iput-object p4, p0, Landroid/speech/tts/TextToSpeech$2;->val$params:Landroid/os/Bundle;

    #@8
    iput-object p5, p0, Landroid/speech/tts/TextToSpeech$2;->val$utteranceId:Ljava/lang/String;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 9
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1091
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$2;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-get6(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$2;->val$text:Ljava/lang/CharSequence;

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/net/Uri;

    #@e
    .line 1092
    .local v2, "utteranceUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    #@10
    .line 1093
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$2;->this$0:Landroid/speech/tts/TextToSpeech;

    #@12
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-wrap1(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    #@15
    move-result-object v1

    #@16
    iget v3, p0, Landroid/speech/tts/TextToSpeech$2;->val$queueMode:I

    #@18
    .line 1094
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$2;->this$0:Landroid/speech/tts/TextToSpeech;

    #@1a
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$2;->val$params:Landroid/os/Bundle;

    #@1c
    invoke-static {v0, v4}, Landroid/speech/tts/TextToSpeech;->-wrap0(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@1f
    move-result-object v4

    #@20
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$2;->val$utteranceId:Ljava/lang/String;

    #@22
    move-object v0, p1

    #@23
    .line 1093
    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    #@26
    move-result v0

    #@27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v0

    #@2b
    return-object v0

    #@2c
    .line 1096
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$2;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2e
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-wrap1(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    #@31
    move-result-object v4

    #@32
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$2;->val$text:Ljava/lang/CharSequence;

    #@34
    iget v6, p0, Landroid/speech/tts/TextToSpeech$2;->val$queueMode:I

    #@36
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$2;->this$0:Landroid/speech/tts/TextToSpeech;

    #@38
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$2;->val$params:Landroid/os/Bundle;

    #@3a
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->-wrap0(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@3d
    move-result-object v7

    #@3e
    .line 1097
    iget-object v8, p0, Landroid/speech/tts/TextToSpeech$2;->val$utteranceId:Ljava/lang/String;

    #@40
    move-object v3, p1

    #@41
    .line 1096
    invoke-interface/range {v3 .. v8}, Landroid/speech/tts/ITextToSpeechService;->speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    #@44
    move-result v0

    #@45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v0

    #@49
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
    .line 1090
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$2;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
