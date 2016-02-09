.class Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;
.super Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthesisToFileOutputStreamSpeechItemV1"
.end annotation


# instance fields
.field private final mFileOutputStream:Ljava/io/FileOutputStream;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/io/FileOutputStream;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/CharSequence;
    .param p8, "fileOutputStream"    # Ljava/io/FileOutputStream;

    #@0
    .prologue
    .line 1026
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    .line 1029
    invoke-direct/range {p0 .. p7}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@5
    .line 1030
    iput-object p8, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;->mFileOutputStream:Ljava/io/FileOutputStream;

    #@7
    .line 1028
    return-void
.end method


# virtual methods
.method protected createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .locals 4

    #@0
    .prologue
    .line 1035
    new-instance v0, Landroid/speech/tts/FileSynthesisCallback;

    #@2
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;->mFileOutputStream:Ljava/io/FileOutputStream;

    #@4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@7
    move-result-object v1

    #@8
    .line 1036
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;->getCallerIdentity()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    .line 1035
    invoke-direct {v0, v1, p0, v2, v3}, Landroid/speech/tts/FileSynthesisCallback;-><init>(Ljava/nio/channels/FileChannel;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Z)V

    #@10
    return-object v0
.end method

.method protected playImpl()V
    .locals 3

    #@0
    .prologue
    .line 1041
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;->dispatchOnStart()V

    #@3
    .line 1042
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->playImpl()V

    #@6
    .line 1044
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;->mFileOutputStream:Ljava/io/FileOutputStream;

    #@8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1040
    :goto_0
    return-void

    #@c
    .line 1045
    :catch_0
    move-exception v0

    #@d
    .line 1046
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "TextToSpeechService"

    #@10
    const-string/jumbo v2, "Failed to close output file"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method
