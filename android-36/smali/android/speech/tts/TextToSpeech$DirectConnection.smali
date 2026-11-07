.class Landroid/speech/tts/TextToSpeech$DirectConnection;
.super Landroid/speech/tts/TextToSpeech$Connection;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method private constructor blacklist <init>(Landroid/speech/tts/TextToSpeech;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2421
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$DirectConnection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/speech/tts/TextToSpeech$Connection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech$DirectConnection;-><init>(Landroid/speech/tts/TextToSpeech;)V

    return-void
.end method


# virtual methods
.method blacklist connect(Ljava/lang/String;)Z
    .registers 5
    .param p1, "engine"    # Ljava/lang/String;

    .line 2424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TTS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2425
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2426
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$DirectConnection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmContext(Landroid/speech/tts/TextToSpeech;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method blacklist disconnect()V
    .registers 2

    .line 2431
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$DirectConnection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmContext(Landroid/speech/tts/TextToSpeech;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2432
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$DirectConnection;->clearServiceConnection()Z

    .line 2433
    return-void
.end method
