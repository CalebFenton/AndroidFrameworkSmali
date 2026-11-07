.class Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;
.super Lcom/android/internal/os/ZygoteConnection;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/WebViewZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewZygoteConnection"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .registers 3
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private blacklist doPreload(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 12
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "libFileName"    # Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "preloadInZygote"

    const-string v1, "WebViewZygoteInit"

    invoke-static {p1, p2}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    .line 91
    const/4 v2, 0x0

    .line 93
    .local v2, "preloadSucceeded":Z
    nop

    .line 94
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_c
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 95
    .local v5, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 96
    .local v6, "preloadInZygote":Ljava/lang/reflect/Method;
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 97
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_27

    .line 98
    const-string v0, "Unexpected return type: preloadInZygote must return boolean"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 100
    :cond_27
    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v7, v4, [Ljava/lang/Object;

    .line 101
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v2, v0

    .line 102
    if-nez v2, :cond_43

    .line 103
    const-string/jumbo v0, "preloadInZygote returned false"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_c .. :try_end_43} :catch_44

    .line 108
    .end local v5    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    .end local v6    # "preloadInZygote":Ljava/lang/reflect/Method;
    :cond_43
    :goto_43
    goto :goto_4a

    .line 106
    :catch_44
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v5, "Exception while preloading package"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_4a
    :try_start_4a
    invoke-virtual {p0}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;->getSocketOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    .line 112
    .local v0, "socketOut":Ljava/io/DataOutputStream;
    if-eqz v2, :cond_51

    goto :goto_52

    :cond_51
    move v3, v4

    :goto_52
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_55} :catch_57

    .line 115
    .end local v0    # "socketOut":Ljava/io/DataOutputStream;
    nop

    .line 116
    return-void

    .line 113
    :catch_57
    move-exception v0

    .line 114
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Error writing to command socket"

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected blacklist canPreloadApp()Z
    .registers 2

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist handlePreloadApp(Landroid/content/pm/ApplicationInfo;)V
    .registers 12
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beginning application preload for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewZygoteInit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v2, Landroid/app/LoadedApk;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    .end local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct/range {v2 .. v9}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    .line 75
    .local v2, "loadedApk":Landroid/app/LoadedApk;
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 76
    .local p1, "loader":Ljava/lang/ClassLoader;
    invoke-static {v4}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;->doPreload(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 78
    invoke-static {v4}, Lcom/android/internal/os/Zygote;->allowAppFilesAcrossFork(Landroid/content/pm/ApplicationInfo;)V

    .line 80
    const-string v0, "Application preload done"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method protected blacklist isPreloadComplete()Z
    .registers 2

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist preload()V
    .registers 1

    .line 57
    return-void
.end method
