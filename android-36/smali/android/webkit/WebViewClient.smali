.class public Landroid/webkit/WebViewClient;
.super Ljava/lang/Object;
.source "WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewClient$SafeBrowsingThreat;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_AUTHENTICATION:I = -0x4

.field public static final whitelist ERROR_BAD_URL:I = -0xc

.field public static final whitelist ERROR_CONNECT:I = -0x6

.field public static final whitelist ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final whitelist ERROR_FILE:I = -0xd

.field public static final whitelist ERROR_FILE_NOT_FOUND:I = -0xe

.field public static final whitelist ERROR_HOST_LOOKUP:I = -0x2

.field public static final whitelist ERROR_IO:I = -0x7

.field public static final whitelist ERROR_PROXY_AUTHENTICATION:I = -0x5

.field public static final whitelist ERROR_REDIRECT_LOOP:I = -0x9

.field public static final whitelist ERROR_TIMEOUT:I = -0x8

.field public static final whitelist ERROR_TOO_MANY_REQUESTS:I = -0xf

.field public static final whitelist ERROR_UNKNOWN:I = -0x1

.field public static final whitelist ERROR_UNSAFE_RESOURCE:I = -0x10

.field public static final whitelist ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final whitelist ERROR_UNSUPPORTED_SCHEME:I = -0xa

.field public static final whitelist SAFE_BROWSING_THREAT_BILLING:I = 0x4

.field public static final whitelist SAFE_BROWSING_THREAT_MALWARE:I = 0x1

.field public static final whitelist SAFE_BROWSING_THREAT_PHISHING:I = 0x2

.field public static final whitelist SAFE_BROWSING_THREAT_UNKNOWN:I = 0x0

.field public static final whitelist SAFE_BROWSING_THREAT_UNWANTED_SOFTWARE:I = 0x3


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o onUnhandledInputEventInternal(Landroid/webkit/WebView;Landroid/view/InputEvent;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 542
    invoke-virtual {p1}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 543
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_9

    .line 544
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V

    .line 546
    :cond_9
    return-void
.end method


# virtual methods
.method public whitelist doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .line 390
    return-void
.end method

.method public whitelist onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .line 378
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 379
    return-void
.end method

.method public whitelist onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 133
    return-void
.end method

.method public whitelist onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 163
    return-void
.end method

.method public whitelist onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 123
    return-void
.end method

.method public whitelist onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 109
    return-void
.end method

.method public whitelist onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/ClientCertRequest;

    .line 461
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->cancel()V

    .line 462
    return-void
.end method

.method public whitelist onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    return-void
.end method

.method public whitelist onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .line 346
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 347
    nop

    .line 348
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_1e
    return-void
.end method

.method public whitelist onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .line 481
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 482
    return-void
.end method

.method public whitelist onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    .line 365
    return-void
.end method

.method public whitelist onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;

    .line 571
    return-void
.end method

.method public whitelist onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .line 424
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 425
    return-void
.end method

.method public whitelist onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "detail"    # Landroid/webkit/RenderProcessGoneDetail;

    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "threatType"    # I
    .param p4, "callback"    # Landroid/webkit/SafeBrowsingResponse;

    .line 619
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/webkit/SafeBrowsingResponse;->showInterstitial(Z)V

    .line 620
    return-void
.end method

.method public whitelist onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .line 557
    return-void
.end method

.method public whitelist onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 256
    return-void
.end method

.method public greylist onUnhandledInputEvent(Landroid/webkit/WebView;Landroid/view/InputEvent;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 534
    instance-of v0, p2, Landroid/view/KeyEvent;

    if-eqz v0, :cond_b

    .line 535
    move-object v0, p2

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 536
    return-void

    .line 538
    :cond_b
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledInputEventInternal(Landroid/webkit/WebView;Landroid/view/InputEvent;)V

    .line 539
    return-void
.end method

.method public whitelist onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 511
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledInputEventInternal(Landroid/webkit/WebView;Landroid/view/InputEvent;)V

    .line 512
    return-void
.end method

.method public whitelist shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 237
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public whitelist shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 91
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    const/4 v0, 0x0

    return v0
.end method
