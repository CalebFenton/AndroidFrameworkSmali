.class Landroid/service/autofill/AutofillService$1;
.super Landroid/service/autofill/IAutoFillService$Stub;
.source "AutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/autofill/AutofillService;


# direct methods
.method constructor blacklist <init>(Landroid/service/autofill/AutofillService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/autofill/AutofillService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 613
    iput-object p1, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-direct {p0}, Landroid/service/autofill/IAutoFillService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnectedStateChanged(Z)V
    .registers 5
    .param p1, "connected"    # Z

    .line 616
    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    .line 617
    if-eqz p1, :cond_e

    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda6;-><init>()V

    goto :goto_13

    :cond_e
    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda7;-><init>()V

    :goto_13
    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    .line 616
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 619
    return-void
.end method

.method public blacklist onConvertCredentialRequest(Landroid/service/autofill/ConvertCredentialRequest;Landroid/service/autofill/IConvertCredentialCallback;)V
    .registers 7
    .param p1, "convertCredentialRequest"    # Landroid/service/autofill/ConvertCredentialRequest;
    .param p2, "convertCredentialCallback"    # Landroid/service/autofill/IConvertCredentialCallback;

    .line 639
    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    new-instance v3, Landroid/service/autofill/ConvertCredentialCallback;

    invoke-direct {v3, p2}, Landroid/service/autofill/ConvertCredentialCallback;-><init>(Landroid/service/autofill/IConvertCredentialCallback;)V

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 643
    return-void
.end method

.method public blacklist onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;Landroid/os/IBinder;)V
    .registers 12
    .param p1, "request"    # Landroid/service/autofill/FillRequest;
    .param p2, "callback"    # Landroid/service/autofill/IFillCallback;
    .param p3, "autofillClientCallback"    # Landroid/os/IBinder;

    .line 648
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v1

    .line 650
    .local v1, "transport":Landroid/os/ICancellationSignal;
    :try_start_4
    invoke-interface {p2, v1}, Landroid/service/autofill/IFillCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 653
    goto :goto_c

    .line 651
    :catch_8
    move-exception v0

    .line 652
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 654
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v3, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    .line 656
    invoke-static {v1}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v5

    new-instance v6, Landroid/service/autofill/FillCallback;

    .line 657
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v4

    invoke-direct {v6, p2, v4}, Landroid/service/autofill/FillCallback;-><init>(Landroid/service/autofill/IFillCallback;I)V

    .line 654
    move-object v4, p1

    move-object v7, p3

    .end local p1    # "request":Landroid/service/autofill/FillRequest;
    .end local p3    # "autofillClientCallback":Landroid/os/IBinder;
    .local v4, "request":Landroid/service/autofill/FillRequest;
    .local v7, "autofillClientCallback":Landroid/os/IBinder;
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 659
    return-void
.end method

.method public blacklist onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V
    .registers 10
    .param p1, "request"    # Landroid/service/autofill/FillRequest;
    .param p2, "callback"    # Landroid/service/autofill/IFillCallback;

    .line 623
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 625
    .local v0, "transport":Landroid/os/ICancellationSignal;
    :try_start_4
    invoke-interface {p2, v0}, Landroid/service/autofill/IFillCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 628
    goto :goto_c

    .line 626
    :catch_8
    move-exception v1

    .line 627
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 629
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_c
    iget-object v1, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v1}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v3, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    .line 631
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    new-instance v5, Landroid/service/autofill/FillCallback;

    .line 632
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v6

    invoke-direct {v5, p2, v6}, Landroid/service/autofill/FillCallback;-><init>(Landroid/service/autofill/IFillCallback;I)V

    .line 629
    invoke-static {v2, v3, p1, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 633
    return-void
.end method

.method public blacklist onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V
    .registers 7
    .param p1, "request"    # Landroid/service/autofill/SaveRequest;
    .param p2, "callback"    # Landroid/service/autofill/ISaveCallback;

    .line 663
    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    new-instance v3, Landroid/service/autofill/SaveCallback;

    invoke-direct {v3, p2}, Landroid/service/autofill/SaveCallback;-><init>(Landroid/service/autofill/ISaveCallback;)V

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 666
    return-void
.end method

.method public blacklist onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 670
    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    new-instance v3, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;

    const-string/jumbo v4, "passwords"

    invoke-direct {v3, p1, v4}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;-><init>(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 674
    return-void
.end method

.method public blacklist onSessionDestroyed(Landroid/service/autofill/FillEventHistory;)V
    .registers 5
    .param p1, "history"    # Landroid/service/autofill/FillEventHistory;

    .line 678
    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 682
    return-void
.end method
