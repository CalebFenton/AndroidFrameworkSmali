.class public abstract Ljava/nio/channels/ServerSocketChannel;
.super Ljava/nio/channels/spi/AbstractSelectableChannel;
.source "ServerSocketChannel.java"

# interfaces
.implements Ljava/nio/channels/NetworkChannel;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 2
    .param p1, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 91
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 92
    return-void
.end method

.method public static whitelist test-api open()Ljava/nio/channels/ServerSocketChannel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api accept()Ljava/nio/channels/SocketChannel;
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

    .line 79
    invoke-virtual {p0, p1}, Ljava/nio/channels/ServerSocketChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api bind(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;
    .registers 3
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/nio/channels/ServerSocketChannel;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getLocalAddress()Ljava/net/SocketAddress;
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

    .line 79
    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/ServerSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/nio/channels/ServerSocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api socket()Ljava/net/ServerSocket;
.end method

.method public final whitelist test-api validOps()I
    .registers 2

    .line 127
    const/16 v0, 0x10

    return v0
.end method
