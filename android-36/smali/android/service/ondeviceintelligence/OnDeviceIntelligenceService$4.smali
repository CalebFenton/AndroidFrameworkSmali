.class Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$4;
.super Ljava/lang/Object;
.source "OnDeviceIntelligenceService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->wrapListFeaturesCallback(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)Landroid/os/OutcomeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Ljava/util/List<",
        "Landroid/app/ondeviceintelligence/Feature;",
        ">;",
        "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V
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

    .line 354
    iput-object p2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$4;->val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;)V
    .registers 6
    .param p1, "exception"    # Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    .line 368
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$4;->val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getErrorParams()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 368
    invoke-interface {v0, v1, v2, v3}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 372
    goto :goto_2d

    .line 370
    :catch_12
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending download feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
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

    .line 354
    check-cast p1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    invoke-virtual {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$4;->onError(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;)V

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

    .line 354
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$4;->onResult(Ljava/util/List;)V

    return-void
.end method

.method public blacklist onResult(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ondeviceintelligence/Feature;",
            ">;)V"
        }
    .end annotation

    .line 358
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Landroid/app/ondeviceintelligence/Feature;>;"
    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$4;->val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onSuccess(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 361
    goto :goto_21

    .line 359
    :catch_6
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method
