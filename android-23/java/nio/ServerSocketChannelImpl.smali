.class final Ljava/nio/ServerSocketChannelImpl;
.super Ljava/nio/channels/ServerSocketChannel;
.source "ServerSocketChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;
    }
.end annotation


# instance fields
.field private final acceptLock:Ljava/lang/Object;

.field private final socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@3
    .line 47
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    #@a
    .line 51
    new-instance v0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    #@c
    invoke-direct {v0, p0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;-><init>(Ljava/nio/ServerSocketChannelImpl;)V

    #@f
    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    #@11
    .line 49
    return-void
.end method

.method private shouldThrowSocketTimeoutExceptionFromAccept(Ljava/net/SocketTimeoutException;)Z
    .locals 4
    .param p1, "e"    # Ljava/net/SocketTimeoutException;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 89
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->isBlocking()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 90
    return v3

    #@8
    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getCause()Ljava/lang/Throwable;

    #@b
    move-result-object v0

    #@c
    .line 93
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Landroid/system/ErrnoException;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 94
    check-cast v0, Landroid/system/ErrnoException;

    #@12
    .end local v0    # "cause":Ljava/lang/Throwable;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    #@14
    sget v2, Landroid/system/OsConstants;->EAGAIN:I

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 95
    const/4 v1, 0x0

    #@19
    return v1

    #@1a
    .line 98
    :cond_1
    return v3
.end method


# virtual methods
.method public accept()Ljava/nio/channels/SocketChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->isOpen()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 61
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    #@8
    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@b
    throw v2

    #@c
    .line 63
    :cond_0
    iget-object v2, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    #@e
    invoke-virtual {v2}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->isBound()Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_1

    #@14
    .line 64
    new-instance v2, Ljava/nio/channels/NotYetBoundException;

    #@16
    invoke-direct {v2}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    #@19
    throw v2

    #@1a
    .line 68
    :cond_1
    new-instance v1, Ljava/nio/SocketChannelImpl;

    #@1c
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, 0x0

    #@21
    invoke-direct {v1, v2, v3}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    #@24
    .line 70
    .local v1, "result":Ljava/nio/SocketChannelImpl;
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->begin()V

    #@27
    .line 71
    iget-object v3, p0, Ljava/nio/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    #@29
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2a
    .line 73
    :try_start_1
    iget-object v2, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    #@2c
    invoke-virtual {v2, v1}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->implAccept(Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    :cond_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@30
    .line 83
    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    #@33
    move-result v2

    #@34
    invoke-virtual {p0, v2}, Ljava/nio/ServerSocketChannelImpl;->end(Z)V

    #@37
    .line 85
    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_3

    #@3d
    .end local v1    # "result":Ljava/nio/SocketChannelImpl;
    :goto_0
    return-object v1

    #@3e
    .line 74
    .restart local v1    # "result":Ljava/nio/SocketChannelImpl;
    :catch_0
    move-exception v0

    #@3f
    .line 75
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :try_start_3
    invoke-direct {p0, v0}, Ljava/nio/ServerSocketChannelImpl;->shouldThrowSocketTimeoutExceptionFromAccept(Ljava/net/SocketTimeoutException;)Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_2

    #@45
    .line 76
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@46
    .line 71
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catchall_0
    move-exception v2

    #@47
    :try_start_4
    monitor-exit v3

    #@48
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@49
    .line 82
    :catchall_1
    move-exception v2

    #@4a
    .line 83
    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    #@4d
    move-result v3

    #@4e
    invoke-virtual {p0, v3}, Ljava/nio/ServerSocketChannelImpl;->end(Z)V

    #@51
    .line 82
    throw v2

    #@52
    .line 85
    :cond_3
    const/4 v1, 0x0

    #@53
    goto :goto_0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    #@2
    invoke-static {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->-wrap0(Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 107
    :try_start_0
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    #@3
    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->isClosed()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 108
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    #@b
    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 106
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .param p1, "blocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    #@2
    invoke-static {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->-wrap0(Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    #@9
    .line 101
    return-void
.end method

.method public socket()Ljava/net/ServerSocket;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    #@2
    return-object v0
.end method
