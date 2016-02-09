.class public final Lcom/android/okhttp/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/ConnectionPool$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEEP_ALIVE_DURATION_MS:J = 0x493e0L

.field private static final systemDefault:Lcom/android/okhttp/ConnectionPool;


# instance fields
.field private final connections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/okhttp/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionsCleanupRunnable:Ljava/lang/Runnable;

.field private executor:Ljava/util/concurrent/Executor;

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I


# direct methods
.method static synthetic -wrap0(Lcom/android/okhttp/ConnectionPool;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/okhttp/ConnectionPool;->runCleanupUntilPoolIsEmpty()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    .line 60
    const-string/jumbo v5, "http.keepAlive"

    #@3
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 61
    .local v0, "keepAlive":Ljava/lang/String;
    const-string/jumbo v5, "http.keepAliveDuration"

    #@a
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 62
    .local v1, "keepAliveDuration":Ljava/lang/String;
    const-string/jumbo v5, "http.maxConnections"

    #@11
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 63
    .local v4, "maxIdleConnections":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@17
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1a
    move-result-wide v2

    #@1b
    .line 65
    .local v2, "keepAliveDurationMs":J
    :goto_0
    if-eqz v0, :cond_0

    #@1d
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_2

    #@23
    .line 67
    :cond_0
    if-eqz v4, :cond_3

    #@25
    .line 68
    new-instance v5, Lcom/android/okhttp/ConnectionPool;

    #@27
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2a
    move-result v6

    #@2b
    invoke-direct {v5, v6, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    #@2e
    sput-object v5, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    #@30
    .line 54
    :goto_1
    return-void

    #@31
    .line 64
    .end local v2    # "keepAliveDurationMs":J
    :cond_1
    const-wide/32 v2, 0x493e0

    #@34
    .restart local v2    # "keepAliveDurationMs":J
    goto :goto_0

    #@35
    .line 66
    :cond_2
    new-instance v5, Lcom/android/okhttp/ConnectionPool;

    #@37
    const/4 v6, 0x0

    #@38
    invoke-direct {v5, v6, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    #@3b
    sput-object v5, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    #@3d
    goto :goto_1

    #@3e
    .line 70
    :cond_3
    new-instance v5, Lcom/android/okhttp/ConnectionPool;

    #@40
    const/4 v6, 0x5

    #@41
    invoke-direct {v5, v6, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    #@44
    sput-object v5, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    #@46
    goto :goto_1
.end method

.method public constructor <init>(IJ)V
    .locals 12
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDurationMs"    # J

    #@0
    .prologue
    const-wide/16 v10, 0x3e8

    #@2
    const/4 v3, 0x1

    #@3
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 78
    new-instance v0, Ljava/util/LinkedList;

    #@8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@d
    .line 91
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@f
    .line 92
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@11
    .line 93
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@13
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@16
    const-string/jumbo v0, "OkHttp ConnectionPool"

    #@19
    invoke-static {v0, v3}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    #@1c
    move-result-object v8

    #@1d
    .line 92
    const/4 v2, 0x0

    #@1e
    const-wide/16 v4, 0x3c

    #@20
    .line 91
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@23
    iput-object v1, p0, Lcom/android/okhttp/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    #@25
    .line 95
    new-instance v0, Lcom/android/okhttp/ConnectionPool$1;

    #@27
    invoke-direct {v0, p0}, Lcom/android/okhttp/ConnectionPool$1;-><init>(Lcom/android/okhttp/ConnectionPool;)V

    #@2a
    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connectionsCleanupRunnable:Ljava/lang/Runnable;

    #@2c
    .line 102
    iput p1, p0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    #@2e
    .line 103
    mul-long v0, p2, v10

    #@30
    mul-long/2addr v0, v10

    #@31
    iput-wide v0, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    #@33
    .line 101
    return-void
.end method

.method private addConnection(Lcom/android/okhttp/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/android/okhttp/Connection;

    #@0
    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    .line 206
    .local v0, "empty":Z
    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@b
    .line 207
    if-eqz v0, :cond_0

    #@d
    .line 208
    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    #@f
    iget-object v2, p0, Lcom/android/okhttp/ConnectionPool;->connectionsCleanupRunnable:Ljava/lang/Runnable;

    #@11
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@14
    .line 204
    :goto_0
    return-void

    #@15
    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionPool;->notifyAll()V

    #@18
    goto :goto_0
.end method

.method public static getDefault()Lcom/android/okhttp/ConnectionPool;
    .locals 1

    #@0
    .prologue
    .line 107
    sget-object v0, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    #@2
    return-object v0
.end method

.method private runCleanupUntilPoolIsEmpty()V
    .locals 1

    #@0
    .prologue
    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionPool;->performCleanup()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    return-void
.end method


# virtual methods
.method public evictAll()V
    .locals 4

    #@0
    .prologue
    .line 229
    monitor-enter p0

    #@1
    .line 230
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@3
    iget-object v3, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@5
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@8
    .line 231
    .local v2, "toEvict":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Connection;>;"
    iget-object v3, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@a
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    #@d
    .line 232
    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionPool;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 235
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@15
    move-result v1

    #@16
    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@18
    .line 236
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Lcom/android/okhttp/Connection;

    #@1e
    invoke-virtual {v3}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@21
    move-result-object v3

    #@22
    invoke-static {v3}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@25
    .line 235
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 229
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "toEvict":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Connection;>;"
    :catchall_0
    move-exception v3

    #@29
    monitor-exit p0

    #@2a
    throw v3

    #@2b
    .line 227
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    .restart local v2    # "toEvict":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Connection;>;"
    :cond_0
    return-void
.end method

.method public declared-synchronized get(Lcom/android/okhttp/Address;)Lcom/android/okhttp/Connection;
    .locals 8
    .param p1, "address"    # Lcom/android/okhttp/Address;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 137
    const/4 v2, 0x0

    #@2
    .line 138
    .local v2, "foundConnection":Lcom/android/okhttp/Connection;
    :try_start_0
    iget-object v4, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@4
    iget-object v5, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@6
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    #@9
    move-result v5

    #@a
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    #@d
    move-result-object v3

    #@e
    .line 139
    .local v3, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/squareup/okhttp/Connection;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    #@11
    move-result v4

    #@12
    .line 138
    if-eqz v4, :cond_2

    #@14
    .line 140
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/okhttp/Connection;

    #@1a
    .line 141
    .local v0, "connection":Lcom/android/okhttp/Connection;
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, p1}, Lcom/android/okhttp/Address;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 142
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->isAlive()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_0

    #@2e
    .line 143
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@31
    move-result-wide v4

    #@32
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->getIdleStartTimeNs()J

    #@35
    move-result-wide v6

    #@36
    sub-long/2addr v4, v6

    #@37
    iget-wide v6, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    #@39
    cmp-long v4, v4, v6

    #@3b
    if-gez v4, :cond_0

    #@3d
    .line 146
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    #@40
    .line 147
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->isSpdy()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    move-result v4

    #@44
    if-nez v4, :cond_1

    #@46
    .line 149
    :try_start_1
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/Platform;->tagSocket(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    .line 157
    :cond_1
    move-object v2, v0

    #@52
    .line 161
    .end local v0    # "connection":Lcom/android/okhttp/Connection;
    .end local v2    # "foundConnection":Lcom/android/okhttp/Connection;
    :cond_2
    if-eqz v2, :cond_3

    #@54
    :try_start_2
    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->isSpdy()Z

    #@57
    move-result v4

    #@58
    if-eqz v4, :cond_3

    #@5a
    .line 162
    iget-object v4, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@5c
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    :cond_3
    monitor-exit p0

    #@60
    .line 165
    return-object v2

    #@61
    .line 150
    .restart local v0    # "connection":Lcom/android/okhttp/Connection;
    .restart local v2    # "foundConnection":Lcom/android/okhttp/Connection;
    :catch_0
    move-exception v1

    #@62
    .line 151
    .local v1, "e":Ljava/net/SocketException;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@65
    move-result-object v4

    #@66
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@69
    .line 153
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@6c
    move-result-object v4

    #@6d
    new-instance v5, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v6, "Unable to tagSocket(): "

    #@75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@84
    goto :goto_0

    #@85
    .end local v0    # "connection":Lcom/android/okhttp/Connection;
    .end local v1    # "e":Ljava/net/SocketException;
    .end local v2    # "foundConnection":Lcom/android/okhttp/Connection;
    .end local v3    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/squareup/okhttp/Connection;>;"
    :catchall_0
    move-exception v4

    #@86
    monitor-exit p0

    #@87
    throw v4
.end method

.method public declared-synchronized getConnectionCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method declared-synchronized getConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 335
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@3
    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public declared-synchronized getHttpConnectionCount()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionPool;->getMultiplexedConnectionCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v1

    #@b
    sub-int/2addr v0, v1

    #@c
    monitor-exit p0

    #@d
    return v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public declared-synchronized getMultiplexedConnectionCount()I
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 123
    const/4 v2, 0x0

    #@2
    .line 124
    .local v2, "total":I
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "connection$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/okhttp/Connection;

    #@14
    .line 125
    .local v0, "connection":Lcom/android/okhttp/Connection;
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->isSpdy()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .end local v0    # "connection":Lcom/android/okhttp/Connection;
    :cond_1
    monitor-exit p0

    #@1e
    .line 127
    return v2

    #@1f
    .end local v1    # "connection$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@20
    monitor-exit p0

    #@21
    throw v3
.end method

.method public declared-synchronized getSpdyConnectionCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionPool;->getMultiplexedConnectionCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method performCleanup()Z
    .locals 24

    #@0
    .prologue
    .line 267
    monitor-enter p0

    #@1
    .line 268
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@5
    move-object/from16 v20, v0

    #@7
    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v20

    #@b
    if-eqz v20, :cond_0

    #@d
    const/16 v20, 0x0

    #@f
    monitor-exit p0

    #@10
    return v20

    #@11
    .line 270
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    #@13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 271
    .local v3, "evictableConnections":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Connection;>;"
    const/4 v7, 0x0

    #@17
    .line 272
    .local v7, "idleConnectionCount":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1a
    move-result-wide v16

    #@1b
    .line 273
    .local v16, "now":J
    move-object/from16 v0, p0

    #@1d
    iget-wide v14, v0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    #@1f
    .line 276
    .local v14, "nanosUntilNextEviction":J
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@23
    move-object/from16 v20, v0

    #@25
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@29
    move-object/from16 v21, v0

    #@2b
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->size()I

    #@2e
    move-result v21

    #@2f
    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    #@32
    move-result-object v6

    #@33
    .line 277
    .local v6, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/squareup/okhttp/Connection;>;"
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    #@36
    move-result v20

    #@37
    .line 276
    if-eqz v20, :cond_3

    #@39
    .line 278
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Lcom/android/okhttp/Connection;

    #@3f
    .line 279
    .local v2, "connection":Lcom/android/okhttp/Connection;
    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->getIdleStartTimeNs()J

    #@42
    move-result-wide v20

    #@43
    move-object/from16 v0, p0

    #@45
    iget-wide v0, v0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    #@47
    move-wide/from16 v22, v0

    #@49
    add-long v20, v20, v22

    #@4b
    sub-long v12, v20, v16

    #@4d
    .line 280
    .local v12, "nanosUntilEviction":J
    const-wide/16 v20, 0x0

    #@4f
    cmp-long v20, v12, v20

    #@51
    if-lez v20, :cond_2

    #@53
    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->isAlive()Z

    #@56
    move-result v20

    #@57
    if-eqz v20, :cond_2

    #@59
    .line 283
    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->isIdle()Z

    #@5c
    move-result v20

    #@5d
    if-eqz v20, :cond_1

    #@5f
    .line 284
    add-int/lit8 v7, v7, 0x1

    #@61
    .line 285
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    #@64
    move-result-wide v14

    #@65
    goto :goto_0

    #@66
    .line 281
    :cond_2
    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    #@69
    .line 282
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6c
    goto :goto_0

    #@6d
    .line 267
    .end local v2    # "connection":Lcom/android/okhttp/Connection;
    .end local v3    # "evictableConnections":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Connection;>;"
    .end local v6    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/squareup/okhttp/Connection;>;"
    .end local v7    # "idleConnectionCount":I
    .end local v12    # "nanosUntilEviction":J
    .end local v14    # "nanosUntilNextEviction":J
    .end local v16    # "now":J
    :catchall_0
    move-exception v20

    #@6e
    monitor-exit p0

    #@6f
    throw v20

    #@70
    .line 290
    .restart local v3    # "evictableConnections":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Connection;>;"
    .restart local v6    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/squareup/okhttp/Connection;>;"
    .restart local v7    # "idleConnectionCount":I
    .restart local v14    # "nanosUntilNextEviction":J
    .restart local v16    # "now":J
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    #@72
    iget-object v0, v0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@74
    move-object/from16 v20, v0

    #@76
    move-object/from16 v0, p0

    #@78
    iget-object v0, v0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    #@7a
    move-object/from16 v21, v0

    #@7c
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->size()I

    #@7f
    move-result v21

    #@80
    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    #@83
    move-result-object v6

    #@84
    .line 291
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    #@87
    move-result v20

    #@88
    if-eqz v20, :cond_5

    #@8a
    move-object/from16 v0, p0

    #@8c
    iget v0, v0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    #@8e
    move/from16 v20, v0

    #@90
    move/from16 v0, v20

    #@92
    if-le v7, v0, :cond_5

    #@94
    .line 292
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@97
    move-result-object v2

    #@98
    check-cast v2, Lcom/android/okhttp/Connection;

    #@9a
    .line 293
    .restart local v2    # "connection":Lcom/android/okhttp/Connection;
    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->isIdle()Z

    #@9d
    move-result v20

    #@9e
    if-eqz v20, :cond_4

    #@a0
    .line 294
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a3
    .line 295
    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    #@a6
    .line 296
    add-int/lit8 v7, v7, -0x1

    #@a8
    goto :goto_1

    #@a9
    .line 301
    .end local v2    # "connection":Lcom/android/okhttp/Connection;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ac
    move-result v20

    #@ad
    if-eqz v20, :cond_6

    #@af
    .line 303
    const-wide/32 v20, 0xf4240

    #@b2
    :try_start_3
    div-long v10, v14, v20

    #@b4
    .line 304
    .local v10, "millisUntilNextEviction":J
    const-wide/32 v20, 0xf4240

    #@b7
    mul-long v20, v20, v10

    #@b9
    sub-long v18, v14, v20

    #@bb
    .line 305
    .local v18, "remainderNanos":J
    move-wide/from16 v0, v18

    #@bd
    long-to-int v0, v0

    #@be
    move/from16 v20, v0

    #@c0
    move-object/from16 v0, p0

    #@c2
    move/from16 v1, v20

    #@c4
    invoke-virtual {v0, v10, v11, v1}, Lcom/android/okhttp/ConnectionPool;->wait(JI)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c7
    .line 306
    const/16 v20, 0x1

    #@c9
    monitor-exit p0

    #@ca
    return v20

    #@cb
    .line 307
    .end local v10    # "millisUntilNextEviction":J
    .end local v18    # "remainderNanos":J
    :catch_0
    move-exception v8

    #@cc
    :cond_6
    monitor-exit p0

    #@cd
    .line 313
    const/4 v5, 0x0

    #@ce
    .local v5, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@d1
    move-result v9

    #@d2
    .local v9, "size":I
    :goto_2
    if-ge v5, v9, :cond_7

    #@d4
    .line 314
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d7
    move-result-object v4

    #@d8
    check-cast v4, Lcom/android/okhttp/Connection;

    #@da
    .line 315
    .local v4, "expiredConnection":Lcom/android/okhttp/Connection;
    invoke-virtual {v4}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@dd
    move-result-object v20

    #@de
    invoke-static/range {v20 .. v20}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@e1
    .line 313
    add-int/lit8 v5, v5, 0x1

    #@e3
    goto :goto_2

    #@e4
    .line 318
    .end local v4    # "expiredConnection":Lcom/android/okhttp/Connection;
    :cond_7
    const/16 v20, 0x1

    #@e6
    return v20
.end method

.method recycle(Lcom/android/okhttp/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/android/okhttp/Connection;

    #@0
    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->isSpdy()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 176
    return-void

    #@7
    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->clearOwner()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_1

    #@d
    .line 180
    return-void

    #@e
    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->isAlive()Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_2

    #@14
    .line 184
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@1b
    .line 185
    return-void

    #@1c
    .line 189
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Platform;->untagSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 197
    monitor-enter p0

    #@28
    .line 198
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/okhttp/ConnectionPool;->addConnection(Lcom/android/okhttp/Connection;)V

    #@2b
    .line 199
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->incrementRecycleCount()V

    #@2e
    .line 200
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->resetIdleStartTime()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    monitor-exit p0

    #@32
    .line 174
    return-void

    #@33
    .line 190
    :catch_0
    move-exception v0

    #@34
    .line 192
    .local v0, "e":Ljava/net/SocketException;
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@37
    move-result-object v1

    #@38
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, "Unable to untagSocket(): "

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    #@4f
    .line 193
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@52
    move-result-object v1

    #@53
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@56
    .line 194
    return-void

    #@57
    .line 197
    .end local v0    # "e":Ljava/net/SocketException;
    :catchall_0
    move-exception v1

    #@58
    monitor-exit p0

    #@59
    throw v1
.end method

.method replaceCleanupExecutorForTests(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "cleanupExecutor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/okhttp/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    #@2
    .line 325
    return-void
.end method

.method share(Lcom/android/okhttp/Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/android/okhttp/Connection;

    #@0
    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->isSpdy()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 220
    :cond_0
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->isAlive()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    return-void

    #@13
    .line 221
    :cond_1
    monitor-enter p0

    #@14
    .line 222
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/okhttp/ConnectionPool;->addConnection(Lcom/android/okhttp/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 218
    return-void

    #@19
    .line 221
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method
