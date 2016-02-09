.class Landroid/speech/tts/TextToSpeech$16;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I
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

.field final synthetic val$loc:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;
    .param p2, "val$loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1766
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$16;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$16;->val$loc:Ljava/util/Locale;

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
    const/4 v6, -0x2

    #@1
    .line 1769
    const/4 v2, 0x0

    #@2
    .local v2, "language":Ljava/lang/String;
    const/4 v0, 0x0

    #@3
    .line 1772
    .local v0, "country":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$16;->val$loc:Ljava/util/Locale;

    #@5
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v2

    #@9
    .line 1779
    .local v2, "language":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$16;->val$loc:Ljava/util/Locale;

    #@b
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@e
    move-result-object v0

    #@f
    .line 1785
    .local v0, "country":Ljava/lang/String;
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$16;->val$loc:Ljava/util/Locale;

    #@11
    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-interface {p1, v2, v0, v3}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@18
    move-result v3

    #@19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v3

    #@1d
    return-object v3

    #@1e
    .line 1773
    .local v0, "country":Ljava/lang/String;
    .local v2, "language":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@1f
    .line 1774
    .local v1, "e":Ljava/util/MissingResourceException;
    const-string/jumbo v3, "TextToSpeech"

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$16;->val$loc:Ljava/util/Locale;

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 1775
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v3

    #@3f
    return-object v3

    #@40
    .line 1780
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .local v2, "language":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@41
    .line 1781
    .restart local v1    # "e":Ljava/util/MissingResourceException;
    const-string/jumbo v3, "TextToSpeech"

    #@44
    new-instance v4, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v5, "Couldn\'t retrieve ISO 3166 country code for locale: "

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$16;->val$loc:Ljava/util/Locale;

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    .line 1782
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v3

    #@61
    return-object v3
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
    .line 1768
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$16;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
