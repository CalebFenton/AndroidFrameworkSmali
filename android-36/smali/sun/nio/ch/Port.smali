.class abstract Lsun/nio/ch/Port;
.super Lsun/nio/ch/AsynchronousChannelGroupImpl;
.source "Port.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Port$PollableChannel;
    }
.end annotation


# instance fields
.field protected final blacklist fdToChannel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lsun/nio/ch/Port$PollableChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method constructor blacklist <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V
    .registers 4
    .param p1, "provider"    # Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .param p2, "pool"    # Lsun/nio/ch/ThreadPool;

    .line 58
    invoke-direct {p0, p1, p2}, Lsun/nio/ch/AsynchronousChannelGroupImpl;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    .line 59
    return-void
.end method


# virtual methods
.method final blacklist attachForeignChannel(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .registers 5
    .param p1, "channel"    # Ljava/nio/channels/Channel;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 128
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    .line 129
    .local v0, "fdVal":I
    new-instance v1, Lsun/nio/ch/Port$1;

    invoke-direct {v1, p0, p1}, Lsun/nio/ch/Port$1;-><init>(Lsun/nio/ch/Port;Ljava/nio/channels/Channel;)V

    invoke-virtual {p0, v0, v1}, Lsun/nio/ch/Port;->register(ILsun/nio/ch/Port$PollableChannel;)V

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method final blacklist closeAllChannels()V
    .registers 9

    .line 149
    const/16 v0, 0x80

    .line 150
    .local v0, "MAX_BATCH_SIZE":I
    const/16 v1, 0x80

    new-array v2, v1, [Lsun/nio/ch/Port$PollableChannel;

    .line 154
    .local v2, "channels":[Lsun/nio/ch/Port$PollableChannel;
    :cond_6
    iget-object v3, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    const/4 v3, 0x0

    .line 157
    .local v3, "count":I
    :try_start_10
    iget-object v4, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_56

    .line 158
    .local v5, "fd":Ljava/lang/Integer;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "count":I
    .local v6, "count":I
    :try_start_28
    iget-object v7, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/nio/ch/Port$PollableChannel;

    aput-object v7, v2, v3
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_38

    .line 159
    if-lt v6, v1, :cond_36

    .line 160
    move v3, v6

    goto :goto_3b

    .line 161
    .end local v5    # "fd":Ljava/lang/Integer;
    :cond_36
    move v3, v6

    goto :goto_1a

    .line 163
    :catchall_38
    move-exception v1

    move v3, v6

    goto :goto_57

    .end local v6    # "count":I
    .restart local v3    # "count":I
    :cond_3b
    :goto_3b
    iget-object v4, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 164
    nop

    .line 167
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_46
    if-ge v4, v3, :cond_53

    .line 169
    :try_start_48
    aget-object v5, v2, v4

    invoke-interface {v5}, Lsun/nio/ch/Port$PollableChannel;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4d} :catch_4e

    goto :goto_4f

    .line 170
    :catch_4e
    move-exception v5

    :goto_4f
    nop

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 172
    .end local v4    # "i":I
    :cond_53
    if-gtz v3, :cond_6

    .line 173
    return-void

    .line 163
    :catchall_56
    move-exception v1

    :goto_57
    iget-object v4, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 164
    throw v1
.end method

.method final blacklist detachForeignChannel(Ljava/lang/Object;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 140
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/ch/Port;->unregister(I)V

    .line 141
    return-void
.end method

.method final blacklist isEmpty()Z
    .registers 3

    .line 118
    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 120
    :try_start_9
    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 122
    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 120
    return v0

    .line 122
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 123
    throw v0
.end method

.method protected blacklist preUnregister(I)V
    .registers 2
    .param p1, "fd"    # I

    .line 81
    return-void
.end method

.method final blacklist register(ILsun/nio/ch/Port$PollableChannel;)V
    .registers 5
    .param p1, "fd"    # I
    .param p2, "ch"    # Lsun/nio/ch/Port$PollableChannel;

    .line 65
    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 67
    :try_start_9
    invoke-virtual {p0}, Lsun/nio/ch/Port;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_23

    .line 69
    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_29

    .line 71
    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    nop

    .line 73
    return-void

    .line 68
    :cond_23
    :try_start_23
    new-instance v0, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v0}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/Port;
    .end local p1    # "fd":I
    .end local p2    # "ch":Lsun/nio/ch/Port$PollableChannel;
    throw v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_29

    .line 71
    .restart local p0    # "this":Lsun/nio/ch/Port;
    .restart local p1    # "fd":I
    .restart local p2    # "ch":Lsun/nio/ch/Port$PollableChannel;
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    throw v0
.end method

.method abstract blacklist startPoll(II)V
.end method

.method final blacklist unregister(I)V
    .registers 5
    .param p1, "fd"    # I

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "checkForShutdown":Z
    invoke-virtual {p0, p1}, Lsun/nio/ch/Port;->preUnregister(I)V

    .line 91
    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    :try_start_d
    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_38

    if-eqz v1, :cond_1f

    .line 97
    const/4 v0, 0x1

    .line 100
    :cond_1f
    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101
    nop

    .line 104
    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lsun/nio/ch/Port;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 106
    :try_start_31
    invoke-virtual {p0}, Lsun/nio/ch/Port;->shutdownNow()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    .line 107
    :goto_34
    goto :goto_37

    :catch_35
    move-exception v1

    goto :goto_34

    .line 109
    :cond_37
    :goto_37
    return-void

    .line 100
    :catchall_38
    move-exception v1

    iget-object v2, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101
    throw v1
.end method
