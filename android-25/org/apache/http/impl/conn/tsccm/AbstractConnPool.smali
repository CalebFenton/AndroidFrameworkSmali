.class public abstract Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"

# interfaces
.implements Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

.field protected volatile isShutDown:Z

.field protected issuedConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field protected numConnections:I

.field protected final poolLock:Ljava/util/concurrent/locks/Lock;

.field protected refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;


# direct methods
.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    #@d
    .line 106
    new-instance v1, Ljava/util/HashSet;

    #@f
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@12
    iput-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->issuedConnections:Ljava/util/Set;

    #@14
    .line 107
    new-instance v1, Lorg/apache/http/impl/conn/IdleConnectionHandler;

    #@16
    invoke-direct {v1}, Lorg/apache/http/impl/conn/IdleConnectionHandler;-><init>()V

    #@19
    iput-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    #@1b
    .line 109
    const/4 v0, 0x0

    #@1c
    .line 110
    .local v0, "fair":Z
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    #@1e
    invoke-direct {v1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    #@21
    iput-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@23
    .line 105
    return-void
.end method


# virtual methods
.method protected closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V
    .locals 3
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;

    #@0
    .prologue
    .line 323
    if-eqz p1, :cond_0

    #@2
    .line 325
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 322
    :cond_0
    :goto_0
    return-void

    #@6
    .line 326
    :catch_0
    move-exception v0

    #@7
    .line 327
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    #@9
    const-string/jumbo v2, "I/O error closing connection"

    #@c
    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@f
    goto :goto_0
.end method

.method public closeExpiredConnections()V
    .locals 2

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 262
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    #@7
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->closeExpiredConnections()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 264
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@c
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@f
    .line 259
    return-void

    #@10
    .line 263
    :catchall_0
    move-exception v0

    #@11
    .line 264
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@13
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@16
    .line 263
    throw v0
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "idletime"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 247
    if-nez p3, :cond_0

    #@2
    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Time unit must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 251
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@d
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@10
    .line 253
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    #@12
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@15
    move-result-wide v2

    #@16
    invoke-virtual {v0, v2, v3}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->closeIdleConnections(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 255
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@1b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@1e
    .line 244
    return-void

    #@1f
    .line 254
    :catchall_0
    move-exception v0

    #@20
    .line 255
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@22
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@25
    .line 254
    throw v0
.end method

.method public abstract deleteClosedConnections()V
.end method

.method public enableConnectionGC()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 129
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Connection GC already enabled."

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 131
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@f
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@12
    .line 133
    :try_start_0
    iget v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->numConnections:I

    #@14
    if-lez v1, :cond_1

    #@16
    .line 134
    new-instance v1, Ljava/lang/IllegalStateException;

    #@18
    const-string/jumbo v2, "Pool already in use."

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 136
    :catchall_0
    move-exception v1

    #@20
    .line 137
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@22
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@25
    .line 136
    throw v1

    #@26
    .line 137
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@28
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2b
    .line 140
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    #@2d
    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@30
    iput-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    #@32
    .line 141
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    #@34
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    #@36
    invoke-direct {v1, v2, p0}, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;-><init>(Ljava/lang/ref/ReferenceQueue;Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;)V

    #@39
    iput-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    #@3b
    .line 142
    new-instance v0, Ljava/lang/Thread;

    #@3d
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@42
    .line 143
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@46
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v2, "RefQueueWorker@"

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@5d
    .line 145
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@60
    .line 126
    return-void
.end method

.method public abstract freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
.end method

.method public final getEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "timeout"    # J
    .param p5, "tunit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p3, p4, p5}, Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected abstract handleLostEntry(Lorg/apache/http/conn/routing/HttpRoute;)V
.end method

.method public handleReference(Ljava/lang/ref/Reference;)V
    .locals 5
    .param p1, "ref"    # Ljava/lang/ref/Reference;

    #@0
    .prologue
    .line 202
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 205
    :try_start_0
    instance-of v2, p1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 209
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->issuedConnections:Ljava/util/Set;

    #@b
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    .line 210
    .local v0, "lost":Z
    if-eqz v0, :cond_1

    #@11
    .line 212
    check-cast p1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    #@13
    .end local p1    # "ref":Ljava/lang/ref/Reference;
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@16
    move-result-object v1

    #@17
    .line 213
    .local v1, "route":Lorg/apache/http/conn/routing/HttpRoute;
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    #@19
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 214
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "Connection garbage collected. "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@38
    .line 216
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->handleLostEntry(Lorg/apache/http/conn/routing/HttpRoute;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    .line 221
    .end local v0    # "lost":Z
    .end local v1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@3d
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@40
    .line 200
    return-void

    #@41
    .line 220
    :catchall_0
    move-exception v2

    #@42
    .line 221
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@44
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@47
    .line 220
    throw v2
.end method

.method public abstract requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
.end method

.method public shutdown()V
    .locals 5

    #@0
    .prologue
    .line 284
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 287
    :try_start_0
    iget-boolean v3, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->isShutDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 312
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@b
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@e
    .line 288
    return-void

    #@f
    .line 291
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 292
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    #@15
    invoke-virtual {v3}, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->shutdown()V

    #@18
    .line 295
    :cond_1
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->issuedConnections:Ljava/util/Set;

    #@1a
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .line 296
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_3

    #@24
    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    #@2a
    .line 298
    .local v2, "per":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@2d
    .line 299
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->get()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@33
    .line 300
    .local v0, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    if-eqz v0, :cond_2

    #@35
    .line 301
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 311
    .end local v0    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;>;"
    .end local v2    # "per":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;
    :catchall_0
    move-exception v3

    #@3e
    .line 312
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@40
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@43
    .line 311
    throw v3

    #@44
    .line 307
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;>;"
    :cond_3
    :try_start_2
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    #@46
    invoke-virtual {v3}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->removeAll()V

    #@49
    .line 309
    const/4 v3, 0x1

    #@4a
    iput-boolean v3, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->isShutDown:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    .line 312
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@4e
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@51
    .line 282
    return-void
.end method
