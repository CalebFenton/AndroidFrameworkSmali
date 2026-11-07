.class Ljavax/net/ssl/DefaultSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLSocketFactory.java"


# instance fields
.field private blacklist reason:Ljava/lang/Exception;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/Exception;

    .line 288
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 289
    iput-object p1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->reason:Ljava/lang/Exception;

    .line 290
    return-void
.end method

.method private blacklist throwException()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->reason:Ljava/lang/Exception;

    .line 294
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->reason:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/net/SocketException;

    throw v0
.end method


# virtual methods
.method public whitelist test-api createSocket()Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLSocketFactory;->throwException()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLSocketFactory;->throwException()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLSocketFactory;->throwException()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLSocketFactory;->throwException()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLSocketFactory;->throwException()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLSocketFactory;->throwException()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 344
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 349
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
