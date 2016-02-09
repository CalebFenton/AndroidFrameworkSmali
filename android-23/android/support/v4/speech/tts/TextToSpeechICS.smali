.class Landroid/support/v4/speech/tts/TextToSpeechICS;
.super Ljava/lang/Object;
.source "TextToSpeechICS.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "android.support.v4.speech.tts"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static construct(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)Landroid/speech/tts/TextToSpeech;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onInitListener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p2, "engineName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xe

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 16
    if-nez p2, :cond_0

    #@8
    .line 17
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    #@a
    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    #@d
    return-object v0

    #@e
    .line 19
    :cond_0
    const-string/jumbo v0, "android.support.v4.speech.tts"

    #@11
    const-string/jumbo v1, "Can\'t specify tts engine on this device"

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 20
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    #@19
    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    #@1c
    return-object v0

    #@1d
    .line 23
    :cond_1
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    #@1f
    invoke-direct {v0, p0, p1, p2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    #@22
    return-object v0
.end method
