.class public abstract Lsun/nio/ch/SelectorProviderImpl;
.super Ljava/nio/channels/spi/SelectorProvider;
.source "SelectorProviderImpl.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/nio/channels/spi/SelectorProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api openDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lsun/nio/ch/DatagramChannelImpl;

    invoke-direct {v0, p0}, Lsun/nio/ch/DatagramChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v0
.end method

.method public whitelist test-api openDatagramChannel(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .registers 3
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Lsun/nio/ch/DatagramChannelImpl;

    invoke-direct {v0, p0, p1}, Lsun/nio/ch/DatagramChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/net/ProtocolFamily;)V

    return-object v0
.end method

.method public whitelist test-api openPipe()Ljava/nio/channels/Pipe;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Lsun/nio/ch/PipeImpl;

    invoke-direct {v0, p0}, Lsun/nio/ch/PipeImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v0
.end method

.method public abstract whitelist test-api openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-direct {v0, p0}, Lsun/nio/ch/ServerSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v0
.end method

.method public whitelist test-api openSocketChannel()Ljava/nio/channels/SocketChannel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Lsun/nio/ch/SocketChannelImpl;

    invoke-direct {v0, p0}, Lsun/nio/ch/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v0
.end method
