.class public abstract Ljavax/net/SocketFactory;
.super Ljava/lang/Object;
.source "SocketFactory.java"


# static fields
.field private static greylist-max-o theFactory:Ljavax/net/SocketFactory;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api getDefault()Ljavax/net/SocketFactory;
    .registers 2

    .line 92
    const-class v0, Ljavax/net/SocketFactory;

    monitor-enter v0

    .line 93
    :try_start_3
    sget-object v1, Ljavax/net/SocketFactory;->theFactory:Ljavax/net/SocketFactory;

    if-nez v1, :cond_e

    .line 100
    new-instance v1, Ljavax/net/DefaultSocketFactory;

    invoke-direct {v1}, Ljavax/net/DefaultSocketFactory;-><init>()V

    sput-object v1, Ljavax/net/SocketFactory;->theFactory:Ljavax/net/SocketFactory;

    .line 102
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 104
    sget-object v0, Ljavax/net/SocketFactory;->theFactory:Ljavax/net/SocketFactory;

    return-object v0

    .line 102
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static greylist-max-o setDefault(Ljavax/net/SocketFactory;)V
    .registers 3
    .param p0, "factory"    # Ljavax/net/SocketFactory;

    .line 110
    const-class v0, Ljavax/net/SocketFactory;

    monitor-enter v0

    .line 111
    :try_start_3
    sput-object p0, Ljavax/net/SocketFactory;->theFactory:Ljavax/net/SocketFactory;

    .line 112
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public whitelist test-api createSocket()Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 133
    .local v0, "uop":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Unconnected sockets not implemented"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, "se":Ljava/net/SocketException;
    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 136
    throw v1
.end method

.method public abstract whitelist test-api createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
