.class public abstract Ljavax/net/ServerSocketFactory;
.super Ljava/lang/Object;
.source "ServerSocketFactory.java"


# static fields
.field private static greylist-max-o theFactory:Ljavax/net/ServerSocketFactory;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api getDefault()Ljavax/net/ServerSocketFactory;
    .registers 2

    .line 72
    const-class v0, Ljavax/net/ServerSocketFactory;

    monitor-enter v0

    .line 73
    :try_start_3
    sget-object v1, Ljavax/net/ServerSocketFactory;->theFactory:Ljavax/net/ServerSocketFactory;

    if-nez v1, :cond_e

    .line 80
    new-instance v1, Ljavax/net/DefaultServerSocketFactory;

    invoke-direct {v1}, Ljavax/net/DefaultServerSocketFactory;-><init>()V

    sput-object v1, Ljavax/net/ServerSocketFactory;->theFactory:Ljavax/net/ServerSocketFactory;

    .line 82
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 84
    sget-object v0, Ljavax/net/ServerSocketFactory;->theFactory:Ljavax/net/ServerSocketFactory;

    return-object v0

    .line 82
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public whitelist test-api createServerSocket()Ljava/net/ServerSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unbound server sockets not implemented"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api createServerSocket(I)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createServerSocket(II)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
