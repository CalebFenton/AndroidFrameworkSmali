.class public interface abstract Lgov/nist/core/net/NetworkLayer;
.super Ljava/lang/Object;
.source "NetworkLayer.java"


# virtual methods
.method public abstract greylist createDatagramSocket()Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract greylist createDatagramSocket(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract greylist createSSLServerSocket(IILjava/net/InetAddress;)Ljavax/net/ssl/SSLServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist createSSLSocket(Ljava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist createSSLSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
