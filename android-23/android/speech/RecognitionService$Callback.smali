.class public Landroid/speech/RecognitionService$Callback;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mListener:Landroid/speech/IRecognitionListener;

.field final synthetic this$0:Landroid/speech/RecognitionService;


# direct methods
.method static synthetic -get0(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    #@2
    return-object v0
.end method

.method private constructor <init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/RecognitionService;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "callingUid"    # I

    #@0
    .prologue
    .line 236
    iput-object p1, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 237
    iput-object p2, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    #@7
    .line 238
    iput p3, p0, Landroid/speech/RecognitionService$Callback;->mCallingUid:I

    #@9
    .line 236
    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;ILandroid/speech/RecognitionService$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/RecognitionService;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService$Callback;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;I)V

    #@3
    return-void
.end method


# virtual methods
.method public beginningOfSpeech()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    #@2
    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->onBeginningOfSpeech()V

    #@5
    .line 244
    return-void
.end method

.method public bufferReceived([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    #@2
    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onBufferReceived([B)V

    #@5
    .line 256
    return-void
.end method

.method public endOfSpeech()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    #@2
    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->onEndOfSpeech()V

    #@5
    .line 263
    return-void
.end method

.method public error(I)V
    .locals 2
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    #@2
    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 274
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    #@10
    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V

    #@13
    .line 272
    return-void
.end method

.method public getCallingUid()I
    .locals 1

    #@0
    .prologue
    .line 329
    iget v0, p0, Landroid/speech/RecognitionService$Callback;->mCallingUid:I

    #@2
    return v0
.end method

.method public partialResults(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "partialResults"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    #@2
    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    #@5
    .line 288
    return-void
.end method

.method public readyForSpeech(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    #@2
    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    #@5
    .line 298
    return-void
.end method

.method public results(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    #@2
    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 311
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    #@10
    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onResults(Landroid/os/Bundle;)V

    #@13
    .line 309
    return-void
.end method

.method public rmsChanged(F)V
    .locals 1
    .param p1, "rmsdB"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    #@2
    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onRmsChanged(F)V

    #@5
    .line 320
    return-void
.end method
