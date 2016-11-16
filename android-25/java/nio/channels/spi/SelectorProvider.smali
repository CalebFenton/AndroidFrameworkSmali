.class public abstract Ljava/nio/channels/spi/SelectorProvider;
.super Ljava/lang/Object;
.source "SelectorProvider.java"


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method static synthetic -get0()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    #@0
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/spi/SelectorProvider;
    .locals 0

    #@0
    sput-object p0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@2
    return-object p0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    #@0
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->loadProviderAsService()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    #@0
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->loadProviderFromProperty()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->lock:Ljava/lang/Object;

    #@7
    .line 72
    const/4 v0, 0x0

    #@8
    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@a
    .line 69
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@6
    move-result-object v0

    #@7
    .line 83
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@9
    .line 84
    new-instance v1, Ljava/lang/RuntimePermission;

    #@b
    const-string/jumbo v2, "selectorProvider"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@14
    .line 81
    :cond_0
    return-void
.end method

.method private static loadProviderAsService()Z
    .locals 5

    #@0
    .prologue
    .line 110
    const-class v3, Ljava/nio/channels/spi/SelectorProvider;

    #@2
    .line 111
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v4

    #@6
    .line 110
    invoke-static {v3, v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    #@9
    move-result-object v2

    #@a
    .line 112
    .local v2, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/channels/spi/SelectorProvider;>;"
    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    .line 115
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/spi/SelectorProvider;>;"
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_1

    #@14
    .line 116
    const/4 v3, 0x0

    #@15
    return v3

    #@16
    .line 117
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Ljava/nio/channels/spi/SelectorProvider;

    #@1c
    sput-object v3, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 118
    const/4 v3, 0x1

    #@1f
    return v3

    #@20
    .line 119
    :catch_0
    move-exception v1

    #@21
    .line 120
    .local v1, "sce":Ljava/util/ServiceConfigurationError;
    invoke-virtual {v1}, Ljava/util/ServiceConfigurationError;->getCause()Ljava/lang/Throwable;

    #@24
    move-result-object v3

    #@25
    instance-of v3, v3, Ljava/lang/SecurityException;

    #@27
    if-nez v3, :cond_0

    #@29
    .line 124
    throw v1
.end method

.method private static loadProviderFromProperty()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 88
    const-string/jumbo v6, "java.nio.channels.spi.SelectorProvider"

    #@5
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 89
    .local v1, "cn":Ljava/lang/String;
    if-nez v1, :cond_0

    #@b
    .line 90
    const/4 v6, 0x0

    #@c
    return v6

    #@d
    .line 93
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object v6

    #@11
    .line 92
    const/4 v7, 0x1

    #@12
    invoke-static {v1, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@15
    move-result-object v0

    #@16
    .line 94
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@19
    move-result-object v6

    #@1a
    check-cast v6, Ljava/nio/channels/spi/SelectorProvider;

    #@1c
    sput-object v6, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 95
    return v9

    #@1f
    .line 102
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    #@20
    .line 103
    .local v5, "x":Ljava/lang/SecurityException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    #@22
    invoke-direct {v6, v8, v5}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@25
    throw v6

    #@26
    .line 100
    .end local v5    # "x":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    #@27
    .line 101
    .local v4, "x":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    #@29
    invoke-direct {v6, v8, v4}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v6

    #@2d
    .line 98
    .end local v4    # "x":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    #@2e
    .line 99
    .local v3, "x":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    #@30
    invoke-direct {v6, v8, v3}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v6

    #@34
    .line 96
    .end local v3    # "x":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    #@35
    .line 97
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    #@37
    invoke-direct {v6, v8, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3a
    throw v6
.end method

.method public static provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 2

    #@0
    .prologue
    .line 165
    sget-object v1, Ljava/nio/channels/spi/SelectorProvider;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 166
    :try_start_0
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 167
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 169
    :cond_0
    :try_start_1
    new-instance v0, Ljava/nio/channels/spi/SelectorProvider$1;

    #@d
    invoke-direct {v0}, Ljava/nio/channels/spi/SelectorProvider$1;-><init>()V

    #@10
    .line 168
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/nio/channels/spi/SelectorProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    .line 165
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method


# virtual methods
.method public inheritedChannel()Ljava/nio/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract openDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openDatagramChannel(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openPipe()Ljava/nio/channels/Pipe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openSocketChannel()Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
