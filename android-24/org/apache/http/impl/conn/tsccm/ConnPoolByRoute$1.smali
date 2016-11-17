.class Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;
.super Ljava/lang/Object;
.source "ConnPoolByRoute.java"

# interfaces
.implements Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

.field final synthetic val$aborter:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

.field final synthetic val$route:Lorg/apache/http/conn/routing/HttpRoute;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
    .param p2, "val$aborter"    # Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    .param p3, "val$route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p4, "val$state"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 228
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    #@2
    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->val$aborter:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    #@4
    iput-object p3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    #@6
    iput-object p4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->val$state:Ljava/lang/Object;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 2

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    #@2
    iget-object v0, v0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@7
    .line 233
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->val$aborter:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    #@9
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 235
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    #@e
    iget-object v0, v0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@13
    .line 230
    return-void

    #@14
    .line 234
    :catchall_0
    move-exception v0

    #@15
    .line 235
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    #@17
    iget-object v1, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    #@19
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@1c
    .line 234
    throw v0
.end method

.method public getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 9
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
    .line 243
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    #@2
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    #@4
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->val$state:Ljava/lang/Object;

    #@6
    iget-object v7, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->val$aborter:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    #@8
    move-wide v4, p1

    #@9
    move-object v6, p3

    #@a
    invoke-virtual/range {v1 .. v7}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getEntryBlocking(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method
