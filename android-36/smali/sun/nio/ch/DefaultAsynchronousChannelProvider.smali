.class public Lsun/nio/ch/DefaultAsynchronousChannelProvider;
.super Ljava/lang/Object;
.source "DefaultAsynchronousChannelProvider.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 1

    .line 77
    const-string v0, "sun.nio.ch.LinuxAsynchronousChannelProvider"

    invoke-static {v0}, Lsun/nio/ch/DefaultAsynchronousChannelProvider;->createProvider(Ljava/lang/String;)Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createProvider(Ljava/lang/String;)Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 4
    .param p0, "cn"    # Ljava/lang/String;

    .line 47
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_13

    .line 50
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/nio/channels/spi/AsynchronousChannelProvider;>;"
    nop

    .line 52
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/spi/AsynchronousChannelProvider;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_b} :catch_c
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v1

    .line 53
    :catch_c
    move-exception v1

    .line 54
    .local v1, "x":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 48
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/nio/channels/spi/AsynchronousChannelProvider;>;"
    .end local v1    # "x":Ljava/lang/ReflectiveOperationException;
    :catch_13
    move-exception v0

    .line 49
    .local v0, "x":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
