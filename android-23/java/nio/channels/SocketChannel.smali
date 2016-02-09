.class public abstract Ljava/nio/channels/SocketChannel;
.super Ljava/nio/channels/spi/AbstractSelectableChannel;
.source "SocketChannel.java"

# interfaces
.implements Ljava/nio/channels/ByteChannel;
.implements Ljava/nio/channels/ScatteringByteChannel;
.implements Ljava/nio/channels/GatheringByteChannel;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 0
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@3
    .line 74
    return-void
.end method

.method public static open()Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSocketChannel()Ljava/nio/channels/SocketChannel;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static open(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 1
    .param p0, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    #@3
    move-result-object v0

    #@4
    .line 117
    .local v0, "socketChannel":Ljava/nio/channels/SocketChannel;
    if-eqz v0, :cond_0

    #@6
    .line 118
    invoke-virtual {v0, p0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    #@9
    .line 120
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract connect(Ljava/net/SocketAddress;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract finishConnect()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isConnectionPending()Z
.end method

.method public abstract read(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final declared-synchronized read([Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p1, "targets"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 333
    :try_start_0
    array-length v0, p1

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/channels/SocketChannel;->read([Ljava/nio/ByteBuffer;II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-wide v0

    #@7
    monitor-exit p0

    #@8
    return-wide v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public abstract read([Ljava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract socket()Ljava/net/Socket;
.end method

.method public final validOps()I
    .locals 1

    #@0
    .prologue
    .line 133
    const/16 v0, 0xd

    #@2
    return v0
.end method

.method public abstract write(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final declared-synchronized write([Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p1, "sources"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 431
    :try_start_0
    array-length v0, p1

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-wide v0

    #@7
    monitor-exit p0

    #@8
    return-wide v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public abstract write([Ljava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
