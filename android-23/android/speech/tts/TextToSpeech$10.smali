.class Landroid/speech/tts/TextToSpeech$10;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;
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
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;

    #@0
    .prologue
    .line 1564
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$10;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
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
    .line 1566
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$10;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Locale;
    .locals 6
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;

    #@0
    .prologue
    .line 1569
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$10;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@5
    move-result-object v3

    #@6
    const-string/jumbo v4, "language"

    #@9
    const-string/jumbo v5, ""

    #@c
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 1570
    .local v1, "lang":Ljava/lang/String;
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$10;->this$0:Landroid/speech/tts/TextToSpeech;

    #@12
    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@15
    move-result-object v3

    #@16
    const-string/jumbo v4, "country"

    #@19
    const-string/jumbo v5, ""

    #@1c
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 1571
    .local v0, "country":Ljava/lang/String;
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$10;->this$0:Landroid/speech/tts/TextToSpeech;

    #@22
    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "variant"

    #@29
    const-string/jumbo v5, ""

    #@2c
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 1572
    .local v2, "variant":Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    #@32
    invoke-direct {v3, v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@35
    return-object v3
.end method
