.class public Lsun/nio/ch/InheritedChannel$InheritedSocketChannelImpl;
.super Lsun/nio/ch/SocketChannelImpl;
.source "InheritedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/InheritedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InheritedSocketChannelImpl"
.end annotation


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V

    #@3
    .line 81
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    invoke-super {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    invoke-super {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic connect(Ljava/net/SocketAddress;)Z
    .locals 1
    .param p1, "sa"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    invoke-super {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->connect(Ljava/net/SocketAddress;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic finishConnect()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->finishConnect()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getFD()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getFDVal()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->getFDVal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->getLocalAddress()Ljava/net/SocketAddress;

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
    invoke-super {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->getRemoteAddress()Ljava/net/SocketAddress;

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
    .line 87
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->implCloseSelectableChannel()V

    #@3
    .line 88
    invoke-static {}, Lsun/nio/ch/InheritedChannel;->-wrap0()V

    #@6
    .line 86
    return-void
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic isConnectionPending()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnectionPending()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic isInputOpen()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->isInputOpen()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic isOutputOpen()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic kill()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V

    #@3
    return-void
.end method

.method public bridge synthetic localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

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
    invoke-super {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I

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
    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/SocketChannelImpl;->read([Ljava/nio/ByteBuffer;II)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

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
    invoke-super {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    .locals 1
    .param p1, "name"    # Ljava/net/SocketOption;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic shutdownInput()Ljava/nio/channels/SocketChannel;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->shutdownInput()Ljava/nio/channels/SocketChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic shutdownOutput()Ljava/nio/channels/SocketChannel;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->shutdownOutput()Ljava/nio/channels/SocketChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic socket()Ljava/net/Socket;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->socket()Ljava/net/Socket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->toString()Ljava/lang/String;

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
    invoke-super {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V

    #@3
    return-void
.end method

.method public bridge synthetic translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

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
    invoke-super {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

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
    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/SocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

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
    invoke-super {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->write(Ljava/nio/ByteBuffer;)I

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
    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/SocketChannelImpl;->write([Ljava/nio/ByteBuffer;II)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
