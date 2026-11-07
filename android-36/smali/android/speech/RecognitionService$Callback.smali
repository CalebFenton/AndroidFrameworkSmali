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
.field private blacklist mAttributionContext:Landroid/content/Context;

.field private blacklist mAttributionContextCreated:Z

.field private final blacklist mCallingAttributionSource:Landroid/content/AttributionSource;

.field private final greylist-max-o mListener:Landroid/speech/IRecognitionListener;

.field final synthetic blacklist this$0:Landroid/speech/RecognitionService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionContextCreated(Landroid/speech/RecognitionService$Callback;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/speech/RecognitionService$Callback;->mAttributionContextCreated:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallingAttributionSource(Landroid/speech/RecognitionService$Callback;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/speech/RecognitionService$Callback;->mCallingAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAttributionContextCreated(Landroid/speech/RecognitionService$Callback;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/speech/RecognitionService$Callback;->mAttributionContextCreated:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "this$0"    # Landroid/speech/RecognitionService;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 561
    iput-object p1, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p2, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    .line 563
    iput-object p3, p0, Landroid/speech/RecognitionService$Callback;->mCallingAttributionSource:Landroid/content/AttributionSource;

    .line 564
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;Landroid/speech/RecognitionService-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService$Callback;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    return-void
.end method


# virtual methods
.method public whitelist beginningOfSpeech()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->onBeginningOfSpeech()V

    .line 571
    return-void
.end method

.method public whitelist bufferReceived([B)V
    .registers 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onBufferReceived([B)V

    .line 582
    return-void
.end method

.method public whitelist endOfSegmentedSession()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 666
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->onEndOfSegmentedSession()V

    .line 667
    return-void
.end method

.method public whitelist endOfSpeech()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->onEndOfSpeech()V

    .line 589
    return-void
.end method

.method public whitelist error(I)V
    .registers 5
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 598
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 599
    return-void
.end method

.method blacklist getAttributionContextForCaller()Landroid/content/Context;
    .registers 4

    .line 729
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mAttributionContext:Landroid/content/Context;

    if-nez v0, :cond_1b

    .line 730
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    new-instance v1, Landroid/content/ContextParams$Builder;

    invoke-direct {v1}, Landroid/content/ContextParams$Builder;-><init>()V

    iget-object v2, p0, Landroid/speech/RecognitionService$Callback;->mCallingAttributionSource:Landroid/content/AttributionSource;

    .line 731
    invoke-virtual {v1, v2}, Landroid/content/ContextParams$Builder;->setNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/ContextParams$Builder;

    move-result-object v1

    .line 732
    invoke-virtual {v1}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v1

    .line 730
    invoke-virtual {v0, v1}, Landroid/speech/RecognitionService;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionService$Callback;->mAttributionContext:Landroid/content/Context;

    .line 734
    :cond_1b
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mAttributionContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getCallingAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 725
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mCallingAttributionSource:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public whitelist getCallingUid()I
    .registers 2

    .line 707
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mCallingAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    return v0
.end method

.method public whitelist languageDetection(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "results"    # Landroid/os/Bundle;

    .line 696
    :try_start_0
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onLanguageDetection(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 699
    nop

    .line 700
    return-void

    .line 697
    :catch_7
    move-exception v0

    .line 698
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist partialResults(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "partialResults"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 613
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    .line 614
    return-void
.end method

.method public whitelist readyForSpeech(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    .line 624
    return-void
.end method

.method public whitelist results(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 635
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onResults(Landroid/os/Bundle;)V

    .line 636
    return-void
.end method

.method public whitelist rmsChanged(F)V
    .registers 3
    .param p1, "rmsdB"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onRmsChanged(F)V

    .line 646
    return-void
.end method

.method public whitelist segmentResults(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onSegmentResults(Landroid/os/Bundle;)V

    .line 658
    return-void
.end method
