.class public Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

.field protected final connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method static synthetic -get0(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;)Lorg/apache/commons/logging/Log;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@d
    .line 98
    if-nez p1, :cond_0

    #@f
    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 101
    :cond_0
    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@1a
    .line 102
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    #@20
    .line 103
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@26
    .line 96
    return-void
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@2
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->closeExpiredConnections()V

    #@5
    .line 305
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@7
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->deleteClosedConnections()V

    #@a
    .line 303
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "idleTimeout"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    #@5
    .line 300
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@7
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->deleteClosedConnections()V

    #@a
    .line 297
    return-void
.end method

.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 1
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@0
    .prologue
    .line 146
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;

    #@2
    invoke-direct {v0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    #@5
    return-object v0
.end method

.method protected createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    .locals 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 122
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    #@2
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    #@4
    invoke-direct {v0, v2, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V

    #@7
    .line 123
    .local v0, "acp":Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    const/4 v1, 0x1

    #@8
    .line 124
    .local v1, "conngc":Z
    if-eqz v1, :cond_0

    #@a
    .line 125
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->enableConnectionGC()V

    #@d
    .line 127
    :cond_0
    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V

    #@3
    .line 111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 109
    return-void
.end method

.method public getConnectionsInPool()I
    .locals 2

    #@0
    .prologue
    .line 290
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@2
    monitor-enter v1

    #@3
    .line 291
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@5
    iget v0, v0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->numConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    return v0

    #@9
    .line 290
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method public getConnectionsInPool(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@2
    check-cast v0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    #@4
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getConnectionsInPool(Lorg/apache/http/conn/routing/HttpRoute;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@2
    return-object v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 10
    .param p1, "conn"    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p2, "validDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 205
    instance-of v1, p1, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    .line 207
    const-string/jumbo v4, "Connection class mismatch, connection not obtained from this manager."

    #@9
    .line 206
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    :cond_0
    move-object v0, p1

    #@e
    .line 210
    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    #@10
    .line 211
    .local v0, "hca":Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@13
    move-result-object v1

    #@14
    if-eqz v1, :cond_1

    #@16
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    #@19
    move-result-object v1

    #@1a
    if-eq v1, p0, :cond_1

    #@1c
    .line 212
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1e
    .line 213
    const-string/jumbo v4, "Connection not obtained from this manager."

    #@21
    .line 212
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 220
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@2b
    .line 221
    .local v2, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@2e
    move-result-object v1

    #@2f
    invoke-interface {v1}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    #@32
    move-result-object v8

    #@33
    .line 222
    .local v8, "socket":Ljava/net/Socket;
    if-eqz v8, :cond_2

    #@35
    .line 223
    invoke-static {v8}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    #@38
    .line 228
    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isOpen()Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_3

    #@3e
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_5

    #@44
    .line 249
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@47
    move-result-object v2

    #@48
    .end local v2    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    check-cast v2, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@4a
    .line 250
    .restart local v2    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    #@4d
    move-result v3

    #@4e
    .line 251
    .local v3, "reusable":Z
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    #@51
    .line 252
    if-eqz v2, :cond_4

    #@53
    .line 253
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@55
    move-wide v4, p2

    #@56
    move-object v6, p4

    #@57
    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    #@5a
    .line 203
    .end local v8    # "socket":Ljava/net/Socket;
    :cond_4
    :goto_1
    return-void

    #@5b
    .line 229
    .end local v3    # "reusable":Z
    .restart local v8    # "socket":Ljava/net/Socket;
    :cond_5
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@5d
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_6

    #@63
    .line 230
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@65
    .line 231
    const-string/jumbo v4, "Released connection open but not marked reusable."

    #@68
    .line 230
    invoke-interface {v1, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@6b
    .line 241
    :cond_6
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6e
    goto :goto_0

    #@6f
    .line 243
    .end local v2    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v8    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v7

    #@70
    .line 245
    .local v7, "iox":Ljava/io/IOException;
    :try_start_2
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@72
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@75
    move-result v1

    #@76
    if-eqz v1, :cond_7

    #@78
    .line 246
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@7a
    const-string/jumbo v4, "Exception shutting down released connection."

    #@7d
    invoke-interface {v1, v4, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@80
    .line 249
    :cond_7
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@83
    move-result-object v2

    #@84
    check-cast v2, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@86
    .line 250
    .restart local v2    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    #@89
    move-result v3

    #@8a
    .line 251
    .restart local v3    # "reusable":Z
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    #@8d
    .line 252
    if-eqz v2, :cond_4

    #@8f
    .line 253
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@91
    move-wide v4, p2

    #@92
    move-object v6, p4

    #@93
    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    #@96
    goto :goto_1

    #@97
    .line 248
    .end local v2    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v3    # "reusable":Z
    .end local v7    # "iox":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@98
    move-object v9, v1

    #@99
    .line 249
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@9c
    move-result-object v2

    #@9d
    check-cast v2, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@9f
    .line 250
    .restart local v2    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    #@a2
    move-result v3

    #@a3
    .line 251
    .restart local v3    # "reusable":Z
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    #@a6
    .line 252
    if-eqz v2, :cond_8

    #@a8
    .line 253
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@aa
    move-wide v4, p2

    #@ab
    move-object v6, p4

    #@ac
    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    #@af
    .line 248
    :cond_8
    throw v9
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 160
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@2
    invoke-virtual {v1, p1, p2}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    #@5
    move-result-object v0

    #@6
    .line 163
    .local v0, "poolRequest":Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;

    #@8
    invoke-direct {v1, p0, v0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;-><init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;Lorg/apache/http/conn/routing/HttpRoute;)V

    #@b
    return-object v1
.end method

.method public shutdown()V
    .locals 1

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    #@2
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->shutdown()V

    #@5
    .line 260
    return-void
.end method
