.class public abstract Ljavax/net/SocketFactory;
.super Ljava/lang/Object;
.source "SocketFactory.java"


# static fields
.field private static defaultFactory:Ljavax/net/SocketFactory;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/SocketFactory;
    .locals 2

    #@0
    .prologue
    const-class v1, Ljavax/net/SocketFactory;

    #@2
    monitor-enter v1

    #@3
    .line 41
    :try_start_0
    sget-object v0, Ljavax/net/SocketFactory;->defaultFactory:Ljavax/net/SocketFactory;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 42
    new-instance v0, Ljavax/net/DefaultSocketFactory;

    #@9
    invoke-direct {v0}, Ljavax/net/DefaultSocketFactory;-><init>()V

    #@c
    sput-object v0, Ljavax/net/SocketFactory;->defaultFactory:Ljavax/net/SocketFactory;

    #@e
    .line 44
    :cond_0
    sget-object v0, Ljavax/net/SocketFactory;->defaultFactory:Ljavax/net/SocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    new-instance v0, Ljava/net/SocketException;

    #@2
    const-string/jumbo v1, "Unconnected sockets not implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public abstract createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
