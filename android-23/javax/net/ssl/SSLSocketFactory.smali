.class public abstract Ljavax/net/ssl/SSLSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SSLSocketFactory.java"


# static fields
.field private static defaultSocketFactory:Ljavax/net/SocketFactory;

.field private static lastCacheVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    const/4 v0, -0x1

    #@1
    sput v0, Ljavax/net/ssl/SSLSocketFactory;->lastCacheVersion:I

    #@3
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/SocketFactory;
    .locals 10

    #@0
    .prologue
    const-class v8, Ljavax/net/ssl/SSLSocketFactory;

    #@2
    monitor-enter v8

    #@3
    .line 45
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    #@6
    move-result v4

    #@7
    .line 46
    .local v4, "newCacheVersion":I
    sget-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    #@9
    if-eqz v7, :cond_0

    #@b
    sget v7, Ljavax/net/ssl/SSLSocketFactory;->lastCacheVersion:I

    #@d
    if-ne v7, v4, :cond_0

    #@f
    .line 47
    sget-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v8

    #@12
    return-object v7

    #@13
    .line 49
    :cond_0
    :try_start_1
    sput v4, Ljavax/net/ssl/SSLSocketFactory;->lastCacheVersion:I

    #@15
    .line 51
    const-string/jumbo v7, "ssl.SocketFactory.provider"

    #@18
    invoke-static {v7}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    .line 52
    .local v5, "newName":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@1e
    .line 57
    sget-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    #@20
    if-eqz v7, :cond_2

    #@22
    .line 58
    sget-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    #@24
    invoke-virtual {v7}, Ljavax/net/SocketFactory;->getClass()Ljava/lang/Class;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_1

    #@32
    .line 59
    sget-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v8

    #@35
    return-object v7

    #@36
    .line 61
    :cond_1
    const/4 v7, 0x0

    #@37
    :try_start_2
    sput-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    #@39
    .line 65
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@40
    move-result-object v0

    #@41
    .line 66
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    #@43
    .line 67
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    move-result-object v0

    #@47
    .line 70
    :cond_3
    const/4 v7, 0x1

    #@48
    :try_start_3
    invoke-static {v5, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@4b
    move-result-object v6

    #@4c
    .line 71
    .local v6, "sfc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@4f
    move-result-object v7

    #@50
    check-cast v7, Ljavax/net/SocketFactory;

    #@52
    sput-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@54
    .line 80
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v6    # "sfc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_4
    sget-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@56
    if-nez v7, :cond_4

    #@58
    .line 83
    :try_start_5
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5b
    move-result-object v1

    #@5c
    .line 87
    :goto_1
    if-eqz v1, :cond_4

    #@5e
    .line 88
    :try_start_6
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@61
    move-result-object v7

    #@62
    sput-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    #@64
    .line 92
    :cond_4
    sget-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    #@66
    if-nez v7, :cond_5

    #@68
    .line 94
    new-instance v7, Ljavax/net/ssl/DefaultSSLSocketFactory;

    #@6a
    const-string/jumbo v9, "No SSLSocketFactory installed"

    #@6d
    invoke-direct {v7, v9}, Ljavax/net/ssl/DefaultSSLSocketFactory;-><init>(Ljava/lang/String;)V

    #@70
    sput-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    #@72
    .line 97
    :cond_5
    sget-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@74
    monitor-exit v8

    #@75
    return-object v7

    #@76
    .line 72
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    #@77
    .line 73
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v9, "Could not create "

    #@7f
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v7

    #@87
    const-string/jumbo v9, " with ClassLoader "

    #@8a
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v7

    #@8e
    .line 74
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->toString()Ljava/lang/String;

    #@91
    move-result-object v9

    #@92
    .line 73
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    .line 74
    const-string/jumbo v9, ": "

    #@99
    .line 73
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v7

    #@9d
    .line 74
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@a0
    move-result-object v9

    #@a1
    .line 73
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v7

    #@a5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v7

    #@a9
    invoke-static {v7}, Ljava/lang/System;->logW(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@ac
    goto :goto_0

    #@ad
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "newName":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@ae
    monitor-exit v8

    #@af
    throw v7

    #@b0
    .line 77
    .restart local v5    # "newName":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    #@b1
    :try_start_8
    sput-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@b3
    goto :goto_0

    #@b4
    .line 84
    :catch_1
    move-exception v3

    #@b5
    .line 85
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    #@b6
    .local v1, "context":Ljavax/net/ssl/SSLContext;
    goto :goto_1
.end method


# virtual methods
.method public abstract createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
