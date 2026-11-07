.class public final Lcom/android/okhttp/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o DEFAULT_KEEP_ALIVE_DURATION_MS:J = 0x493e0L

.field private static final greylist systemDefault:Lcom/android/okhttp/ConnectionPool;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# instance fields
.field private greylist-max-o cleanupRunnable:Ljava/lang/Runnable;

.field private final greylist connections:Ljava/util/Deque;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/okhttp/internal/io/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o executor:Ljava/util/concurrent/Executor;

.field private final greylist keepAliveDurationNs:J
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final greylist maxIdleConnections:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field final greylist-max-o routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 67
    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "http.keepAliveDuration"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "http.maxConnections"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_19

    .line 71
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1c

    :cond_19
    const-wide/32 v3, 0x493e0

    :goto_1c
    if-eqz v0, :cond_2d

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 74
    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v0, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    return-void

    :cond_2d
    if-eqz v2, :cond_3b

    .line 76
    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v0, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    return-void

    .line 78
    :cond_3b
    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v0, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    return-void
.end method

.method public constructor greylist-max-o <init>(IJ)V
    .registers 5

    .line 120
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 13

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v1, "OkHttp ConnectionPool"

    const/4 v2, 0x1

    .line 89
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    .line 96
    new-instance v0, Lcom/android/okhttp/ConnectionPool$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/ConnectionPool$1;-><init>(Lcom/android/okhttp/ConnectionPool;)V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    .line 117
    new-instance v0, Lcom/android/okhttp/internal/RouteDatabase;

    invoke-direct {v0}, Lcom/android/okhttp/internal/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    .line 124
    iput p1, p0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    .line 125
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-lez p0, :cond_3f

    return-void

    .line 129
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "keepAliveDuration <= 0: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o getDefault()Lcom/android/okhttp/ConnectionPool;
    .registers 1

    .line 134
    sget-object v0, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    return-object v0
.end method

.method private greylist-max-o pruneAndGetAllocationCount(Lcom/android/okhttp/internal/io/RealConnection;J)I
    .registers 8

    .line 301
    iget-object v0, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 302
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 303
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 305
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_19

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 317
    :cond_19
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 318
    iput-boolean v3, p1, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    .line 321
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 322
    iget-wide v2, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    return v1

    .line 327
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method greylist-max-o cleanup(J)J
    .registers 13

    .line 248
    monitor-enter p0

    .line 249
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    move-wide v4, v3

    move-object v3, v2

    move v2, v1

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/okhttp/internal/io/RealConnection;

    .line 253
    invoke-direct {p0, v6, p1, p2}, Lcom/android/okhttp/ConnectionPool;->pruneAndGetAllocationCount(Lcom/android/okhttp/internal/io/RealConnection;J)I

    move-result v7

    if-lez v7, :cond_23

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_23
    add-int/lit8 v1, v1, 0x1

    .line 261
    iget-wide v7, v6, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    sub-long v7, p1, v7

    cmp-long v9, v7, v4

    if-lez v9, :cond_e

    move-object v3, v6

    move-wide v4, v7

    goto :goto_e

    :catchall_30
    move-exception p1

    goto :goto_5a

    .line 268
    :cond_32
    iget-wide p1, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v0, v4, p1

    if-gez v0, :cond_4a

    iget v0, p0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    if-le v1, v0, :cond_3d

    goto :goto_4a

    :cond_3d
    if-lez v1, :cond_42

    sub-long/2addr p1, v4

    .line 276
    monitor-exit p0

    return-wide p1

    :cond_42
    if-lez v2, :cond_46

    .line 280
    monitor-exit p0

    return-wide p1

    :cond_46
    const-wide/16 p1, -0x1

    .line 284
    monitor-exit p0

    return-wide p1

    .line 272
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {p1, v3}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 286
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_30

    .line 288
    invoke-virtual {v3}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const-wide/16 p0, 0x0

    return-wide p0

    .line 286
    :goto_5a
    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_30

    throw p1
.end method

.method greylist-max-o connectionBecameIdle(Lcom/android/okhttp/internal/io/RealConnection;)Z
    .registers 3

    .line 206
    iget-boolean v0, p1, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_9

    goto :goto_e

    .line 210
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p0, 0x0

    return p0

    .line 207
    :cond_e
    :goto_e
    iget-object p0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public greylist-max-o evictAll()V
    .registers 5

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    monitor-enter p0

    .line 219
    :try_start_6
    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/io/RealConnection;

    .line 221
    iget-object v3, v2, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    .line 222
    iput-boolean v3, v2, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    .line 223
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    :catchall_2a
    move-exception v0

    goto :goto_45

    .line 227
    :cond_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2a

    .line 229
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_32
    if-ge v1, p0, :cond_44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/okhttp/internal/io/RealConnection;

    .line 230
    invoke-virtual {v2}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_32

    :cond_44
    return-void

    .line 227
    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_2a

    throw v0
.end method

.method greylist-max-o get(Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 6

    .line 179
    iget-object p0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/io/RealConnection;

    .line 182
    iget-object v1, v0, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->allocationLimit()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 183
    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v1

    iget-object v1, v1, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-nez v1, :cond_6

    .line 185
    invoke-virtual {p2, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->acquire(Lcom/android/okhttp/internal/io/RealConnection;)V

    return-object v0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized greylist-max-o getConnectionCount()I
    .registers 2

    monitor-enter p0

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized greylist-max-o getHttpConnectionCount()I
    .registers 3

    monitor-enter p0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionPool;->getMultiplexedConnectionCount()I

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public declared-synchronized greylist-max-o getIdleConnectionCount()I
    .registers 4

    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/io/RealConnection;

    .line 141
    iget-object v2, v2, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    if-eqz v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_1f
    move-exception v0

    goto :goto_23

    .line 143
    :cond_21
    monitor-exit p0

    return v1

    :goto_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_1f

    throw v0
.end method

.method public declared-synchronized greylist-max-o getMultiplexedConnectionCount()I
    .registers 4

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/io/RealConnection;

    .line 166
    invoke-virtual {v2}, Lcom/android/okhttp/internal/io/RealConnection;->isMultiplexed()Z

    move-result v2
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    if-eqz v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_1d
    move-exception v0

    goto :goto_21

    .line 168
    :cond_1f
    monitor-exit p0

    return v1

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1d

    throw v0
.end method

.method public declared-synchronized greylist-max-o getSpdyConnectionCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionPool;->getMultiplexedConnectionCount()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method greylist-max-o put(Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 195
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 197
    :cond_f
    iget-object p0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method greylist-max-o setCleanupRunnableForTest(Ljava/lang/Runnable;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/android/okhttp/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    return-void
.end method
