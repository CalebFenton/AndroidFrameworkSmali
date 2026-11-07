.class Landroid/speech/SpeechRecognizerProxy;
.super Landroid/speech/SpeechRecognizer;
.source "SpeechRecognizerProxy.java"


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mDelegate:Landroid/speech/SpeechRecognizer;


# direct methods
.method constructor blacklist <init>(Landroid/speech/SpeechRecognizer;)V
    .registers 4
    .param p1, "delegate"    # Landroid/speech/SpeechRecognizer;

    .line 38
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;-><init>()V

    .line 34
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mCloseGuard:Landroid/util/CloseGuard;

    .line 39
    iput-object p1, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    .line 40
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "SpeechRecognizer#destroy()"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 61
    return-void
.end method

.method public whitelist checkRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .registers 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "supportListener"    # Landroid/speech/RecognitionSupportCallback;

    .line 78
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/SpeechRecognizer;->checkRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    .line 79
    return-void
.end method

.method public whitelist destroy()V
    .registers 2

    .line 66
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 67
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    .line 69
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 70
    nop

    .line 71
    return-void

    .line 69
    :catchall_f
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 70
    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 102
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 103
    invoke-virtual {p0}, Landroid/speech/SpeechRecognizerProxy;->destroy()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    .line 105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 106
    nop

    .line 107
    return-void

    .line 105
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 106
    throw v0
.end method

.method public whitelist setRecognitionListener(Landroid/speech/RecognitionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    .line 45
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 46
    return-void
.end method

.method public blacklist setTemporaryOnDeviceRecognizer(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 96
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Landroid/speech/SpeechRecognizer;->setTemporaryOnDeviceRecognizer(Landroid/content/ComponentName;)V

    .line 97
    return-void
.end method

.method public whitelist startListening(Landroid/content/Intent;)V
    .registers 3
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 50
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public whitelist stopListening()V
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 56
    return-void
.end method

.method public whitelist triggerModelDownload(Landroid/content/Intent;)V
    .registers 3
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Landroid/speech/SpeechRecognizer;->triggerModelDownload(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public whitelist triggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .registers 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/speech/ModelDownloadListener;

    .line 91
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/SpeechRecognizer;->triggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    .line 92
    return-void
.end method
