.class Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

.field final synthetic val$poolRequest:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

.field final synthetic val$route:Lorg/apache/http/conn/routing/HttpRoute;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .param p2, "val$poolRequest"    # Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
    .param p3, "val$route"    # Lorg/apache/http/conn/routing/HttpRoute;

    #@0
    .prologue
    .line 163
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    #@2
    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$poolRequest:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    #@4
    iput-object p3, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$poolRequest:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    #@2
    invoke-interface {v0}, Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;->abortRequest()V

    #@5
    .line 165
    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 173
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v4, "Route may not be null."

    #@9
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 176
    :cond_0
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    #@f
    invoke-static {v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->-get0(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;)Lorg/apache/commons/logging/Log;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 177
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    #@1b
    invoke-static {v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->-get0(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;)Lorg/apache/commons/logging/Log;

    #@1e
    move-result-object v3

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "ThreadSafeClientConnManager.getConnection: "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    .line 178
    iget-object v5, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    #@2d
    .line 177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    .line 178
    const-string/jumbo v5, ", timeout = "

    #@34
    .line 177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@43
    .line 181
    :cond_1
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$poolRequest:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    #@45
    invoke-interface {v3, p1, p2, p3}, Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@48
    move-result-object v0

    #@49
    .line 186
    .local v0, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@4c
    move-result-object v3

    #@4d
    invoke-interface {v3}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    #@50
    move-result-object v2

    #@51
    .line 187
    .local v2, "socket":Ljava/net/Socket;
    if-eqz v2, :cond_2

    #@53
    .line 188
    invoke-static {v2}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    .line 194
    .end local v2    # "socket":Ljava/net/Socket;
    :cond_2
    :goto_0
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    #@58
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    #@5a
    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;-><init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V

    #@5d
    return-object v3

    #@5e
    .line 190
    :catch_0
    move-exception v1

    #@5f
    .line 191
    .local v1, "iox":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    #@61
    invoke-static {v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->-get0(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;)Lorg/apache/commons/logging/Log;

    #@64
    move-result-object v3

    #@65
    const-string/jumbo v4, "Problem tagging socket."

    #@68
    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6b
    goto :goto_0
.end method
