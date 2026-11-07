.class public final Landroid/webkit/WebViewUpdateService;
.super Ljava/lang/Object;
.source "WebViewUpdateService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor greylist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 3

    .line 41
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 42
    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 43
    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewUpdateManager;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0

    .line 45
    :cond_16
    new-array v0, v1, [Landroid/webkit/WebViewProviderInfo;

    return-object v0

    .line 48
    :cond_19
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    .line 49
    .local v0, "service":Landroid/webkit/IWebViewUpdateService;
    if-nez v0, :cond_22

    .line 50
    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    return-object v1

    .line 53
    :cond_22
    :try_start_22
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_27

    return-object v1

    .line 54
    :catch_27
    move-exception v1

    .line 55
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist getCurrentWebViewPackageName()Ljava/lang/String;
    .registers 3

    .line 91
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 92
    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 93
    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewUpdateManager;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_16
    return-object v1

    .line 98
    :cond_17
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    .line 99
    .local v0, "service":Landroid/webkit/IWebViewUpdateService;
    if-nez v0, :cond_1e

    .line 100
    return-object v1

    .line 103
    :cond_1e
    :try_start_1e
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_22} :catch_23

    return-object v1

    .line 104
    :catch_23
    move-exception v1

    .line 105
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static greylist-max-o getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .registers 1

    .line 111
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 3

    .line 68
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 69
    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 70
    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewUpdateManager;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0

    .line 72
    :cond_16
    new-array v0, v1, [Landroid/webkit/WebViewProviderInfo;

    return-object v0

    .line 75
    :cond_19
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    .line 76
    .local v0, "service":Landroid/webkit/IWebViewUpdateService;
    if-nez v0, :cond_22

    .line 77
    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    return-object v1

    .line 80
    :cond_22
    :try_start_22
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_27

    return-object v1

    .line 81
    :catch_27
    move-exception v1

    .line 82
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
