.class public abstract Ljavax/net/ssl/SSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "SSLServerSocketFactory.java"


# static fields
.field private static defaultName:Ljava/lang/String;

.field private static defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

.field private static lastCacheVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    const/4 v0, -0x1

    #@1
    sput v0, Ljavax/net/ssl/SSLServerSocketFactory;->lastCacheVersion:I

    #@3
    .line 28
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ServerSocketFactory;
    .locals 9

    #@0
    .prologue
    const-class v7, Ljavax/net/ssl/SSLServerSocketFactory;

    #@2
    monitor-enter v7

    #@3
    .line 46
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    #@6
    move-result v4

    #@7
    .line 47
    .local v4, "newCacheVersion":I
    sget v6, Ljavax/net/ssl/SSLServerSocketFactory;->lastCacheVersion:I

    #@9
    if-eq v6, v4, :cond_0

    #@b
    .line 48
    const/4 v6, 0x0

    #@c
    sput-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    #@e
    .line 49
    const/4 v6, 0x0

    #@f
    sput-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    #@11
    .line 50
    sput v4, Ljavax/net/ssl/SSLServerSocketFactory;->lastCacheVersion:I

    #@13
    .line 52
    :cond_0
    sget-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    #@15
    if-eqz v6, :cond_1

    #@17
    .line 53
    sget-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v7

    #@1a
    return-object v6

    #@1b
    .line 55
    :cond_1
    :try_start_1
    sget-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    #@1d
    if-nez v6, :cond_3

    #@1f
    .line 56
    const-string/jumbo v6, "ssl.ServerSocketFactory.provider"

    #@22
    invoke-static {v6}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    sput-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    #@28
    .line 57
    sget-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    #@2a
    if-eqz v6, :cond_3

    #@2c
    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@33
    move-result-object v0

    #@34
    .line 59
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_2

    #@36
    .line 60
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    move-result-object v0

    #@3a
    .line 63
    :cond_2
    :try_start_2
    sget-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    #@3c
    const/4 v8, 0x1

    #@3d
    invoke-static {v6, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@40
    move-result-object v5

    #@41
    .line 64
    .local v5, "ssfc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@44
    move-result-object v6

    #@45
    check-cast v6, Ljavax/net/ServerSocketFactory;

    #@47
    sput-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    .line 69
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "ssfc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_0
    :try_start_3
    sget-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4b
    if-nez v6, :cond_4

    #@4d
    .line 72
    :try_start_4
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@50
    move-result-object v1

    #@51
    .line 76
    :goto_1
    if-eqz v1, :cond_4

    #@53
    .line 77
    :try_start_5
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    #@56
    move-result-object v6

    #@57
    sput-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    #@59
    .line 80
    :cond_4
    sget-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    #@5b
    if-nez v6, :cond_5

    #@5d
    .line 82
    new-instance v6, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    #@5f
    .line 83
    const-string/jumbo v8, "No ServerSocketFactory installed"

    #@62
    .line 82
    invoke-direct {v6, v8}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/String;)V

    #@65
    sput-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    #@67
    .line 85
    :cond_5
    sget-object v6, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@69
    monitor-exit v7

    #@6a
    return-object v6

    #@6b
    .line 73
    :catch_0
    move-exception v3

    #@6c
    .line 74
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    #@6d
    .local v1, "context":Ljavax/net/ssl/SSLContext;
    goto :goto_1

    #@6e
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v6

    #@6f
    monitor-exit v7

    #@70
    throw v6

    #@71
    .line 65
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v2

    #@72
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
