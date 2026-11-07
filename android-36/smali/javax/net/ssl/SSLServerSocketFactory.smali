.class public abstract Ljavax/net/ssl/SSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "SSLServerSocketFactory.java"


# static fields
.field private static greylist-max-p defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

.field private static greylist-max-o lastVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    const/4 v0, -0x1

    sput v0, Ljavax/net/ssl/SSLServerSocketFactory;->lastVersion:I

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    return-void
.end method

.method public static declared-synchronized whitelist test-api getDefault()Ljavax/net/ServerSocketFactory;
    .registers 7

    const-class v0, Ljavax/net/ssl/SSLServerSocketFactory;

    monitor-enter v0

    .line 89
    :try_start_3
    sget-object v1, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    if-eqz v1, :cond_13

    sget v1, Ljavax/net/ssl/SSLServerSocketFactory;->lastVersion:I

    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v2

    if-ne v1, v2, :cond_13

    .line 90
    sget-object v1, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_db

    monitor-exit v0

    return-object v1

    .line 93
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v1

    sput v1, Ljavax/net/ssl/SSLServerSocketFactory;->lastVersion:I

    .line 94
    sget-object v1, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 95
    .local v1, "previousDefaultServerSocketFactory":Ljavax/net/ssl/SSLServerSocketFactory;
    const/4 v2, 0x0

    sput-object v2, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 97
    const-string v2, "ssl.ServerSocketFactory.provider"

    .line 98
    invoke-static {v2}, Ljavax/net/ssl/SSLSocketFactory;->getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "clsName":Ljava/lang/String;
    if-eqz v2, :cond_b4

    .line 105
    if-eqz v1, :cond_3c

    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 107
    sput-object v1, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 108
    sget-object v3, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_db

    monitor-exit v0

    return-object v3

    .line 110
    :cond_3c
    :try_start_3c
    const-string v3, "setting up default SSLServerSocketFactory"

    invoke-static {v3}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_db

    .line 112
    const/4 v3, 0x0

    .line 114
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_42
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_42 .. :try_end_46} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_48
    .catchall {:try_start_42 .. :try_end_46} :catchall_db

    move-object v3, v4

    .line 126
    goto :goto_62

    .line 132
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_48
    move-exception v3

    goto :goto_9e

    .line 115
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_4a
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 118
    .local v5, "cl":Ljava/lang/ClassLoader;
    if-nez v5, :cond_5a

    .line 119
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v5, v6

    .line 122
    :cond_5a
    if-eqz v5, :cond_62

    .line 124
    const/4 v6, 0x1

    invoke-static {v2, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 127
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :cond_62
    :goto_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is loaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLServerSocketFactory;

    .line 129
    .local v4, "fac":Ljavax/net/ssl/SSLServerSocketFactory;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instantiated an instance of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V

    .line 130
    sput-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_9c} :catch_48
    .catchall {:try_start_4b .. :try_end_9c} :catchall_db

    .line 131
    monitor-exit v0

    return-object v4

    .line 133
    .end local v4    # "fac":Ljavax/net/ssl/SSLServerSocketFactory;
    .local v3, "e":Ljava/lang/Exception;
    :goto_9e
    :try_start_9e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSLServerSocketFactory instantiation failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V
    :try_end_b4
    .catchall {:try_start_9e .. :try_end_b4} :catchall_db

    .line 140
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b4
    :try_start_b4
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 141
    .local v3, "context":Ljavax/net/ssl/SSLContext;
    if-eqz v3, :cond_c1

    .line 142
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v4

    sput-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    goto :goto_cf

    .line 144
    :cond_c1
    new-instance v4, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No factory found."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/Exception;)V

    sput-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 146
    :goto_cf
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_d1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b4 .. :try_end_d1} :catch_d3
    .catchall {:try_start_b4 .. :try_end_d1} :catchall_db

    monitor-exit v0

    return-object v4

    .line 147
    .end local v3    # "context":Ljavax/net/ssl/SSLContext;
    :catch_d3
    move-exception v3

    .line 148
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_d4
    new-instance v4, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    invoke-direct {v4, v3}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/Exception;)V
    :try_end_d9
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_db

    monitor-exit v0

    return-object v4

    .line 88
    .end local v1    # "previousDefaultServerSocketFactory":Ljavax/net/ssl/SSLServerSocketFactory;
    .end local v2    # "clsName":Ljava/lang/String;
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_db
    move-exception v1

    :try_start_dc
    monitor-exit v0
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    throw v1
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 61
    sget-boolean v0, Ljavax/net/ssl/SSLSocketFactory;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    :cond_9
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
.end method
