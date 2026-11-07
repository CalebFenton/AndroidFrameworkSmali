.class public abstract Landroid/webkit/WebSettings;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSettings$TextSize;,
        Landroid/webkit/WebSettings$MenuItemFlags;,
        Landroid/webkit/WebSettings$ForceDark;,
        Landroid/webkit/WebSettings$PluginState;,
        Landroid/webkit/WebSettings$RenderPriority;,
        Landroid/webkit/WebSettings$CacheMode;,
        Landroid/webkit/WebSettings$ZoomDensity;,
        Landroid/webkit/WebSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field public static final whitelist ENABLE_SIMPLIFIED_DARK_MODE:J = 0xcccb1e0L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ENABLE_USER_AGENT_REDUCTION:J = 0x161d88bfL
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FORCE_DARK_AUTO:I = 0x1

.field public static final whitelist FORCE_DARK_OFF:I = 0x0

.field public static final whitelist FORCE_DARK_ON:I = 0x2

.field public static final whitelist LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final whitelist LOAD_CACHE_ONLY:I = 0x3

.field public static final whitelist LOAD_DEFAULT:I = -0x1

.field public static final whitelist LOAD_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOAD_NO_CACHE:I = 0x2

.field public static final whitelist MENU_ITEM_NONE:I = 0x0

.field public static final whitelist MENU_ITEM_PROCESS_TEXT:I = 0x4

.field public static final whitelist MENU_ITEM_SHARE:I = 0x1

.field public static final whitelist MENU_ITEM_WEB_SEARCH:I = 0x2

.field public static final whitelist MIXED_CONTENT_ALWAYS_ALLOW:I = 0x0

.field public static final whitelist MIXED_CONTENT_COMPATIBILITY_MODE:I = 0x2

.field public static final whitelist MIXED_CONTENT_NEVER_ALLOW:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1448
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist enableSmoothTransition()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getAcceptThirdPartyCookies()Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist getAllowContentAccess()Z
.end method

.method public abstract whitelist getAllowFileAccess()Z
.end method

.method public abstract whitelist getAllowFileAccessFromFileURLs()Z
.end method

.method public abstract whitelist getAllowUniversalAccessFromFileURLs()Z
.end method

.method public abstract whitelist getBlockNetworkImage()Z
.end method

.method public abstract whitelist getBlockNetworkLoads()Z
.end method

.method public abstract whitelist getBuiltInZoomControls()Z
.end method

.method public abstract whitelist getCacheMode()I
.end method

.method public abstract whitelist getCursiveFontFamily()Ljava/lang/String;
.end method

.method public abstract whitelist getDatabaseEnabled()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getDatabasePath()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getDefaultFixedFontSize()I
.end method

.method public abstract whitelist getDefaultFontSize()I
.end method

.method public abstract whitelist getDefaultTextEncodingName()Ljava/lang/String;
.end method

.method public abstract whitelist getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getDisabledActionModeMenuItems()I
.end method

.method public abstract whitelist getDisplayZoomControls()Z
.end method

.method public abstract whitelist getDomStorageEnabled()Z
.end method

.method public abstract whitelist getFantasyFontFamily()Ljava/lang/String;
.end method

.method public abstract whitelist getFixedFontFamily()Ljava/lang/String;
.end method

.method public whitelist getForceDark()I
    .registers 2

    .line 1633
    const/4 v0, 0x1

    return v0
.end method

.method public abstract whitelist getJavaScriptCanOpenWindowsAutomatically()Z
.end method

.method public abstract whitelist getJavaScriptEnabled()Z
.end method

.method public abstract whitelist getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
.end method

.method public abstract whitelist getLightTouchEnabled()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getLoadWithOverviewMode()Z
.end method

.method public abstract whitelist getLoadsImagesAutomatically()Z
.end method

.method public abstract whitelist getMediaPlaybackRequiresUserGesture()Z
.end method

.method public abstract whitelist getMinimumFontSize()I
.end method

.method public abstract whitelist getMinimumLogicalFontSize()I
.end method

.method public abstract whitelist getMixedContentMode()I
.end method

.method public abstract whitelist getNavDump()Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getOffscreenPreRaster()Z
.end method

.method public abstract whitelist getPluginState()Landroid/webkit/WebSettings$PluginState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getPluginsEnabled()Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist getPluginsPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1372
    const-string v0, ""

    return-object v0
.end method

.method public abstract whitelist getSafeBrowsingEnabled()Z
.end method

.method public abstract whitelist getSansSerifFontFamily()Ljava/lang/String;
.end method

.method public abstract whitelist getSaveFormData()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getSavePassword()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getSerifFontFamily()Ljava/lang/String;
.end method

.method public abstract whitelist getStandardFontFamily()Ljava/lang/String;
.end method

.method public declared-synchronized whitelist getTextSize()Landroid/webkit/WebSettings$TextSize;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "closestSize":Landroid/webkit/WebSettings$TextSize;
    const v1, 0x7fffffff

    .line 624
    .local v1, "smallestDelta":I
    :try_start_5
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v2

    .line 625
    .local v2, "textSize":I
    invoke-static {}, Landroid/webkit/WebSettings$TextSize;->values()[Landroid/webkit/WebSettings$TextSize;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_26

    aget-object v6, v3, v5

    .line 626
    .local v6, "size":Landroid/webkit/WebSettings$TextSize;
    iget v7, v6, Landroid/webkit/WebSettings$TextSize;->value:I

    sub-int v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_2e

    .line 627
    .local v7, "delta":I
    if-nez v7, :cond_1f

    .line 628
    monitor-exit p0

    return-object v6

    .line 630
    :cond_1f
    if-ge v7, v1, :cond_23

    .line 631
    move v1, v7

    .line 632
    move-object v0, v6

    .line 625
    .end local v6    # "size":Landroid/webkit/WebSettings$TextSize;
    .end local v7    # "delta":I
    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 635
    .end local p0    # "this":Landroid/webkit/WebSettings;
    :cond_26
    if-eqz v0, :cond_2a

    move-object v3, v0

    goto :goto_2c

    :cond_2a
    :try_start_2a
    sget-object v3, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2e

    :goto_2c
    monitor-exit p0

    return-object v3

    .line 621
    .end local v0    # "closestSize":Landroid/webkit/WebSettings$TextSize;
    .end local v1    # "smallestDelta":I
    .end local v2    # "textSize":I
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public abstract whitelist getTextZoom()I
.end method

.method public greylist getUseDoubleTree()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist getUseWebViewBackgroundForOverscrollBackground()Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getUseWideViewPort()Z
.end method

.method public abstract whitelist getUserAgent()I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getUserAgentString()Ljava/lang/String;
.end method

.method public abstract whitelist getVideoOverlayForEmbeddedEncryptedVideoEnabled()Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist isAlgorithmicDarkeningAllowed()Z
    .registers 2

    .line 1731
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist setAcceptThirdPartyCookies(Z)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist setAlgorithmicDarkeningAllowed(Z)V
    .registers 2
    .param p1, "allow"    # Z

    .line 1720
    return-void
.end method

.method public abstract whitelist setAllowContentAccess(Z)V
.end method

.method public abstract whitelist setAllowFileAccess(Z)V
.end method

.method public abstract whitelist setAllowFileAccessFromFileURLs(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setAllowUniversalAccessFromFileURLs(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist setAppCacheEnabled(Z)V
    .registers 2
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1193
    return-void
.end method

.method public greylist setAppCacheMaxSize(J)V
    .registers 3
    .param p1, "appCacheMaxSize"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1228
    return-void
.end method

.method public greylist setAppCachePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "appCachePath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1213
    return-void
.end method

.method public abstract whitelist setBlockNetworkImage(Z)V
.end method

.method public abstract whitelist setBlockNetworkLoads(Z)V
.end method

.method public abstract whitelist setBuiltInZoomControls(Z)V
.end method

.method public abstract whitelist setCacheMode(I)V
.end method

.method public abstract whitelist setCursiveFontFamily(Ljava/lang/String;)V
.end method

.method public abstract whitelist setDatabaseEnabled(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setDatabasePath(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setDefaultFixedFontSize(I)V
.end method

.method public abstract whitelist setDefaultFontSize(I)V
.end method

.method public abstract whitelist setDefaultTextEncodingName(Ljava/lang/String;)V
.end method

.method public abstract whitelist setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setDisabledActionModeMenuItems(I)V
.end method

.method public abstract whitelist setDisplayZoomControls(Z)V
.end method

.method public abstract whitelist setDomStorageEnabled(Z)V
.end method

.method public abstract whitelist setEnableSmoothTransition(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setFantasyFontFamily(Ljava/lang/String;)V
.end method

.method public abstract whitelist setFixedFontFamily(Ljava/lang/String;)V
.end method

.method public whitelist setForceDark(I)V
    .registers 2
    .param p1, "forceDark"    # I

    .line 1621
    return-void
.end method

.method public abstract whitelist setGeolocationDatabasePath(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setGeolocationEnabled(Z)V
.end method

.method public abstract whitelist setJavaScriptCanOpenWindowsAutomatically(Z)V
.end method

.method public abstract whitelist setJavaScriptEnabled(Z)V
.end method

.method public abstract whitelist setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
.end method

.method public abstract whitelist setLightTouchEnabled(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setLoadWithOverviewMode(Z)V
.end method

.method public abstract whitelist setLoadsImagesAutomatically(Z)V
.end method

.method public abstract whitelist setMediaPlaybackRequiresUserGesture(Z)V
.end method

.method public abstract whitelist setMinimumFontSize(I)V
.end method

.method public abstract whitelist setMinimumLogicalFontSize(I)V
.end method

.method public abstract whitelist setMixedContentMode(I)V
.end method

.method public abstract whitelist setNavDump(Z)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setNeedInitialFocus(Z)V
.end method

.method public abstract whitelist setOffscreenPreRaster(Z)V
.end method

.method public abstract whitelist setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setPluginsEnabled(Z)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist setPluginsPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "pluginsPath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1148
    return-void
.end method

.method public abstract whitelist setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setSafeBrowsingEnabled(Z)V
.end method

.method public abstract whitelist setSansSerifFontFamily(Ljava/lang/String;)V
.end method

.method public abstract whitelist setSaveFormData(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setSavePassword(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setSerifFontFamily(Ljava/lang/String;)V
.end method

.method public abstract whitelist setStandardFontFamily(Ljava/lang/String;)V
.end method

.method public abstract whitelist setSupportMultipleWindows(Z)V
.end method

.method public abstract whitelist setSupportZoom(Z)V
.end method

.method public declared-synchronized whitelist setTextSize(Landroid/webkit/WebSettings$TextSize;)V
    .registers 3
    .param p1, "t"    # Landroid/webkit/WebSettings$TextSize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 608
    :try_start_1
    iget v0, p1, Landroid/webkit/WebSettings$TextSize;->value:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 609
    monitor-exit p0

    return-void

    .line 607
    .end local p0    # "this":Landroid/webkit/WebSettings;
    .end local p1    # "t":Landroid/webkit/WebSettings$TextSize;
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public abstract whitelist setTextZoom(I)V
.end method

.method public greylist setUseDoubleTree(Z)V
    .registers 2
    .param p1, "use"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 695
    return-void
.end method

.method public abstract whitelist setUseWebViewBackgroundForOverscrollBackground(Z)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setUseWideViewPort(Z)V
.end method

.method public abstract whitelist setUserAgent(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setUserAgentString(Ljava/lang/String;)V
.end method

.method public abstract whitelist setVideoOverlayForEmbeddedEncryptedVideoEnabled(Z)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist supportMultipleWindows()Z
.end method

.method public abstract whitelist supportZoom()Z
.end method
