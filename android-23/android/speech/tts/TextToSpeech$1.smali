.class Landroid/speech/tts/TextToSpeech$1;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->shutdown()V
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
        "Ljava/lang/Void;",
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
    .line 840
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

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
    .line 842
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$1;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Void;
    .locals 2
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 843
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    #@3
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-wrap1(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    invoke-interface {p1, v0, v1}, Landroid/speech/tts/ITextToSpeechService;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    #@a
    .line 844
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    #@c
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-wrap1(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    invoke-interface {p1, v0}, Landroid/speech/tts/ITextToSpeechService;->stop(Landroid/os/IBinder;)I

    #@13
    .line 845
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    #@15
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-get3(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    #@1c
    .line 853
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    #@1e
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->-set2(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;

    #@21
    .line 854
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    #@23
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->-set1(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)Ljava/lang/String;

    #@26
    .line 855
    return-object v1
.end method
