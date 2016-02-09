.class Landroid/speech/tts/TextToSpeech$13;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I
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

.field final synthetic val$voice:Landroid/speech/tts/Voice;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;
    .param p2, "val$voice"    # Landroid/speech/tts/Voice;

    #@0
    .prologue
    .line 1627
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$13;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 7
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1630
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$13;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-static {v4}, Landroid/speech/tts/TextToSpeech;->-wrap1(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    #@5
    move-result-object v4

    #@6
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    #@8
    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    invoke-interface {p1, v4, v5}, Landroid/speech/tts/ITextToSpeechService;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    #@f
    move-result v3

    #@10
    .line 1631
    .local v3, "result":I
    if-nez v3, :cond_0

    #@12
    .line 1632
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$13;->this$0:Landroid/speech/tts/TextToSpeech;

    #@14
    invoke-static {v4}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@17
    move-result-object v4

    #@18
    const-string/jumbo v5, "voiceName"

    #@1b
    iget-object v6, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    #@1d
    invoke-virtual {v6}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 1636
    const-string/jumbo v2, ""

    #@27
    .line 1638
    .local v2, "language":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    #@29
    invoke-virtual {v4}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result-object v2

    #@31
    .line 1644
    :goto_0
    const-string/jumbo v0, ""

    #@34
    .line 1646
    .local v0, "country":Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    #@36
    invoke-virtual {v4}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@3d
    move-result-object v0

    #@3e
    .line 1651
    :goto_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$13;->this$0:Landroid/speech/tts/TextToSpeech;

    #@40
    invoke-static {v4}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@43
    move-result-object v4

    #@44
    const-string/jumbo v5, "language"

    #@47
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 1652
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$13;->this$0:Landroid/speech/tts/TextToSpeech;

    #@4c
    invoke-static {v4}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@4f
    move-result-object v4

    #@50
    const-string/jumbo v5, "country"

    #@53
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    .line 1653
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$13;->this$0:Landroid/speech/tts/TextToSpeech;

    #@58
    invoke-static {v4}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@5b
    move-result-object v4

    #@5c
    const-string/jumbo v5, "variant"

    #@5f
    iget-object v6, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    #@61
    invoke-virtual {v6}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@6c
    .line 1655
    .end local v0    # "country":Ljava/lang/String;
    .end local v2    # "language":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v4

    #@70
    return-object v4

    #@71
    .line 1639
    .restart local v2    # "language":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@72
    .line 1640
    .local v1, "e":Ljava/util/MissingResourceException;
    const-string/jumbo v4, "TextToSpeech"

    #@75
    new-instance v5, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v6, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    #@7d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    .line 1641
    iget-object v6, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    #@83
    invoke-virtual {v6}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    #@86
    move-result-object v6

    #@87
    .line 1640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@92
    goto :goto_0

    #@93
    .line 1647
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .restart local v0    # "country":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@94
    .line 1648
    .restart local v1    # "e":Ljava/util/MissingResourceException;
    const-string/jumbo v4, "TextToSpeech"

    #@97
    new-instance v5, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v6, "Couldn\'t retrieve ISO 3166 country code for locale: "

    #@9f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v5

    #@a3
    .line 1649
    iget-object v6, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    #@a5
    invoke-virtual {v6}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    #@a8
    move-result-object v6

    #@a9
    .line 1648
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v5

    #@b1
    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b4
    goto :goto_1
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
    .line 1629
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$13;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
