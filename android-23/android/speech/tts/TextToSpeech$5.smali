.class Landroid/speech/tts/TextToSpeech$5;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;
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
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;
    .param p2, "val$locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1285
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$5;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$5;->val$locale:Ljava/util/Locale;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
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
    .line 1287
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$5;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Set;
    .locals 7
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/speech/tts/ITextToSpeechService;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1288
    const/4 v2, 0x0

    #@2
    .line 1291
    .local v2, "features":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$5;->val$locale:Ljava/util/Locale;

    #@4
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$5;->val$locale:Ljava/util/Locale;

    #@a
    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$5;->val$locale:Ljava/util/Locale;

    #@10
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 1290
    invoke-interface {p1, v3, v4, v5}, Landroid/speech/tts/ITextToSpeechService;->getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v2

    #@18
    .line 1298
    .local v2, "features":[Ljava/lang/String;
    if-eqz v2, :cond_0

    #@1a
    .line 1299
    new-instance v1, Ljava/util/HashSet;

    #@1c
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@1f
    .line 1300
    .local v1, "featureSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@22
    .line 1301
    return-object v1

    #@23
    .line 1292
    .end local v1    # "featureSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "features":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@24
    .line 1293
    .local v0, "e":Ljava/util/MissingResourceException;
    const-string/jumbo v3, "TextToSpeech"

    #@27
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "Couldn\'t retrieve 3 letter ISO 639-2/T language and/or ISO 3166 country code for locale: "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 1294
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$5;->val$locale:Ljava/util/Locale;

    #@35
    .line 1293
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40
    .line 1295
    return-object v6

    #@41
    .line 1303
    .end local v0    # "e":Ljava/util/MissingResourceException;
    .local v2, "features":[Ljava/lang/String;
    :cond_0
    return-object v6
.end method
