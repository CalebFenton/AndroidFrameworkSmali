.class Ljavax/net/ssl/DefaultSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLSocketFactory.java"


# instance fields
.field private reason:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 219
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    #@3
    .line 220
    iput-object p1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->reason:Ljava/lang/Exception;

    #@5
    .line 219
    return-void
.end method

.method private throwException()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    new-instance v0, Ljava/net/SocketException;

    #@2
    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->reason:Ljava/lang/Exception;

    #@4
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@b
    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->reason:Ljava/lang/Exception;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@10
    move-result-object v0

    #@11
    .line 224
    check-cast v0, Ljava/net/SocketException;

    #@13
    throw v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLSocketFactory;->throwException()Ljava/net/Socket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLSocketFactory;->throwException()Ljava/net/Socket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLSocketFactory;->throwException()Ljava/net/Socket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLSocketFactory;->throwException()Ljava/net/Socket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLSocketFactory;->throwException()Ljava/net/Socket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
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
    .line 244
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLSocketFactory;->throwException()Ljava/net/Socket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 268
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 272
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    return-object v0
.end method
