.class public abstract Ljavax/net/ssl/SSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "SSLServerSocketFactory.java"


# static fields
.field private static defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

.field private static lastVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    const/4 v0, -0x1

    #@1
    sput v0, Ljavax/net/ssl/SSLServerSocketFactory;->lastVersion:I

    #@3
    .line 46
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ServerSocketFactory;
    .locals 13

    #@0
    .prologue
    const-class v10, Ljavax/net/ssl/SSLServerSocketFactory;

    #@2
    monitor-enter v10

    #@3
    .line 84
    :try_start_0
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    #@5
    if-eqz v9, :cond_0

    #@7
    sget v9, Ljavax/net/ssl/SSLServerSocketFactory;->lastVersion:I

    #@9
    invoke-static {}, Ljava/security/Security;->getVersion()I

    #@c
    move-result v11

    #@d
    if-ne v9, v11, :cond_0

    #@f
    .line 85
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v10

    #@12
    return-object v9

    #@13
    .line 88
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/security/Security;->getVersion()I

    #@16
    move-result v9

    #@17
    sput v9, Ljavax/net/ssl/SSLServerSocketFactory;->lastVersion:I

    #@19
    .line 89
    sget-object v8, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    #@1b
    .line 90
    .local v8, "previousDefaultServerSocketFactory":Ljavax/net/ssl/SSLServerSocketFactory;
    const/4 v9, 0x0

    #@1c
    sput-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    #@1e
    .line 93
    const-string/jumbo v9, "ssl.ServerSocketFactory.provider"

    #@21
    .line 92
    invoke-static {v9}, Ljavax/net/ssl/SSLSocketFactory;->getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 94
    .local v2, "clsName":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@27
    .line 99
    if-eqz v8, :cond_1

    #@29
    .line 100
    invoke-virtual {v8}, Ljavax/net/ssl/SSLServerSocketFactory;->getClass()Ljava/lang/Class;

    #@2c
    move-result-object v9

    #@2d
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@30
    move-result-object v9

    #@31
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v9

    #@35
    .line 99
    if-eqz v9, :cond_1

    #@37
    .line 101
    sput-object v8, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    #@39
    .line 102
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit v10

    #@3c
    return-object v9

    #@3d
    .line 104
    :cond_1
    const/4 v1, 0x0

    #@3e
    .line 105
    .local v1, "cls":Ljava/lang/Class;
    :try_start_2
    const-string/jumbo v9, "setting up default SSLServerSocketFactory"

    #@41
    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    .line 107
    :try_start_3
    const-string/jumbo v9, "setting up default SSLServerSocketFactory"

    #@47
    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    .line 109
    :try_start_4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4d
    move-result-object v1

    #@4e
    .line 121
    .end local v1    # "cls":Ljava/lang/Class;
    :cond_2
    :goto_0
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v11, "class "

    #@56
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v9

    #@5e
    const-string/jumbo v11, " is loaded"

    #@61
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v9

    #@65
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v9

    #@69
    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V

    #@6c
    .line 122
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@6f
    move-result-object v7

    #@70
    check-cast v7, Ljavax/net/ssl/SSLServerSocketFactory;

    #@72
    .line 123
    .local v7, "fac":Ljavax/net/ssl/SSLServerSocketFactory;
    new-instance v9, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v11, "instantiated an instance of class "

    #@7a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v9

    #@7e
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v9

    #@86
    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V

    #@89
    .line 124
    sput-object v7, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    #@8b
    .line 125
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    #@8d
    if-eqz v9, :cond_4

    #@8f
    .line 126
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@91
    monitor-exit v10

    #@92
    return-object v9

    #@93
    .line 110
    .end local v7    # "fac":Ljavax/net/ssl/SSLServerSocketFactory;
    .restart local v1    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v4

    #@94
    .line 112
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@97
    move-result-object v9

    #@98
    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@9b
    move-result-object v0

    #@9c
    .line 113
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    #@9e
    .line 114
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@a1
    move-result-object v0

    #@a2
    .line 117
    :cond_3
    if-eqz v0, :cond_2

    #@a4
    .line 118
    const/4 v9, 0x1

    #@a5
    invoke-static {v2, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@a8
    move-result-object v1

    #@a9
    .local v1, "cls":Ljava/lang/Class;
    goto :goto_0

    #@aa
    .line 128
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    #@ab
    .line 129
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v9, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v11, "SSLServerSocketFactory instantiation failed: "

    #@b3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v9

    #@b7
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v9

    #@bb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v9

    #@bf
    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@c2
    .line 136
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_8
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    #@c5
    move-result-object v3

    #@c6
    .line 137
    .local v3, "context":Ljavax/net/ssl/SSLContext;
    if-eqz v3, :cond_5

    #@c8
    .line 138
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    #@cb
    move-result-object v9

    #@cc
    sput-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@ce
    .line 143
    .end local v3    # "context":Ljavax/net/ssl/SSLContext;
    :cond_5
    :goto_1
    :try_start_9
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    #@d0
    if-nez v9, :cond_6

    #@d2
    .line 144
    new-instance v9, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    #@d4
    .line 145
    new-instance v11, Ljava/lang/IllegalStateException;

    #@d6
    const-string/jumbo v12, "No ServerSocketFactory implementation found"

    #@d9
    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@dc
    .line 144
    invoke-direct {v9, v11}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/Exception;)V

    #@df
    sput-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    #@e1
    .line 148
    :cond_6
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@e3
    monitor-exit v10

    #@e4
    return-object v9

    #@e5
    .end local v2    # "clsName":Ljava/lang/String;
    :catchall_0
    move-exception v9

    #@e6
    monitor-exit v10

    #@e7
    throw v9

    #@e8
    .line 140
    .restart local v2    # "clsName":Ljava/lang/String;
    :catch_2
    move-exception v6

    #@e9
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    sget-boolean v0, Ljavax/net/ssl/SSLSocketFactory;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 54
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9
    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
