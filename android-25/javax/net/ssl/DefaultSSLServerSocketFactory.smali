.class Ljavax/net/ssl/DefaultSSLServerSocketFactory;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "SSLServerSocketFactory.java"


# instance fields
.field private final reason:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    #@3
    .line 187
    iput-object p1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->reason:Ljava/lang/Exception;

    #@5
    .line 186
    return-void
.end method

.method private throwException()Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    new-instance v0, Ljava/net/SocketException;

    #@2
    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->reason:Ljava/lang/Exception;

    #@4
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@b
    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->reason:Ljava/lang/Exception;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@10
    move-result-object v0

    #@11
    .line 191
    check-cast v0, Ljava/net/SocketException;

    #@13
    throw v0
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->throwException()Ljava/net/ServerSocket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->throwException()Ljava/net/ServerSocket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->throwException()Ljava/net/ServerSocket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "ifAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->throwException()Ljava/net/ServerSocket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 220
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
    .line 224
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    return-object v0
.end method
