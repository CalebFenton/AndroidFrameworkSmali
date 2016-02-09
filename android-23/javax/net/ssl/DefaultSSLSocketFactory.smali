.class Ljavax/net/ssl/DefaultSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "DefaultSSLSocketFactory.java"


# instance fields
.field private final errMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mes"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->errMessage:Ljava/lang/String;

    #@5
    .line 35
    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    new-instance v0, Ljava/net/SocketException;

    #@2
    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->errMessage:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/net/SocketException;

    #@2
    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->errMessage:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    new-instance v0, Ljava/net/SocketException;

    #@2
    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->errMessage:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    new-instance v0, Ljava/net/SocketException;

    #@2
    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->errMessage:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/net/SocketException;

    #@2
    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->errMessage:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 41
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 46
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@2
    return-object v0
.end method
