.class Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$3;
.super Ljava/lang/Object;
.source "OnDeviceSandboxedInferenceService.java"

# interfaces
.implements Landroid/app/ondeviceintelligence/StreamingProcessingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->wrapStreamingResponseCallback(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)Landroid/app/ondeviceintelligence/StreamingProcessingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

.field final synthetic blacklist val$callback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 508
    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$3;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    iput-object p2, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$3;->val$callback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDataAugmentRequest(Landroid/os/Bundle;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "content"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 542
    .local p2, "contentCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$3;->val$callback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    iget-object v1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$3;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {v1, p2}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$mwrapRemoteCallback(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onDataAugmentRequest(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 546
    goto :goto_27

    .line 544
    :catch_c
    move-exception v0

    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending augment request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method public whitelist onError(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;)V
    .registers 6
    .param p1, "exception"    # Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    .line 531
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$3;->val$callback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 532
    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getErrorParams()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 531
    invoke-interface {v0, v1, v2, v3}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 535
    goto :goto_2d

    .line 533
    :catch_12
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method

.method public whitelist onPartialResult(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "partialResult"    # Landroid/os/Bundle;

    .line 512
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$3;->val$callback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onNewContent(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 515
    goto :goto_21

    .line 513
    :catch_6
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public whitelist onResult(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Bundle;

    .line 521
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$3;->val$callback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 524
    goto :goto_21

    .line 522
    :catch_6
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method
