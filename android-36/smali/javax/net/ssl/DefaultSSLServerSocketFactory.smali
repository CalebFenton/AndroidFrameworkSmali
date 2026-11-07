.class Ljavax/net/ssl/DefaultSSLServerSocketFactory;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "SSLServerSocketFactory.java"


# instance fields
.field private final blacklist reason:Ljava/lang/Exception;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/Exception;

    .line 197
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 198
    iput-object p1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->reason:Ljava/lang/Exception;

    .line 199
    return-void
.end method

.method private blacklist throwException()Ljava/net/ServerSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->reason:Ljava/lang/Exception;

    .line 203
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->reason:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/net/SocketException;

    throw v0
.end method


# virtual methods
.method public whitelist test-api createServerSocket()Ljava/net/ServerSocket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->throwException()Ljava/net/ServerSocket;

    move-result-object v0

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

    .line 216
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->throwException()Ljava/net/ServerSocket;

    move-result-object v0

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

    .line 223
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->throwException()Ljava/net/ServerSocket;

    move-result-object v0

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
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->throwException()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 236
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 241
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
