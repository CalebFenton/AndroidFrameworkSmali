.class Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthesisToFileOutputStreamSpeechItem"
.end annotation


# instance fields
.field private final greylist-max-o mFileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/io/FileOutputStream;)V
    .registers 9
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/CharSequence;
    .param p8, "fileOutputStream"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1104
    invoke-direct/range {p0 .. p7}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1105
    move-object p1, p0

    iput-object p8, p1, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 1106
    return-void
.end method


# virtual methods
.method protected greylist-max-o createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .registers 4

    .line 1110
    new-instance v0, Landroid/speech/tts/FileSynthesisCallback;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/speech/tts/FileSynthesisCallback;-><init>(Ljava/nio/channels/FileChannel;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Z)V

    return-object v0
.end method

.method protected greylist-max-o playImpl()V
    .registers 4

    .line 1115
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->playImpl()V

    .line 1117
    :try_start_3
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    .line 1120
    goto :goto_11

    .line 1118
    :catch_9
    move-exception v0

    .line 1119
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TextToSpeechService"

    const-string v2, "Failed to close output file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1121
    .end local v0    # "e":Ljava/io/IOException;
    :goto_11
    return-void
.end method
