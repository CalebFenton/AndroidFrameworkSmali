.class abstract Lsun/nio/ch/AsynchronousFileChannelImpl;
.super Ljava/nio/channels/AsynchronousFileChannel;
.source "AsynchronousFileChannelImpl.java"


# instance fields
.field protected final blacklist closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected volatile blacklist closed:Z

.field protected final blacklist executor:Ljava/util/concurrent/ExecutorService;

.field protected final blacklist fdObj:Ljava/io/FileDescriptor;

.field private volatile blacklist fileLockTable:Lsun/nio/ch/FileLockTable;

.field protected final blacklist reading:Z

.field protected final blacklist writing:Z


# direct methods
.method protected constructor blacklist <init>(Ljava/io/FileDescriptor;ZZLjava/util/concurrent/ExecutorService;)V
    .registers 6
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "reading"    # Z
    .param p3, "writing"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/ExecutorService;

    .line 61
    invoke-direct {p0}, Ljava/nio/channels/AsynchronousFileChannel;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 62
    iput-object p1, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    .line 63
    iput-boolean p2, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->reading:Z

    .line 64
    iput-boolean p3, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->writing:Z

    .line 65
    iput-object p4, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void
.end method


# virtual methods
.method protected final blacklist addToFileLockTable(JJZ)Lsun/nio/ch/FileLockImpl;
    .registers 14
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z

    .line 166
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 167
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closed:Z
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_39

    if-eqz v0, :cond_13

    .line 168
    nop

    .line 180
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->ensureFileLockTableInitialized()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_2a
    .catchall {:try_start_13 .. :try_end_16} :catchall_39

    .line 175
    nop

    .line 176
    :try_start_17
    new-instance v1, Lsun/nio/ch/FileLockImpl;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_39

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    .end local p1    # "position":J
    .end local p3    # "size":J
    .end local p5    # "shared":Z
    .local v3, "position":J
    .local v5, "size":J
    .local v7, "shared":Z
    :try_start_1d
    invoke-direct/range {v1 .. v7}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/AsynchronousFileChannel;JJZ)V

    .line 178
    .local v1, "fli":Lsun/nio/ch/FileLockImpl;
    iget-object p1, v2, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {p1, v1}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_36

    .line 180
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    .line 181
    nop

    .line 182
    return-object v1

    .line 172
    .end local v1    # "fli":Lsun/nio/ch/FileLockImpl;
    .end local v3    # "position":J
    .end local v5    # "size":J
    .end local v7    # "shared":Z
    .restart local p1    # "position":J
    .restart local p3    # "size":J
    .restart local p5    # "shared":Z
    :catch_2a
    move-exception v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move-object p1, v0

    .line 174
    .end local p3    # "size":J
    .end local p5    # "shared":Z
    .restart local v3    # "position":J
    .restart local v5    # "size":J
    .restart local v7    # "shared":Z
    .local p1, "x":Ljava/io/IOException;
    :try_start_30
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v3    # "position":J
    .end local v5    # "size":J
    .end local v7    # "shared":Z
    .end local p0    # "this":Lsun/nio/ch/AsynchronousFileChannelImpl;
    throw p2
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_36

    .line 180
    .end local p1    # "x":Ljava/io/IOException;
    .restart local v3    # "position":J
    .restart local v5    # "size":J
    .restart local v7    # "shared":Z
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousFileChannelImpl;
    :catchall_36
    move-exception v0

    move-object p1, v0

    goto :goto_3f

    .end local v3    # "position":J
    .end local v5    # "size":J
    .end local v7    # "shared":Z
    .local p1, "position":J
    .restart local p3    # "size":J
    .restart local p5    # "shared":Z
    :catchall_39
    move-exception v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move-object p1, v0

    .end local p1    # "position":J
    .end local p3    # "size":J
    .end local p5    # "shared":Z
    .restart local v3    # "position":J
    .restart local v5    # "size":J
    .restart local v7    # "shared":Z
    :goto_3f
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    .line 181
    throw p1
.end method

.method protected final blacklist begin()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 84
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closed:Z

    if-nez v0, :cond_e

    .line 86
    return-void

    .line 85
    :cond_e
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method protected final blacklist end()V
    .registers 2

    .line 92
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    return-void
.end method

.method protected final blacklist end(Z)V
    .registers 3
    .param p1, "completed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    .line 100
    if-nez p1, :cond_12

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_12

    .line 101
    :cond_c
    new-instance v0, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v0}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v0

    .line 102
    :cond_12
    :goto_12
    return-void
.end method

.method final blacklist ensureFileLockTableInitialized()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v0, :cond_16

    .line 137
    monitor-enter p0

    .line 138
    :try_start_5
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v0, :cond_11

    .line 139
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-static {p0, v0}, Lsun/nio/ch/FileLockTable;->newSharedFileLockTable(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Lsun/nio/ch/FileLockTable;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    .line 141
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 143
    :cond_16
    :goto_16
    return-void
.end method

.method final blacklist executor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 69
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method abstract blacklist implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(JJZTA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/nio/channels/FileLock;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end method

.method abstract blacklist implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "JTA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract blacklist implRelease(Lsun/nio/ch/FileLockImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "JTA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method final blacklist invalidateAllLocks()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-eqz v0, :cond_2f

    .line 147
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v0}, Lsun/nio/ch/FileLockTable;->removeAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/FileLock;

    .line 148
    .local v1, "fl":Ljava/nio/channels/FileLock;
    monitor-enter v1

    .line 149
    :try_start_1b
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 150
    move-object v2, v1

    check-cast v2, Lsun/nio/ch/FileLockImpl;

    .line 151
    .local v2, "fli":Lsun/nio/ch/FileLockImpl;
    invoke-virtual {p0, v2}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implRelease(Lsun/nio/ch/FileLockImpl;)V

    .line 152
    invoke-virtual {v2}, Lsun/nio/ch/FileLockImpl;->invalidate()V

    .line 154
    .end local v2    # "fli":Lsun/nio/ch/FileLockImpl;
    :cond_2a
    monitor-exit v1

    .line 155
    .end local v1    # "fl":Ljava/nio/channels/FileLock;
    goto :goto_e

    .line 154
    .restart local v1    # "fl":Ljava/nio/channels/FileLock;
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_2c

    throw v0

    .line 157
    .end local v1    # "fl":Ljava/nio/channels/FileLock;
    :cond_2f
    return-void
.end method

.method public final whitelist test-api isOpen()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final whitelist test-api lock(JJZ)Ljava/util/concurrent/Future;
    .registers 14
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ)",
            "Ljava/util/concurrent/Future<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    .line 118
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .end local p1    # "position":J
    .end local p3    # "size":J
    .end local p5    # "shared":Z
    .local v1, "position":J
    .local v3, "size":J
    .local v5, "shared":Z
    invoke-virtual/range {v0 .. v7}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api lock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 10
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(JJZTA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/nio/channels/FileLock;",
            "-TA;>;)V"
        }
    .end annotation

    .line 128
    .local p6, "attachment":Ljava/lang/Object;, "TA;"
    .local p7, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/FileLock;-TA;>;"
    if-eqz p7, :cond_6

    .line 130
    invoke-virtual/range {p0 .. p7}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 131
    return-void

    .line 129
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api read(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
    .registers 10
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 218
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .end local p2    # "position":J
    .local v1, "dst":Ljava/nio/ByteBuffer;
    .local v2, "position":J
    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api read(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "JTA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation

    .line 227
    .local p4, "attachment":Ljava/lang/Object;, "TA;"
    .local p5, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    if-eqz p5, :cond_6

    .line 229
    invoke-virtual/range {p0 .. p5}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 230
    return-void

    .line 228
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist release(Lsun/nio/ch/FileLockImpl;)V
    .registers 3
    .param p1, "fli"    # Lsun/nio/ch/FileLockImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->begin()V

    .line 201
    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implRelease(Lsun/nio/ch/FileLockImpl;)V

    .line 202
    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 204
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    .line 205
    nop

    .line 206
    return-void

    .line 204
    :catchall_e
    move-exception v0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    .line 205
    throw v0
.end method

.method protected final blacklist removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V
    .registers 3
    .param p1, "fli"    # Lsun/nio/ch/FileLockImpl;

    .line 186
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v0, p1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 187
    return-void
.end method

.method public final whitelist test-api write(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
    .registers 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 240
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "position":J
    .local v1, "src":Ljava/nio/ByteBuffer;
    .local v2, "position":J
    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api write(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "JTA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation

    .line 249
    .local p4, "attachment":Ljava/lang/Object;, "TA;"
    .local p5, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    if-eqz p5, :cond_6

    .line 251
    invoke-virtual/range {p0 .. p5}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 252
    return-void

    .line 250
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
