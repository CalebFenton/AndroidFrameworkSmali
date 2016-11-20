.class public abstract Ljavax/net/ssl/SSLSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SSLSocketFactory.java"


# static fields
.field static final DEBUG:Z

.field private static defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static lastVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 49
    const/4 v1, -0x1

    #@1
    sput v1, Ljavax/net/ssl/SSLSocketFactory;->lastVersion:I

    #@3
    .line 55
    new-instance v1, Lsun/security/action/GetPropertyAction;

    #@5
    const-string/jumbo v2, "javax.net.debug"

    #@8
    const-string/jumbo v3, ""

    #@b
    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 54
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    .line 56
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@16
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 57
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "all"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_0

    #@23
    const-string/jumbo v1, "ssl"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@29
    move-result v1

    #@2a
    :goto_0
    sput-boolean v1, Ljavax/net/ssl/SSLSocketFactory;->DEBUG:Z

    #@2c
    .line 45
    return-void

    #@2d
    .line 57
    :cond_0
    const/4 v1, 0x1

    #@2e
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/SocketFactory;
    .locals 12

    #@0
    .prologue
    const-class v9, Ljavax/net/ssl/SSLSocketFactory;

    #@2
    monitor-enter v9

    #@3
    .line 90
    :try_start_0
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@5
    if-eqz v8, :cond_0

    #@7
    sget v8, Ljavax/net/ssl/SSLSocketFactory;->lastVersion:I

    #@9
    invoke-static {}, Ljava/security/Security;->getVersion()I

    #@c
    move-result v10

    #@d
    if-ne v8, v10, :cond_0

    #@f
    .line 91
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v9

    #@12
    return-object v8

    #@13
    .line 94
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/security/Security;->getVersion()I

    #@16
    move-result v8

    #@17
    sput v8, Ljavax/net/ssl/SSLSocketFactory;->lastVersion:I

    #@19
    .line 95
    sget-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@1b
    .line 96
    .local v7, "previousDefaultSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v8, 0x0

    #@1c
    sput-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@1e
    .line 98
    const-string/jumbo v8, "ssl.SocketFactory.provider"

    #@21
    invoke-static {v8}, Ljavax/net/ssl/SSLSocketFactory;->getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 100
    .local v2, "clsName":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@27
    .line 105
    if-eqz v7, :cond_1

    #@29
    .line 106
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocketFactory;->getClass()Ljava/lang/Class;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v8

    #@35
    .line 105
    if-eqz v8, :cond_1

    #@37
    .line 107
    sput-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@39
    .line 108
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit v9

    #@3c
    return-object v8

    #@3d
    .line 110
    :cond_1
    :try_start_2
    const-string/jumbo v8, "setting up default SSLSocketFactory"

    #@40
    invoke-static {v8}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    .line 112
    const/4 v1, 0x0

    #@44
    .line 114
    .local v1, "cls":Ljava/lang/Class;
    :try_start_3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@47
    move-result-object v1

    #@48
    .line 126
    .end local v1    # "cls":Ljava/lang/Class;
    :cond_2
    :goto_0
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v10, "class "

    #@50
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v8

    #@58
    const-string/jumbo v10, " is loaded"

    #@5b
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v8

    #@5f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v8

    #@63
    invoke-static {v8}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V

    #@66
    .line 127
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@69
    move-result-object v8

    #@6a
    check-cast v8, Ljavax/net/ssl/SSLSocketFactory;

    #@6c
    sput-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@6e
    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v10, "instantiated an instance of class "

    #@76
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v8

    #@7a
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v8

    #@82
    invoke-static {v8}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V

    #@85
    .line 129
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@87
    if-eqz v8, :cond_4

    #@89
    .line 130
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8b
    monitor-exit v9

    #@8c
    return-object v8

    #@8d
    .line 115
    .restart local v1    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v4

    #@8e
    .line 117
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@91
    move-result-object v8

    #@92
    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@95
    move-result-object v0

    #@96
    .line 118
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    #@98
    .line 119
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@9b
    move-result-object v0

    #@9c
    .line 122
    :cond_3
    if-eqz v0, :cond_2

    #@9e
    .line 123
    const/4 v8, 0x1

    #@9f
    invoke-static {v2, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@a2
    move-result-object v1

    #@a3
    .local v1, "cls":Ljava/lang/Class;
    goto :goto_0

    #@a4
    .line 132
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    #@a5
    .line 133
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v10, "SSLSocketFactory instantiation failed: "

    #@ad
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v8

    #@b1
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@b4
    move-result-object v10

    #@b5
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v8

    #@b9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v8

    #@bd
    invoke-static {v8}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c0
    .line 139
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_7
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    #@c3
    move-result-object v3

    #@c4
    .line 140
    .local v3, "context":Ljavax/net/ssl/SSLContext;
    if-eqz v3, :cond_5

    #@c6
    .line 141
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@c9
    move-result-object v8

    #@ca
    sput-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@cc
    .line 146
    .end local v3    # "context":Ljavax/net/ssl/SSLContext;
    :cond_5
    :goto_1
    :try_start_8
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@ce
    if-nez v8, :cond_6

    #@d0
    .line 147
    new-instance v8, Ljavax/net/ssl/DefaultSSLSocketFactory;

    #@d2
    new-instance v10, Ljava/lang/IllegalStateException;

    #@d4
    const-string/jumbo v11, "No factory found."

    #@d7
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@da
    invoke-direct {v8, v10}, Ljavax/net/ssl/DefaultSSLSocketFactory;-><init>(Ljava/lang/Exception;)V

    #@dd
    sput-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@df
    .line 150
    :cond_6
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@e1
    monitor-exit v9

    #@e2
    return-object v8

    #@e3
    .end local v2    # "clsName":Ljava/lang/String;
    :catchall_0
    move-exception v8

    #@e4
    monitor-exit v9

    #@e5
    throw v8

    #@e6
    .line 143
    .restart local v2    # "clsName":Ljava/lang/String;
    :catch_2
    move-exception v6

    #@e7
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1
.end method

.method static getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    new-instance v0, Ljavax/net/ssl/SSLSocketFactory$1;

    #@2
    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLSocketFactory$1;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    sget-boolean v0, Ljavax/net/ssl/SSLSocketFactory;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9
    .line 60
    :cond_0
    return-void
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
