.class public abstract Ljava/nio/channels/spi/AsynchronousChannelProvider;
.super Ljava/lang/Object;
.source "AsynchronousChannelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;
    }
.end annotation


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 70
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->checkPermission()Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/spi/AsynchronousChannelProvider;-><init>(Ljava/lang/Void;)V

    .line 71
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Void;)V
    .registers 2
    .param p1, "ignore"    # Ljava/lang/Void;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o checkPermission()Ljava/lang/Void;
    .registers 3

    .line 55
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 56
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 57
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "asynchronousChannelProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 58
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist test-api provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 1

    .line 167
    sget-object v0, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api openAsynchronousChannelGroup(ILjava/util/concurrent/ThreadFactory;)Ljava/nio/channels/AsynchronousChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api openAsynchronousChannelGroup(Ljava/util/concurrent/ExecutorService;I)Ljava/nio/channels/AsynchronousChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api openAsynchronousServerSocketChannel(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api openAsynchronousSocketChannel(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
