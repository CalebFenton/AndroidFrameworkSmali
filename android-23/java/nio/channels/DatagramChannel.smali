.class public abstract Ljava/nio/channels/DatagramChannel;
.super Ljava/nio/channels/spi/AbstractSelectableChannel;
.source "DatagramChannel.java"

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
    .line 55
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@3
    .line 54
    return-void
.end method

.method public static open()Ljava/nio/channels/DatagramChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel()Ljava/nio/channels/DatagramChannel;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public abstract connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract disconnect()Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isConnected()Z
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
    .line 324
    :try_start_0
    array-length v0, p1

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/channels/DatagramChannel;->read([Ljava/nio/ByteBuffer;II)J
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

.method public abstract receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract socket()Ljava/net/DatagramSocket;
.end method

.method public final validOps()I
    .locals 1

    #@0
    .prologue
    .line 82
    const/4 v0, 0x5

    #@1
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
    .line 427
    :try_start_0
    array-length v0, p1

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/channels/DatagramChannel;->write([Ljava/nio/ByteBuffer;II)J
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
