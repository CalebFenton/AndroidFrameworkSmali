.class Landroid/speech/tts/TextToSpeech$12;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;
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
        "Landroid/speech/tts/Voice;",
        ">;>;"
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
    .line 1607
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$12;->this$0:Landroid/speech/tts/TextToSpeech;

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
    .line 1609
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$12;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Set;
    .locals 2
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/speech/tts/ITextToSpeechService;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/speech/tts/Voice;",
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
    .line 1610
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1611
    .local v0, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    if-eqz v0, :cond_0

    #@6
    new-instance v1, Ljava/util/HashSet;

    #@8
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    #@e
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@11
    goto :goto_0
.end method
