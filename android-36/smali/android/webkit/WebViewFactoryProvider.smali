.class public interface abstract Landroid/webkit/WebViewFactoryProvider;
.super Ljava/lang/Object;
.source "WebViewFactoryProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactoryProvider$Statics;
    }
.end annotation


# static fields
.field public static final blacklist MINIMUM_SUPPORTED_TARGET_SDK:I = 0x21

.field public static final blacklist MINIMUM_SUPPORTED_VERSION_CODE:J = 0x276ac580L


# direct methods
.method public static blacklist describeCompatibleImplementationPackage()Ljava/lang/String;
    .registers 2

    .line 72
    invoke-static {}, Landroid/webkit/Flags;->useBEntryPoint()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 73
    nop

    .line 74
    const-wide/32 v0, 0x276ac580

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 73
    const-string v1, "Minimum versionCode for OS support: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_19
    nop

    .line 77
    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 76
    const-string v1, "Minimum targetSdkVersion: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getWebViewFactoryClassName()Ljava/lang/String;
    .registers 1

    .line 87
    invoke-static {}, Landroid/webkit/Flags;->useBEntryPoint()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 88
    const-string v0, "com.android.webview.chromium.WebViewChromiumFactoryProviderForB"

    return-object v0

    .line 90
    :cond_9
    const-string v0, "com.android.webview.chromium.WebViewChromiumFactoryProviderForT"

    return-object v0
.end method

.method public static blacklist isCompatibleImplementationPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 8
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 59
    invoke-static {}, Landroid/webkit/Flags;->useBEntryPoint()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 60
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v3, v0

    const-wide/32 v5, 0x276ac580

    cmp-long v0, v3, v5

    if-ltz v0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1

    .line 62
    :cond_15
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x21

    if-lt v0, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1
.end method


# virtual methods
.method public whitelist createPacProcessor()Landroid/webkit/PacProcessor;
    .registers 3

    .line 255
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;
.end method

.method public abstract whitelist getCookieManager()Landroid/webkit/CookieManager;
.end method

.method public abstract whitelist getGeolocationPermissions()Landroid/webkit/GeolocationPermissions;
.end method

.method public whitelist getPacProcessor()Landroid/webkit/PacProcessor;
    .registers 3

    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getServiceWorkerController()Landroid/webkit/ServiceWorkerController;
.end method

.method public abstract whitelist getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;
.end method

.method public abstract whitelist getTokenBindingService()Landroid/webkit/TokenBindingService;
.end method

.method public abstract whitelist getTracingController()Landroid/webkit/TracingController;
.end method

.method public abstract whitelist getWebIconDatabase()Landroid/webkit/WebIconDatabase;
.end method

.method public abstract whitelist getWebStorage()Landroid/webkit/WebStorage;
.end method

.method public abstract whitelist getWebViewClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract whitelist getWebViewDatabase(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
.end method
