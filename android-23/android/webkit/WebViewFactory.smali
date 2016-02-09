.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$MissingWebViewPackageException;,
        Landroid/webkit/WebViewFactory$RelroFileCreator;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_DEFAULT_VMSIZE_BYTES:J = 0x6400000L

.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProvider"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_32:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium32.relro"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_64:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium64.relro"

.field public static final CHROMIUM_WEBVIEW_VMSIZE_SIZE_PROPERTY:Ljava/lang/String; = "persist.sys.webview.vmsize"

.field private static final DEBUG:Z = false

.field public static final LIBLOAD_ADDRESS_SPACE_NOT_RESERVED:I = 0x2

.field public static final LIBLOAD_FAILED_JNI_CALL:I = 0x7

.field public static final LIBLOAD_FAILED_LISTING_WEBVIEW_PACKAGES:I = 0x4

.field public static final LIBLOAD_FAILED_TO_LOAD_LIBRARY:I = 0x6

.field public static final LIBLOAD_FAILED_TO_OPEN_RELRO_FILE:I = 0x5

.field public static final LIBLOAD_FAILED_WAITING_FOR_RELRO:I = 0x3

.field public static final LIBLOAD_SUCCESS:I = 0x0

.field public static final LIBLOAD_WRONG_PACKAGE_NAME:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static final NULL_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.nullwebview.NullWebViewFactoryProvider"

.field private static sAddressSpaceReserved:Z

.field private static sPackageInfo:Landroid/content/pm/PackageInfo;

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    #@0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "lib32"    # Ljava/lang/String;
    .param p1, "lib64"    # Ljava/lang/String;
    .param p2, "relro32"    # Ljava/lang/String;
    .param p3, "relro64"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/webkit/WebViewFactory;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    #@7
    .line 79
    const/4 v0, 0x0

    #@8
    sput-boolean v0, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    #@a
    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createRelroFile(Z[Ljava/lang/String;)V
    .locals 9
    .param p0, "is64Bit"    # Z
    .param p1, "nativeLibraryPaths"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 428
    if-eqz p0, :cond_2

    #@3
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@5
    aget-object v4, v0, v1

    #@7
    .line 431
    .local v4, "abi":Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/webkit/WebViewFactory$1;

    #@9
    invoke-direct {v6, v4, p0}, Landroid/webkit/WebViewFactory$1;-><init>(Ljava/lang/String;Z)V

    #@c
    .line 444
    .local v6, "crashHandler":Ljava/lang/Runnable;
    if-eqz p1, :cond_0

    #@e
    .line 445
    const/4 v0, 0x0

    #@f
    :try_start_0
    aget-object v0, p1, v0

    #@11
    if-nez v0, :cond_3

    #@13
    .line 446
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    .line 447
    const-string/jumbo v1, "Native library paths to the WebView RelRo process must not be null!"

    #@18
    .line 446
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 453
    :catch_0
    move-exception v8

    #@1d
    .line 455
    .local v8, "t":Ljava/lang/Throwable;
    const-string/jumbo v0, "WebViewFactory"

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "error starting relro file creator for abi "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    .line 456
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    #@3a
    .line 426
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    #@3b
    .line 428
    .end local v4    # "abi":Ljava/lang/String;
    .end local v6    # "crashHandler":Ljava/lang/Runnable;
    :cond_2
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@3d
    aget-object v4, v0, v1

    #@3f
    .restart local v4    # "abi":Ljava/lang/String;
    goto :goto_0

    #@40
    .line 445
    .restart local v6    # "crashHandler":Ljava/lang/Runnable;
    :cond_3
    const/4 v0, 0x1

    #@41
    :try_start_1
    aget-object v0, p1, v0

    #@43
    if-eqz v0, :cond_0

    #@45
    .line 449
    const-class v0, Landroid/app/ActivityManagerInternal;

    #@47
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Landroid/app/ActivityManagerInternal;

    #@4d
    .line 450
    const-class v1, Landroid/webkit/WebViewFactory$RelroFileCreator;

    #@4f
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    new-instance v2, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v3, "WebViewLoader-"

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    .line 451
    const/16 v5, 0x40d

    #@69
    move-object v2, p1

    #@6a
    .line 449
    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityManagerInternal;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I

    #@6d
    move-result v7

    #@6e
    .line 452
    .local v7, "pid":I
    if-gtz v7, :cond_1

    #@70
    new-instance v0, Ljava/lang/Exception;

    #@72
    const-string/jumbo v1, "Failed to start the relro file creator process"

    #@75
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@78
    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static fetchPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    #@0
    .prologue
    .line 105
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v1

    #@8
    .line 107
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    const/16 v3, 0x80

    #@e
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 108
    :catch_0
    move-exception v0

    #@14
    .line 109
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    #@16
    invoke-direct {v2, v0}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    #@19
    throw v2
.end method

.method private static getChromiumProviderClass()Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    #@3
    move-result-object v2

    #@4
    .line 222
    .local v2, "initialApplication":Landroid/app/Application;
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    #@6
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@8
    .line 223
    const/4 v5, 0x3

    #@9
    .line 221
    invoke-virtual {v2, v4, v5}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@c
    move-result-object v3

    #@d
    .line 224
    .local v3, "webViewContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    #@10
    move-result-object v4

    #@11
    .line 225
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@14
    move-result-object v5

    #@15
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@17
    .line 224
    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@1a
    .line 226
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@1d
    move-result-object v0

    #@1e
    .line 227
    .local v0, "clazzLoader":Ljava/lang/ClassLoader;
    const-string/jumbo v4, "Class.forName()"

    #@21
    const-wide/16 v6, 0x10

    #@23
    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 229
    :try_start_1
    const-string/jumbo v4, "com.android.webview.chromium.WebViewChromiumFactoryProvider"

    #@29
    const/4 v5, 0x1

    #@2a
    invoke-static {v4, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    move-result-object v4

    #@2e
    .line 232
    const-wide/16 v6, 0x10

    #@30
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@33
    .line 229
    return-object v4

    #@34
    .line 231
    :catchall_0
    move-exception v4

    #@35
    .line 232
    const-wide/16 v6, 0x10

    #@37
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@3a
    .line 231
    throw v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    #@3b
    .line 234
    .end local v0    # "clazzLoader":Ljava/lang/ClassLoader;
    .end local v3    # "webViewContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    #@3c
    .line 235
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    #@3e
    invoke-direct {v4, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    #@41
    throw v4
.end method

.method private static getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "abiList"    # [Ljava/lang/String;
    .param p2, "nativeLibFileName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 357
    const/4 v4, 0x0

    #@3
    .local v4, "z":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    #@5
    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    .line 358
    .end local v4    # "z":Ljava/util/zip/ZipFile;
    .local v5, "z":Ljava/util/zip/ZipFile;
    :try_start_1
    array-length v8, p1

    #@9
    :goto_0
    if-ge v6, v8, :cond_3

    #@b
    aget-object v0, p1, v6

    #@d
    .line 359
    .local v0, "abi":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v10, "lib/"

    #@15
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v9

    #@19
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v9

    #@1d
    const-string/jumbo v10, "/"

    #@20
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v9

    #@24
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v9

    #@28
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 360
    .local v3, "entry":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@2f
    move-result-object v2

    #@30
    .line 361
    .local v2, "e":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_2

    #@32
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@35
    move-result v9

    #@36
    if-nez v9, :cond_2

    #@38
    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    const-string/jumbo v8, "!/"

    #@44
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@4f
    move-result-object v6

    #@50
    .line 368
    if-eqz v5, :cond_0

    #@52
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@55
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    #@57
    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@58
    .line 366
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "e":Ljava/util/zip/ZipEntry;
    .end local v3    # "entry":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@59
    .local v1, "e":Ljava/io/IOException;
    move-object v4, v5

    #@5a
    .line 367
    .end local v5    # "z":Ljava/util/zip/ZipFile;
    :goto_2
    new-instance v6, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    #@5c
    invoke-direct {v6, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    #@5f
    throw v6

    #@60
    .line 368
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "e":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entry":Ljava/lang/String;
    .restart local v5    # "z":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v7

    #@61
    goto :goto_1

    #@62
    .line 363
    :cond_1
    return-object v6

    #@63
    .line 358
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@65
    goto :goto_0

    #@66
    .line 368
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "e":Ljava/util/zip/ZipEntry;
    .end local v3    # "entry":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    #@68
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@6b
    :cond_4
    :goto_3
    if-eqz v7, :cond_8

    #@6d
    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@6e
    :catch_2
    move-exception v7

    #@6f
    goto :goto_3

    #@70
    .end local v5    # "z":Ljava/util/zip/ZipFile;
    .restart local v4    # "z":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v6

    #@71
    .end local v4    # "z":Ljava/util/zip/ZipFile;
    :goto_4
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@72
    :catchall_0
    move-exception v7

    #@73
    move-object v11, v7

    #@74
    move-object v7, v6

    #@75
    move-object v6, v11

    #@76
    :goto_5
    if-eqz v4, :cond_5

    #@78
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@7b
    :cond_5
    :goto_6
    if-eqz v7, :cond_7

    #@7d
    :try_start_8
    throw v7

    #@7e
    .line 366
    :catch_4
    move-exception v1

    #@7f
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    #@80
    .line 368
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    #@81
    if-nez v7, :cond_6

    #@83
    move-object v7, v8

    #@84
    goto :goto_6

    #@85
    :cond_6
    if-eq v7, v8, :cond_5

    #@87
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@8a
    goto :goto_6

    #@8b
    :cond_7
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    #@8c
    .line 369
    .restart local v5    # "z":Ljava/util/zip/ZipFile;
    :cond_8
    const-string/jumbo v6, ""

    #@8f
    return-object v6

    #@90
    .line 368
    .end local v5    # "z":Ljava/util/zip/ZipFile;
    .restart local v4    # "z":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v6

    #@91
    goto :goto_5

    #@92
    .end local v4    # "z":Ljava/util/zip/ZipFile;
    .restart local v5    # "z":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v6

    #@93
    move-object v4, v5

    #@94
    .end local v5    # "z":Ljava/util/zip/ZipFile;
    .local v4, "z":Ljava/util/zip/ZipFile;
    goto :goto_5

    #@95
    .end local v4    # "z":Ljava/util/zip/ZipFile;
    .restart local v5    # "z":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v6

    #@96
    move-object v4, v5

    #@97
    .end local v5    # "z":Ljava/util/zip/ZipFile;
    .restart local v4    # "z":Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method public static getLoadedPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    #@0
    .prologue
    .line 129
    sget-object v0, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    #@2
    return-object v0
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .locals 9

    #@0
    .prologue
    .line 145
    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 148
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    #@5
    if-eqz v4, :cond_0

    #@7
    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v5

    #@a
    return-object v4

    #@b
    .line 150
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@e
    move-result v3

    #@f
    .line 151
    .local v3, "uid":I
    if-eqz v3, :cond_1

    #@11
    const/16 v4, 0x3e8

    #@13
    if-ne v3, v4, :cond_2

    #@15
    .line 152
    :cond_1
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@17
    .line 153
    const-string/jumbo v6, "For security reasons, WebView is not allowed in privileged processes"

    #@1a
    .line 152
    invoke-direct {v4, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 145
    :catchall_0
    move-exception v4

    #@1f
    monitor-exit v5

    #@20
    throw v4

    #@21
    .line 156
    :cond_2
    :try_start_2
    const-string/jumbo v4, "WebViewFactory.getProvider()"

    #@24
    const-wide/16 v6, 0x10

    #@26
    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    .line 158
    :try_start_3
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProviderClass()Ljava/lang/Class;

    #@2c
    move-result-object v2

    #@2d
    .line 160
    .local v2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@30
    move-result-object v1

    #@31
    .line 161
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-string/jumbo v4, "providerClass.newInstance()"

    #@34
    const-wide/16 v6, 0x10

    #@36
    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@39
    .line 163
    const/4 v4, 0x1

    #@3a
    :try_start_4
    new-array v4, v4, [Ljava/lang/Class;

    #@3c
    const-class v6, Landroid/webkit/WebViewDelegate;

    #@3e
    const/4 v7, 0x0

    #@3f
    aput-object v6, v4, v7

    #@41
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@44
    move-result-object v4

    #@45
    const/4 v6, 0x1

    #@46
    new-array v6, v6, [Ljava/lang/Object;

    #@48
    .line 164
    new-instance v7, Landroid/webkit/WebViewDelegate;

    #@4a
    invoke-direct {v7}, Landroid/webkit/WebViewDelegate;-><init>()V

    #@4d
    const/4 v8, 0x0

    #@4e
    aput-object v7, v6, v8

    #@50
    .line 163
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v4

    #@54
    check-cast v4, Landroid/webkit/WebViewFactoryProvider;

    #@56
    sput-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    #@58
    .line 166
    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@5a
    .line 171
    const-wide/16 v6, 0x10

    #@5c
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@5f
    .line 172
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@62
    .line 175
    const-wide/16 v6, 0x10

    #@64
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@67
    monitor-exit v5

    #@68
    .line 166
    return-object v4

    #@69
    .line 167
    :catch_0
    move-exception v0

    #@6a
    .line 168
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v4, "WebViewFactory"

    #@6d
    const-string/jumbo v6, "error instantiating provider"

    #@70
    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@73
    .line 169
    new-instance v4, Landroid/util/AndroidRuntimeException;

    #@75
    invoke-direct {v4, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@78
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@79
    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    #@7a
    .line 171
    const-wide/16 v6, 0x10

    #@7c
    :try_start_8
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@7f
    .line 172
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@82
    .line 170
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@83
    .line 174
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :catchall_2
    move-exception v4

    #@84
    .line 175
    const-wide/16 v6, 0x10

    #@86
    :try_start_9
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@89
    .line 174
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private static getProviderClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->fetchPackageInfo()Landroid/content/pm/PackageInfo;

    #@3
    move-result-object v3

    #@4
    sput-object v3, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    #@6
    .line 184
    const-string/jumbo v3, "WebViewFactory"

    #@9
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "Loading "

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    sget-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    #@17
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    const-string/jumbo v5, " version "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 185
    sget-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    #@26
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #@28
    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 185
    const-string/jumbo v5, " (code "

    #@2f
    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 185
    sget-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    #@35
    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    #@37
    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 185
    const-string/jumbo v5, ")"

    #@3e
    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 187
    const-string/jumbo v3, "WebViewFactory.loadNativeLibrary()"

    #@4c
    const-wide/16 v4, 0x10

    #@4e
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@51
    .line 188
    invoke-static {}, Landroid/webkit/WebViewFactory;->loadNativeLibrary()I

    #@54
    .line 189
    const-wide/16 v4, 0x10

    #@56
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@59
    .line 191
    const-string/jumbo v3, "WebViewFactory.getChromiumProviderClass()"

    #@5c
    const-wide/16 v4, 0x10

    #@5e
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_1

    #@61
    .line 193
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getChromiumProviderClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    move-result-object v3

    #@65
    .line 198
    const-wide/16 v4, 0x10

    #@67
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_2 .. :try_end_2} :catch_1

    #@6a
    .line 193
    return-object v3

    #@6b
    .line 194
    :catch_0
    move-exception v1

    #@6c
    .line 195
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    const-string/jumbo v3, "WebViewFactory"

    #@6f
    const-string/jumbo v4, "error loading provider"

    #@72
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@75
    .line 196
    new-instance v3, Landroid/util/AndroidRuntimeException;

    #@77
    invoke-direct {v3, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@7a
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7b
    .line 197
    :catchall_0
    move-exception v3

    #@7c
    .line 198
    const-wide/16 v4, 0x10

    #@7e
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@81
    .line 197
    throw v3
    :try_end_4
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_4 .. :try_end_4} :catch_1

    #@82
    .line 200
    :catch_1
    move-exception v0

    #@83
    .line 206
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .local v0, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :try_start_5
    const-string/jumbo v3, "com.android.webview.nullwebview.NullWebViewFactoryProvider"

    #@86
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    #@89
    move-result-object v3

    #@8a
    return-object v3

    #@8b
    .line 207
    :catch_2
    move-exception v2

    #@8c
    .line 210
    .local v2, "e2":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v3, "WebViewFactory"

    #@8f
    const-string/jumbo v4, "Chromium WebView package does not exist"

    #@92
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@95
    .line 211
    new-instance v3, Landroid/util/AndroidRuntimeException;

    #@97
    invoke-direct {v3, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@9a
    throw v3
.end method

.method private static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    #@0
    .prologue
    .line 529
    const-string/jumbo v0, "webviewupdate"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private static getWebViewApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    #@0
    .prologue
    .line 115
    sget-object v0, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 116
    invoke-static {}, Landroid/webkit/WebViewFactory;->fetchPackageInfo()Landroid/content/pm/PackageInfo;

    #@7
    move-result-object v0

    #@8
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    return-object v0

    #@b
    .line 118
    :cond_0
    sget-object v0, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    #@d
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f
    return-object v0
.end method

.method private static getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 123
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 124
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@7
    const-string/jumbo v1, "com.android.webview.WebViewLibrary"

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 125
    :cond_0
    return-object v1
.end method

.method private static getWebViewNativeLibraryPaths()[Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 374
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v1

    #@4
    .line 375
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v1}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 379
    .local v0, "NATIVE_LIB_FILE_NAME":Ljava/lang/String;
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@a
    invoke-static {v6}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    #@d
    move-result v5

    #@e
    .line 380
    .local v5, "primaryArchIs64bit":Z
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@10
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@13
    move-result v6

    #@14
    if-nez v6, :cond_3

    #@16
    .line 382
    if-eqz v5, :cond_2

    #@18
    .line 384
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@1a
    .line 385
    .local v4, "path64":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@1c
    .line 403
    .local v3, "path32":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v6

    #@20
    if-nez v6, :cond_0

    #@22
    .line 404
    new-instance v6, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    const-string/jumbo v7, "/"

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 405
    new-instance v2, Ljava/io/File;

    #@3c
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@3f
    .line 406
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@42
    move-result v6

    #@43
    if-nez v6, :cond_0

    #@45
    .line 407
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@47
    .line 408
    sget-object v7, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@49
    .line 407
    invoke-static {v6, v7, v0}, Landroid/webkit/WebViewFactory;->getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 412
    .end local v2    # "f":Ljava/io/File;
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@50
    move-result v6

    #@51
    if-nez v6, :cond_1

    #@53
    .line 413
    new-instance v6, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    const-string/jumbo v7, "/"

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    .line 414
    new-instance v2, Ljava/io/File;

    #@6d
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@70
    .line 415
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@73
    move-result v6

    #@74
    if-nez v6, :cond_1

    #@76
    .line 416
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@78
    .line 417
    sget-object v7, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@7a
    .line 416
    invoke-static {v6, v7, v0}, Landroid/webkit/WebViewFactory;->getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    .line 423
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    const/4 v6, 0x2

    #@7f
    new-array v6, v6, [Ljava/lang/String;

    #@81
    const/4 v7, 0x0

    #@82
    aput-object v3, v6, v7

    #@84
    const/4 v7, 0x1

    #@85
    aput-object v4, v6, v7

    #@87
    return-object v6

    #@88
    .line 388
    .end local v3    # "path32":Ljava/lang/String;
    .end local v4    # "path64":Ljava/lang/String;
    :cond_2
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@8a
    .line 389
    .restart local v4    # "path64":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@8c
    .restart local v3    # "path32":Ljava/lang/String;
    goto :goto_0

    #@8d
    .line 391
    .end local v3    # "path32":Ljava/lang/String;
    .end local v4    # "path64":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    #@8f
    .line 393
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@91
    .line 394
    .restart local v4    # "path64":Ljava/lang/String;
    const-string/jumbo v3, ""

    #@94
    .restart local v3    # "path32":Ljava/lang/String;
    goto :goto_0

    #@95
    .line 397
    .end local v3    # "path32":Ljava/lang/String;
    .end local v4    # "path64":Ljava/lang/String;
    :cond_4
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@97
    .line 398
    .restart local v3    # "path32":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@9a
    .restart local v4    # "path64":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getWebViewPackageName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 100
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    .line 101
    const v1, 0x104004b

    #@7
    .line 100
    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private static loadNativeLibrary()I
    .locals 8

    #@0
    .prologue
    .line 498
    sget-boolean v4, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    #@2
    if-nez v4, :cond_0

    #@4
    .line 499
    const-string/jumbo v4, "WebViewFactory"

    #@7
    const-string/jumbo v5, "can\'t load with relro file; address space not reserved"

    #@a
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 500
    const/4 v4, 0x2

    #@e
    return v4

    #@f
    .line 504
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    #@12
    move-result-object v4

    #@13
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->is64Bit()Z

    #@1a
    move-result v5

    #@1b
    invoke-interface {v4, v5}, Landroid/webkit/IWebViewUpdateService;->waitForRelroCreationCompleted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 511
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths()[Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 512
    .local v0, "args":[Ljava/lang/String;
    const/4 v4, 0x0

    #@23
    aget-object v4, v0, v4

    #@25
    .line 513
    const/4 v5, 0x1

    #@26
    aget-object v5, v0, v5

    #@28
    .line 514
    const-string/jumbo v6, "/data/misc/shared_relro/libwebviewchromium32.relro"

    #@2b
    .line 515
    const-string/jumbo v7, "/data/misc/shared_relro/libwebviewchromium64.relro"

    #@2e
    .line 512
    invoke-static {v4, v5, v6, v7}, Landroid/webkit/WebViewFactory;->nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@31
    move-result v3

    #@32
    .line 516
    .local v3, "result":I
    if-eqz v3, :cond_1

    #@34
    .line 517
    const-string/jumbo v4, "WebViewFactory"

    #@37
    const-string/jumbo v5, "failed to load with relro file, proceeding without"

    #@3a
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_1 .. :try_end_1} :catch_1

    #@3d
    .line 521
    :cond_1
    return v3

    #@3e
    .line 505
    .end local v0    # "args":[Ljava/lang/String;
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    #@3f
    .line 506
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WebViewFactory"

    #@42
    const-string/jumbo v5, "error waiting for relro creation, proceeding without"

    #@45
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    .line 507
    const/4 v4, 0x3

    #@49
    return v4

    #@4a
    .line 522
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "args":[Ljava/lang/String;
    :catch_1
    move-exception v2

    #@4b
    .line 523
    .local v2, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    const-string/jumbo v4, "WebViewFactory"

    #@4e
    const-string/jumbo v5, "Failed to list WebView package libraries for loadNativeLibrary"

    #@51
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@54
    .line 524
    const/4 v4, 0x4

    #@55
    return v4
.end method

.method public static loadWebViewNativeLibraryFromPackage(Ljava/lang/String;)I
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 137
    invoke-static {}, Landroid/webkit/WebViewFactory;->fetchPackageInfo()Landroid/content/pm/PackageInfo;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    #@6
    .line 138
    if-eqz p0, :cond_0

    #@8
    sget-object v0, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    #@a
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 139
    invoke-static {}, Landroid/webkit/WebViewFactory;->loadNativeLibrary()I

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 141
    :cond_0
    const/4 v0, 0x1

    #@18
    return v0
.end method

.method private static native nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeReserveAddressSpace(J)Z
.end method

.method public static onWebViewUpdateInstalled()V
    .locals 21

    #@0
    .prologue
    .line 300
    const/4 v5, 0x0

    #@1
    .line 302
    .local v5, "nativeLibs":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths()[Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    .line 303
    .local v5, "nativeLibs":[Ljava/lang/String;
    if-eqz v5, :cond_5

    #@7
    .line 304
    const-wide/16 v6, 0x0

    #@9
    .line 306
    .local v6, "newVmSize":J
    const/4 v13, 0x0

    #@a
    array-length v0, v5

    #@b
    move/from16 v17, v0

    #@d
    move/from16 v16, v13

    #@f
    :goto_0
    move/from16 v0, v16

    #@11
    move/from16 v1, v17

    #@13
    if-ge v0, v1, :cond_b

    #@15
    aget-object v8, v5, v16

    #@17
    .line 307
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@19
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1c
    move-result v13

    #@1d
    if-eqz v13, :cond_1

    #@1f
    .line 306
    :cond_0
    :goto_1
    add-int/lit8 v13, v16, 0x1

    #@21
    move/from16 v16, v13

    #@23
    goto :goto_0

    #@24
    .line 309
    :cond_1
    new-instance v4, Ljava/io/File;

    #@26
    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@29
    .line 310
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@2c
    move-result v13

    #@2d
    if-eqz v13, :cond_2

    #@2f
    .line 311
    invoke-virtual {v4}, Ljava/io/File;->length()J

    #@32
    move-result-wide v14

    #@33
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    #@36
    move-result-wide v6

    #@37
    goto :goto_1

    #@38
    .line 314
    :cond_2
    const-string/jumbo v13, "!/"

    #@3b
    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@3e
    move-result v13

    #@3f
    if-eqz v13, :cond_4

    #@41
    .line 315
    const-string/jumbo v13, "!/"

    #@44
    invoke-static {v8, v13}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@47
    move-result-object v9

    #@48
    .line 316
    .local v9, "split":[Ljava/lang/String;
    array-length v13, v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    #@49
    const/4 v14, 0x2

    #@4a
    if-ne v13, v14, :cond_4

    #@4c
    .line 317
    const/4 v14, 0x0

    #@4d
    const/4 v11, 0x0

    #@4e
    .local v11, "z":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v12, Ljava/util/zip/ZipFile;

    #@50
    const/4 v13, 0x0

    #@51
    aget-object v13, v9, v13

    #@53
    invoke-direct {v12, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@56
    .line 318
    .end local v11    # "z":Ljava/util/zip/ZipFile;
    .local v12, "z":Ljava/util/zip/ZipFile;
    const/4 v13, 0x1

    #@57
    :try_start_2
    aget-object v13, v9, v13

    #@59
    invoke-virtual {v12, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@5c
    move-result-object v3

    #@5d
    .line 319
    .local v3, "e":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_6

    #@5f
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@62
    move-result v13

    #@63
    if-nez v13, :cond_6

    #@65
    .line 320
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    #@68
    move-result-wide v18

    #@69
    move-wide/from16 v0, v18

    #@6b
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@6e
    move-result-wide v6

    #@6f
    .line 326
    if-eqz v12, :cond_3

    #@71
    :try_start_3
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@74
    :cond_3
    :goto_2
    if-eqz v14, :cond_0

    #@76
    :try_start_4
    throw v14
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    #@77
    .line 324
    :catch_0
    move-exception v2

    #@78
    .local v2, "e":Ljava/io/IOException;
    move-object v11, v12

    #@79
    .line 325
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .end local v12    # "z":Ljava/util/zip/ZipFile;
    :goto_3
    :try_start_5
    const-string/jumbo v13, "WebViewFactory"

    #@7c
    new-instance v14, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v15, "error reading APK file "

    #@84
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v14

    #@88
    const/4 v15, 0x0

    #@89
    aget-object v15, v9, v15

    #@8b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v14

    #@8f
    const-string/jumbo v15, ", "

    #@92
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v14

    #@96
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v14

    #@9a
    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9d
    .line 329
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "split":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v13, "WebViewFactory"

    #@a0
    new-instance v14, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v15, "error sizing load for "

    #@a8
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v14

    #@ac
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v14

    #@b0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v14

    #@b4
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    #@b7
    goto/16 :goto_1

    #@b9
    .line 345
    .end local v4    # "f":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    :catch_1
    move-exception v10

    #@ba
    .line 347
    .local v10, "t":Ljava/lang/Throwable;
    const-string/jumbo v13, "WebViewFactory"

    #@bd
    const-string/jumbo v14, "error preparing webview native library"

    #@c0
    invoke-static {v13, v14, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c3
    .line 349
    .end local v6    # "newVmSize":J
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_4
    invoke-static {v5}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer([Ljava/lang/String;)V

    #@c6
    .line 299
    return-void

    #@c7
    .line 326
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v6    # "newVmSize":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "split":[Ljava/lang/String;
    .restart local v12    # "z":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v14

    #@c8
    goto :goto_2

    #@c9
    :cond_6
    if-eqz v12, :cond_7

    #@cb
    :try_start_6
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    #@ce
    :cond_7
    :goto_5
    if-eqz v14, :cond_4

    #@d0
    :try_start_7
    throw v14
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    #@d1
    :catch_3
    move-exception v14

    #@d2
    goto :goto_5

    #@d3
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .end local v12    # "z":Ljava/util/zip/ZipFile;
    .restart local v11    # "z":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v13

    #@d4
    .end local v11    # "z":Ljava/util/zip/ZipFile;
    :goto_6
    :try_start_8
    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@d5
    :catchall_0
    move-exception v14

    #@d6
    move-object/from16 v20, v14

    #@d8
    move-object v14, v13

    #@d9
    move-object/from16 v13, v20

    #@db
    :goto_7
    if-eqz v11, :cond_8

    #@dd
    :try_start_9
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    #@e0
    :cond_8
    :goto_8
    if-eqz v14, :cond_a

    #@e2
    :try_start_a
    throw v14

    #@e3
    .line 324
    :catch_5
    move-exception v2

    #@e4
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    #@e5
    .line 326
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v15

    #@e6
    if-nez v14, :cond_9

    #@e8
    move-object v14, v15

    #@e9
    goto :goto_8

    #@ea
    :cond_9
    if-eq v14, v15, :cond_8

    #@ec
    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@ef
    goto :goto_8

    #@f0
    :cond_a
    throw v13
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    #@f1
    .line 340
    .end local v4    # "f":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "split":[Ljava/lang/String;
    :cond_b
    const-wide/16 v14, 0x2

    #@f3
    mul-long/2addr v14, v6

    #@f4
    const-wide/32 v16, 0x6400000

    #@f7
    :try_start_b
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    #@fa
    move-result-wide v6

    #@fb
    .line 341
    const-string/jumbo v13, "WebViewFactory"

    #@fe
    new-instance v14, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v15, "Setting new address space to "

    #@106
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v14

    #@10a
    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v14

    #@10e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v14

    #@112
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@115
    .line 342
    const-string/jumbo v13, "persist.sys.webview.vmsize"

    #@118
    .line 343
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@11b
    move-result-object v14

    #@11c
    .line 342
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    #@11f
    goto :goto_4

    #@120
    .line 326
    .restart local v4    # "f":Ljava/io/File;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "split":[Ljava/lang/String;
    .restart local v11    # "z":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v13

    #@121
    goto :goto_7

    #@122
    .end local v11    # "z":Ljava/util/zip/ZipFile;
    .restart local v12    # "z":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v13

    #@123
    move-object v11, v12

    #@124
    .end local v12    # "z":Ljava/util/zip/ZipFile;
    .local v11, "z":Ljava/util/zip/ZipFile;
    goto :goto_7

    #@125
    .end local v11    # "z":Ljava/util/zip/ZipFile;
    .restart local v12    # "z":Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v13

    #@126
    move-object v11, v12

    #@127
    .end local v12    # "z":Ljava/util/zip/ZipFile;
    .restart local v11    # "z":Ljava/util/zip/ZipFile;
    goto :goto_6
.end method

.method public static prepareWebViewInSystemServer()V
    .locals 4

    #@0
    .prologue
    .line 272
    const/4 v0, 0x0

    #@1
    .line 274
    .local v0, "nativePaths":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v0

    #@5
    .line 279
    .end local v0    # "nativePaths":[Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer([Ljava/lang/String;)V

    #@8
    .line 271
    return-void

    #@9
    .line 275
    .restart local v0    # "nativePaths":[Ljava/lang/String;
    :catch_0
    move-exception v1

    #@a
    .line 277
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "WebViewFactory"

    #@d
    const-string/jumbo v3, "error preparing webview native library"

    #@10
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method private static prepareWebViewInSystemServer([Ljava/lang/String;)V
    .locals 2
    .param p0, "nativeLibraryPaths"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 288
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@3
    array-length v0, v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 290
    invoke-static {v1, p0}, Landroid/webkit/WebViewFactory;->createRelroFile(Z[Ljava/lang/String;)V

    #@9
    .line 293
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@b
    array-length v0, v0

    #@c
    if-lez v0, :cond_1

    #@e
    .line 295
    const/4 v0, 0x1

    #@f
    invoke-static {v0, p0}, Landroid/webkit/WebViewFactory;->createRelroFile(Z[Ljava/lang/String;)V

    #@12
    .line 282
    :cond_1
    return-void
.end method

.method public static prepareWebViewInZygote()V
    .locals 6

    #@0
    .prologue
    .line 245
    :try_start_0
    const-string/jumbo v3, "webviewchromium_loader"

    #@3
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 247
    const-string/jumbo v3, "persist.sys.webview.vmsize"

    #@9
    .line 248
    const-wide/32 v4, 0x6400000

    #@c
    .line 247
    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@f
    move-result-wide v0

    #@10
    .line 249
    .local v0, "addressSpaceToReserve":J
    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->nativeReserveAddressSpace(J)Z

    #@13
    move-result v3

    #@14
    sput-boolean v3, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    #@16
    .line 251
    sget-boolean v3, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 243
    :goto_0
    return-void

    #@1b
    .line 256
    :cond_0
    const-string/jumbo v3, "WebViewFactory"

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "reserving "

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    .line 257
    const-string/jumbo v5, " bytes of address space failed"

    #@31
    .line 256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    goto :goto_0

    #@3d
    .line 259
    :catch_0
    move-exception v2

    #@3e
    .line 261
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "WebViewFactory"

    #@41
    const-string/jumbo v4, "error preparing native loader"

    #@44
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    goto :goto_0
.end method
