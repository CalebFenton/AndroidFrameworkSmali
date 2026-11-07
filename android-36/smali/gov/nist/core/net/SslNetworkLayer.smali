.class public Lgov/nist/core/net/SslNetworkLayer;
.super Ljava/lang/Object;
.source "SslNetworkLayer.java"

# interfaces
.implements Lgov/nist/core/net/NetworkLayer;


# instance fields
.field private greylist sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

.field private greylist sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;[CLjava/lang/String;)V
    .registers 14
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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 72
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "algorithm":Ljava/lang/String;
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 74
    .local v2, "tmFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v3

    .line 75
    .local v3, "kmFactory":Ljavax/net/ssl/KeyManagerFactory;
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 76
    .local v4, "secureRandom":Ljava/security/SecureRandom;
    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    .line 77
    invoke-static {p4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 78
    .local v5, "keyStore":Ljava/security/KeyStore;
    invoke-static {p4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 79
    .local v6, "trustStore":Ljava/security/KeyStore;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7, p3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 80
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, p3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 81
    invoke-virtual {v2, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 82
    invoke-virtual {v3, v5, p3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 83
    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v7

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v8

    invoke-virtual {v0, v7, v8, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 84
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v7

    iput-object v7, p0, Lgov/nist/core/net/SslNetworkLayer;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 85
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    iput-object v7, p0, Lgov/nist/core/net/SslNetworkLayer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 86
    return-void
.end method


# virtual methods
.method public greylist createDatagramSocket()Ljava/net/DatagramSocket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    return-object v0
.end method

.method public greylist createDatagramSocket(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;
    .registers 4
    .param p1, "port"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, p1, p2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    return-object v0
.end method

.method public greylist createSSLServerSocket(IILjava/net/InetAddress;)Ljavax/net/ssl/SSLServerSocket;
    .registers 5
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "bindAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lgov/nist/core/net/SslNetworkLayer;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    return-object v0
.end method

.method public greylist createSSLSocket(Ljava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lgov/nist/core/net/SslNetworkLayer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public greylist createSSLSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljavax/net/ssl/SSLSocket;
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "myAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lgov/nist/core/net/SslNetworkLayer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public greylist createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .registers 5
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "bindAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-object v0
.end method

.method public greylist createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public greylist createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljava/net/Socket;
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "myAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    if-eqz p3, :cond_9

    .line 130
    new-instance v0, Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-object v0

    .line 132
    :cond_9
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public greylist createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "myAddress"    # Ljava/net/InetAddress;
    .param p4, "myPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    if-eqz p3, :cond_8

    .line 156
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-object v0

    .line 157
    :cond_8
    if-eqz p2, :cond_20

    .line 160
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 161
    .local v0, "sock":Ljava/net/Socket;
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 162
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 163
    return-object v0

    .line 166
    .end local v0    # "sock":Ljava/net/Socket;
    :cond_20
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method
