.class public final Ljava/nio/SelectorProviderImpl;
.super Ljava/nio/channels/spi/SelectorProvider;
.source "SelectorProviderImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
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
    .line 33
    new-instance v0, Ljava/nio/DatagramChannelImpl;

    #@2
    invoke-direct {v0, p0}, Ljava/nio/DatagramChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

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
    .line 37
    new-instance v0, Ljava/nio/PipeImpl;

    #@2
    invoke-direct {v0, p0}, Ljava/nio/PipeImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@5
    return-object v0
.end method

.method public openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    new-instance v0, Ljava/nio/SelectorImpl;

    #@2
    invoke-direct {v0, p0}, Ljava/nio/SelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@5
    return-object v0
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
    .line 45
    new-instance v0, Ljava/nio/ServerSocketChannelImpl;

    #@2
    invoke-direct {v0, p0}, Ljava/nio/ServerSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

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
    .line 49
    new-instance v0, Ljava/nio/SocketChannelImpl;

    #@2
    invoke-direct {v0, p0}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@5
    return-object v0
.end method
