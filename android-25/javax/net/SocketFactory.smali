.class public abstract Ljavax/net/SocketFactory;
.super Ljava/lang/Object;
.source "SocketFactory.java"


# static fields
.field private static theFactory:Ljavax/net/SocketFactory;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDefault()Ljavax/net/SocketFactory;
    .locals 2

    #@0
    .prologue
    .line 92
    const-class v1, Ljavax/net/SocketFactory;

    #@2
    monitor-enter v1

    #@3
    .line 93
    :try_start_0
    sget-object v0, Ljavax/net/SocketFactory;->theFactory:Ljavax/net/SocketFactory;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 100
    new-instance v0, Ljavax/net/DefaultSocketFactory;

    #@9
    invoke-direct {v0}, Ljavax/net/DefaultSocketFactory;-><init>()V

    #@c
    sput-object v0, Ljavax/net/SocketFactory;->theFactory:Ljavax/net/SocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 104
    sget-object v0, Ljavax/net/SocketFactory;->theFactory:Ljavax/net/SocketFactory;

    #@11
    return-object v0

    #@12
    .line 92
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public static setDefault(Ljavax/net/SocketFactory;)V
    .locals 2
    .param p0, "factory"    # Ljavax/net/SocketFactory;

    #@0
    .prologue
    .line 109
    const-class v0, Ljavax/net/SocketFactory;

    #@2
    monitor-enter v0

    #@3
    .line 110
    :try_start_0
    sput-object p0, Ljavax/net/SocketFactory;->theFactory:Ljavax/net/SocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 108
    return-void

    #@7
    .line 109
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    .line 132
    .local v1, "uop":Ljava/lang/UnsupportedOperationException;
    new-instance v0, Ljava/net/SocketException;

    #@7
    .line 133
    const-string/jumbo v2, "Unconnected sockets not implemented"

    #@a
    .line 132
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@d
    .line 134
    .local v0, "se":Ljava/net/SocketException;
    invoke-virtual {v0, v1}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@10
    .line 135
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
