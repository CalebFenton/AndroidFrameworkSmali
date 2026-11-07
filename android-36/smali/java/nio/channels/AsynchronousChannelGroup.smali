.class public abstract Ljava/nio/channels/AsynchronousChannelGroup;
.super Ljava/lang/Object;
.source "AsynchronousChannelGroup.java"


# instance fields
.field private final greylist-max-o provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V
    .registers 2
    .param p1, "provider"    # Ljava/nio/channels/spi/AsynchronousChannelProvider;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Ljava/nio/channels/AsynchronousChannelGroup;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    .line 149
    return-void
.end method

.method public static whitelist test-api withCachedThreadPool(Ljava/util/concurrent/ExecutorService;I)Ljava/nio/channels/AsynchronousChannelGroup;
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "initialSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    .line 238
    invoke-virtual {v0, p0, p1}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousChannelGroup(Ljava/util/concurrent/ExecutorService;I)Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object v0

    .line 237
    return-object v0
.end method

.method public static whitelist test-api withFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/nio/channels/AsynchronousChannelGroup;
    .registers 3
    .param p0, "nThreads"    # I
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p0, p1}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousChannelGroup(ILjava/util/concurrent/ThreadFactory;)Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object v0

    .line 190
    return-object v0
.end method

.method public static whitelist test-api withThreadPool(Ljava/util/concurrent/ExecutorService;)Ljava/nio/channels/AsynchronousChannelGroup;
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousChannelGroup(Ljava/util/concurrent/ExecutorService;I)Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object v0

    .line 277
    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api isShutdown()Z
.end method

.method public abstract whitelist test-api isTerminated()Z
.end method

.method public final whitelist test-api provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 2

    .line 157
    iget-object v0, p0, Ljava/nio/channels/AsynchronousChannelGroup;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-object v0
.end method

.method public abstract whitelist test-api shutdown()V
.end method

.method public abstract whitelist test-api shutdownNow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
