.class public Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
.super Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
.source "ConnPoolByRoute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

.field protected freeConnections:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field protected final maxTotalConnections:I

.field protected final operator:Lorg/apache/http/conn/ClientConnectionOperator;

.field protected final routeToPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation
.end field

.field protected waitingThreads:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "operator"    # Lorg/apache/http/conn/ClientConnectionOperator;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;-><init>()V

    #@3
    .line 76
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@d
    .line 103
    if-nez p1, :cond_0

    #@f
    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Connection operator may not be null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 106
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    #@1a
    .line 108
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createFreeConnQueue()Ljava/util/Queue;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    #@20
    .line 109
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createWaitingThreadQueue()Ljava/util/Queue;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    #@26
    .line 110
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createRouteToPoolMap()Ljava/util/Map;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    #@2c
    .line 111
    invoke-static {p2}, Lorg/apache/http/conn/params/ConnManagerParams;->getMaxTotalConnections(Lorg/apache/http/params/HttpParams;)I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    #@32
    .line 113
    invoke-static {p2}, Lorg/apache/http/conn/params/ConnManagerParams;->getMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/params/ConnPerRoute;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    #@38
    .line 101
    return-void
.end method


# virtual methods
.method protected createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 4
    .param p1, "rospl"    # Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .param p2, "op"    # Lorg/apache/http/conn/ClientConnectionOperator;

    #@0
    .prologue
    .line 488
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@2
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 489
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Creating new connection ["

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, "]"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@2c
    .line 494
    :cond_0
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@2e
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@31
    move-result-object v1

    #@32
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->refQueue:Ljava/lang/ref/ReferenceQueue;

    #@34
    invoke-direct {v0, p2, v1, v2}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/ref/ReferenceQueue;)V

    #@37
    .line 496
    .local v0, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@39
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@3c
    .line 499
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->createdEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    #@3f
    .line 500
    iget v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    #@41
    add-int/lit8 v1, v1, 0x1

    #@43
    iput v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    #@45
    .line 502
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->issuedConnections:Ljava/util/Set;

    #@47
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getWeakRef()Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    #@4a
    move-result-object v2

    #@4b
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .line 505
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@50
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@53
    .line 508
    return-object v0

    #@54
    .line 504
    :catchall_0
    move-exception v1

    #@55
    .line 505
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@57
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@5a
    .line 504
    throw v1
.end method

.method protected createFreeConnQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 125
    new-instance v0, Ljava/util/LinkedList;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@5
    return-object v0
.end method

.method protected createRouteToPoolMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 145
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    return-object v0
.end method

.method protected createWaitingThreadQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 135
    new-instance v0, Ljava/util/LinkedList;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@5
    return-object v0
.end method

.method public deleteClosedConnections()V
    .locals 4

    #@0
    .prologue
    .line 650
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 653
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    #@7
    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 654
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 655
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@17
    .line 656
    .local v0, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v2}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_0

    #@21
    .line 657
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@24
    .line 658
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 662
    .end local v0    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :catchall_0
    move-exception v2

    #@29
    .line 663
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@2b
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2e
    .line 662
    throw v2

    #@2f
    .line 663
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@31
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@34
    .line 648
    return-void
.end method

.method protected deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 5
    .param p1, "entry"    # Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@0
    .prologue
    .line 525
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@3
    move-result-object v1

    #@4
    .line 527
    .local v1, "route":Lorg/apache/http/conn/routing/HttpRoute;
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@6
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 528
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Deleting connection ["

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    .line 529
    const-string/jumbo v4, "]["

    #@21
    .line 528
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 529
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    .line 528
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 529
    const-string/jumbo v4, "]"

    #@30
    .line 528
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@3b
    .line 532
    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@3d
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@40
    .line 535
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@47
    .line 537
    const/4 v2, 0x1

    #@48
    invoke-virtual {p0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@4b
    move-result-object v0

    #@4c
    .line 538
    .local v0, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)Z

    #@4f
    .line 539
    iget v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    #@51
    add-int/lit8 v2, v2, -0x1

    #@53
    iput v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    #@55
    .line 540
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->isUnused()Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_1

    #@5b
    .line 541
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    #@5d
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 544
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    #@62
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->remove(Lorg/apache/http/HttpConnection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@69
    .line 547
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@6b
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@6e
    .line 523
    return-void

    #@6f
    .line 546
    .end local v0    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    :catchall_0
    move-exception v2

    #@70
    .line 547
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@72
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@75
    .line 546
    throw v2
.end method

.method protected deleteLeastUsedEntry()V
    .locals 3

    #@0
    .prologue
    .line 559
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 563
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    #@7
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@d
    .line 565
    .local v0, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    if-eqz v0, :cond_1

    #@f
    .line 566
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 572
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@14
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@17
    .line 556
    return-void

    #@18
    .line 567
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@1a
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 568
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@22
    const-string/jumbo v2, "No free connection to delete."

    #@25
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 571
    .end local v0    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :catchall_0
    move-exception v1

    #@2a
    .line 572
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@2c
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2f
    .line 571
    throw v1
.end method

.method public freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "entry"    # Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .param p2, "reusable"    # Z
    .param p3, "validDuration"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 377
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@3
    move-result-object v1

    #@4
    .line 378
    .local v1, "route":Lorg/apache/http/conn/routing/HttpRoute;
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@6
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 379
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Freeing connection ["

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    .line 380
    const-string/jumbo v4, "]["

    #@21
    .line 379
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 380
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    .line 379
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 380
    const-string/jumbo v4, "]"

    #@30
    .line 379
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@3b
    .line 383
    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@3d
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@40
    .line 385
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->isShutDown:Z

    #@42
    if-eqz v2, :cond_1

    #@44
    .line 388
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 409
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@4d
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@50
    .line 389
    return-void

    #@51
    .line 393
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->issuedConnections:Ljava/util/Set;

    #@53
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getWeakRef()Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    #@56
    move-result-object v3

    #@57
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5a
    .line 395
    const/4 v2, 0x1

    #@5b
    invoke-virtual {p0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@5e
    move-result-object v0

    #@5f
    .line 397
    .local v0, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    if-eqz p2, :cond_2

    #@61
    .line 398
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    #@64
    .line 399
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    #@66
    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@69
    .line 400
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    #@6b
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v2, v3, p3, p4, p5}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->add(Lorg/apache/http/HttpConnection;JLjava/util/concurrent/TimeUnit;)V

    #@72
    .line 406
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->notifyWaitingThread(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    .line 409
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@77
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@7a
    .line 375
    return-void

    #@7b
    .line 402
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    #@7e
    .line 403
    iget v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    #@80
    add-int/lit8 v2, v2, -0x1

    #@82
    iput v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@84
    goto :goto_0

    #@85
    .line 408
    .end local v0    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    :catchall_0
    move-exception v2

    #@86
    .line 409
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@88
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@8b
    .line 408
    throw v2
.end method

.method public getConnectionsInPool(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 3
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 210
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@3
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@6
    .line 213
    const/4 v2, 0x0

    #@7
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@a
    move-result-object v0

    #@b
    .line 214
    .local v0, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getEntryCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    .line 217
    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@13
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@16
    .line 214
    return v1

    #@17
    .line 216
    .end local v0    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    :catchall_0
    move-exception v1

    #@18
    .line 217
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@1a
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@1d
    .line 216
    throw v1
.end method

.method protected getEntryBlocking(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 15
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "timeout"    # J
    .param p5, "tunit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "aborter"    # Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    const/4 v4, 0x0

    #@1
    .line 274
    .local v4, "deadline":Ljava/util/Date;
    const-wide/16 v10, 0x0

    #@3
    cmp-long v10, p3, v10

    #@5
    if-lez v10, :cond_0

    #@7
    .line 275
    new-instance v4, Ljava/util/Date;

    #@9
    .line 276
    .end local v4    # "deadline":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c
    move-result-wide v10

    #@d
    move-object/from16 v0, p5

    #@f
    move-wide/from16 v1, p3

    #@11
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@14
    move-result-wide v12

    #@15
    add-long/2addr v10, v12

    #@16
    .line 275
    invoke-direct {v4, v10, v11}, Ljava/util/Date;-><init>(J)V

    #@19
    .line 279
    :cond_0
    const/4 v5, 0x0

    #@1a
    .line 280
    .local v5, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@1c
    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@1f
    .line 283
    const/4 v10, 0x1

    #@20
    :try_start_0
    move-object/from16 v0, p1

    #@22
    invoke-virtual {p0, v0, v10}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@25
    move-result-object v7

    #@26
    .line 284
    .local v7, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    const/4 v9, 0x0

    #@27
    .line 286
    .end local v5    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :cond_1
    :goto_0
    if-nez v5, :cond_4

    #@29
    .line 288
    iget-boolean v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->isShutDown:Z

    #@2b
    if-eqz v10, :cond_2

    #@2d
    .line 289
    new-instance v10, Ljava/lang/IllegalStateException;

    #@2f
    .line 290
    const-string/jumbo v11, "Connection pool shut down."

    #@32
    .line 289
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 364
    .end local v7    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    :catchall_0
    move-exception v10

    #@37
    .line 365
    iget-object v11, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@39
    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@3c
    .line 364
    throw v10

    #@3d
    .line 293
    .restart local v7    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    :cond_2
    :try_start_1
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@3f
    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@42
    move-result v10

    #@43
    if-eqz v10, :cond_3

    #@45
    .line 294
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@47
    new-instance v11, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v12, "Total connections kept alive: "

    #@4f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v11

    #@53
    iget-object v12, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    #@55
    invoke-interface {v12}, Ljava/util/Queue;->size()I

    #@58
    move-result v12

    #@59
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v11

    #@5d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v11

    #@61
    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@64
    .line 295
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@66
    new-instance v11, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v12, "Total issued connections: "

    #@6e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v11

    #@72
    iget-object v12, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->issuedConnections:Ljava/util/Set;

    #@74
    invoke-interface {v12}, Ljava/util/Set;->size()I

    #@77
    move-result v12

    #@78
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v11

    #@7c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v11

    #@80
    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@83
    .line 296
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@85
    new-instance v11, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v12, "Total allocated connection: "

    #@8d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v11

    #@91
    iget v12, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    #@93
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v11

    #@97
    const-string/jumbo v12, " out of "

    #@9a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v11

    #@9e
    iget v12, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    #@a0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v11

    #@a4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v11

    #@a8
    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@ab
    .line 305
    :cond_3
    move-object/from16 v0, p2

    #@ad
    invoke-virtual {p0, v7, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getFreeEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b0
    move-result-object v5

    #@b1
    .line 306
    .local v5, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    if-eqz v5, :cond_5

    #@b3
    .line 365
    .end local v5    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :cond_4
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@b5
    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@b8
    .line 368
    return-object v5

    #@b9
    .line 310
    .restart local v5    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :cond_5
    :try_start_2
    invoke-virtual {v7}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    #@bc
    move-result v10

    #@bd
    if-lez v10, :cond_7

    #@bf
    const/4 v6, 0x1

    #@c0
    .line 312
    .local v6, "hasCapacity":Z
    :goto_1
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@c2
    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@c5
    move-result v10

    #@c6
    if-eqz v10, :cond_6

    #@c8
    .line 313
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@ca
    new-instance v11, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v12, "Available capacity: "

    #@d2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v11

    #@d6
    invoke-virtual {v7}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    #@d9
    move-result v12

    #@da
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v11

    #@de
    .line 314
    const-string/jumbo v12, " out of "

    #@e1
    .line 313
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v11

    #@e5
    .line 314
    invoke-virtual {v7}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getMaxEntries()I

    #@e8
    move-result v12

    #@e9
    .line 313
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v11

    #@ed
    .line 315
    const-string/jumbo v12, " ["

    #@f0
    .line 313
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v11

    #@f4
    move-object/from16 v0, p1

    #@f6
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v11

    #@fa
    .line 315
    const-string/jumbo v12, "]["

    #@fd
    .line 313
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v11

    #@101
    move-object/from16 v0, p2

    #@103
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v11

    #@107
    .line 315
    const-string/jumbo v12, "]"

    #@10a
    .line 313
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v11

    #@10e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v11

    #@112
    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@115
    .line 318
    :cond_6
    if-eqz v6, :cond_8

    #@117
    iget v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    #@119
    iget v11, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    #@11b
    if-ge v10, v11, :cond_8

    #@11d
    .line 320
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    #@11f
    invoke-virtual {p0, v7, v10}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@122
    move-result-object v5

    #@123
    goto/16 :goto_0

    #@125
    .line 310
    .end local v6    # "hasCapacity":Z
    :cond_7
    const/4 v6, 0x0

    #@126
    .restart local v6    # "hasCapacity":Z
    goto :goto_1

    #@127
    .line 322
    :cond_8
    if-eqz v6, :cond_9

    #@129
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    #@12b
    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    #@12e
    move-result v10

    #@12f
    if-eqz v10, :cond_c

    #@131
    .line 329
    :cond_9
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@133
    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@136
    move-result v10

    #@137
    if-eqz v10, :cond_a

    #@139
    .line 330
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@13b
    new-instance v11, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v12, "Need to wait for connection ["

    #@143
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v11

    #@147
    move-object/from16 v0, p1

    #@149
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v11

    #@14d
    .line 331
    const-string/jumbo v12, "]["

    #@150
    .line 330
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v11

    #@154
    move-object/from16 v0, p2

    #@156
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v11

    #@15a
    .line 331
    const-string/jumbo v12, "]"

    #@15d
    .line 330
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v11

    #@161
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v11

    #@165
    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@168
    .line 334
    :cond_a
    if-nez v9, :cond_b

    #@16a
    .line 336
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@16c
    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@16f
    move-result-object v10

    #@170
    invoke-virtual {p0, v10, v7}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->newWaitingThread(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    #@173
    move-result-object v9

    #@174
    .line 337
    .local v9, "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    move-object/from16 v0, p6

    #@176
    invoke-virtual {v0, v9}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->setWaitingThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@179
    .line 340
    .end local v9    # "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    :cond_b
    const/4 v8, 0x0

    #@17a
    .line 342
    .local v8, "success":Z
    :try_start_3
    invoke-virtual {v7, v9}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->queueThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    #@17d
    .line 343
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    #@17f
    invoke-interface {v10, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@182
    .line 344
    invoke-virtual {v9, v4}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->await(Ljava/util/Date;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@185
    move-result v8

    #@186
    .line 351
    .local v8, "success":Z
    :try_start_4
    invoke-virtual {v7, v9}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    #@189
    .line 352
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    #@18b
    invoke-interface {v10, v9}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    #@18e
    .line 356
    if-nez v8, :cond_1

    #@190
    if-eqz v4, :cond_1

    #@192
    .line 357
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    #@195
    move-result-wide v10

    #@196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@199
    move-result-wide v12

    #@19a
    cmp-long v10, v10, v12

    #@19c
    if-gtz v10, :cond_1

    #@19e
    .line 358
    new-instance v10, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    #@1a0
    .line 359
    const-string/jumbo v11, "Timeout waiting for connection"

    #@1a3
    .line 358
    invoke-direct {v10, v11}, Lorg/apache/http/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    #@1a6
    throw v10

    #@1a7
    .line 324
    .end local v8    # "success":Z
    :cond_c
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteLeastUsedEntry()V

    #@1aa
    .line 325
    iget-object v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    #@1ac
    invoke-virtual {p0, v7, v10}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@1af
    move-result-object v5

    #@1b0
    goto/16 :goto_0

    #@1b2
    .line 346
    .local v8, "success":Z
    :catchall_1
    move-exception v10

    #@1b3
    .line 351
    invoke-virtual {v7, v9}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    #@1b6
    .line 352
    iget-object v11, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    #@1b8
    invoke-interface {v11, v9}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    #@1bb
    .line 346
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected getFreeEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 6
    .param p1, "rospl"    # Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .param p2, "state"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 426
    const/4 v1, 0x0

    #@1
    .line 427
    .local v1, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@3
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@6
    .line 429
    const/4 v0, 0x0

    #@7
    .line 430
    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    #@9
    .line 432
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->allocEntry(Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@c
    move-result-object v1

    #@d
    .line 434
    .local v1, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    if-eqz v1, :cond_4

    #@f
    .line 435
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@11
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 436
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@19
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "Getting free connection ["

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 437
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@28
    move-result-object v5

    #@29
    .line 436
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 437
    const-string/jumbo v5, "]["

    #@30
    .line 436
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 437
    const-string/jumbo v5, "]"

    #@3b
    .line 436
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@46
    .line 440
    :cond_1
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    #@48
    invoke-interface {v3, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    #@4b
    .line 441
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    #@4d
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->remove(Lorg/apache/http/HttpConnection;)Z

    #@54
    move-result v2

    #@55
    .line 442
    .local v2, "valid":Z
    if-nez v2, :cond_3

    #@57
    .line 445
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@59
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@5c
    move-result v3

    #@5d
    if-eqz v3, :cond_2

    #@5f
    .line 446
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@61
    new-instance v4, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v5, "Closing expired free connection ["

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    .line 447
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@70
    move-result-object v5

    #@71
    .line 446
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    .line 447
    const-string/jumbo v5, "]["

    #@78
    .line 446
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    .line 447
    const-string/jumbo v5, "]"

    #@83
    .line 446
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@8e
    .line 448
    :cond_2
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@95
    .line 452
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    #@98
    .line 453
    iget v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    #@9a
    add-int/lit8 v3, v3, -0x1

    #@9c
    iput v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9e
    goto/16 :goto_0

    #@a0
    .line 467
    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v2    # "valid":Z
    :catchall_0
    move-exception v3

    #@a1
    .line 468
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@a3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@a6
    .line 467
    throw v3

    #@a7
    .line 455
    .restart local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .restart local v2    # "valid":Z
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->issuedConnections:Ljava/util/Set;

    #@a9
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getWeakRef()Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    #@ac
    move-result-object v4

    #@ad
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b0
    .line 456
    const/4 v0, 0x1

    #@b1
    goto/16 :goto_0

    #@b3
    .line 460
    .end local v2    # "valid":Z
    :cond_4
    const/4 v0, 0x1

    #@b4
    .line 461
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@b6
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@b9
    move-result v3

    #@ba
    if-eqz v3, :cond_0

    #@bc
    .line 462
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@be
    new-instance v4, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v5, "No free connections ["

    #@c6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v4

    #@ca
    .line 463
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@cd
    move-result-object v5

    #@ce
    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v4

    #@d2
    .line 463
    const-string/jumbo v5, "]["

    #@d5
    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v4

    #@d9
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v4

    #@dd
    .line 463
    const-string/jumbo v5, "]"

    #@e0
    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v4

    #@e4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v4

    #@e8
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@eb
    goto/16 :goto_0

    #@ed
    .line 468
    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :cond_5
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@ef
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@f2
    .line 471
    return-object v1
.end method

.method protected getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .locals 4
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "create"    # Z

    #@0
    .prologue
    .line 188
    const/4 v1, 0x0

    #@1
    .line 189
    .local v1, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@3
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@6
    .line 192
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    #@8
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    move-object v0, v2

    #@d
    check-cast v0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@f
    move-object v1, v0

    #@10
    .line 193
    .local v1, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    if-nez v1, :cond_0

    #@12
    if-eqz p2, :cond_0

    #@14
    .line 195
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->newRouteSpecificPool(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@17
    move-result-object v1

    #@18
    .line 196
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    #@1a
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 200
    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@1f
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@22
    .line 203
    return-object v1

    #@23
    .line 199
    .end local v1    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    :catchall_0
    move-exception v2

    #@24
    .line 200
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@26
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@29
    .line 199
    throw v2
.end method

.method protected handleLostEntry(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 3
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    #@0
    .prologue
    .line 581
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 584
    const/4 v1, 0x1

    #@6
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@9
    move-result-object v0

    #@a
    .line 585
    .local v0, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    #@d
    .line 586
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->isUnused()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 587
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    #@15
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 590
    :cond_0
    iget v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    #@1a
    add-int/lit8 v1, v1, -0x1

    #@1c
    iput v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    #@1e
    .line 591
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->notifyWaitingThread(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 594
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@23
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@26
    .line 579
    return-void

    #@27
    .line 593
    .end local v0    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    :catchall_0
    move-exception v1

    #@28
    .line 594
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@2a
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2d
    .line 593
    throw v1
.end method

.method protected newRouteSpecificPool(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    #@0
    .prologue
    .line 158
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@2
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    #@4
    invoke-interface {v1, p1}, Lorg/apache/http/conn/params/ConnPerRoute;->getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I

    #@7
    move-result v1

    #@8
    invoke-direct {v0, p1, v1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;-><init>(Lorg/apache/http/conn/routing/HttpRoute;I)V

    #@b
    return-object v0
.end method

.method protected newWaitingThread(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    .locals 1
    .param p1, "cond"    # Ljava/util/concurrent/locks/Condition;
    .param p2, "rospl"    # Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@0
    .prologue
    .line 173
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    #@2
    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;-><init>(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V

    #@5
    return-object v0
.end method

.method protected notifyWaitingThread(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    .locals 5
    .param p1, "rospl"    # Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@0
    .prologue
    .line 614
    const/4 v1, 0x0

    #@1
    .line 616
    .local v1, "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@3
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@6
    .line 619
    if-eqz p1, :cond_3

    #@8
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->hasThread()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_3

    #@e
    .line 620
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@10
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 621
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Notifying thread waiting on pool ["

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    .line 622
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@27
    move-result-object v4

    #@28
    .line 621
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 622
    const-string/jumbo v4, "]"

    #@2f
    .line 621
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@3a
    .line 624
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->nextThread()Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    #@3d
    move-result-object v1

    #@3e
    .line 634
    .end local v1    # "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    #@40
    .line 635
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 639
    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@45
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@48
    .line 607
    return-void

    #@49
    .line 625
    .restart local v1    # "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    #@4b
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    #@4e
    move-result v2

    #@4f
    if-nez v2, :cond_5

    #@51
    .line 626
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@53
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_4

    #@59
    .line 627
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@5b
    const-string/jumbo v3, "Notifying thread waiting on any pool"

    #@5e
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@61
    .line 629
    :cond_4
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    #@63
    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    #@66
    move-result-object v2

    #@67
    move-object v0, v2

    #@68
    check-cast v0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    #@6a
    move-object v1, v0

    #@6b
    .local v1, "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    goto :goto_0

    #@6c
    .line 630
    .local v1, "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    :cond_5
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@6e
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@71
    move-result v2

    #@72
    if-eqz v2, :cond_1

    #@74
    .line 631
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    #@76
    const-string/jumbo v3, "Notifying no-one, there are no waiting threads"

    #@79
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7c
    goto :goto_0

    #@7d
    .line 638
    .end local v1    # "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    :catchall_0
    move-exception v2

    #@7e
    .line 639
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@80
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@83
    .line 638
    throw v2
.end method

.method public requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 226
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;-><init>()V

    #@5
    .line 228
    .local v0, "aborter":Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;

    #@7
    invoke-direct {v1, p0, v0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;-><init>(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    #@a
    return-object v1
.end method

.method public shutdown()V
    .locals 6

    #@0
    .prologue
    .line 672
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 675
    :try_start_0
    invoke-super {p0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->shutdown()V

    #@8
    .line 679
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    #@a
    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .line 680
    .local v1, "ibpe":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 681
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@1a
    .line 682
    .local v0, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@1d
    .line 683
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 696
    .end local v0    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v1    # "ibpe":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :catchall_0
    move-exception v4

    #@26
    .line 697
    iget-object v5, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@28
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2b
    .line 696
    throw v4

    #@2c
    .line 687
    .restart local v1    # "ibpe":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    #@2e
    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v2

    #@32
    .line 688
    .local v2, "iwth":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/WaitingThread;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_1

    #@38
    .line 689
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    #@3e
    .line 690
    .local v3, "waiter":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@41
    .line 691
    invoke-virtual {v3}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->wakeup()V

    #@44
    goto :goto_1

    #@45
    .line 694
    .end local v3    # "waiter":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    #@47
    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 697
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@4c
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@4f
    .line 670
    return-void
.end method
