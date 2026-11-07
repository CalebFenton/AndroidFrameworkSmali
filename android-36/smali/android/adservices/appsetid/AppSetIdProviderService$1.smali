.class Landroid/adservices/appsetid/AppSetIdProviderService$1;
.super Landroid/adservices/appsetid/IAppSetIdProviderService$Stub;
.source "AppSetIdProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/appsetid/AppSetIdProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adservices/appsetid/AppSetIdProviderService;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/appsetid/AppSetIdProviderService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/adservices/appsetid/AppSetIdProviderService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Landroid/adservices/appsetid/AppSetIdProviderService$1;->this$0:Landroid/adservices/appsetid/AppSetIdProviderService;

    invoke-direct {p0}, Landroid/adservices/appsetid/IAppSetIdProviderService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAppSetId(ILjava/lang/String;Landroid/adservices/appsetid/IGetAppSetIdProviderCallback;)V
    .registers 7
    .param p1, "appUID"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resultCallback"    # Landroid/adservices/appsetid/IGetAppSetIdProviderCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    :try_start_0
    iget-object v0, p0, Landroid/adservices/appsetid/AppSetIdProviderService$1;->this$0:Landroid/adservices/appsetid/AppSetIdProviderService;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/appsetid/AppSetIdProviderService;->onGetAppSetId(ILjava/lang/String;)Landroid/adservices/appsetid/AppSetId;

    move-result-object v0

    .line 65
    .local v0, "appsetId":Landroid/adservices/appsetid/AppSetId;
    new-instance v1, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;

    invoke-direct {v1}, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;-><init>()V

    .line 67
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->setStatusCode(I)Landroid/adservices/appsetid/GetAppSetIdResult$Builder;

    move-result-object v1

    const-string v2, ""

    .line 68
    invoke-virtual {v1, v2}, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->setErrorMessage(Ljava/lang/String;)Landroid/adservices/appsetid/GetAppSetIdResult$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Landroid/adservices/appsetid/AppSetId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->setAppSetId(Ljava/lang/String;)Landroid/adservices/appsetid/GetAppSetIdResult$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Landroid/adservices/appsetid/AppSetId;->getScope()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->setAppSetIdScope(I)Landroid/adservices/appsetid/GetAppSetIdResult$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->build()Landroid/adservices/appsetid/GetAppSetIdResult;

    move-result-object v1

    .line 73
    .local v1, "appsetIdInternal":Landroid/adservices/appsetid/GetAppSetIdResult;
    invoke-interface {p3, v1}, Landroid/adservices/appsetid/IGetAppSetIdProviderCallback;->onResult(Landroid/adservices/appsetid/GetAppSetIdResult;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    .line 77
    .end local v0    # "appsetId":Landroid/adservices/appsetid/AppSetId;
    .end local v1    # "appsetIdInternal":Landroid/adservices/appsetid/GetAppSetIdResult;
    goto :goto_37

    .line 74
    :catchall_2e
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Throwable;
    nop

    .line 76
    invoke-static {v0}, Landroid/adservices/AdServicesFrameworkHelper;->getExceptionStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-interface {p3, v1}, Landroid/adservices/appsetid/IGetAppSetIdProviderCallback;->onError(Ljava/lang/String;)V

    .line 78
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_37
    return-void
.end method
