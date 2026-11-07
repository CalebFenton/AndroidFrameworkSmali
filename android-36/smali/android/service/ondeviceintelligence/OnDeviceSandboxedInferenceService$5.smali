.class Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$5;
.super Ljava/lang/Object;
.source "OnDeviceSandboxedInferenceService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->wrapOutcomeReceiver(Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)Landroid/os/OutcomeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/os/PersistableBundle;",
        "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    .registers 2

    .line 594
    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$5;->val$callback:Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;)V
    .registers 6
    .param p1, "error"    # Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    .line 609
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$5;->val$callback:Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;->onFailure(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 612
    goto :goto_29

    .line 610
    :catch_e
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending exception details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 594
    check-cast p1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    invoke-virtual {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$5;->onError(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;)V

    return-void
.end method

.method public blacklist onResult(Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "result"    # Landroid/os/PersistableBundle;

    .line 598
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$5;->val$callback:Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;

    invoke-interface {v0, p1}, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;->onSuccess(Landroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 602
    goto :goto_21

    .line 599
    :catch_6
    move-exception v0

    .line 600
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

    .line 603
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 594
    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$5;->onResult(Landroid/os/PersistableBundle;)V

    return-void
.end method
