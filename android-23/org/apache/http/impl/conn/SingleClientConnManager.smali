.class public Lorg/apache/http/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;,
        Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field protected alwaysShutDown:Z

.field protected connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

.field protected connectionExpiresTime:J

.field protected volatile isShutDown:Z

.field protected lastReleaseTime:J

.field private final log:Lorg/apache/commons/logging/Log;

.field protected managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field protected uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 79
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@f
    .line 123
    if-nez p2, :cond_0

    #@11
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    .line 125
    const-string/jumbo v1, "Scheme registry must not be null."

    #@16
    .line 124
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 127
    :cond_0
    iput-object p2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@1c
    .line 128
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/conn/SingleClientConnManager;->createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    #@22
    .line 129
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@24
    invoke-direct {v0, p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;)V

    #@27
    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@29
    .line 130
    iput-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@2b
    .line 131
    const-wide/16 v0, -0x1

    #@2d
    iput-wide v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    #@2f
    .line 132
    iput-boolean v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    #@31
    .line 133
    iput-boolean v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    #@33
    .line 121
    return-void
.end method


# virtual methods
.method protected final assertStillUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Manager is shut down."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 176
    :cond_0
    return-void
.end method

.method public closeExpiredConnections()V
    .locals 4

    #@0
    .prologue
    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    #@6
    cmp-long v0, v0, v2

    #@8
    if-ltz v0, :cond_0

    #@a
    .line 342
    const-wide/16 v0, 0x0

    #@c
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@e
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    #@11
    .line 340
    :cond_0
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p1, "idletime"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    #@3
    .line 352
    if-nez p3, :cond_0

    #@5
    .line 353
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v4, "Time unit must not be null."

    #@a
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 356
    :cond_0
    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@10
    if-nez v3, :cond_1

    #@12
    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@14
    iget-object v3, v3, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    #@16
    invoke-interface {v3}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1f
    move-result-wide v4

    #@20
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@23
    move-result-wide v6

    #@24
    sub-long v0, v4, v6

    #@26
    .line 359
    .local v0, "cutoff":J
    iget-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    #@28
    cmp-long v3, v4, v0

    #@2a
    if-gtz v3, :cond_1

    #@2c
    .line 361
    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@2e
    invoke-virtual {v3}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 348
    .end local v0    # "cutoff":J
    :cond_1
    :goto_0
    return-void

    #@32
    .line 362
    .restart local v0    # "cutoff":J
    :catch_0
    move-exception v2

    #@33
    .line 364
    .local v2, "iox":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@35
    const-string/jumbo v4, "Problem closing idle connection."

    #@38
    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@3b
    goto :goto_0
.end method

.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 1
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@0
    .prologue
    .line 166
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;

    #@2
    invoke-direct {v0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    #@5
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
    .line 140
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->shutdown()V

    #@3
    .line 141
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 139
    return-void
.end method

.method public getConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 8
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 214
    if-nez p1, :cond_0

    #@2
    .line 215
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "Route may not be null."

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 217
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    #@e
    .line 219
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@10
    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    .line 220
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@18
    new-instance v6, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v7, "Get connection for route "

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@2f
    .line 223
    :cond_1
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@31
    if-eqz v5, :cond_2

    #@33
    .line 224
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->revokeConnection()V

    #@36
    .line 227
    :cond_2
    const/4 v1, 0x0

    #@37
    .line 228
    .local v1, "recreate":Z
    const/4 v2, 0x0

    #@38
    .line 231
    .local v2, "shutdown":Z
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->closeExpiredConnections()V

    #@3b
    .line 233
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@3d
    iget-object v5, v5, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    #@3f
    invoke-interface {v5}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    #@42
    move-result v5

    #@43
    if-eqz v5, :cond_8

    #@45
    .line 234
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@47
    iget-object v4, v5, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    #@49
    .line 235
    .local v4, "tracker":Lorg/apache/http/conn/routing/RouteTracker;
    if-eqz v4, :cond_6

    #@4b
    .line 236
    invoke-virtual {v4}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5, p1}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v5

    #@53
    if-eqz v5, :cond_7

    #@55
    const/4 v2, 0x0

    #@56
    .line 246
    .end local v4    # "tracker":Lorg/apache/http/conn/routing/RouteTracker;
    :goto_0
    if-eqz v2, :cond_3

    #@58
    .line 247
    const/4 v1, 0x1

    #@59
    .line 249
    :try_start_0
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@5b
    invoke-virtual {v5}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 255
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    #@60
    .line 256
    new-instance v5, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@62
    invoke-direct {v5, p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;)V

    #@65
    iput-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@67
    .line 262
    :cond_4
    :try_start_1
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@69
    iget-object v5, v5, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    #@6b
    invoke-interface {v5}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    #@6e
    move-result-object v3

    #@6f
    .line 263
    .local v3, "socket":Ljava/net/Socket;
    if-eqz v3, :cond_5

    #@71
    .line 264
    invoke-static {v3}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@74
    .line 271
    .end local v3    # "socket":Ljava/net/Socket;
    :cond_5
    :goto_2
    new-instance v5, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@76
    iget-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@78
    invoke-direct {v5, p0, v6, p1}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;Lorg/apache/http/conn/routing/HttpRoute;)V

    #@7b
    iput-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@7d
    .line 273
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@7f
    return-object v5

    #@80
    .line 235
    .restart local v4    # "tracker":Lorg/apache/http/conn/routing/RouteTracker;
    :cond_6
    const/4 v2, 0x1

    #@81
    goto :goto_0

    #@82
    .line 236
    :cond_7
    const/4 v2, 0x1

    #@83
    goto :goto_0

    #@84
    .line 243
    .end local v4    # "tracker":Lorg/apache/http/conn/routing/RouteTracker;
    :cond_8
    const/4 v1, 0x1

    #@85
    goto :goto_0

    #@86
    .line 250
    :catch_0
    move-exception v0

    #@87
    .line 251
    .local v0, "iox":Ljava/io/IOException;
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@89
    const-string/jumbo v6, "Problem shutting down connection."

    #@8c
    invoke-interface {v5, v6, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8f
    goto :goto_1

    #@90
    .line 266
    .end local v0    # "iox":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@91
    .line 267
    .restart local v0    # "iox":Ljava/io/IOException;
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@93
    const-string/jumbo v6, "Problem tagging socket."

    #@96
    invoke-interface {v5, v6, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@99
    goto :goto_2
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

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
    .line 279
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    #@3
    .line 281
    instance-of v4, p1, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@5
    if-nez v4, :cond_0

    #@7
    .line 282
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@9
    .line 283
    const-string/jumbo v5, "Connection class mismatch, connection not obtained from this manager."

    #@c
    .line 282
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v4

    #@10
    .line 287
    :cond_0
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@12
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 288
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@1a
    new-instance v5, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v6, "Releasing connection "

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@31
    :cond_1
    move-object v2, p1

    #@32
    .line 291
    check-cast v2, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@34
    .line 292
    .local v2, "sca":Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    iget-object v4, v2, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@36
    if-nez v4, :cond_2

    #@38
    .line 293
    return-void

    #@39
    .line 294
    :cond_2
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    #@3c
    move-result-object v1

    #@3d
    .line 295
    .local v1, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    if-eqz v1, :cond_3

    #@3f
    if-eq v1, p0, :cond_3

    #@41
    .line 296
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@43
    .line 297
    const-string/jumbo v5, "Connection not obtained from this manager."

    #@46
    .line 296
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v4

    #@4a
    .line 304
    :cond_3
    :try_start_0
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@4c
    iget-object v4, v4, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    #@4e
    invoke-interface {v4}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    #@51
    move-result-object v3

    #@52
    .line 305
    .local v3, "socket":Ljava/net/Socket;
    if-eqz v3, :cond_4

    #@54
    .line 306
    invoke-static {v3}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    #@57
    .line 311
    :cond_4
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->isOpen()Z

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_5

    #@5d
    iget-boolean v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    #@5f
    if-nez v4, :cond_6

    #@61
    .line 312
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->isMarkedReusable()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    move-result v4

    #@65
    if-eqz v4, :cond_6

    #@67
    .line 330
    :cond_5
    :goto_0
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    #@6a
    .line 331
    const/4 v4, 0x0

    #@6b
    iput-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@6d
    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@70
    move-result-wide v4

    #@71
    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    #@73
    .line 333
    const-wide/16 v4, 0x0

    #@75
    cmp-long v4, p2, v4

    #@77
    if-lez v4, :cond_9

    #@79
    .line 334
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@7c
    move-result-wide v4

    #@7d
    iget-wide v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    #@7f
    .end local v3    # "socket":Ljava/net/Socket;
    :goto_1
    add-long/2addr v4, v6

    #@80
    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    #@82
    .line 278
    :goto_2
    return-void

    #@83
    .line 314
    .restart local v3    # "socket":Ljava/net/Socket;
    :cond_6
    :try_start_1
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@85
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@88
    move-result v4

    #@89
    if-eqz v4, :cond_7

    #@8b
    .line 315
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@8d
    .line 316
    const-string/jumbo v5, "Released connection open but not reusable."

    #@90
    .line 315
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@93
    .line 322
    :cond_7
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@96
    goto :goto_0

    #@97
    .line 324
    .end local v3    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    #@98
    .line 326
    .local v0, "iox":Ljava/io/IOException;
    :try_start_2
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@9a
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@9d
    move-result v4

    #@9e
    if-eqz v4, :cond_8

    #@a0
    .line 327
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@a2
    const-string/jumbo v5, "Exception shutting down released connection."

    #@a5
    invoke-interface {v4, v5, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a8
    .line 330
    :cond_8
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    #@ab
    .line 331
    const/4 v4, 0x0

    #@ac
    iput-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@ae
    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b1
    move-result-wide v4

    #@b2
    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    #@b4
    .line 333
    const-wide/16 v4, 0x0

    #@b6
    cmp-long v4, p2, v4

    #@b8
    if-lez v4, :cond_9

    #@ba
    .line 334
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@bd
    move-result-wide v4

    #@be
    iget-wide v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    #@c0
    goto :goto_1

    #@c1
    .line 336
    .end local v0    # "iox":Ljava/io/IOException;
    :cond_9
    const-wide v4, 0x7fffffffffffffffL

    #@c6
    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    #@c8
    goto :goto_2

    #@c9
    .line 329
    :catchall_0
    move-exception v4

    #@ca
    .line 330
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    #@cd
    .line 331
    const/4 v5, 0x0

    #@ce
    iput-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@d0
    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d3
    move-result-wide v6

    #@d4
    iput-wide v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    #@d6
    .line 333
    const-wide/16 v6, 0x0

    #@d8
    cmp-long v5, p2, v6

    #@da
    if-lez v5, :cond_a

    #@dc
    .line 334
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@df
    move-result-wide v6

    #@e0
    iget-wide v8, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    #@e2
    add-long/2addr v6, v8

    #@e3
    iput-wide v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    #@e5
    .line 329
    :goto_3
    throw v4

    #@e6
    .line 336
    :cond_a
    const-wide v6, 0x7fffffffffffffffL

    #@eb
    iput-wide v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    #@ed
    goto :goto_3
.end method

.method public final requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 187
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/http/impl/conn/SingleClientConnManager$1;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method protected revokeConnection()V
    .locals 3

    #@0
    .prologue
    .line 396
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 397
    return-void

    #@5
    .line 399
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@7
    const-string/jumbo v2, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    #@a
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    #@d
    .line 401
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@f
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    #@12
    .line 404
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@14
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 395
    :goto_0
    return-void

    #@18
    .line 405
    :catch_0
    move-exception v0

    #@19
    .line 407
    .local v0, "iox":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@1b
    const-string/jumbo v2, "Problem while shutting down connection."

    #@1e
    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@21
    goto :goto_0
.end method

.method public shutdown()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 374
    const/4 v1, 0x1

    #@2
    iput-boolean v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    #@4
    .line 376
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 377
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    #@a
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    #@d
    .line 380
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 381
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@13
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 386
    :cond_1
    :goto_0
    iput-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@18
    .line 372
    return-void

    #@19
    .line 382
    :catch_0
    move-exception v0

    #@1a
    .line 384
    .local v0, "iox":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    #@1c
    const-string/jumbo v2, "Problem while shutting down manager."

    #@1f
    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    goto :goto_0

    #@23
    .line 385
    .end local v0    # "iox":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@24
    .line 386
    iput-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    #@26
    .line 385
    throw v1
.end method
