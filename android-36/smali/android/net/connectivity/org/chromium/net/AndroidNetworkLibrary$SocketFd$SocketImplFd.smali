.class Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SocketFd$SocketImplFd;
.super Ljava/net/SocketImpl;
.source "AndroidNetworkLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SocketFd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketImplFd"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 568
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 569
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SocketFd$SocketImplFd;->fd:Ljava/io/FileDescriptor;

    .line 570
    return-void
.end method


# virtual methods
.method protected whitelist test-api accept(Ljava/net/SocketImpl;)V
    .registers 4
    .param p1, "s"    # Ljava/net/SocketImpl;

    .line 574
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "accept not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api available()I
    .registers 3

    .line 579
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "accept not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api bind(Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 584
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "accept not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api close()V
    .registers 1

    .line 588
    return-void
.end method

.method protected whitelist test-api connect(Ljava/lang/String;I)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 602
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "connect not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api connect(Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 592
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "connect not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api connect(Ljava/net/SocketAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I

    .line 597
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "connect not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api create(Z)V
    .registers 2
    .param p1, "stream"    # Z

    .line 606
    return-void
.end method

.method protected whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 3

    .line 610
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getInputStream not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getOption(I)Ljava/lang/Object;
    .registers 4
    .param p1, "optID"    # I

    .line 630
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getOption not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 3

    .line 615
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getOutputStream not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api listen(I)V
    .registers 4
    .param p1, "backlog"    # I

    .line 620
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "listen not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api sendUrgentData(I)V
    .registers 4
    .param p1, "data"    # I

    .line 625
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "sendUrgentData not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setOption(ILjava/lang/Object;)V
    .registers 5
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 635
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOption not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
