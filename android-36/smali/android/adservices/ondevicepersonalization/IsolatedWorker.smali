.class public interface abstract Landroid/adservices/ondevicepersonalization/IsolatedWorker;
.super Ljava/lang/Object;
.source "IsolatedWorker.java"


# virtual methods
.method public whitelist onDownloadCompleted(Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "input"    # Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;",
            "Landroid/adservices/ondevicepersonalization/IsolatedServiceException;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p2, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;Landroid/adservices/ondevicepersonalization/IsolatedServiceException;>;"
    new-instance v0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->build()Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public whitelist onEvent(Landroid/adservices/ondevicepersonalization/EventInput;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "input"    # Landroid/adservices/ondevicepersonalization/EventInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/EventInput;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/ondevicepersonalization/EventOutput;",
            "Landroid/adservices/ondevicepersonalization/IsolatedServiceException;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p2, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/EventOutput;Landroid/adservices/ondevicepersonalization/IsolatedServiceException;>;"
    new-instance v0, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/EventOutput$Builder;->build()Landroid/adservices/ondevicepersonalization/EventOutput;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public whitelist onExecute(Landroid/adservices/ondevicepersonalization/ExecuteInput;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "input"    # Landroid/adservices/ondevicepersonalization/ExecuteInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/ExecuteInput;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/ondevicepersonalization/ExecuteOutput;",
            "Landroid/adservices/ondevicepersonalization/IsolatedServiceException;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/ExecuteOutput;Landroid/adservices/ondevicepersonalization/IsolatedServiceException;>;"
    new-instance v0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->build()Landroid/adservices/ondevicepersonalization/ExecuteOutput;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public whitelist onRender(Landroid/adservices/ondevicepersonalization/RenderInput;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "input"    # Landroid/adservices/ondevicepersonalization/RenderInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/RenderInput;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/ondevicepersonalization/RenderOutput;",
            "Landroid/adservices/ondevicepersonalization/IsolatedServiceException;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p2, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/RenderOutput;Landroid/adservices/ondevicepersonalization/IsolatedServiceException;>;"
    new-instance v0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->build()Landroid/adservices/ondevicepersonalization/RenderOutput;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public whitelist onTrainingExamples(Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "input"    # Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;",
            "Landroid/adservices/ondevicepersonalization/IsolatedServiceException;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p2, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;Landroid/adservices/ondevicepersonalization/IsolatedServiceException;>;"
    new-instance v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->build()Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public whitelist onWebTrigger(Landroid/adservices/ondevicepersonalization/WebTriggerInput;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "input"    # Landroid/adservices/ondevicepersonalization/WebTriggerInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/WebTriggerInput;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/ondevicepersonalization/WebTriggerOutput;",
            "Landroid/adservices/ondevicepersonalization/IsolatedServiceException;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p2, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/WebTriggerOutput;Landroid/adservices/ondevicepersonalization/IsolatedServiceException;>;"
    new-instance v0, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/WebTriggerOutput$Builder;->build()Landroid/adservices/ondevicepersonalization/WebTriggerOutput;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 152
    return-void
.end method
