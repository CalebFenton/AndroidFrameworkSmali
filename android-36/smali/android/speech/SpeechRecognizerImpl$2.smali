.class Landroid/speech/SpeechRecognizerImpl$2;
.super Landroid/speech/IRecognitionServiceManagerCallback$Stub;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/SpeechRecognizerImpl;->connectToSystemService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/SpeechRecognizerImpl;


# direct methods
.method constructor blacklist <init>(Landroid/speech/SpeechRecognizerImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/speech/SpeechRecognizerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 464
    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$2;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-direct {p0}, Landroid/speech/IRecognitionServiceManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 4
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bind to system recognition service failed with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechRecognizer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$2;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$fgetmListener(Landroid/speech/SpeechRecognizerImpl;)Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    .line 481
    return-void
.end method

.method public blacklist onSuccess(Landroid/speech/IRecognitionService;)V
    .registers 4
    .param p1, "service"    # Landroid/speech/IRecognitionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$2;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {v0, p1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$fputmService(Landroid/speech/SpeechRecognizerImpl;Landroid/speech/IRecognitionService;)V

    .line 471
    :goto_5
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$2;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$fgetmPendingTasks(Landroid/speech/SpeechRecognizerImpl;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 472
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$2;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$fgetmHandler(Landroid/speech/SpeechRecognizerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl$2;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {v1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$fgetmPendingTasks(Landroid/speech/SpeechRecognizerImpl;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 474
    :cond_27
    return-void
.end method
