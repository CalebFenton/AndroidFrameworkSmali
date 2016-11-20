.class public Lsun/nio/ch/InheritedChannel$InheritedDatagramChannelImpl;
.super Lsun/nio/ch/DatagramChannelImpl;
.source "InheritedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/InheritedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InheritedDatagramChannelImpl"
.end annotation


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    #@3
    .line 114
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 1
    .param p1, "sa"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic disconnect()Ljava/nio/channels/DatagramChannel;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->disconnect()Ljava/nio/channels/DatagramChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getFD()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->getFD()Ljava/io/FileDescriptor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getFDVal()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->getFDVal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->getLocalAddress()Ljava/net/SocketAddress;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/net/SocketOption;

    #@0
    .prologue
    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->getRemoteAddress()Ljava/net/SocketAddress;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->implCloseSelectableChannel()V

    #@3
    .line 121
    invoke-static {}, Lsun/nio/ch/InheritedChannel;->-wrap0()V

    #@6
    .line 119
    return-void
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic kill()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->kill()V

    #@3
    return-void
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->localAddress()Ljava/net/SocketAddress;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->read(Ljava/nio/ByteBuffer;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic read([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->read([Ljava/nio/ByteBuffer;II)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public bridge synthetic receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "target"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    .locals 1
    .param p1, "name"    # Ljava/net/SocketOption;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .param p1, "name"    # Ljava/net/SocketOption;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic socket()Ljava/net/DatagramSocket;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->socket()Ljava/net/DatagramSocket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 0
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V

    #@3
    return-void
.end method

.method public bridge synthetic translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->write(Ljava/nio/ByteBuffer;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic write([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->write([Ljava/nio/ByteBuffer;II)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
