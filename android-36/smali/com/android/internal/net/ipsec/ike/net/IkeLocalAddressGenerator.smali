.class public Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;
.super Ljava/lang/Object;
.source "IkeLocalAddressGenerator.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist generateLocalAddress(Landroid/net/Network;ZLjava/net/InetAddress;I)Ljava/net/InetAddress;
    .registers 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "isIpv4"    # Z
    .param p3, "remoteAddress"    # Ljava/net/InetAddress;
    .param p4, "serverPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    if-eqz p2, :cond_5

    sget v0, Landroid/system/OsConstants;->AF_INET:I

    goto :goto_7

    :cond_5
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    :goto_7
    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    .line 39
    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 43
    .local v0, "sock":Ljava/io/FileDescriptor;
    invoke-virtual {p1, v0}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    .line 44
    invoke-static {v0, p3, p4}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 45
    invoke-static {v0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 46
    .local v1, "localAddr":Ljava/net/InetSocketAddress;
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 48
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method
