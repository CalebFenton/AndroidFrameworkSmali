.class Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$5;
.super Ljava/lang/Object;
.source "OnDeviceIntelligenceService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->wrapFeatureDetailsCallback(Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)Landroid/os/OutcomeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/app/ondeviceintelligence/FeatureDetails;",
        "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$featureStatusCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;
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

    .line 380
    iput-object p2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$5;->val$featureStatusCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;)V
    .registers 6
    .param p1, "exception"    # Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    .line 394
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$5;->val$featureStatusCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getErrorCode()I

    move-result v1

    .line 395
    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getErrorParams()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 394
    invoke-interface {v0, v1, v2, v3}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 398
    goto :goto_2d

    .line 396
    :catch_12
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending feature status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
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

    .line 380
    check-cast p1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    invoke-virtual {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$5;->onError(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;)V

    return-void
.end method

.method public blacklist onResult(Landroid/app/ondeviceintelligence/FeatureDetails;)V
    .registers 6
    .param p1, "result"    # Landroid/app/ondeviceintelligence/FeatureDetails;

    .line 384
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$5;->val$featureStatusCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onSuccess(Landroid/app/ondeviceintelligence/FeatureDetails;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 387
    goto :goto_21

    .line 385
    :catch_6
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending feature status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
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

    .line 380
    check-cast p1, Landroid/app/ondeviceintelligence/FeatureDetails;

    invoke-virtual {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$5;->onResult(Landroid/app/ondeviceintelligence/FeatureDetails;)V

    return-void
.end method
