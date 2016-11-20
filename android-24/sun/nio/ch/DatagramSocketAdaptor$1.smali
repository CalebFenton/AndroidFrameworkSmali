.class final Lsun/nio/ch/DatagramSocketAdaptor$1;
.super Ljava/net/DatagramSocketImpl;
.source "DatagramSocketAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/DatagramSocketAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 385
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bind(ILjava/net/InetAddress;)V
    .locals 0
    .param p1, "lport"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 389
    return-void
.end method

.method protected close()V
    .locals 0

    #@0
    .prologue
    .line 417
    return-void
.end method

.method protected create()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 387
    return-void
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 419
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected getTTL()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 401
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected getTimeToLive()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 405
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected join(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 407
    return-void
.end method

.method protected joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 0
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    return-void
.end method

.method protected leave(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 409
    return-void
.end method

.method protected leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 0
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 415
    return-void
.end method

.method protected peek(Ljava/net/InetAddress;)I
    .locals 1
    .param p1, "i"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected peekData(Ljava/net/DatagramPacket;)I
    .locals 1
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 395
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected receive(Ljava/net/DatagramPacket;)V
    .locals 0
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 397
    return-void
.end method

.method protected send(Ljava/net/DatagramPacket;)V
    .locals 0
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 421
    return-void
.end method

.method protected setTTL(B)V
    .locals 0
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 399
    return-void
.end method

.method protected setTimeToLive(I)V
    .locals 0
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 403
    return-void
.end method
