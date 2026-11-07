.class abstract Lsun/nio/ch/AsynchronousServerSocketChannelImpl;
.super Ljava/nio/channels/AsynchronousServerSocketChannel;
.source "AsynchronousServerSocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/Cancellable;
.implements Lsun/nio/ch/Groupable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/AsynchronousServerSocketChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# instance fields
.field private volatile blacklist acceptKilled:Z

.field private blacklist closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected final blacklist fd:Ljava/io/FileDescriptor;

.field private blacklist isReuseAddress:Z

.field protected volatile blacklist localAddress:Ljava/net/InetSocketAddress;

.field private volatile blacklist open:Z

.field private final blacklist stateLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V
    .registers 3
    .param p1, "group"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .line 70
    invoke-virtual {p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/AsynchronousServerSocketChannel;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->open:Z

    .line 71
    invoke-static {v0}, Lsun/nio/ch/Net;->serverSocket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 72
    return-void
.end method


# virtual methods
.method public final whitelist test-api accept()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            ">;"
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->implAccept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "-TA;>;)V"
        }
    .end annotation

    .line 132
    .local p1, "attachment":Ljava/lang/Object;, "TA;"
    .local p2, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;-TA;>;"
    if-eqz p2, :cond_6

    .line 134
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->implAccept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 135
    return-void

    .line 133
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist begin()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 84
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 86
    return-void

    .line 85
    :cond_10
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .registers 9
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    if-nez p1, :cond_9

    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_d

    .line 151
    :cond_9
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    :goto_d
    nop

    .line 152
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 153
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1b

    .line 154
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 157
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->begin()V

    .line 158
    iget-object v2, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_62

    .line 159
    :try_start_21
    iget-object v3, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v3, :cond_59

    .line 161
    iget-object v3, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v3, v4, v5}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 162
    iget-object v3, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v3, v4, v5}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 163
    iget-object v3, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v4, 0x1

    if-ge p2, v4, :cond_47

    const/16 v4, 0x32

    goto :goto_48

    :cond_47
    move v4, p2

    :goto_48
    invoke-static {v3, v4}, Lsun/nio/ch/Net;->listen(Ljava/io/FileDescriptor;I)V

    .line 164
    iget-object v3, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v3

    iput-object v3, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 165
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_21 .. :try_end_54} :catchall_5f

    .line 167
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 168
    nop

    .line 169
    return-object p0

    .line 160
    :cond_59
    :try_start_59
    new-instance v3, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v3}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/ch/AsynchronousServerSocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    .end local p2    # "backlog":I
    throw v3

    .line 165
    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    .restart local v1    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousServerSocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    .restart local p2    # "backlog":I
    :catchall_5f
    move-exception v3

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_5f

    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/ch/AsynchronousServerSocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    .end local p2    # "backlog":I
    :try_start_61
    throw v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    .line 167
    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    .restart local v1    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousServerSocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    .restart local p2    # "backlog":I
    :catchall_62
    move-exception v2

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 168
    throw v2
.end method

.method public final whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 105
    :try_start_9
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->open:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_28

    if-nez v0, :cond_17

    .line 109
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 106
    return-void

    .line 107
    :cond_17
    const/4 v0, 0x0

    :try_start_18
    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->open:Z
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_28

    .line 109
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 110
    nop

    .line 111
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->implClose()V

    .line 112
    return-void

    .line 109
    :catchall_28
    move-exception v0

    iget-object v1, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 110
    throw v0
.end method

.method final blacklist end()V
    .registers 2

    .line 92
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    return-void
.end method

.method public final whitelist test-api getLocalAddress()Ljava/net/SocketAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 176
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0

    .line 175
    :cond_d
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-eqz p1, :cond_53

    .line 210
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 214
    :try_start_c
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->begin()V

    .line 215
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_23

    .line 216
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 219
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->isReuseAddress:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_2f

    .line 223
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 219
    return-object v0

    .line 221
    :cond_23
    :try_start_23
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v1, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2f

    .line 223
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 221
    return-object v0

    .line 223
    :catchall_2f
    move-exception v0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 224
    throw v0

    .line 211
    :cond_34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_53
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method abstract blacklist implAccept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            ">;"
        }
    .end annotation
.end method

.method abstract blacklist implClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final blacklist isAcceptKilled()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->acceptKilled:Z

    return v0
.end method

.method public final whitelist test-api isOpen()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->open:Z

    return v0
.end method

.method public final blacklist onCancel(Lsun/nio/ch/PendingFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/ch/PendingFuture<",
            "**>;)V"
        }
    .end annotation

    .line 143
    .local p1, "task":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<**>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->acceptKilled:Z

    .line 144
    return-void
.end method

.method public final whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/nio/channels/AsynchronousServerSocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_53

    .line 186
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 190
    :try_start_c
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->begin()V

    .line 191
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_23

    .line 192
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 195
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->isReuseAddress:Z

    goto :goto_2a

    .line 197
    :cond_23
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v1, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_2f

    .line 199
    :goto_2a
    nop

    .line 201
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 199
    return-object p0

    .line 201
    :catchall_2f
    move-exception v0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 202
    throw v0

    .line 187
    :cond_34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_53
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api supportedOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 240
    sget-object v0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_21

    .line 249
    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 251
    :cond_21
    iget-object v1, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_2b

    .line 252
    const-string v1, "unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 254
    :cond_2b
    iget-object v1, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :goto_34
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
