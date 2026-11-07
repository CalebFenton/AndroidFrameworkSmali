.class public final Lcom/android/okhttp/internal/http/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# instance fields
.field public final greylist-max-o address:Lcom/android/okhttp/Address;

.field private greylist-max-o canceled:Z

.field private greylist-max-o connection:Lcom/android/okhttp/internal/io/RealConnection;

.field private final greylist-max-o connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private greylist-max-o released:Z

.field private greylist-max-o routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

.field private greylist-max-o stream:Lcom/android/okhttp/internal/http/HttpStream;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 90
    iput-object p2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    return-void
.end method

.method private greylist-max-o connectionFailed(Ljava/io/IOException;)V
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    .line 279
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v1, :cond_1c

    .line 280
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    if-nez v2, :cond_19

    .line 282
    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v1

    .line 283
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {v2, v1, p1}, Lcom/android/okhttp/internal/http/RouteSelector;->connectFailed(Lcom/android/okhttp/Route;Ljava/io/IOException;)V

    goto :goto_1c

    :catchall_17
    move-exception p0

    goto :goto_21

    :cond_19
    const/4 p1, 0x0

    .line 286
    iput-object p1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    .line 289
    :cond_1c
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_17

    .line 290
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    return-void

    .line 289
    :goto_21
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_17

    throw p0
.end method

.method private greylist-max-o deallocate(ZZZ)V
    .registers 6

    .line 231
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_b

    .line 233
    :try_start_6
    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    goto :goto_b

    :catchall_9
    move-exception p0

    goto :goto_5d

    :cond_b
    :goto_b
    const/4 p3, 0x1

    if-eqz p2, :cond_10

    .line 236
    iput-boolean p3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->released:Z

    .line 238
    :cond_10
    iget-object p2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    if-eqz p2, :cond_52

    if-eqz p1, :cond_18

    .line 240
    iput-boolean p3, p2, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    .line 242
    :cond_18
    iget-object p1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    if-nez p1, :cond_52

    iget-boolean p1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->released:Z

    if-nez p1, :cond_24

    iget-boolean p1, p2, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-eqz p1, :cond_52

    .line 243
    :cond_24
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/http/StreamAllocation;->release(Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 244
    iget-object p1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget p2, p1, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    if-lez p2, :cond_2f

    .line 245
    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    .line 247
    :cond_2f
    iget-object p1, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 248
    iget-object p1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    .line 249
    sget-object p1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object p2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    iget-object p3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/internal/Internal;->connectionBecameIdle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 250
    iget-object p1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    goto :goto_4f

    :cond_4e
    move-object p1, v1

    .line 253
    :goto_4f
    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    move-object v1, p1

    .line 256
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_6 .. :try_end_53} :catchall_9

    if-eqz v1, :cond_5c

    .line 258
    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_5c
    return-void

    .line 256
    :goto_5d
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_9

    throw p0
.end method

.method private greylist-max-o findConnection(IIIZ)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 153
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v1

    .line 154
    :try_start_3
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->released:Z

    if-nez v0, :cond_94

    .line 155
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    if-nez v0, :cond_8c

    .line 156
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    if-nez v0, :cond_84

    .line 158
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    if-eqz v0, :cond_1d

    .line 159
    iget-boolean v2, v0, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_1d

    .line 160
    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9c

    .line 164
    :cond_1d
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0, v2, v3, p0}, Lcom/android/okhttp/internal/Internal;->get(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 166
    iput-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 167
    monitor-exit v1

    return-object v0

    .line 171
    :cond_2d
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-nez v0, :cond_3e

    .line 172
    new-instance v0, Lcom/android/okhttp/internal/http/RouteSelector;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-direct {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/okhttp/internal/http/RouteSelector;-><init>(Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/RouteDatabase;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    .line 174
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_19

    .line 176
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteSelector;->next()Lcom/android/okhttp/Route;

    move-result-object v0

    .line 177
    new-instance v1, Lcom/android/okhttp/internal/io/RealConnection;

    invoke-direct {v1, v0}, Lcom/android/okhttp/internal/io/RealConnection;-><init>(Lcom/android/okhttp/Route;)V

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->acquire(Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 180
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v2

    .line 181
    :try_start_50
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v0, v3, v1}, Lcom/android/okhttp/internal/Internal;->put(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 182
    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 183
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    if-nez v0, :cond_7a

    .line 184
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_77

    .line 186
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    move-result-object v5

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/okhttp/internal/io/RealConnection;->connect(IIILjava/util/List;Z)V

    .line 188
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/RouteDatabase;->connected(Lcom/android/okhttp/Route;)V

    return-object v1

    :catchall_77
    move-exception v0

    move-object p0, v0

    goto :goto_82

    .line 183
    :cond_7a
    :try_start_7a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :goto_82
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_77

    throw p0

    .line 156
    :cond_84
    :try_start_84
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_8c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "stream != null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_94
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "released"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :goto_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_84 .. :try_end_9d} :catchall_19

    throw p0
.end method

.method private greylist-max-o findHealthyConnection(IIIZZ)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 128
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/http/StreamAllocation;->findConnection(IIIZ)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v1

    .line 133
    :try_start_7
    iget v2, v0, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    if-nez v2, :cond_f

    .line 134
    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception p0

    goto :goto_1b

    .line 136
    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_d

    .line 139
    invoke-virtual {v0, p5}, Lcom/android/okhttp/internal/io/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-eqz v1, :cond_17

    return-object v0

    .line 143
    :cond_17
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    goto :goto_0

    .line 136
    :goto_1b
    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_d

    throw p0
.end method

.method private greylist-max-o isRecoverable(Lcom/android/okhttp/internal/http/RouteException;)Z
    .registers 3

    .line 376
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object p0

    .line 379
    instance-of p1, p0, Ljava/net/ProtocolException;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    return v0

    .line 385
    :cond_a
    instance-of p1, p0, Ljava/io/InterruptedIOException;

    if-eqz p1, :cond_11

    .line 386
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    return p0

    .line 391
    :cond_11
    instance-of p1, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p1, :cond_1e

    .line 394
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/security/cert/CertificateException;

    if-eqz p1, :cond_1e

    return v0

    .line 398
    :cond_1e
    instance-of p0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_23

    return v0

    :cond_23
    const/4 p0, 0x1

    return p0
.end method

.method private greylist-max-o isRecoverable(Ljava/io/IOException;)Z
    .registers 3

    .line 359
    instance-of p0, p1, Ljava/net/ProtocolException;

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    return v0

    .line 364
    :cond_6
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-eqz p0, :cond_b

    return v0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private greylist-max-o release(Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 5

    .line 308
    iget-object v0, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 309
    iget-object v2, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 310
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1d

    .line 311
    iget-object p0, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 315
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private greylist-max-o routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;
    .registers 2

    .line 209
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v0, p0}, Lcom/android/okhttp/internal/Internal;->routeDatabase(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/internal/RouteDatabase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist-max-o acquire(Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 3

    .line 303
    iget-object p1, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public greylist-max-o cancel()V
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    .line 266
    :try_start_4
    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    .line 267
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 268
    iget-object p0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 269
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_17

    if-eqz v1, :cond_11

    .line 271
    invoke-interface {v1}, Lcom/android/okhttp/internal/http/HttpStream;->cancel()V

    return-void

    :cond_11
    if-eqz p0, :cond_16

    .line 273
    invoke-virtual {p0}, Lcom/android/okhttp/internal/io/RealConnection;->cancel()V

    :cond_16
    return-void

    :catchall_17
    move-exception p0

    .line 269
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public declared-synchronized greylist-max-o connection()Lcom/android/okhttp/internal/io/RealConnection;
    .registers 2

    monitor-enter p0

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public greylist-max-o connectionFailed()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    invoke-direct {p0, v0, v1, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    return-void
.end method

.method public greylist-max-o newStream(IIIZZ)Lcom/android/okhttp/internal/http/HttpStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/okhttp/internal/http/StreamAllocation;->findHealthyConnection(IIIZZ)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object p1

    .line 101
    iget-object p4, p1, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    if-eqz p4, :cond_10

    .line 102
    new-instance p2, Lcom/android/okhttp/internal/http/Http2xStream;

    iget-object p3, p1, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-direct {p2, p0, p3}, Lcom/android/okhttp/internal/http/Http2xStream;-><init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/framed/FramedConnection;)V

    goto :goto_36

    .line 104
    :cond_10
    invoke-virtual {p1}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 105
    iget-object p4, p1, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p4}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p4

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v0, v1, p2}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 106
    iget-object p4, p1, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p4}, Lcom/android/okhttp/okio/Sink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p4

    int-to-long v0, p3

    invoke-virtual {p4, v0, v1, p2}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 107
    new-instance p2, Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object p3, p1, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object p4, p1, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/okhttp/internal/http/Http1xStream;-><init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)V

    .line 110
    :goto_36
    iget-object p3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter p3
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_39} :catch_47

    .line 111
    :try_start_39
    iget p4, p1, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p1, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    .line 112
    iput-object p2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 113
    monitor-exit p3

    return-object p2

    :catchall_43
    move-exception v0

    move-object p0, v0

    .line 114
    monitor-exit p3
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_43

    :try_start_46
    throw p0
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_47} :catch_47

    :catch_47
    move-exception v0

    move-object p0, v0

    .line 116
    new-instance p1, Lcom/android/okhttp/internal/http/RouteException;

    invoke-direct {p1, p0}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public greylist-max-o noNewStreams()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, v0, v1, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    return-void
.end method

.method public greylist-max-o recover(Lcom/android/okhttp/internal/http/RouteException;)Z
    .registers 4

    .line 320
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 323
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    if-eqz v0, :cond_11

    .line 324
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed(Ljava/io/IOException;)V

    .line 327
    :cond_11
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 328
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->isRecoverable(Lcom/android/okhttp/internal/http/RouteException;)Z

    move-result p0

    if-nez p0, :cond_22

    :cond_21
    return v1

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public greylist-max-o recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Z
    .registers 6

    .line 336
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 337
    iget v0, v0, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    .line 338
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed(Ljava/io/IOException;)V

    if-ne v0, v2, :cond_e

    return v1

    :cond_e
    if-eqz p2, :cond_17

    .line 347
    instance-of p2, p2, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz p2, :cond_15

    goto :goto_17

    :cond_15
    move p2, v1

    goto :goto_18

    :cond_17
    :goto_17
    move p2, v2

    .line 348
    :goto_18
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 349
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->isRecoverable(Ljava/io/IOException;)Z

    move-result p0

    if-eqz p0, :cond_2c

    if-nez p2, :cond_2b

    goto :goto_2c

    :cond_2b
    return v2

    :cond_2c
    :goto_2c
    return v1
.end method

.method public greylist-max-o release()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 217
    invoke-direct {p0, v0, v1, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    return-void
.end method

.method public greylist-max-o stream()Lcom/android/okhttp/internal/http/HttpStream;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object p0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 205
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public greylist-max-o streamFinished(Lcom/android/okhttp/internal/http/HttpStream;)V
    .registers 6

    .line 194
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    if-eqz p1, :cond_12

    .line 195
    :try_start_5
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    if-ne p1, v1, :cond_12

    .line 198
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, v0, v0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    return-void

    :catchall_10
    move-exception p0

    goto :goto_33

    .line 196
    :cond_12
    :try_start_12
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " but was "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_10

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 410
    iget-object p0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
