.class public abstract Lsun/nio/ch/SelectorProviderImpl;
.super Ljava/nio/channels/spi/SelectorProvider;
.source "SelectorProviderImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/nio/channels/spi/SelectorProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public openDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    new-instance v0, Lsun/nio/ch/DatagramChannelImpl;

    #@2
    invoke-direct {v0, p0}, Lsun/nio/ch/DatagramChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@5
    return-object v0
.end method

.method public openDatagramChannel(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .locals 1
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    new-instance v0, Lsun/nio/ch/DatagramChannelImpl;

    #@2
    invoke-direct {v0, p0, p1}, Lsun/nio/ch/DatagramChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/net/ProtocolFamily;)V

    #@5
    return-object v0
.end method

.method public openPipe()Ljava/nio/channels/Pipe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    new-instance v0, Lsun/nio/ch/PipeImpl;

    #@2
    invoke-direct {v0, p0}, Lsun/nio/ch/PipeImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@5
    return-object v0
.end method

.method public abstract openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    new-instance v0, Lsun/nio/ch/ServerSocketChannelImpl;

    #@2
    invoke-direct {v0, p0}, Lsun/nio/ch/ServerSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@5
    return-object v0
.end method

.method public openSocketChannel()Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    new-instance v0, Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-direct {v0, p0}, Lsun/nio/ch/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@5
    return-object v0
.end method
