.class Landroid/speech/tts/TextToSpeech$17;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$text:Ljava/lang/CharSequence;

.field final synthetic val$utteranceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/io/File;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;
    .param p2, "val$file"    # Ljava/io/File;
    .param p3, "val$text"    # Ljava/lang/CharSequence;
    .param p4, "val$params"    # Landroid/os/Bundle;
    .param p5, "val$utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1811
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$17;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$17;->val$file:Ljava/io/File;

    #@4
    iput-object p3, p0, Landroid/speech/tts/TextToSpeech$17;->val$text:Ljava/lang/CharSequence;

    #@6
    iput-object p4, p0, Landroid/speech/tts/TextToSpeech$17;->val$params:Landroid/os/Bundle;

    #@8
    iput-object p5, p0, Landroid/speech/tts/TextToSpeech$17;->val$utteranceId:Ljava/lang/String;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 10
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    .line 1817
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$17;->val$file:Ljava/io/File;

    #@3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$17;->val$file:Ljava/io/File;

    #@b
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1821
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$17;->val$file:Ljava/io/File;

    #@13
    .line 1822
    const/high16 v1, 0x2c000000

    #@15
    .line 1821
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@18
    move-result-object v3

    #@19
    .line 1825
    .local v3, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$17;->this$0:Landroid/speech/tts/TextToSpeech;

    #@1b
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-wrap1(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$17;->val$text:Ljava/lang/CharSequence;

    #@21
    .line 1826
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$17;->this$0:Landroid/speech/tts/TextToSpeech;

    #@23
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$17;->val$params:Landroid/os/Bundle;

    #@25
    invoke-static {v0, v4}, Landroid/speech/tts/TextToSpeech;->-wrap0(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@28
    move-result-object v4

    #@29
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$17;->val$utteranceId:Ljava/lang/String;

    #@2b
    move-object v0, p1

    #@2c
    .line 1825
    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I

    #@2f
    move-result v8

    #@30
    .line 1827
    .local v8, "returnValue":I
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    #@33
    .line 1828
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v0

    #@37
    return-object v0

    #@38
    .line 1818
    .end local v3    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "returnValue":I
    :cond_1
    const-string/jumbo v0, "TextToSpeech"

    #@3b
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v2, "Can\'t write to "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$17;->val$file:Ljava/io/File;

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 1819
    const/4 v0, -0x1

    #@55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    move-result-object v0

    #@59
    return-object v0

    #@5a
    .line 1832
    :catch_0
    move-exception v7

    #@5b
    .line 1833
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v0, "TextToSpeech"

    #@5e
    new-instance v1, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v2, "Closing file "

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$17;->val$file:Ljava/io/File;

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    const-string/jumbo v2, " failed"

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7e
    .line 1834
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@81
    move-result-object v0

    #@82
    return-object v0

    #@83
    .line 1829
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    #@84
    .line 1830
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v0, "TextToSpeech"

    #@87
    new-instance v1, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v2, "Opening file "

    #@8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$17;->val$file:Ljava/io/File;

    #@95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    const-string/jumbo v2, " failed"

    #@9c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v1

    #@a4
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a7
    .line 1831
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@aa
    move-result-object v0

    #@ab
    return-object v0
.end method

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
    .line 1813
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$17;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
