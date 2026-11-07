.class public abstract Ljava/net/DatagramSocketImpl;
.super Ljava/lang/Object;
.source "DatagramSocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# static fields
.field private static final blacklist dgSocketOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist mcSocketOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected whitelist test-api fd:Ljava/io/FileDescriptor;

.field protected whitelist test-api localPort:I

.field greylist-max-o socket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 358
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    sget-object v1, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    sget-object v3, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/net/DatagramSocketImpl;->dgSocketOptions:Ljava/util/Set;

    .line 363
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    sget-object v3, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    sget-object v4, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    sget-object v6, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    sget-object v7, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    invoke-static/range {v1 .. v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/net/DatagramSocketImpl;->mcSocketOptions:Ljava/util/Set;

    .line 370
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract whitelist test-api bind(ILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api close()V
.end method

.method protected whitelist test-api connect(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method protected abstract whitelist test-api create()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method greylist-max-o dataAvailable()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api disconnect()V
    .registers 1

    .line 121
    return-void
.end method

.method greylist-max-o getDatagramSocket()Ljava/net/DatagramSocket;
    .registers 2

    .line 61
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->socket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method protected whitelist test-api getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 262
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected whitelist test-api getLocalPort()I
    .registers 2

    .line 253
    iget v0, p0, Ljava/net/DatagramSocketImpl;->localPort:I

    return v0
.end method

.method protected whitelist test-api getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_b

    .line 328
    const/16 v0, 0x1001

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 329
    :cond_b
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_16

    .line 330
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 331
    :cond_16
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_20

    .line 332
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 333
    :cond_20
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEPORT:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_35

    .line 334
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 335
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 336
    :cond_35
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3f

    .line 337
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 338
    :cond_3f
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_52

    .line 339
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_52

    .line 340
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 341
    :cond_52
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_67

    .line 342
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_67

    .line 343
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 344
    .local v0, "ttl":Ljava/lang/Integer;
    return-object v0

    .line 345
    .end local v0    # "ttl":Ljava/lang/Integer;
    :cond_67
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_7a

    .line 346
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_7a

    .line 347
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 349
    :cond_7a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract whitelist test-api getTTL()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract whitelist test-api getTimeToLive()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api join(Ljava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api leave(Ljava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api peek(Ljava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api peekData(Ljava/net/DatagramPacket;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api receive(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api send(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method greylist-max-o setDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .line 57
    iput-object p1, p0, Ljava/net/DatagramSocketImpl;->socket:Ljava/net/DatagramSocket;

    .line 58
    return-void
.end method

.method protected whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_b

    .line 283
    const/16 v0, 0x1001

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto/16 :goto_82

    .line 284
    :cond_b
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_16

    .line 285
    const/16 v0, 0x1002

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto/16 :goto_82

    .line 286
    :cond_16
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_1f

    .line 287
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_82

    .line 288
    :cond_1f
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEPORT:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_33

    .line 289
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 290
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_82

    .line 291
    :cond_33
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3c

    .line 292
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_82

    .line 293
    :cond_3c
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_4e

    .line 294
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_4e

    .line 295
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_82

    .line 296
    :cond_4e
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_71

    .line 297
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_71

    .line 298
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_69

    .line 301
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    goto :goto_82

    .line 299
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not an integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_71
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_83

    .line 303
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_83

    .line 304
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 308
    :goto_82
    return-void

    .line 306
    :cond_83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract whitelist test-api setTTL(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract whitelist test-api setTimeToLive(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist test-api supportedOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_b

    .line 382
    sget-object v0, Ljava/net/DatagramSocketImpl;->mcSocketOptions:Ljava/util/Set;

    return-object v0

    .line 384
    :cond_b
    sget-object v0, Ljava/net/DatagramSocketImpl;->dgSocketOptions:Ljava/util/Set;

    return-object v0
.end method
