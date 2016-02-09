.class public Lgov/nist/core/net/SslNetworkLayer;
.super Ljava/lang/Object;
.source "SslNetworkLayer.java"

# interfaces
.implements Lgov/nist/core/net/NetworkLayer;


# instance fields
.field private sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[CLjava/lang/String;)V
    .locals 9
    .param p1, "trustStoreFile"    # Ljava/lang/String;
    .param p2, "keyStoreFile"    # Ljava/lang/String;
    .param p3, "keyStorePassword"    # [C
    .param p4, "keyStoreType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const-string/jumbo v7, "TLS"

    #@6
    invoke-static {v7}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    #@9
    move-result-object v4

    #@a
    .line 72
    .local v4, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 73
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    #@11
    move-result-object v5

    #@12
    .line 74
    .local v5, "tmFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    #@15
    move-result-object v2

    #@16
    .line 75
    .local v2, "kmFactory":Ljavax/net/ssl/KeyManagerFactory;
    new-instance v3, Ljava/security/SecureRandom;

    #@18
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    #@1b
    .line 76
    .local v3, "secureRandom":Ljava/security/SecureRandom;
    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    #@1e
    .line 77
    invoke-static {p4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@21
    move-result-object v1

    #@22
    .line 78
    .local v1, "keyStore":Ljava/security/KeyStore;
    invoke-static {p4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@25
    move-result-object v6

    #@26
    .line 79
    .local v6, "trustStore":Ljava/security/KeyStore;
    new-instance v7, Ljava/io/FileInputStream;

    #@28
    invoke-direct {v7, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@2b
    invoke-virtual {v1, v7, p3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    #@2e
    .line 80
    new-instance v7, Ljava/io/FileInputStream;

    #@30
    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@33
    invoke-virtual {v6, v7, p3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    #@36
    .line 81
    invoke-virtual {v5, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    #@39
    .line 82
    invoke-virtual {v2, v1, p3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    #@3c
    .line 83
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {v4, v7, v8, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    #@47
    .line 84
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    #@4a
    move-result-object v7

    #@4b
    iput-object v7, p0, Lgov/nist/core/net/SslNetworkLayer;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    #@4d
    .line 85
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@50
    move-result-object v7

    #@51
    iput-object v7, p0, Lgov/nist/core/net/SslNetworkLayer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@53
    .line 68
    return-void
.end method


# virtual methods
.method public createDatagramSocket()Ljava/net/DatagramSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    new-instance v0, Ljava/net/DatagramSocket;

    #@2
    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    #@5
    return-object v0
.end method

.method public createDatagramSocket(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;
    .locals 1
    .param p1, "port"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    new-instance v0, Ljava/net/DatagramSocket;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    #@5
    return-object v0
.end method

.method public createSSLServerSocket(IILjava/net/InetAddress;)Ljavax/net/ssl/SSLServerSocket;
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "bindAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lgov/nist/core/net/SslNetworkLayer;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    #@8
    return-object v0
.end method

.method public createSSLSocket(Ljava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;
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
    .line 117
    iget-object v0, p0, Lgov/nist/core/net/SslNetworkLayer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@8
    return-object v0
.end method

.method public createSSLSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljavax/net/ssl/SSLSocket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "myAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lgov/nist/core/net/SslNetworkLayer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    .line 124
    const/4 v1, 0x0

    #@3
    .line 123
    invoke-virtual {v0, p1, p2, p3, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@9
    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "bindAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    new-instance v0, Ljava/net/ServerSocket;

    #@2
    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    #@5
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
    .line 95
    new-instance v0, Ljava/net/Socket;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    #@5
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "myAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    if-eqz p3, :cond_0

    #@2
    .line 130
    new-instance v0, Ljava/net/Socket;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {v0, p1, p2, p3, v1}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    #@8
    return-object v0

    #@9
    .line 132
    :cond_0
    new-instance v0, Ljava/net/Socket;

    #@b
    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    #@e
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "myAddress"    # Ljava/net/InetAddress;
    .param p4, "myPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    if-eqz p3, :cond_0

    #@2
    .line 156
    new-instance v1, Ljava/net/Socket;

    #@4
    invoke-direct {v1, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    #@7
    return-object v1

    #@8
    .line 157
    :cond_0
    if-eqz p2, :cond_1

    #@a
    .line 160
    new-instance v0, Ljava/net/Socket;

    #@c
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    #@f
    .line 161
    .local v0, "sock":Ljava/net/Socket;
    new-instance v1, Ljava/net/InetSocketAddress;

    #@11
    invoke-direct {v1, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@14
    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    #@17
    .line 162
    new-instance v1, Ljava/net/InetSocketAddress;

    #@19
    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@1c
    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    #@1f
    .line 163
    return-object v0

    #@20
    .line 166
    .end local v0    # "sock":Ljava/net/Socket;
    :cond_1
    new-instance v1, Ljava/net/Socket;

    #@22
    invoke-direct {v1, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    #@25
    return-object v1
.end method
