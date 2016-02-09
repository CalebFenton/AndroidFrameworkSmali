.class public Lgov/nist/core/net/DefaultNetworkLayer;
.super Ljava/lang/Object;
.source "DefaultNetworkLayer.java"

# interfaces
.implements Lgov/nist/core/net/NetworkLayer;


# static fields
.field public static final SINGLETON:Lgov/nist/core/net/DefaultNetworkLayer;


# instance fields
.field private sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 61
    new-instance v0, Lgov/nist/core/net/DefaultNetworkLayer;

    #@2
    invoke-direct {v0}, Lgov/nist/core/net/DefaultNetworkLayer;-><init>()V

    #@5
    sput-object v0, Lgov/nist/core/net/DefaultNetworkLayer;->SINGLETON:Lgov/nist/core/net/DefaultNetworkLayer;

    #@7
    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    invoke-static {}, Ljavax/net/ssl/SSLServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljavax/net/ssl/SSLServerSocketFactory;

    #@9
    iput-object v0, p0, Lgov/nist/core/net/DefaultNetworkLayer;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    #@b
    .line 66
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    #@11
    iput-object v0, p0, Lgov/nist/core/net/DefaultNetworkLayer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@13
    .line 63
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
    .line 80
    new-instance v0, Ljava/net/DatagramSocket;

    #@2
    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    #@5
    return-object v0
.end method

.method public createDatagramSocket(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;
    .locals 4
    .param p1, "port"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    invoke-virtual {p2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 88
    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    #@8
    invoke-direct {v0, p1}, Ljava/net/MulticastSocket;-><init>(I)V

    #@b
    .line 89
    .local v0, "ds":Ljava/net/MulticastSocket;
    invoke-virtual {v0, p2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 90
    return-object v0

    #@f
    .line 91
    .end local v0    # "ds":Ljava/net/MulticastSocket;
    :catch_0
    move-exception v1

    #@10
    .line 92
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/net/SocketException;

    #@12
    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v2, Ljava/net/DatagramSocket;

    #@1c
    invoke-direct {v2, p1, p2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    #@1f
    return-object v2
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
    .line 100
    iget-object v0, p0, Lgov/nist/core/net/DefaultNetworkLayer;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

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
    .line 107
    iget-object v0, p0, Lgov/nist/core/net/DefaultNetworkLayer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

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
    .line 113
    iget-object v0, p0, Lgov/nist/core/net/DefaultNetworkLayer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    .line 114
    const/4 v1, 0x0

    #@3
    .line 113
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
    .line 71
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
    .line 76
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
    .line 119
    if-eqz p3, :cond_0

    #@2
    .line 120
    new-instance v0, Ljava/net/Socket;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {v0, p1, p2, p3, v1}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    #@8
    return-object v0

    #@9
    .line 122
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
    .line 145
    if-eqz p3, :cond_0

    #@2
    .line 146
    new-instance v1, Ljava/net/Socket;

    #@4
    invoke-direct {v1, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    #@7
    return-object v1

    #@8
    .line 147
    :cond_0
    if-eqz p2, :cond_1

    #@a
    .line 150
    new-instance v0, Ljava/net/Socket;

    #@c
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    #@f
    .line 151
    .local v0, "sock":Ljava/net/Socket;
    new-instance v1, Ljava/net/InetSocketAddress;

    #@11
    invoke-direct {v1, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@14
    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    #@17
    .line 152
    new-instance v1, Ljava/net/InetSocketAddress;

    #@19
    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@1c
    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    #@1f
    .line 153
    return-object v0

    #@20
    .line 156
    .end local v0    # "sock":Ljava/net/Socket;
    :cond_1
    new-instance v1, Ljava/net/Socket;

    #@22
    invoke-direct {v1, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    #@25
    return-object v1
.end method
