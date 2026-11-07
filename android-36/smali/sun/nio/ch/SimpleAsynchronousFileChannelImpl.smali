.class public Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
.super Lsun/nio/ch/AsynchronousFileChannelImpl;
.source "SimpleAsynchronousFileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$DefaultExecutorHolder;
    }
.end annotation


# static fields
.field private static final blacklist nd:Lsun/nio/ch/FileDispatcher;


# instance fields
.field private final blacklist threads:Lsun/nio/ch/NativeThreadSet;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetthreads(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetnd()Lsun/nio/ch/FileDispatcher;
    .registers 1

    sget-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    sput-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/FileDescriptor;ZZLjava/util/concurrent/ExecutorService;)V
    .registers 7
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "reading"    # Z
    .param p3, "writing"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/ExecutorService;

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/nio/ch/AsynchronousFileChannelImpl;-><init>(Ljava/io/FileDescriptor;ZZLjava/util/concurrent/ExecutorService;)V

    .line 54
    new-instance v0, Lsun/nio/ch/NativeThreadSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lsun/nio/ch/NativeThreadSet;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    .line 63
    return-void
.end method

.method public static blacklist open(Ljava/io/FileDescriptor;ZZLsun/nio/ch/ThreadPool;)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 6
    .param p0, "fdo"    # Ljava/io/FileDescriptor;
    .param p1, "reading"    # Z
    .param p2, "writing"    # Z
    .param p3, "pool"    # Lsun/nio/ch/ThreadPool;

    .line 71
    if-nez p3, :cond_5

    .line 72
    sget-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$DefaultExecutorHolder;->defaultExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_9

    :cond_5
    invoke-virtual {p3}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 73
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    :goto_9
    new-instance v1, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-direct {v1, p0, p1, p2, v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;-><init>(Ljava/io/FileDescriptor;ZZLjava/util/concurrent/ExecutorService;)V

    return-object v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->closed:Z

    if-eqz v1, :cond_9

    .line 81
    monitor-exit v0

    return-void

    .line 82
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->closed:Z

    .line 85
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2f

    .line 88
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->invalidateAllLocks()V

    .line 91
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->signalAndWait()V

    .line 94
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 98
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 102
    sget-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/FileDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 103
    return-void

    .line 85
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist test-api force(Z)V
    .registers 8
    .param p1, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v0

    .line 158
    .local v0, "ti":I
    const/4 v1, 0x0

    .line 160
    .local v1, "n":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    .line 162
    :cond_c
    sget-object v4, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v5, p1}, Lsun/nio/ch/FileDispatcher;->force(Ljava/io/FileDescriptor;Z)I

    move-result v4

    move v1, v4

    .line 163
    const/4 v4, -0x3

    if-ne v1, v4, :cond_1e

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v4
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_2d

    if-nez v4, :cond_c

    .line 165
    :cond_1e
    if-ltz v1, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    :try_start_22
    invoke-virtual {p0, v2}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_37

    .line 166
    nop

    .line 168
    .end local v1    # "n":I
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 169
    nop

    .line 170
    return-void

    .line 165
    .restart local v1    # "n":I
    :catchall_2d
    move-exception v4

    if-ltz v1, :cond_31

    goto :goto_32

    :cond_31
    move v2, v3

    :goto_32
    :try_start_32
    invoke-virtual {p0, v2}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V

    .line 166
    nop

    .end local v0    # "ti":I
    .end local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
    .end local p1    # "metaData":Z
    throw v4
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_37

    .line 168
    .end local v1    # "n":I
    .restart local v0    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
    .restart local p1    # "metaData":Z
    :catchall_37
    move-exception v1

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 169
    throw v1
.end method

.method blacklist implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 19
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
            "-TA;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    .line 179
    .local p6, "attachment":Ljava/lang/Object;, "TA;"
    .local p7, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/FileLock;-TA;>;"
    move-object/from16 v8, p7

    if-eqz p5, :cond_f

    iget-boolean v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->reading:Z

    if-eqz v0, :cond_9

    goto :goto_f

    .line 180
    :cond_9
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 181
    :cond_f
    :goto_f
    if-nez p5, :cond_1c

    iget-boolean v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->writing:Z

    if-eqz v0, :cond_16

    goto :goto_1c

    .line 182
    :cond_16
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 185
    :cond_1c
    :goto_1c
    invoke-virtual/range {p0 .. p5}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->addToFileLockTable(JJZ)Lsun/nio/ch/FileLockImpl;

    move-result-object v7

    .line 186
    .local v7, "fli":Lsun/nio/ch/FileLockImpl;
    const/4 v0, 0x0

    if-nez v7, :cond_37

    .line 187
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 188
    .local v1, "exc":Ljava/lang/Throwable;
    if-nez v8, :cond_2f

    .line 189
    invoke-static {v1}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v0

    return-object v0

    .line 190
    :cond_2f
    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v10, p6

    invoke-static {v8, v10, v0, v1, v2}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V

    .line 191
    return-object v0

    .line 194
    .end local v1    # "exc":Ljava/lang/Throwable;
    :cond_37
    move-object/from16 v10, p6

    if-nez v8, :cond_41

    .line 195
    new-instance v0, Lsun/nio/ch/PendingFuture;

    invoke-direct {v0, p0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;)V

    goto :goto_42

    :cond_41
    nop

    :goto_42
    move-object v9, v0

    .line 196
    .local v9, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/FileLock;TA;>;"
    new-instance v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;-><init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;JJZLsun/nio/ch/FileLockImpl;Ljava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V

    move-object v2, v0

    .line 229
    .local v2, "task":Ljava/lang/Runnable;
    const/4 v3, 0x0

    .line 231
    .local v3, "executed":Z
    :try_start_4f
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_5b

    .line 232
    const/4 v0, 0x1

    .line 234
    .end local v3    # "executed":Z
    .local v0, "executed":Z
    if-nez v0, :cond_5a

    .line 236
    invoke-virtual {p0, v7}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    .line 239
    :cond_5a
    return-object v9

    .line 234
    .end local v0    # "executed":Z
    .restart local v3    # "executed":Z
    :catchall_5b
    move-exception v0

    if-nez v3, :cond_61

    .line 236
    invoke-virtual {p0, v7}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    .line 238
    :cond_61
    throw v0
.end method

.method blacklist implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 16
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
            "-TA;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 293
    .local p4, "attachment":Ljava/lang/Object;, "TA;"
    .local p5, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_76

    .line 295
    iget-boolean v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->reading:Z

    if-eqz v0, :cond_6f

    .line 297
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_65

    .line 301
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_23

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v9, p4

    move-object v7, p5

    goto :goto_42

    .line 309
    :cond_23
    if-nez p5, :cond_2b

    .line 310
    new-instance v1, Lsun/nio/ch/PendingFuture;

    invoke-direct {v1, p0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;)V

    goto :goto_2c

    :cond_2b
    nop

    :goto_2c
    move-object v8, v1

    .line 311
    .local v8, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Integer;TA;>;"
    new-instance v2, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v9, p4

    move-object v7, p5

    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .end local p2    # "position":J
    .end local p4    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p5    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .local v4, "dst":Ljava/nio/ByteBuffer;
    .local v5, "position":J
    .local v7, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .local v9, "attachment":Ljava/lang/Object;, "TA;"
    invoke-direct/range {v2 .. v9}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;-><init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;Ljava/nio/ByteBuffer;JLjava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V

    .line 339
    .local v2, "task":Ljava/lang/Runnable;
    iget-object p1, v3, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 340
    return-object v8

    .line 301
    .end local v2    # "task":Ljava/lang/Runnable;
    .end local v4    # "dst":Ljava/nio/ByteBuffer;
    .end local v5    # "position":J
    .end local v7    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .end local v8    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Integer;TA;>;"
    .end local v9    # "attachment":Ljava/lang/Object;, "TA;"
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    .restart local p2    # "position":J
    .restart local p4    # "attachment":Ljava/lang/Object;, "TA;"
    .restart local p5    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    :cond_3d
    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v9, p4

    move-object v7, p5

    .line 302
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .end local p2    # "position":J
    .end local p4    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p5    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .restart local v4    # "dst":Ljava/nio/ByteBuffer;
    .restart local v5    # "position":J
    .restart local v7    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .restart local v9    # "attachment":Ljava/lang/Object;, "TA;"
    :goto_42
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_4a

    move-object p1, v1

    goto :goto_4f

    :cond_4a
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 303
    .local p1, "exc":Ljava/lang/Throwable;
    :goto_4f
    const/4 p2, 0x0

    if-nez v7, :cond_5b

    .line 304
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p1}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object p2

    return-object p2

    .line 305
    :cond_5b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, v3, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v7, v9, p2, p1, p3}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V

    .line 306
    return-object v1

    .line 298
    .end local v4    # "dst":Ljava/nio/ByteBuffer;
    .end local v5    # "position":J
    .end local v7    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .end local v9    # "attachment":Ljava/lang/Object;, "TA;"
    .local p1, "dst":Ljava/nio/ByteBuffer;
    .restart local p2    # "position":J
    .restart local p4    # "attachment":Ljava/lang/Object;, "TA;"
    .restart local p5    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    :cond_65
    move-object v4, p1

    move-wide v5, p2

    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .end local p2    # "position":J
    .restart local v4    # "dst":Ljava/nio/ByteBuffer;
    .restart local v5    # "position":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Read-only buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    .end local v4    # "dst":Ljava/nio/ByteBuffer;
    .end local v5    # "position":J
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    .restart local p2    # "position":J
    :cond_6f
    move-object v4, p1

    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .restart local v4    # "dst":Ljava/nio/ByteBuffer;
    new-instance p1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw p1

    .line 294
    .end local v4    # "dst":Ljava/nio/ByteBuffer;
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    :cond_76
    move-object v4, p1

    move-wide v5, p2

    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .end local p2    # "position":J
    .restart local v4    # "dst":Ljava/nio/ByteBuffer;
    .restart local v5    # "position":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist implRelease(Lsun/nio/ch/FileLockImpl;)V
    .registers 8
    .param p1, "fli"    # Lsun/nio/ch/FileLockImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V

    .line 285
    return-void
.end method

.method blacklist implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 16
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
            "-TA;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 349
    .local p4, "attachment":Ljava/lang/Object;, "TA;"
    .local p5, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_66

    .line 351
    iget-boolean v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->writing:Z

    if-eqz v0, :cond_5f

    .line 355
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1d

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v9, p4

    move-object v7, p5

    goto :goto_3c

    .line 363
    :cond_1d
    if-nez p5, :cond_25

    .line 364
    new-instance v1, Lsun/nio/ch/PendingFuture;

    invoke-direct {v1, p0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;)V

    goto :goto_26

    :cond_25
    nop

    :goto_26
    move-object v8, v1

    .line 365
    .local v8, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Integer;TA;>;"
    new-instance v2, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v9, p4

    move-object v7, p5

    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "position":J
    .end local p4    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p5    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .local v4, "src":Ljava/nio/ByteBuffer;
    .local v5, "position":J
    .local v7, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .local v9, "attachment":Ljava/lang/Object;, "TA;"
    invoke-direct/range {v2 .. v9}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;-><init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;Ljava/nio/ByteBuffer;JLjava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V

    .line 393
    .local v2, "task":Ljava/lang/Runnable;
    iget-object p1, v3, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 394
    return-object v8

    .line 355
    .end local v2    # "task":Ljava/lang/Runnable;
    .end local v4    # "src":Ljava/nio/ByteBuffer;
    .end local v5    # "position":J
    .end local v7    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .end local v8    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Integer;TA;>;"
    .end local v9    # "attachment":Ljava/lang/Object;, "TA;"
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "position":J
    .restart local p4    # "attachment":Ljava/lang/Object;, "TA;"
    .restart local p5    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    :cond_37
    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v9, p4

    move-object v7, p5

    .line 356
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "position":J
    .end local p4    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p5    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .restart local v4    # "src":Ljava/nio/ByteBuffer;
    .restart local v5    # "position":J
    .restart local v7    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .restart local v9    # "attachment":Ljava/lang/Object;, "TA;"
    :goto_3c
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_44

    move-object p1, v1

    goto :goto_49

    :cond_44
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 357
    .local p1, "exc":Ljava/lang/Throwable;
    :goto_49
    const/4 p2, 0x0

    if-nez v7, :cond_55

    .line 358
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p1}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object p2

    return-object p2

    .line 359
    :cond_55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, v3, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v7, v9, p2, p1, p3}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V

    .line 360
    return-object v1

    .line 352
    .end local v4    # "src":Ljava/nio/ByteBuffer;
    .end local v5    # "position":J
    .end local v7    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .end local v9    # "attachment":Ljava/lang/Object;, "TA;"
    .local p1, "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "position":J
    .restart local p4    # "attachment":Ljava/lang/Object;, "TA;"
    .restart local p5    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    :cond_5f
    move-object v4, p1

    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local v4    # "src":Ljava/nio/ByteBuffer;
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1

    .line 350
    .end local v4    # "src":Ljava/nio/ByteBuffer;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    :cond_66
    move-object v4, p1

    move-wide v5, p2

    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "position":J
    .restart local v4    # "src":Ljava/nio/ByteBuffer;
    .restart local v5    # "position":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api size()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v0

    .line 109
    .local v0, "ti":I
    const-wide/16 v1, 0x0

    .line 111
    .local v1, "n":J
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    :try_start_c
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    .line 113
    :cond_f
    sget-object v7, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v8, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v7, v8}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v7

    move-wide v1, v7

    .line 114
    const-wide/16 v7, -0x3

    cmp-long v7, v1, v7

    if-nez v7, :cond_24

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v7
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_34

    if-nez v7, :cond_f

    .line 115
    :cond_24
    nop

    .line 117
    cmp-long v5, v1, v5

    if-ltz v5, :cond_2a

    goto :goto_2b

    :cond_2a
    move v3, v4

    :goto_2b
    :try_start_2b
    invoke-virtual {p0, v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_40

    .line 120
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 115
    return-wide v1

    .line 117
    :catchall_34
    move-exception v7

    cmp-long v5, v1, v5

    if-ltz v5, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v4

    :goto_3b
    :try_start_3b
    invoke-virtual {p0, v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V

    .line 118
    nop

    .end local v0    # "ti":I
    .end local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
    throw v7
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_40

    .line 120
    .end local v1    # "n":J
    .restart local v0    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
    :catchall_40
    move-exception v1

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 121
    throw v1
.end method

.method public whitelist test-api truncate(J)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 14
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_72

    .line 128
    iget-boolean v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->writing:Z

    if-eqz v2, :cond_6c

    .line 130
    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 132
    .local v2, "ti":I
    const-wide/16 v3, 0x0

    .line 134
    .local v3, "n":J
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_14
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    .line 136
    :cond_17
    sget-object v7, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v8, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v7, v8}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v7

    move-wide v3, v7

    .line 137
    const-wide/16 v7, -0x3

    cmp-long v9, v3, v7

    if-nez v9, :cond_2c

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v9

    if-nez v9, :cond_17

    .line 140
    :cond_2c
    cmp-long v9, p1, v3

    if-gez v9, :cond_49

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 142
    :cond_36
    sget-object v9, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v10, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v9, v10, p1, p2}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I

    move-result v9

    int-to-long v3, v9

    .line 143
    cmp-long v9, v3, v7

    if-nez v9, :cond_49

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v9
    :try_end_47
    .catchall {:try_start_14 .. :try_end_47} :catchall_59

    if-nez v9, :cond_36

    .line 145
    :cond_49
    nop

    .line 147
    cmp-long v0, v3, v0

    if-lez v0, :cond_4f

    goto :goto_50

    :cond_4f
    move v5, v6

    :goto_50
    :try_start_50
    invoke-virtual {p0, v5}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_65

    .line 150
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 145
    return-object p0

    .line 147
    :catchall_59
    move-exception v7

    cmp-long v0, v3, v0

    if-lez v0, :cond_5f

    goto :goto_60

    :cond_5f
    move v5, v6

    :goto_60
    :try_start_60
    invoke-virtual {p0, v5}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V

    .line 148
    nop

    .end local v2    # "ti":I
    .end local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
    .end local p1    # "size":J
    throw v7
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_65

    .line 150
    .end local v3    # "n":J
    .restart local v2    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
    .restart local p1    # "size":J
    :catchall_65
    move-exception v0

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 151
    throw v0

    .line 129
    .end local v2    # "ti":I
    :cond_6c
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 127
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api tryLock(JJZ)Ljava/nio/channels/FileLock;
    .registers 18
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    if-eqz p5, :cond_d

    iget-boolean v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->reading:Z

    if-eqz v0, :cond_7

    goto :goto_d

    .line 247
    :cond_7
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 248
    :cond_d
    :goto_d
    if-nez p5, :cond_1a

    iget-boolean v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->writing:Z

    if-eqz v0, :cond_14

    goto :goto_1a

    .line 249
    :cond_14
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 252
    :cond_1a
    :goto_1a
    invoke-virtual/range {p0 .. p5}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->addToFileLockTable(JJZ)Lsun/nio/ch/FileLockImpl;

    move-result-object v1

    .line 253
    .local v1, "fli":Lsun/nio/ch/FileLockImpl;
    if-eqz v1, :cond_88

    .line 256
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 257
    .local v2, "ti":I
    const/4 v3, 0x0

    .line 259
    .local v3, "gotLock":Z
    :try_start_27
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    .line 262
    :cond_2a
    sget-object v4, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    move-wide v7, p1

    move-wide v9, p3

    move/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v0

    .line 263
    .local v0, "n":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_40

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 264
    :cond_40
    if-nez v0, :cond_58

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v5
    :try_end_46
    .catchall {:try_start_27 .. :try_end_46} :catchall_79

    if-eqz v5, :cond_58

    .line 265
    const/4 v3, 0x1

    .line 266
    nop

    .line 275
    if-nez v3, :cond_4f

    .line 276
    invoke-virtual {p0, v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    .line 277
    :cond_4f
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 278
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 266
    return-object v1

    .line 268
    :cond_58
    const/4 v5, -0x1

    if-ne v0, v5, :cond_6b

    .line 269
    nop

    .line 275
    if-nez v3, :cond_61

    .line 276
    invoke-virtual {p0, v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    .line 277
    :cond_61
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 278
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 269
    const/4 v4, 0x0

    return-object v4

    .line 270
    :cond_6b
    if-ne v0, v4, :cond_73

    .line 271
    :try_start_6d
    new-instance v4, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v4}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .end local v1    # "fli":Lsun/nio/ch/FileLockImpl;
    .end local v2    # "ti":I
    .end local v3    # "gotLock":Z
    .end local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
    .end local p1    # "position":J
    .end local p3    # "size":J
    .end local p5    # "shared":Z
    throw v4

    .line 273
    .restart local v1    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v2    # "ti":I
    .restart local v3    # "gotLock":Z
    .restart local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
    .restart local p1    # "position":J
    .restart local p3    # "size":J
    .restart local p5    # "shared":Z
    :cond_73
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    .end local v1    # "fli":Lsun/nio/ch/FileLockImpl;
    .end local v2    # "ti":I
    .end local v3    # "gotLock":Z
    .end local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
    .end local p1    # "position":J
    .end local p3    # "size":J
    .end local p5    # "shared":Z
    throw v4
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_79

    .line 275
    .end local v0    # "n":I
    .restart local v1    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v2    # "ti":I
    .restart local v3    # "gotLock":Z
    .restart local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
    .restart local p1    # "position":J
    .restart local p3    # "size":J
    .restart local p5    # "shared":Z
    :catchall_79
    move-exception v0

    if-nez v3, :cond_7f

    .line 276
    invoke-virtual {p0, v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    .line 277
    :cond_7f
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 278
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 279
    throw v0

    .line 254
    .end local v2    # "ti":I
    .end local v3    # "gotLock":Z
    :cond_88
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method
