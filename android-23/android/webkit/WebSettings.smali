.class public abstract Landroid/webkit/WebSettings;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSettings$LayoutAlgorithm;,
        Landroid/webkit/WebSettings$TextSize;,
        Landroid/webkit/WebSettings$ZoomDensity;,
        Landroid/webkit/WebSettings$RenderPriority;,
        Landroid/webkit/WebSettings$PluginState;
    }
.end annotation


# static fields
.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOAD_NO_CACHE:I = 0x2

.field public static final MIXED_CONTENT_ALWAYS_ALLOW:I = 0x0

.field public static final MIXED_CONTENT_COMPATIBILITY_MODE:I = 0x2

.field public static final MIXED_CONTENT_NEVER_ALLOW:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1239
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method


# virtual methods
.method public abstract enableSmoothTransition()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAcceptThirdPartyCookies()Z
.end method

.method public abstract getAllowContentAccess()Z
.end method

.method public abstract getAllowFileAccess()Z
.end method

.method public abstract getAllowFileAccessFromFileURLs()Z
.end method

.method public abstract getAllowUniversalAccessFromFileURLs()Z
.end method

.method public abstract getBlockNetworkImage()Z
.end method

.method public abstract getBlockNetworkLoads()Z
.end method

.method public abstract getBuiltInZoomControls()Z
.end method

.method public abstract getCacheMode()I
.end method

.method public abstract getCursiveFontFamily()Ljava/lang/String;
.end method

.method public abstract getDatabaseEnabled()Z
.end method

.method public abstract getDatabasePath()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDefaultFixedFontSize()I
.end method

.method public abstract getDefaultFontSize()I
.end method

.method public abstract getDefaultTextEncodingName()Ljava/lang/String;
.end method

.method public abstract getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
.end method

.method public abstract getDisplayZoomControls()Z
.end method

.method public abstract getDomStorageEnabled()Z
.end method

.method public abstract getFantasyFontFamily()Ljava/lang/String;
.end method

.method public abstract getFixedFontFamily()Ljava/lang/String;
.end method

.method public abstract getJavaScriptCanOpenWindowsAutomatically()Z
.end method

.method public abstract getJavaScriptEnabled()Z
.end method

.method public abstract getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
.end method

.method public abstract getLightTouchEnabled()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLoadWithOverviewMode()Z
.end method

.method public abstract getLoadsImagesAutomatically()Z
.end method

.method public abstract getMediaPlaybackRequiresUserGesture()Z
.end method

.method public abstract getMinimumFontSize()I
.end method

.method public abstract getMinimumLogicalFontSize()I
.end method

.method public abstract getMixedContentMode()I
.end method

.method public abstract getNavDump()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getOffscreenPreRaster()Z
.end method

.method public abstract getPluginState()Landroid/webkit/WebSettings$PluginState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPluginsEnabled()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1175
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method

.method public abstract getSansSerifFontFamily()Ljava/lang/String;
.end method

.method public abstract getSaveFormData()Z
.end method

.method public abstract getSavePassword()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSerifFontFamily()Ljava/lang/String;
.end method

.method public abstract getStandardFontFamily()Ljava/lang/String;
.end method

.method public declared-synchronized getTextSize()Landroid/webkit/WebSettings$TextSize;
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 482
    const/4 v0, 0x0

    #@3
    .line 483
    .local v0, "closestSize":Landroid/webkit/WebSettings$TextSize;
    const v3, 0x7fffffff

    #@6
    .line 484
    .local v3, "smallestDelta":I
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getTextZoom()I

    #@9
    move-result v4

    #@a
    .line 485
    .local v4, "textSize":I
    invoke-static {}, Landroid/webkit/WebSettings$TextSize;->values()[Landroid/webkit/WebSettings$TextSize;

    #@d
    move-result-object v6

    #@e
    array-length v7, v6

    #@f
    .end local v0    # "closestSize":Landroid/webkit/WebSettings$TextSize;
    :goto_0
    if-ge v5, v7, :cond_2

    #@11
    aget-object v2, v6, v5

    #@13
    .line 486
    .local v2, "size":Landroid/webkit/WebSettings$TextSize;
    iget v8, v2, Landroid/webkit/WebSettings$TextSize;->value:I

    #@15
    sub-int v8, v4, v8

    #@17
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v1

    #@1b
    .line 487
    .local v1, "delta":I
    if-nez v1, :cond_0

    #@1d
    monitor-exit p0

    #@1e
    .line 488
    return-object v2

    #@1f
    .line 490
    :cond_0
    if-ge v1, v3, :cond_1

    #@21
    .line 491
    move v3, v1

    #@22
    .line 492
    move-object v0, v2

    #@23
    .line 485
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@25
    goto :goto_0

    #@26
    .line 495
    .end local v1    # "delta":I
    .end local v2    # "size":Landroid/webkit/WebSettings$TextSize;
    :cond_2
    if-eqz v0, :cond_3

    #@28
    :goto_1
    monitor-exit p0

    #@29
    return-object v0

    #@2a
    :cond_3
    :try_start_1
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    goto :goto_1

    #@2d
    .end local v4    # "textSize":I
    :catchall_0
    move-exception v5

    #@2e
    monitor-exit p0

    #@2f
    throw v5
.end method

.method public abstract getTextZoom()I
.end method

.method public getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 565
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract getUseWebViewBackgroundForOverscrollBackground()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUseWideViewPort()Z
.end method

.method public abstract getUserAgent()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUserAgentString()Ljava/lang/String;
.end method

.method public abstract getVideoOverlayForEmbeddedEncryptedVideoEnabled()Z
.end method

.method public abstract setAcceptThirdPartyCookies(Z)V
.end method

.method public abstract setAllowContentAccess(Z)V
.end method

.method public abstract setAllowFileAccess(Z)V
.end method

.method public abstract setAllowFileAccessFromFileURLs(Z)V
.end method

.method public abstract setAllowUniversalAccessFromFileURLs(Z)V
.end method

.method public abstract setAppCacheEnabled(Z)V
.end method

.method public abstract setAppCacheMaxSize(J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAppCachePath(Ljava/lang/String;)V
.end method

.method public abstract setBlockNetworkImage(Z)V
.end method

.method public abstract setBlockNetworkLoads(Z)V
.end method

.method public abstract setBuiltInZoomControls(Z)V
.end method

.method public abstract setCacheMode(I)V
.end method

.method public abstract setCursiveFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setDatabaseEnabled(Z)V
.end method

.method public abstract setDatabasePath(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setDefaultFixedFontSize(I)V
.end method

.method public abstract setDefaultFontSize(I)V
.end method

.method public abstract setDefaultTextEncodingName(Ljava/lang/String;)V
.end method

.method public abstract setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setDisplayZoomControls(Z)V
.end method

.method public abstract setDomStorageEnabled(Z)V
.end method

.method public abstract setEnableSmoothTransition(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setFantasyFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setFixedFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setGeolocationDatabasePath(Ljava/lang/String;)V
.end method

.method public abstract setGeolocationEnabled(Z)V
.end method

.method public abstract setJavaScriptCanOpenWindowsAutomatically(Z)V
.end method

.method public abstract setJavaScriptEnabled(Z)V
.end method

.method public abstract setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
.end method

.method public abstract setLightTouchEnabled(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLoadWithOverviewMode(Z)V
.end method

.method public abstract setLoadsImagesAutomatically(Z)V
.end method

.method public abstract setMediaPlaybackRequiresUserGesture(Z)V
.end method

.method public abstract setMinimumFontSize(I)V
.end method

.method public abstract setMinimumLogicalFontSize(I)V
.end method

.method public abstract setMixedContentMode(I)V
.end method

.method public abstract setNavDump(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setNeedInitialFocus(Z)V
.end method

.method public abstract setOffscreenPreRaster(Z)V
.end method

.method public abstract setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPluginsEnabled(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginsPath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 975
    return-void
.end method

.method public abstract setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSansSerifFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setSaveFormData(Z)V
.end method

.method public abstract setSavePassword(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSerifFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setStandardFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setSupportMultipleWindows(Z)V
.end method

.method public abstract setSupportZoom(Z)V
.end method

.method public declared-synchronized setTextSize(Landroid/webkit/WebSettings$TextSize;)V
    .locals 1
    .param p1, "t"    # Landroid/webkit/WebSettings$TextSize;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 469
    :try_start_0
    iget v0, p1, Landroid/webkit/WebSettings$TextSize;->value:I

    #@3
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 468
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public abstract setTextZoom(I)V
.end method

.method public setUseDoubleTree(Z)V
    .locals 0
    .param p1, "use"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 551
    return-void
.end method

.method public abstract setUseWebViewBackgroundForOverscrollBackground(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setUseWideViewPort(Z)V
.end method

.method public abstract setUserAgent(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setUserAgentString(Ljava/lang/String;)V
.end method

.method public abstract setVideoOverlayForEmbeddedEncryptedVideoEnabled(Z)V
.end method

.method public abstract supportMultipleWindows()Z
.end method

.method public abstract supportZoom()Z
.end method
