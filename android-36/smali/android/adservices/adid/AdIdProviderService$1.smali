.class Landroid/adservices/adid/AdIdProviderService$1;
.super Landroid/adservices/adid/IAdIdProviderService$Stub;
.source "AdIdProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adid/AdIdProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adservices/adid/AdIdProviderService;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/adid/AdIdProviderService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/adservices/adid/AdIdProviderService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Landroid/adservices/adid/AdIdProviderService$1;->this$0:Landroid/adservices/adid/AdIdProviderService;

    invoke-direct {p0}, Landroid/adservices/adid/IAdIdProviderService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAdIdProvider(ILjava/lang/String;Landroid/adservices/adid/IGetAdIdProviderCallback;)V
    .registers 7
    .param p1, "appUID"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resultCallback"    # Landroid/adservices/adid/IGetAdIdProviderCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/adservices/adid/AdIdProviderService$1;->this$0:Landroid/adservices/adid/AdIdProviderService;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/adid/AdIdProviderService;->onGetAdId(ILjava/lang/String;)Landroid/adservices/adid/AdId;

    move-result-object v0

    .line 68
    .local v0, "adId":Landroid/adservices/adid/AdId;
    new-instance v1, Landroid/adservices/adid/GetAdIdResult$Builder;

    invoke-direct {v1}, Landroid/adservices/adid/GetAdIdResult$Builder;-><init>()V

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/adservices/adid/GetAdIdResult$Builder;->setStatusCode(I)Landroid/adservices/adid/GetAdIdResult$Builder;

    move-result-object v1

    const-string v2, ""

    .line 71
    invoke-virtual {v1, v2}, Landroid/adservices/adid/GetAdIdResult$Builder;->setErrorMessage(Ljava/lang/String;)Landroid/adservices/adid/GetAdIdResult$Builder;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Landroid/adservices/adid/AdId;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adid/GetAdIdResult$Builder;->setAdId(Ljava/lang/String;)Landroid/adservices/adid/GetAdIdResult$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v0}, Landroid/adservices/adid/AdId;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/adservices/adid/GetAdIdResult$Builder;->setLatEnabled(Z)Landroid/adservices/adid/GetAdIdResult$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/adservices/adid/GetAdIdResult$Builder;->build()Landroid/adservices/adid/GetAdIdResult;

    move-result-object v1

    .line 76
    .local v1, "adIdInternal":Landroid/adservices/adid/GetAdIdResult;
    invoke-interface {p3, v1}, Landroid/adservices/adid/IGetAdIdProviderCallback;->onResult(Landroid/adservices/adid/GetAdIdResult;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    .line 80
    .end local v0    # "adId":Landroid/adservices/adid/AdId;
    .end local v1    # "adIdInternal":Landroid/adservices/adid/GetAdIdResult;
    goto :goto_37

    .line 77
    :catchall_2e
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    nop

    .line 79
    invoke-static {v0}, Landroid/adservices/AdServicesFrameworkHelper;->getExceptionStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-interface {p3, v1}, Landroid/adservices/adid/IGetAdIdProviderCallback;->onError(Ljava/lang/String;)V

    .line 81
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_37
    return-void
.end method
