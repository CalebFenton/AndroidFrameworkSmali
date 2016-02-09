.class Ljavax/net/ssl/DefaultSSLServerSocketFactory;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "DefaultSSLServerSocketFactory.java"


# instance fields
.field private final errMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mes"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->errMessage:Ljava/lang/String;

    #@5
    .line 33
    return-void
.end method


# virtual methods
.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    new-instance v0, Ljava/net/SocketException;

    #@2
    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->errMessage:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/net/SocketException;

    #@2
    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->errMessage:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "iAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    new-instance v0, Ljava/net/SocketException;

    #@2
    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->errMessage:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 39
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 44
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@2
    return-object v0
.end method
