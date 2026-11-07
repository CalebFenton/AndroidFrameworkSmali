.class public final synthetic Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# instance fields
.field public final synthetic blacklist f$0:Landroid/speech/tts/TextToSpeech;

.field public final synthetic blacklist f$1:Landroid/speech/tts/Voice;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda14;->f$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda14;->f$1:Landroid/speech/tts/Voice;

    return-void
.end method


# virtual methods
.method public final blacklist run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda14;->f$0:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda14;->f$1:Landroid/speech/tts/Voice;

    invoke-static {v0, v1, p1}, Landroid/speech/tts/TextToSpeech;->$r8$lambda$lpQZq9AayT4whbr0MqjeZw50fjE(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
