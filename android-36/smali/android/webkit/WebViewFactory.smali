.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$StartupTimestamps;,
        Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHROMIUM_WEBVIEW_FACTORY_METHOD:Ljava/lang/String; = "create"

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist LIBLOAD_ADDRESS_SPACE_NOT_RESERVED:I = 0x2

.field public static final whitelist LIBLOAD_FAILED_JNI_CALL:I = 0x7

.field public static final whitelist LIBLOAD_FAILED_LISTING_WEBVIEW_PACKAGES:I = 0x4

.field static final blacklist LIBLOAD_FAILED_OTHER:I = 0xb

.field public static final whitelist LIBLOAD_FAILED_TO_FIND_NAMESPACE:I = 0xa

.field public static final whitelist LIBLOAD_FAILED_TO_LOAD_LIBRARY:I = 0x6

.field public static final whitelist LIBLOAD_FAILED_TO_OPEN_RELRO_FILE:I = 0x5

.field public static final whitelist LIBLOAD_FAILED_WAITING_FOR_RELRO:I = 0x3

.field public static final whitelist LIBLOAD_FAILED_WAITING_FOR_WEBVIEW_REASON_UNKNOWN:I = 0x8

.field public static final whitelist LIBLOAD_SUCCESS:I = 0x0

.field public static final whitelist LIBLOAD_WRONG_PACKAGE_NAME:I = 0x1

.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static greylist-max-o WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

.field private static greylist-max-o sDataDirectorySuffix:Ljava/lang/String;

.field private static greylist sPackageInfo:Landroid/content/pm/PackageInfo;

.field private static greylist sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final greylist-max-o sProviderLock:Ljava/lang/Object;

.field static final blacklist sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

.field private static greylist-max-o sWebViewDisabled:Z

.field private static greylist-max-o sWebViewSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    .line 179
    new-instance v0, Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-direct {v0}, Landroid/webkit/WebViewFactory$StartupTimestamps;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    .line 613
    const-string/jumbo v0, "webviewupdate"

    sput-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o disableWebView()V
    .registers 3

    .line 217
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-nez v1, :cond_c

    .line 222
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebViewFactory;->sWebViewDisabled:Z

    .line 223
    monitor-exit v0

    .line 224
    return-void

    .line 219
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t disable WebView: WebView already initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method static greylist-max-o getDataDirectorySuffix()Ljava/lang/String;
    .registers 2

    .line 247
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sDataDirectorySuffix:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 249
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static whitelist getLoadedPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 2

    .line 262
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object v1

    .line 264
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static greylist getProvider()Landroid/webkit/WebViewFactoryProvider;
    .registers 9

    .line 329
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v1, :cond_b

    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    monitor-exit v0

    return-object v1

    .line 334
    :cond_b
    sget-object v1, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/webkit/WebViewFactory$StartupTimestamps;->mWebViewLoadStart:J

    .line 335
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 336
    .local v1, "appId":I
    if-eqz v1, :cond_99

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_99

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_99

    const/16 v2, 0x403

    if-eq v1, v2, :cond_99

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_99

    .line 343
    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 348
    sget-boolean v2, Landroid/webkit/WebViewFactory;->sWebViewDisabled:Z

    if-nez v2, :cond_8b

    .line 353
    const-string v2, "WebViewFactory.getProvider()"

    const-wide/16 v3, 0x10

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_a1

    .line 355
    :try_start_3e
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProviderClass()Ljava/lang/Class;

    move-result-object v2

    .line 356
    .local v2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    const-string v5, "create"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/webkit/WebViewDelegate;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 359
    .local v5, "staticFactory":Ljava/lang/reflect/Method;
    const-string v6, "WebViewFactoryProvider invocation"

    invoke-static {v3, v4, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_55} :catch_79
    .catchall {:try_start_3e .. :try_end_55} :catchall_77

    .line 361
    :try_start_55
    new-instance v6, Landroid/webkit/WebViewDelegate;

    invoke-direct {v6}, Landroid/webkit/WebViewDelegate;-><init>()V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 362
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebViewFactoryProvider;

    sput-object v6, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 364
    sget-object v6, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_69
    .catchall {:try_start_55 .. :try_end_69} :catchall_71

    .line 366
    :try_start_69
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_79
    .catchall {:try_start_69 .. :try_end_6c} :catchall_77

    .line 372
    :try_start_6c
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_a1

    .line 364
    return-object v6

    .line 366
    :catchall_71
    move-exception v6

    :try_start_72
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 367
    nop

    .end local v1    # "appId":I
    throw v6
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_77} :catch_79
    .catchall {:try_start_72 .. :try_end_77} :catchall_77

    .line 372
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    .end local v5    # "staticFactory":Ljava/lang/reflect/Method;
    .restart local v1    # "appId":I
    :catchall_77
    move-exception v2

    goto :goto_87

    .line 368
    :catch_79
    move-exception v2

    .line 369
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7a
    const-string v5, "WebViewFactory"

    const-string v6, "error instantiating provider"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    new-instance v5, Landroid/util/AndroidRuntimeException;

    invoke-direct {v5, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    .end local v1    # "appId":I
    throw v5
    :try_end_87
    .catchall {:try_start_7a .. :try_end_87} :catchall_77

    .line 372
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "appId":I
    :goto_87
    :try_start_87
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 373
    throw v2

    .line 349
    :cond_8b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "WebView.disableWebView() was called: WebView is disabled"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :cond_93
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 339
    :cond_99
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "For security reasons, WebView is not allowed in privileged processes"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    .end local v1    # "appId":I
    :catchall_a1
    move-exception v1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_87 .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method private static greylist-max-r getProviderClass()Ljava/lang/Class;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .line 527
    const-string v0, "WebViewFactory"

    const/4 v1, 0x0

    .line 528
    .local v1, "webViewContext":Landroid/content/Context;
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    .line 531
    .local v2, "initialApplication":Landroid/app/Application;
    :try_start_7
    const-string v3, "WebViewFactory.getWebViewContextAndSetProvider()"

    const-wide/16 v4, 0x10

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_e
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_7 .. :try_end_e} :catch_107

    .line 534
    :try_start_e
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewContextAndSetProvider()Landroid/content/Context;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_101

    move-object v1, v3

    .line 536
    :try_start_13
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 537
    nop

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " version "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " (code "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    .line 539
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 538
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v3, "WebViewFactory.getChromiumProviderClass()"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_5a
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_13 .. :try_end_5a} :catch_107

    .line 543
    :try_start_5a
    sget-object v3, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/webkit/WebViewFactory$StartupTimestamps;->mAddAssetsStart:J

    .line 544
    invoke-static {}, Landroid/content/res/Flags;->registerResourcePaths()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 545
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 546
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 545
    invoke-static {v3, v6}, Landroid/content/res/Resources;->registerResourcePaths(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_8d

    .line 548
    :cond_74
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 549
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getAllApkPaths()[Ljava/lang/String;

    move-result-object v3

    .line 548
    array-length v6, v3

    const/4 v7, 0x0

    :goto_7e
    if-ge v7, v6, :cond_8d

    aget-object v8, v3, v7

    .line 550
    .local v8, "newAssetPath":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    .line 548
    nop

    .end local v8    # "newAssetPath":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_7e

    .line 553
    :cond_8d
    :goto_8d
    sget-object v3, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    sget-object v6, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/webkit/WebViewFactory$StartupTimestamps;->mGetClassLoaderStart:J

    iput-wide v7, v3, Landroid/webkit/WebViewFactory$StartupTimestamps;->mAddAssetsEnd:J

    .line 555
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 556
    .local v3, "clazzLoader":Ljava/lang/ClassLoader;
    const-string v6, "WebViewFactory.loadNativeLibrary()"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 557
    sget-object v6, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    sget-object v7, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/webkit/WebViewFactory$StartupTimestamps;->mNativeLoadStart:J

    iput-wide v8, v6, Landroid/webkit/WebViewFactory$StartupTimestamps;->mGetClassLoaderEnd:J

    .line 559
    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 560
    invoke-static {v6}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v6

    .line 559
    invoke-static {v3, v6}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    .line 561
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 562
    const-string v6, "Class.forName()"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 563
    sget-object v6, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    sget-object v7, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    .line 564
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameStart:J

    iput-wide v8, v6, Landroid/webkit/WebViewFactory$StartupTimestamps;->mNativeLoadEnd:J
    :try_end_cd
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5a .. :try_end_cd} :catch_f0
    .catchall {:try_start_5a .. :try_end_cd} :catchall_ee

    .line 566
    :try_start_cd
    invoke-static {v3}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_e0

    .line 568
    :try_start_d1
    sget-object v7, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameEnd:J

    .line 569
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_dc
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d1 .. :try_end_dc} :catch_f0
    .catchall {:try_start_d1 .. :try_end_dc} :catchall_ee

    .line 575
    :try_start_dc
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_df
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_dc .. :try_end_df} :catch_107

    .line 566
    return-object v6

    .line 568
    :catchall_e0
    move-exception v6

    :try_start_e1
    sget-object v7, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameEnd:J

    .line 569
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 570
    nop

    .end local v1    # "webViewContext":Landroid/content/Context;
    .end local v2    # "initialApplication":Landroid/app/Application;
    throw v6
    :try_end_ee
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e1 .. :try_end_ee} :catch_f0
    .catchall {:try_start_e1 .. :try_end_ee} :catchall_ee

    .line 575
    .end local v3    # "clazzLoader":Ljava/lang/ClassLoader;
    .restart local v1    # "webViewContext":Landroid/content/Context;
    .restart local v2    # "initialApplication":Landroid/app/Application;
    :catchall_ee
    move-exception v3

    goto :goto_fc

    .line 571
    :catch_f0
    move-exception v3

    .line 572
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_f1
    const-string v6, "error loading provider"

    invoke-static {v0, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    new-instance v6, Landroid/util/AndroidRuntimeException;

    invoke-direct {v6, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    .end local v1    # "webViewContext":Landroid/content/Context;
    .end local v2    # "initialApplication":Landroid/app/Application;
    throw v6
    :try_end_fc
    .catchall {:try_start_f1 .. :try_end_fc} :catchall_ee

    .line 575
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "webViewContext":Landroid/content/Context;
    .restart local v2    # "initialApplication":Landroid/app/Application;
    :goto_fc
    :try_start_fc
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 576
    nop

    .end local v1    # "webViewContext":Landroid/content/Context;
    .end local v2    # "initialApplication":Landroid/app/Application;
    throw v3

    .line 536
    .restart local v1    # "webViewContext":Landroid/content/Context;
    .restart local v2    # "initialApplication":Landroid/app/Application;
    :catchall_101
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 537
    nop

    .end local v1    # "webViewContext":Landroid/content/Context;
    .end local v2    # "initialApplication":Landroid/app/Application;
    throw v3
    :try_end_107
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_fc .. :try_end_107} :catch_107

    .line 577
    .restart local v1    # "webViewContext":Landroid/content/Context;
    .restart local v2    # "initialApplication":Landroid/app/Application;
    :catch_107
    move-exception v3

    .line 578
    .local v3, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    const-string v4, "Chromium WebView package does not exist"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    new-instance v0, Landroid/util/AndroidRuntimeException;

    invoke-direct {v0, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method static blacklist getStartupTimestamps()Landroid/webkit/WebViewFactory$StartupTimestamps;
    .registers 1

    .line 183
    sget-object v0, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    return-object v0
.end method

.method public static greylist getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .registers 1

    .line 618
    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 619
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0

    .line 621
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-o getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;
    .registers 1

    .line 627
    sget-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    .line 628
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 627
    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method private static greylist getWebViewContextAndSetProvider()Landroid/content/Context;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 437
    const-string v0, "Failed to load WebView provider: "

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    .line 439
    .local v1, "initialApplication":Landroid/app/Application;
    const/4 v2, 0x0

    .line 440
    .local v2, "response":Landroid/webkit/WebViewProviderResponse;
    :try_start_7
    const-string v3, "WebViewUpdateService.waitForAndGetProvider()"

    const-wide/16 v4, 0x10

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_f7

    .line 443
    :try_start_e
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 444
    const-class v3, Landroid/webkit/WebViewUpdateManager;

    invoke-virtual {v1, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebViewUpdateManager;

    .line 445
    invoke-virtual {v3}, Landroid/webkit/WebViewUpdateManager;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v3

    .end local v2    # "response":Landroid/webkit/WebViewProviderResponse;
    .local v3, "response":Landroid/webkit/WebViewProviderResponse;
    goto :goto_29

    .line 447
    .end local v3    # "response":Landroid/webkit/WebViewProviderResponse;
    .restart local v2    # "response":Landroid/webkit/WebViewProviderResponse;
    :cond_21
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_f1

    .line 450
    .end local v2    # "response":Landroid/webkit/WebViewProviderResponse;
    .restart local v3    # "response":Landroid/webkit/WebViewProviderResponse;
    :goto_29
    :try_start_29
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 451
    nop

    .line 452
    iget v2, v3, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v6, 0x3

    if-eqz v2, :cond_54

    iget v2, v3, Landroid/webkit/WebViewProviderResponse;->status:I

    if-ne v2, v6, :cond_37

    goto :goto_54

    .line 454
    :cond_37
    new-instance v2, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/webkit/WebViewProviderResponse;->status:I

    .line 455
    invoke-static {v5}, Landroid/webkit/WebViewFactory;->getWebViewPreparationErrorReason(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    .end local v1    # "initialApplication":Landroid/app/Application;
    throw v2

    .line 459
    .restart local v1    # "initialApplication":Landroid/app/Application;
    :cond_54
    :goto_54
    const-string v2, "ActivityManager.addPackageDependency()"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_59} :catch_f7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_59} :catch_f7

    .line 461
    :try_start_59
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v7, v3, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_eb

    .line 464
    :try_start_64
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 465
    nop

    .line 467
    const/4 v2, 0x0

    .line 468
    .local v2, "newPackageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 469
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const-string v8, "PackageManager.getPackageInfo()"

    invoke-static {v4, v5, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_72} :catch_f7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_64 .. :try_end_72} :catch_f7

    .line 471
    :try_start_72
    iget-object v8, v3, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x24c0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_e5

    .line 482
    .end local v2    # "newPackageInfo":Landroid/content/pm/PackageInfo;
    .local v8, "newPackageInfo":Landroid/content/pm/PackageInfo;
    :try_start_7c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 483
    nop

    .line 485
    invoke-static {v8}, Landroid/webkit/WebViewFactory;->isInstalledPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 493
    invoke-static {v8}, Landroid/webkit/WebViewFactory;->isEnabledPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 502
    iget-object v2, v3, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v2, v8}, Landroid/webkit/WebViewFactory;->verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    .line 504
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 506
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v9, "initialApplication.createApplicationContext"

    invoke-static {v4, v5, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 508
    sget-object v9, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextStart:J
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_a0} :catch_f7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7c .. :try_end_a0} :catch_f7

    .line 511
    :try_start_a0
    invoke-virtual {v1, v2, v6}, Landroid/app/Application;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v6

    .line 514
    .local v6, "webViewContext":Landroid/content/Context;
    sput-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_a6
    .catchall {:try_start_a0 .. :try_end_a6} :catchall_b3

    .line 515
    nop

    .line 517
    :try_start_a7
    sget-object v9, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextEnd:J

    .line 518
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 515
    return-object v6

    .line 517
    .end local v6    # "webViewContext":Landroid/content/Context;
    :catchall_b3
    move-exception v6

    sget-object v9, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextEnd:J

    .line 518
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 519
    nop

    .end local v1    # "initialApplication":Landroid/app/Application;
    throw v6

    .line 494
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "initialApplication":Landroid/app/Application;
    :cond_c1
    new-instance v2, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string v4, "Current WebView Package (%s) is not enabled for the current user"

    iget-object v5, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 495
    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    .end local v1    # "initialApplication":Landroid/app/Application;
    throw v2

    .line 486
    .restart local v1    # "initialApplication":Landroid/app/Application;
    :cond_d3
    new-instance v2, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string v4, "Current WebView Package (%s) is not installed for the current user"

    iget-object v5, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 487
    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    .end local v1    # "initialApplication":Landroid/app/Application;
    throw v2

    .line 482
    .end local v8    # "newPackageInfo":Landroid/content/pm/PackageInfo;
    .restart local v1    # "initialApplication":Landroid/app/Application;
    .local v2, "newPackageInfo":Landroid/content/pm/PackageInfo;
    :catchall_e5
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 483
    nop

    .end local v1    # "initialApplication":Landroid/app/Application;
    throw v6

    .line 464
    .end local v2    # "newPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "initialApplication":Landroid/app/Application;
    :catchall_eb
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 465
    nop

    .end local v1    # "initialApplication":Landroid/app/Application;
    throw v2

    .line 450
    .end local v3    # "response":Landroid/webkit/WebViewProviderResponse;
    .restart local v1    # "initialApplication":Landroid/app/Application;
    .local v2, "response":Landroid/webkit/WebViewProviderResponse;
    :catchall_f1
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 451
    nop

    .end local v1    # "initialApplication":Landroid/app/Application;
    throw v3
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_f7} :catch_f7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a7 .. :try_end_f7} :catch_f7

    .line 520
    .end local v2    # "response":Landroid/webkit/WebViewProviderResponse;
    .restart local v1    # "initialApplication":Landroid/app/Application;
    :catch_f7
    move-exception v2

    .line 521
    .local v2, "e":Landroid/util/AndroidException;
    new-instance v3, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static greylist-max-o getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 256
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    .line 257
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.webview.WebViewLibrary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o getWebViewPreparationErrorReason(I)Ljava/lang/String;
    .registers 2
    .param p0, "error"    # I

    .line 187
    sparse-switch p0, :sswitch_data_10

    .line 195
    const-string v0, "Unknown"

    return-object v0

    .line 193
    :sswitch_6
    const-string v0, "Crashed for unknown reason"

    return-object v0

    .line 191
    :sswitch_9
    const-string v0, "No WebView installed"

    return-object v0

    .line 189
    :sswitch_c
    const-string v0, "Time out waiting for Relro files being created"

    return-object v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x3 -> :sswitch_c
        0x4 -> :sswitch_9
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method public static greylist-max-o getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 273
    invoke-static {}, Landroid/webkit/WebViewFactoryProvider;->getWebViewFactoryClassName()Ljava/lang/String;

    move-result-object v0

    .line 272
    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isEnabledPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 423
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    .line 424
    :cond_4
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return v0
.end method

.method private static blacklist isInstalledPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 429
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 430
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_16

    move v0, v2

    :cond_16
    return v0
.end method

.method static greylist-max-o isWebViewSupported()Z
    .registers 2

    .line 206
    sget-object v0, Landroid/webkit/WebViewFactory;->sWebViewSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    .line 207
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 208
    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 207
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebViewFactory;->sWebViewSupported:Ljava/lang/Boolean;

    .line 210
    :cond_18
    sget-object v0, Landroid/webkit/WebViewFactory;->sWebViewSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static whitelist loadWebViewNativeLibraryFromPackage(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "clazzLoader"    # Ljava/lang/ClassLoader;

    .line 282
    const-string v0, "WebViewFactory"

    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 283
    return v2

    .line 286
    :cond_a
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    .line 287
    .local v1, "initialApplication":Landroid/app/Application;
    const/4 v3, 0x0

    .line 289
    .local v3, "response":Landroid/webkit/WebViewProviderResponse;
    :try_start_f
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 290
    const-class v4, Landroid/webkit/WebViewUpdateManager;

    invoke-virtual {v1, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebViewUpdateManager;

    .line 291
    invoke-virtual {v4}, Landroid/webkit/WebViewUpdateManager;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v4

    .end local v3    # "response":Landroid/webkit/WebViewProviderResponse;
    .local v4, "response":Landroid/webkit/WebViewProviderResponse;
    goto :goto_2a

    .line 293
    .end local v4    # "response":Landroid/webkit/WebViewProviderResponse;
    .restart local v3    # "response":Landroid/webkit/WebViewProviderResponse;
    :cond_22
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v4

    invoke-interface {v4}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v4
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_75

    .line 298
    .end local v3    # "response":Landroid/webkit/WebViewProviderResponse;
    .restart local v4    # "response":Landroid/webkit/WebViewProviderResponse;
    :goto_2a
    nop

    .line 301
    iget v3, v4, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eqz v3, :cond_37

    iget v3, v4, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_37

    .line 303
    iget v0, v4, Landroid/webkit/WebViewProviderResponse;->status:I

    return v0

    .line 305
    :cond_37
    iget-object v3, v4, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 306
    return v2

    .line 309
    :cond_42
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 312
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    :try_start_48
    invoke-virtual {v3, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 314
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48 .. :try_end_52} :catch_5d

    .line 318
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v0, "libraryFileName":Ljava/lang/String;
    nop

    .line 320
    invoke-static {p1, v0}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    move-result v2

    .line 323
    .local v2, "loadNativeRet":I
    if-nez v2, :cond_5c

    iget v5, v4, Landroid/webkit/WebViewProviderResponse;->status:I

    return v5

    .line 324
    :cond_5c
    return v2

    .line 315
    .end local v0    # "libraryFileName":Ljava/lang/String;
    .end local v2    # "loadNativeRet":I
    :catch_5d
    move-exception v5

    .line 316
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v2

    .line 295
    .end local v4    # "response":Landroid/webkit/WebViewProviderResponse;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v3, "response":Landroid/webkit/WebViewProviderResponse;
    :catch_75
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "error waiting for relro creation"

    invoke-static {v0, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    const/16 v0, 0x8

    return v0
.end method

.method public static greylist-max-o onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .registers 5
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 600
    const/4 v0, 0x0

    .line 602
    .local v0, "startedRelroProcesses":I
    :try_start_1
    invoke-static {p0}, Landroid/webkit/WebViewLibraryLoader;->prepareNativeLibraries(Landroid/content/pm/PackageInfo;)I

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    move v0, v1

    .line 606
    goto :goto_f

    .line 603
    :catchall_7
    move-exception v1

    .line 605
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "WebViewFactory"

    const-string v3, "error preparing webview native library"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_f
    invoke-static {p0}, Landroid/webkit/WebViewZygote;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 610
    return v0
.end method

.method public static whitelist prepareWebViewInZygote()V
    .registers 3

    .line 589
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->reserveAddressSpaceInZygote()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 593
    goto :goto_c

    .line 590
    :catchall_4
    move-exception v0

    .line 592
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "WebViewFactory"

    const-string v2, "error preparing native loader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_c
    return-void
.end method

.method static greylist-max-o setDataDirectorySuffix(Ljava/lang/String;)V
    .registers 5
    .param p0, "suffix"    # Ljava/lang/String;

    .line 230
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-nez v1, :cond_32

    .line 235
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_13

    .line 239
    sput-object p0, Landroid/webkit/WebViewFactory;->sDataDirectorySuffix:Ljava/lang/String;

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 236
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suffix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contains a path separator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "suffix":Ljava/lang/String;
    throw v1

    .line 232
    .restart local p0    # "suffix":Ljava/lang/String;
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t set data directory suffix: WebView already initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "suffix":Ljava/lang/String;
    throw v1

    .line 240
    .restart local p0    # "suffix":Ljava/lang/String;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private static greylist-max-o signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 7
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 381
    const/4 v0, 0x0

    if-nez p0, :cond_7

    .line 382
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    .line 384
    :cond_7
    if-nez p1, :cond_a

    return v0

    .line 386
    :cond_a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 387
    .local v1, "set1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v2, p0

    move v3, v0

    :goto_11
    if-ge v3, v2, :cond_1b

    aget-object v4, p0, v3

    .line 388
    .local v4, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v4    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 390
    :cond_1b
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 391
    .local v2, "set2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v3, p1

    :goto_21
    if-ge v0, v3, :cond_2b

    aget-object v4, p1, v0

    .line 392
    .restart local v4    # "signature":Landroid/content/pm/Signature;
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v4    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 394
    :cond_2b
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .registers 8
    .param p0, "chosen"    # Landroid/content/pm/PackageInfo;
    .param p1, "toUse"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " actual: "

    if-eqz v0, :cond_77

    .line 405
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4e

    .line 410
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 414
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 418
    return-void

    .line 415
    :cond_2b
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string v1, "Failed to verify WebView provider, signature mismatch"

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_33
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to load an invalid WebView provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_4e
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to verify WebView provider, version code is lower than expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 407
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 408
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_77
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to verify WebView provider, packageName mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
