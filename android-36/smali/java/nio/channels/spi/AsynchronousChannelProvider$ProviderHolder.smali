.class Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;
.super Ljava/lang/Object;
.source "AsynchronousChannelProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/spi/AsynchronousChannelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderHolder"
.end annotation


# static fields
.field static final greylist-max-o provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smloadProviderAsService()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 1

    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->loadProviderAsService()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smloadProviderFromProperty()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 1

    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->loadProviderFromProperty()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->load()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    sput-object v0, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o load()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 1

    .line 78
    new-instance v0, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder$1;

    invoke-direct {v0}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder$1;-><init>()V

    .line 79
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/AsynchronousChannelProvider;

    .line 78
    return-object v0
.end method

.method private static greylist-max-o loadProviderAsService()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 4

    .line 113
    const-class v0, Ljava/nio/channels/spi/AsynchronousChannelProvider;

    .line 115
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 116
    .local v0, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/channels/spi/AsynchronousChannelProvider;>;"
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 119
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/spi/AsynchronousChannelProvider;>;"
    :goto_e
    :try_start_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/spi/AsynchronousChannelProvider;
    :try_end_1a
    .catch Ljava/util/ServiceConfigurationError; {:try_start_e .. :try_end_1a} :catch_1d

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    return-object v2

    .line 120
    :catch_1d
    move-exception v2

    .line 121
    .local v2, "sce":Ljava/util/ServiceConfigurationError;
    invoke-virtual {v2}, Ljava/util/ServiceConfigurationError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/SecurityException;

    if-eqz v3, :cond_27

    .line 123
    goto :goto_e

    .line 125
    :cond_27
    throw v2
.end method

.method private static greylist-max-o loadProviderFromProperty()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 4

    .line 93
    const-string v0, "java.nio.channels.spi.AsynchronousChannelProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "cn":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 95
    return-object v1

    .line 98
    :cond_a
    nop

    .line 99
    :try_start_b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 98
    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 100
    .local v2, "tmp":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/nio/channels/spi/AsynchronousChannelProvider;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_1b} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_1b} :catch_2a
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_1b} :catch_23
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_1b} :catch_1c

    return-object v3

    .line 107
    .end local v2    # "tmp":Ljava/lang/Object;
    :catch_1c
    move-exception v2

    .line 108
    .local v2, "x":Ljava/lang/SecurityException;
    new-instance v3, Ljava/util/ServiceConfigurationError;

    invoke-direct {v3, v1, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 105
    .end local v2    # "x":Ljava/lang/SecurityException;
    :catch_23
    move-exception v2

    .line 106
    .local v2, "x":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/util/ServiceConfigurationError;

    invoke-direct {v3, v1, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 103
    .end local v2    # "x":Ljava/lang/InstantiationException;
    :catch_2a
    move-exception v2

    .line 104
    .local v2, "x":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/util/ServiceConfigurationError;

    invoke-direct {v3, v1, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 101
    .end local v2    # "x":Ljava/lang/IllegalAccessException;
    :catch_31
    move-exception v2

    .line 102
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/util/ServiceConfigurationError;

    invoke-direct {v3, v1, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
