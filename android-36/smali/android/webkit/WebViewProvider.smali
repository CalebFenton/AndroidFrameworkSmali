.class public interface abstract Landroid/webkit/WebViewProvider;
.super Ljava/lang/Object;
.source "WebViewProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewProvider$ScrollDelegate;,
        Landroid/webkit/WebViewProvider$ViewDelegate;
    }
.end annotation


# virtual methods
.method public abstract whitelist addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract whitelist canGoBack()Z
.end method

.method public abstract whitelist canGoBackOrForward(I)Z
.end method

.method public abstract whitelist canGoForward()Z
.end method

.method public abstract whitelist canZoomIn()Z
.end method

.method public abstract whitelist canZoomOut()Z
.end method

.method public abstract whitelist capturePicture()Landroid/graphics/Picture;
.end method

.method public abstract whitelist clearCache(Z)V
.end method

.method public abstract whitelist clearFormData()V
.end method

.method public abstract whitelist clearHistory()V
.end method

.method public abstract whitelist clearMatches()V
.end method

.method public abstract whitelist clearSslPreferences()V
.end method

.method public abstract whitelist clearView()V
.end method

.method public abstract whitelist copyBackForwardList()Landroid/webkit/WebBackForwardList;
.end method

.method public abstract whitelist createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;
.end method

.method public abstract whitelist createWebMessageChannel()[Landroid/webkit/WebMessagePort;
.end method

.method public abstract whitelist destroy()V
.end method

.method public abstract whitelist documentHasImages(Landroid/os/Message;)V
.end method

.method public abstract whitelist dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
.end method

.method public abstract whitelist evaluateJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist findAll(Ljava/lang/String;)I
.end method

.method public abstract whitelist findAllAsync(Ljava/lang/String;)V
.end method

.method public abstract whitelist findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
.end method

.method public abstract whitelist findNext(Z)V
.end method

.method public abstract whitelist flingScroll(II)V
.end method

.method public abstract whitelist freeMemory()V
.end method

.method public abstract whitelist getCertificate()Landroid/net/http/SslCertificate;
.end method

.method public abstract whitelist getContentHeight()I
.end method

.method public abstract whitelist getContentWidth()I
.end method

.method public abstract whitelist getFavicon()Landroid/graphics/Bitmap;
.end method

.method public abstract whitelist getHitTestResult()Landroid/webkit/WebView$HitTestResult;
.end method

.method public abstract whitelist getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract whitelist getOriginalUrl()Ljava/lang/String;
.end method

.method public abstract whitelist getProgress()I
.end method

.method public abstract whitelist getRendererPriorityWaivedWhenNotVisible()Z
.end method

.method public abstract whitelist getRendererRequestedPriority()I
.end method

.method public abstract whitelist getScale()F
.end method

.method public abstract whitelist getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;
.end method

.method public abstract whitelist getSettings()Landroid/webkit/WebSettings;
.end method

.method public whitelist getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .registers 2

    .line 310
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object v0
.end method

.method public abstract whitelist getTitle()Ljava/lang/String;
.end method

.method public abstract whitelist getTouchIconUrl()Ljava/lang/String;
.end method

.method public abstract whitelist getUrl()Ljava/lang/String;
.end method

.method public abstract whitelist getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;
.end method

.method public abstract whitelist getVisibleTitleHeight()I
.end method

.method public abstract whitelist getWebChromeClient()Landroid/webkit/WebChromeClient;
.end method

.method public abstract whitelist getWebViewClient()Landroid/webkit/WebViewClient;
.end method

.method public abstract whitelist getWebViewRenderProcess()Landroid/webkit/WebViewRenderProcess;
.end method

.method public abstract whitelist getWebViewRenderProcessClient()Landroid/webkit/WebViewRenderProcessClient;
.end method

.method public abstract whitelist getZoomControls()Landroid/view/View;
.end method

.method public abstract whitelist goBack()V
.end method

.method public abstract whitelist goBackOrForward(I)V
.end method

.method public abstract whitelist goForward()V
.end method

.method public abstract whitelist init(Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract whitelist insertVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V
.end method

.method public abstract whitelist invokeZoomPicker()V
.end method

.method public abstract whitelist isPaused()Z
.end method

.method public abstract whitelist isPrivateBrowsingEnabled()Z
.end method

.method public abstract whitelist loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract whitelist loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract whitelist loadUrl(Ljava/lang/String;)V
.end method

.method public abstract whitelist loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist notifyFindDialogDismissed()V
.end method

.method public abstract whitelist onPause()V
.end method

.method public abstract whitelist onResume()V
.end method

.method public abstract whitelist overlayHorizontalScrollbar()Z
.end method

.method public abstract whitelist overlayVerticalScrollbar()Z
.end method

.method public abstract whitelist pageDown(Z)Z
.end method

.method public abstract whitelist pageUp(Z)Z
.end method

.method public abstract whitelist pauseTimers()V
.end method

.method public abstract whitelist postMessageToMainFrame(Landroid/webkit/WebMessage;Landroid/net/Uri;)V
.end method

.method public abstract whitelist postUrl(Ljava/lang/String;[B)V
.end method

.method public abstract whitelist reload()V
.end method

.method public abstract whitelist removeJavascriptInterface(Ljava/lang/String;)V
.end method

.method public abstract whitelist requestFocusNodeHref(Landroid/os/Message;)V
.end method

.method public abstract whitelist requestImageRef(Landroid/os/Message;)V
.end method

.method public abstract whitelist restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end method

.method public abstract whitelist restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
.end method

.method public abstract whitelist resumeTimers()V
.end method

.method public abstract whitelist savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract whitelist savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end method

.method public abstract whitelist saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
.end method

.method public abstract whitelist saveWebArchive(Ljava/lang/String;)V
.end method

.method public abstract whitelist saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist setCertificate(Landroid/net/http/SslCertificate;)V
.end method

.method public abstract whitelist setDownloadListener(Landroid/webkit/DownloadListener;)V
.end method

.method public abstract whitelist setFindListener(Landroid/webkit/WebView$FindListener;)V
.end method

.method public abstract whitelist setHorizontalScrollbarOverlay(Z)V
.end method

.method public abstract whitelist setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract whitelist setInitialScale(I)V
.end method

.method public abstract whitelist setMapTrackballToArrowKeys(Z)V
.end method

.method public abstract whitelist setNetworkAvailable(Z)V
.end method

.method public abstract whitelist setPictureListener(Landroid/webkit/WebView$PictureListener;)V
.end method

.method public abstract whitelist setRendererPriorityPolicy(IZ)V
.end method

.method public whitelist setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .registers 2
    .param p1, "textClassifier"    # Landroid/view/textclassifier/TextClassifier;

    .line 307
    return-void
.end method

.method public abstract whitelist setVerticalScrollbarOverlay(Z)V
.end method

.method public abstract whitelist setWebChromeClient(Landroid/webkit/WebChromeClient;)V
.end method

.method public abstract whitelist setWebViewClient(Landroid/webkit/WebViewClient;)V
.end method

.method public abstract whitelist setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroid/webkit/WebViewRenderProcessClient;)V
.end method

.method public abstract whitelist showFindDialog(Ljava/lang/String;Z)Z
.end method

.method public abstract whitelist stopLoading()V
.end method

.method public abstract whitelist zoomBy(F)Z
.end method

.method public abstract whitelist zoomIn()Z
.end method

.method public abstract whitelist zoomOut()Z
.end method
