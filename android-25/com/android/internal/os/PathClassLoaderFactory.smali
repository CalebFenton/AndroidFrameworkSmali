.class public Lcom/android/internal/os/PathClassLoaderFactory;
.super Ljava/lang/Object;
.source "PathClassLoaderFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZ)Ldalvik/system/PathClassLoader;
    .locals 6
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "librarySearchPath"    # Ljava/lang/String;
    .param p2, "libraryPermittedPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "targetSdkVersion"    # I
    .param p5, "isNamespaceShared"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x40

    #@2
    .line 43
    new-instance v1, Ldalvik/system/PathClassLoader;

    #@4
    invoke-direct {v1, p0, p1, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@7
    .line 45
    .local v1, "pathClassloader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v2, "createClassloaderNamespace"

    #@a
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@d
    .line 46
    invoke-static {v1, p4, p1, p2, p5}, Lcom/android/internal/os/PathClassLoaderFactory;->createClassloaderNamespace(Ljava/lang/ClassLoader;ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 51
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@14
    .line 53
    if-eqz v0, :cond_0

    #@16
    .line 54
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Unable to create namespace for the classloader "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 55
    const-string/jumbo v4, ": "

    #@2b
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-direct {v2, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 58
    :cond_0
    return-object v1
.end method

.method private static native createClassloaderNamespace(Ljava/lang/ClassLoader;ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method
