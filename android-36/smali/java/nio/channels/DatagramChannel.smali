.class public abstract Ljava/nio/channels/DatagramChannel;
.super Ljava/nio/channels/spi/AbstractSelectableChannel;
.source "DatagramChannel.java"

# interfaces
.implements Ljava/nio/channels/ByteChannel;
.implements Ljava/nio/channels/ScatteringByteChannel;
.implements Ljava/nio/channels/GatheringByteChannel;
.implements Ljava/nio/channels/MulticastChannel;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 2
    .param p1, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 130
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 131
    return-void
.end method

.method public static whitelist test-api open()Ljava/nio/channels/DatagramChannel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api open(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .registers 2
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
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

    .line 118
    invoke-virtual {p0, p1}, Ljava/nio/channels/DatagramChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api disconnect()Ljava/nio/channels/DatagramChannel;
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

.method public abstract whitelist test-api getRemoteAddress()Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api isConnected()Z
.end method

.method public abstract whitelist test-api read(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api read([Ljava/nio/ByteBuffer;)J
    .registers 4
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/channels/DatagramChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract whitelist test-api read([Ljava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/nio/channels/DatagramChannel;"
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

    .line 118
    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api socket()Ljava/net/DatagramSocket;
.end method

.method public final whitelist test-api validOps()I
    .registers 2

    .line 201
    const/4 v0, 0x5

    return v0
.end method

.method public abstract whitelist test-api write(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api write([Ljava/nio/ByteBuffer;)J
    .registers 4
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/channels/DatagramChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract whitelist test-api write([Ljava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
