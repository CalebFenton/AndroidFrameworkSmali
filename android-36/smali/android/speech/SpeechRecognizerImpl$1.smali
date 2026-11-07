.class Landroid/speech/SpeechRecognizerImpl$1;
.super Landroid/os/Handler;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/SpeechRecognizerImpl;


# direct methods
.method constructor blacklist <init>(Landroid/speech/SpeechRecognizerImpl;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/speech/SpeechRecognizerImpl;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    goto :goto_55

    .line 105
    :pswitch_6
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleDestroy(Landroid/speech/SpeechRecognizerImpl;)V

    goto :goto_55

    .line 98
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;

    .line 100
    .local v0, "modelDownloadListenerArgs":Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    iget-object v2, v0, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v0, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-static {v1, v2, v3, v4}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleTriggerModelDownload(Landroid/speech/SpeechRecognizerImpl;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    .line 104
    .end local v0    # "modelDownloadListenerArgs":Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;
    goto :goto_55

    .line 93
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;

    .line 94
    .local v0, "args":Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    iget-object v2, v0, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v0, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;->mCallback:Landroid/speech/RecognitionSupportCallback;

    invoke-static {v1, v2, v3, v4}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleCheckRecognitionSupport(Landroid/speech/SpeechRecognizerImpl;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    .line 96
    .end local v0    # "args":Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;
    goto :goto_55

    .line 91
    :pswitch_2c
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleSetTemporaryComponent(Landroid/speech/SpeechRecognizerImpl;Landroid/content/ComponentName;)V

    goto :goto_55

    .line 89
    :pswitch_36
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/RecognitionListener;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleChangeListener(Landroid/speech/SpeechRecognizerImpl;Landroid/speech/RecognitionListener;)V

    goto :goto_55

    .line 88
    :pswitch_40
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleCancelMessage(Landroid/speech/SpeechRecognizerImpl;)V

    goto :goto_55

    .line 87
    :pswitch_46
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleStopMessage(Landroid/speech/SpeechRecognizerImpl;)V

    goto :goto_55

    .line 86
    :pswitch_4c
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleStartListening(Landroid/speech/SpeechRecognizerImpl;Landroid/content/Intent;)V

    .line 107
    :goto_55
    return-void

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_46
        :pswitch_40
        :pswitch_36
        :pswitch_2c
        :pswitch_1c
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
