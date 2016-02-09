.class Landroid/speech/tts/TextToSpeech$15;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;
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
        "Landroid/speech/tts/Voice;",
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
    .line 1712
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$15;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .locals 14
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x2

    #@1
    const/4 v12, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    const/4 v11, 0x0

    #@4
    .line 1716
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1718
    .local v1, "defaultLanguage":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@a
    array-length v9, v1

    #@b
    if-nez v9, :cond_1

    #@d
    .line 1719
    :cond_0
    const-string/jumbo v9, "TextToSpeech"

    #@10
    const-string/jumbo v10, "service.getClientDefaultLanguage() returned empty array"

    #@13
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 1720
    return-object v11

    #@17
    .line 1722
    :cond_1
    aget-object v2, v1, v10

    #@19
    .line 1723
    .local v2, "language":Ljava/lang/String;
    array-length v9, v1

    #@1a
    if-le v9, v12, :cond_2

    #@1c
    aget-object v0, v1, v12

    #@1e
    .line 1724
    .local v0, "country":Ljava/lang/String;
    :goto_0
    array-length v9, v1

    #@1f
    if-le v9, v13, :cond_3

    #@21
    aget-object v4, v1, v13

    #@23
    .line 1727
    .local v4, "variant":Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v2, v0, v4}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@26
    move-result v3

    #@27
    .line 1728
    .local v3, "result":I
    if-gez v3, :cond_4

    #@29
    .line 1730
    return-object v11

    #@2a
    .line 1723
    .end local v0    # "country":Ljava/lang/String;
    .end local v3    # "result":I
    .end local v4    # "variant":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, ""

    #@2d
    .restart local v0    # "country":Ljava/lang/String;
    goto :goto_0

    #@2e
    .line 1724
    :cond_3
    const-string/jumbo v4, ""

    #@31
    .restart local v4    # "variant":Ljava/lang/String;
    goto :goto_1

    #@32
    .line 1734
    .restart local v3    # "result":I
    :cond_4
    invoke-interface {p1, v2, v0, v4}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    .line 1735
    .local v7, "voiceName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v9

    #@3a
    if-eqz v9, :cond_5

    #@3c
    .line 1736
    return-object v11

    #@3d
    .line 1740
    :cond_5
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    #@40
    move-result-object v8

    #@41
    .line 1741
    .local v8, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    if-nez v8, :cond_6

    #@43
    .line 1742
    return-object v11

    #@44
    .line 1744
    :cond_6
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v6

    #@48
    .local v6, "voice$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v9

    #@4c
    if-eqz v9, :cond_8

    #@4e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v5

    #@52
    check-cast v5, Landroid/speech/tts/Voice;

    #@54
    .line 1745
    .local v5, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v9

    #@5c
    if-eqz v9, :cond_7

    #@5e
    .line 1746
    return-object v5

    #@5f
    .line 1749
    .end local v5    # "voice":Landroid/speech/tts/Voice;
    :cond_8
    return-object v11
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
    .line 1714
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$15;->run(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
