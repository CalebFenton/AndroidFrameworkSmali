.class public abstract Ljavax/net/ServerSocketFactory;
.super Ljava/lang/Object;
.source "ServerSocketFactory.java"


# static fields
.field private static defaultFactory:Ljavax/net/ServerSocketFactory;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ServerSocketFactory;
    .locals 2

    #@0
    .prologue
    const-class v1, Ljavax/net/ServerSocketFactory;

    #@2
    monitor-enter v1

    #@3
    .line 39
    :try_start_0
    sget-object v0, Ljavax/net/ServerSocketFactory;->defaultFactory:Ljavax/net/ServerSocketFactory;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 40
    new-instance v0, Ljavax/net/DefaultServerSocketFactory;

    #@9
    invoke-direct {v0}, Ljavax/net/DefaultServerSocketFactory;-><init>()V

    #@c
    sput-object v0, Ljavax/net/ServerSocketFactory;->defaultFactory:Ljavax/net/ServerSocketFactory;

    #@e
    .line 42
    :cond_0
    sget-object v0, Ljavax/net/ServerSocketFactory;->defaultFactory:Ljavax/net/ServerSocketFactory;
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
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    new-instance v0, Ljava/net/SocketException;

    #@2
    const-string/jumbo v1, "Unbound server sockets not implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public abstract createServerSocket(I)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createServerSocket(II)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
