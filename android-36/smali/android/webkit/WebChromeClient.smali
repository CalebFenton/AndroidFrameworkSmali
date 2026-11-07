.class public Landroid/webkit/WebChromeClient;
.super Ljava/lang/Object;
.source "WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebChromeClient$FileChooserParams;,
        Landroid/webkit/WebChromeClient$CustomViewCallback;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 2

    .line 502
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVideoLoadingProgressView()Landroid/view/View;
    .registers 2

    .line 514
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 520
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist onCloseWindow(Landroid/webkit/WebView;)V
    .registers 2
    .param p1, "window"    # Landroid/webkit/WebView;

    .line 196
    return-void
.end method

.method public whitelist onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 476
    return-void
.end method

.method public whitelist onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 5
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .line 486
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    .line 487
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "quota"    # J
    .param p5, "estimatedDatabaseSize"    # J
    .param p7, "totalQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 368
    return-void
.end method

.method public whitelist onGeolocationPermissionsHidePrompt()V
    .registers 1

    .line 422
    return-void
.end method

.method public whitelist onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 3
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .line 414
    return-void
.end method

.method public whitelist onHideCustomView()V
    .registers 1

    .line 129
    return-void
.end method

.method public whitelist onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onJsTimeout()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 463
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/webkit/PermissionRequest;

    .line 435
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    .line 436
    return-void
.end method

.method public whitelist onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/webkit/PermissionRequest;

    .line 444
    return-void
.end method

.method public whitelist onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .line 43
    return-void
.end method

.method public greylist onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 6
    .param p1, "requiredStorage"    # J
    .param p3, "quota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    invoke-interface {p5, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 393
    return-void
.end method

.method public whitelist onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 57
    return-void
.end method

.method public whitelist onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .line 50
    return-void
.end method

.method public whitelist onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .line 66
    return-void
.end method

.method public whitelist onRequestFocus(Landroid/webkit/WebView;)V
    .registers 2
    .param p1, "view"    # Landroid/webkit/WebView;

    .line 182
    return-void
.end method

.method public whitelist onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    return-void
.end method

.method public whitelist onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 103
    return-void
.end method

.method public whitelist onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 551
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 727
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 728
    return-void
.end method
