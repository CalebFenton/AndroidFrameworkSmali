.class Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;
.super Landroid/speech/tts/TextToSpeechService$SpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadVoiceItem"
.end annotation


# instance fields
.field private final mVoiceName:Ljava/lang/String;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "voiceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1158
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    .line 1160
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    #@5
    .line 1161
    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;->mVoiceName:Ljava/lang/String;

    #@7
    .line 1159
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    #@0
    .prologue
    .line 1166
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected playImpl()V
    .locals 2

    #@0
    .prologue
    .line 1171
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;->mVoiceName:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeechService;->onLoadVoice(Ljava/lang/String;)I

    #@7
    .line 1170
    return-void
.end method

.method protected stopImpl()V
    .locals 0

    #@0
    .prologue
    .line 1175
    return-void
.end method
