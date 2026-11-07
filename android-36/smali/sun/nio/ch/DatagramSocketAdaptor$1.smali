.class Lsun/nio/ch/DatagramSocketAdaptor$1;
.super Ljava/net/DatagramSocketImpl;
.source "DatagramSocketAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/DatagramSocketAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 377
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api bind(ILjava/net/InetAddress;)V
    .registers 3
    .param p1, "lport"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 380
    return-void
.end method

.method protected whitelist test-api close()V
    .registers 1

    .line 410
    return-void
.end method

.method protected whitelist test-api create()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 378
    return-void
.end method

.method public whitelist test-api getOption(I)Ljava/lang/Object;
    .registers 3
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api getTTL()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api getTimeToLive()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api join(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    return-void
.end method

.method protected whitelist test-api joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 3
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    return-void
.end method

.method protected whitelist test-api leave(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    return-void
.end method

.method protected whitelist test-api leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 3
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    return-void
.end method

.method protected whitelist test-api peek(Ljava/net/InetAddress;)I
    .registers 3
    .param p1, "i"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api peekData(Ljava/net/DatagramPacket;)I
    .registers 3
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api receive(Ljava/net/DatagramPacket;)V
    .registers 2
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    return-void
.end method

.method protected whitelist test-api send(Ljava/net/DatagramPacket;)V
    .registers 2
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    return-void
.end method

.method public whitelist test-api setOption(ILjava/lang/Object;)V
    .registers 3
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 414
    return-void
.end method

.method protected whitelist test-api setTTL(B)V
    .registers 2
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    return-void
.end method

.method protected whitelist test-api setTimeToLive(I)V
    .registers 2
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    return-void
.end method
