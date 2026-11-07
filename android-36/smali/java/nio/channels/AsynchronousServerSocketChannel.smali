.class public abstract Ljava/nio/channels/AsynchronousServerSocketChannel;
.super Ljava/lang/Object;
.source "AsynchronousServerSocketChannel.java"

# interfaces
.implements Ljava/nio/channels/AsynchronousChannel;
.implements Ljava/nio/channels/NetworkChannel;


# instance fields
.field private final greylist-max-o provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V
    .registers 2
    .param p1, "provider"    # Ljava/nio/channels/spi/AsynchronousChannelProvider;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Ljava/nio/channels/AsynchronousServerSocketChannel;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    .line 112
    return-void
.end method

.method public static whitelist test-api open()Ljava/nio/channels/AsynchronousServerSocketChannel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/channels/AsynchronousServerSocketChannel;->open(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api open(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .registers 3
    .param p0, "group"    # Ljava/nio/channels/AsynchronousChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    if-nez p0, :cond_7

    .line 149
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Ljava/nio/channels/AsynchronousChannelGroup;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    .line 150
    .local v0, "provider":Ljava/nio/channels/spi/AsynchronousChannelProvider;
    :goto_b
    invoke-virtual {v0, p0}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousServerSocketChannel(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract whitelist test-api accept()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api accept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public final whitelist test-api bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .registers 3
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/nio/channels/AsynchronousServerSocketChannel;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, Ljava/nio/channels/AsynchronousServerSocketChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api getLocalAddress()Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 2

    .line 120
    iget-object v0, p0, Ljava/nio/channels/AsynchronousServerSocketChannel;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-object v0
.end method

.method public abstract whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/nio/channels/AsynchronousServerSocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/AsynchronousServerSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object p1

    return-object p1
.end method
