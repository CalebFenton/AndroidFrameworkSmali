.class Landroid/adservices/common/AdServicesCommonManager$3;
.super Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback$Stub;
.source "AdServicesCommonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/common/AdServicesCommonManager;->requestAdServicesModuleOverrides(Landroid/adservices/common/UpdateAdServicesModuleStatesParams;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/adservices/common/AdServicesOutcomeReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/common/AdServicesCommonManager;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 3
    .param p1, "this$0"    # Landroid/adservices/common/AdServicesCommonManager;
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

    .line 495
    iput-object p2, p0, Landroid/adservices/common/AdServicesCommonManager$3;->val$callback:Landroid/adservices/common/AdServicesOutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 6
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager$3;->val$callback:Landroid/adservices/common/AdServicesOutcomeReceiver;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal Error! status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 506
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager$3;->val$callback:Landroid/adservices/common/AdServicesOutcomeReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 499
    return-void
.end method
