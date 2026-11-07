.class public final synthetic Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/speech/tts/TextToSpeech;->lambda$isSpeaking$6(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
