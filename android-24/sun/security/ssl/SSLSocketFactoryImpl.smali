.class public final Lsun/security/ssl/SSLSocketFactoryImpl;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLSocketFactoryImpl.java"


# static fields
.field private static defaultContext:Lsun/security/ssl/SSLContextImpl;


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
    .line 55
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    #@3
    .line 56
    invoke-static {}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultImpl()Lsun/security/ssl/SSLContextImpl;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@9
    .line 55
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 0
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@5
    .line 62
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2

    #@0
    .prologue
    .line 73
    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@4
    invoke-direct {v0, v1}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    #@7
    return-object v0
.end method

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
    .line 88
    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@4
    invoke-direct {v0, v1, p1, p2}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V

    #@7
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6
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
    .line 140
    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@4
    move-object v2, p1

    #@5
    move v3, p2

    #@6
    move-object v4, p3

    #@7
    move v5, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;ILjava/net/InetAddress;I)V

    #@b
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@4
    invoke-direct {v0, v1, p1, p2}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;I)V

    #@7
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6
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
    .line 155
    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@4
    move-object v2, p1

    #@5
    move v3, p2

    #@6
    move-object v4, p3

    #@7
    move v5, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    #@b
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 6
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
    .line 109
    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@4
    move-object v2, p1

    #@5
    move-object v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/Socket;Ljava/lang/String;IZ)V

    #@b
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    #@2
    const/4 v1, 0x0

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
    .line 180
    iget-object v0, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

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
