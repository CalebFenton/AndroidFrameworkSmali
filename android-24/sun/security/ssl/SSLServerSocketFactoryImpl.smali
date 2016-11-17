.class public final Lsun/security/ssl/SSLServerSocketFactoryImpl;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "SSLServerSocketFactoryImpl.java"


# static fields
.field private static final DEFAULT_BACKLOG:I = 0x32


# instance fields
.field private context:Lsun/security/ssl/SSLContextImpl;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    #@3
    .line 52
    invoke-static {}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultImpl()Lsun/security/ssl/SSLContextImpl;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@9
    .line 51
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 0
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@5
    .line 58
    return-void
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    new-instance v0, Lsun/security/ssl/SSLServerSocketImpl;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@4
    invoke-direct {v0, v1}, Lsun/security/ssl/SSLServerSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    #@7
    return-object v0
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    new-instance v0, Lsun/security/ssl/SSLServerSocketImpl;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@4
    const/16 v2, 0x32

    #@6
    invoke-direct {v0, p1, v2, v1}, Lsun/security/ssl/SSLServerSocketImpl;-><init>(IILsun/security/ssl/SSLContextImpl;)V

    #@9
    return-object v0
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
    .line 84
    new-instance v0, Lsun/security/ssl/SSLServerSocketImpl;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@4
    invoke-direct {v0, p1, p2, v1}, Lsun/security/ssl/SSLServerSocketImpl;-><init>(IILsun/security/ssl/SSLContextImpl;)V

    #@7
    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 2
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
    .line 91
    new-instance v0, Lsun/security/ssl/SSLServerSocketImpl;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@4
    invoke-direct {v0, p1, p2, p3, v1}, Lsun/security/ssl/SSLServerSocketImpl;-><init>(IILjava/net/InetAddress;Lsun/security/ssl/SSLContextImpl;)V

    #@7
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
