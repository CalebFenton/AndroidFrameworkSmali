.class Ljavax/net/DefaultServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "ServerSocketFactory.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 205
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    .line 207
    return-void
.end method


# virtual methods
.method public whitelist test-api createServerSocket()Ljava/net/ServerSocket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    return-object v0
.end method

.method public whitelist test-api createServerSocket(I)Ljava/net/ServerSocket;
    .registers 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public whitelist test-api createServerSocket(II)Ljava/net/ServerSocket;
    .registers 4
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    return-object v0
.end method

.method public whitelist test-api createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .registers 5
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "ifAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-object v0
.end method
