.class public final synthetic Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# instance fields
.field public final synthetic blacklist f$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/speech/tts/TextToSpeech;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda6;->f$0:Landroid/speech/tts/TextToSpeech;

    return-void
.end method


# virtual methods
.method public final blacklist run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda6;->f$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech;->$r8$lambda$V8w1IYdC5oFdCq0pLYeRpv8CSbw(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method
