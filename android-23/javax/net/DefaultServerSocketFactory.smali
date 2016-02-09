.class final Ljavax/net/DefaultServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "DefaultServerSocketFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    #@3
    return-void
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
    .line 28
    new-instance v0, Ljava/net/ServerSocket;

    #@2
    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    #@5
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
    .line 33
    new-instance v0, Ljava/net/ServerSocket;

    #@2
    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    #@5
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
    .line 38
    new-instance v0, Ljava/net/ServerSocket;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    #@5
    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 1
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
    .line 44
    new-instance v0, Ljava/net/ServerSocket;

    #@2
    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    #@5
    return-object v0
.end method
