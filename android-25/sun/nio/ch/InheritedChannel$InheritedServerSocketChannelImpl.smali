.class public Lsun/nio/ch/InheritedChannel$InheritedServerSocketChannelImpl;
.super Lsun/nio/ch/ServerSocketChannelImpl;
.source "InheritedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/InheritedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InheritedServerSocketChannelImpl"
.end annotation


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Lsun/nio/ch/ServerSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Z)V

    #@4
    .line 97
    return-void
.end method


# virtual methods
.method public bridge synthetic accept()Ljava/nio/channels/SocketChannel;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getFD()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getFDVal()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->getFDVal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->getLocalAddress()Ljava/net/SocketAddress;

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
    invoke-super {p0, p1}, Lsun/nio/ch/ServerSocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

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
    .line 103
    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->implCloseSelectableChannel()V

    #@3
    .line 104
    invoke-static {}, Lsun/nio/ch/InheritedChannel;->-wrap0()V

    #@6
    .line 102
    return-void
.end method

.method public bridge synthetic isBound()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic kill()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->kill()V

    #@3
    return-void
.end method

.method public bridge synthetic localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

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
    invoke-super {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    .locals 1
    .param p1, "name"    # Ljava/net/SocketOption;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic socket()Ljava/net/ServerSocket;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->socket()Ljava/net/ServerSocket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->toString()Ljava/lang/String;

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
    invoke-super {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V

    #@3
    return-void
.end method

.method public bridge synthetic translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

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
    invoke-super {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

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
    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/ServerSocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
