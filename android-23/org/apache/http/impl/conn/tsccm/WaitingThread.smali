.class public Lorg/apache/http/impl/conn/tsccm/WaitingThread;
.super Ljava/lang/Object;
.source "WaitingThread.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private aborted:Z

.field private final cond:Ljava/util/concurrent/locks/Condition;

.field private final pool:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

.field private waiter:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    .locals 2
    .param p1, "cond"    # Ljava/util/concurrent/locks/Condition;
    .param p2, "pool"    # Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    if-nez p1, :cond_0

    #@5
    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Condition must not be null."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 84
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;

    #@10
    .line 85
    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->pool:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@12
    .line 78
    return-void
.end method


# virtual methods
.method public await(Ljava/util/Date;)Z
    .locals 4
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 147
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 148
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "A thread is already waiting on this object.\ncaller: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    .line 150
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@16
    move-result-object v3

    #@17
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 151
    const-string/jumbo v3, "\nwaiter: "

    #@1e
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 151
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    #@24
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 148
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 154
    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->aborted:Z

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 155
    new-instance v1, Ljava/lang/InterruptedException;

    #@36
    const-string/jumbo v2, "Operation interrupted"

    #@39
    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v1

    #@3d
    .line 157
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@40
    move-result-object v1

    #@41
    iput-object v1, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    #@43
    .line 159
    const/4 v0, 0x0

    #@44
    .line 161
    .local v0, "success":Z
    if-eqz p1, :cond_2

    #@46
    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;

    #@48
    invoke-interface {v1, p1}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    #@4b
    move-result v0

    #@4c
    .line 167
    .end local v0    # "success":Z
    :goto_0
    iget-boolean v1, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->aborted:Z

    #@4e
    if-eqz v1, :cond_3

    #@50
    .line 168
    new-instance v1, Ljava/lang/InterruptedException;

    #@52
    const-string/jumbo v2, "Operation interrupted"

    #@55
    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    .line 169
    :catchall_0
    move-exception v1

    #@5a
    .line 170
    iput-object v3, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    #@5c
    .line 169
    throw v1

    #@5d
    .line 164
    .restart local v0    # "success":Z
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;

    #@5f
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    .line 165
    const/4 v0, 0x1

    #@63
    goto :goto_0

    #@64
    .line 170
    .end local v0    # "success":Z
    :cond_3
    iput-object v3, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    #@66
    .line 172
    return v0
.end method

.method public final getCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;

    #@2
    return-object v0
.end method

.method public final getPool()Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->pool:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    #@2
    return-object v0
.end method

.method public final getThread()Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    #@2
    return-object v0
.end method

.method public interrupt()V
    .locals 1

    #@0
    .prologue
    .line 197
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->aborted:Z

    #@3
    .line 198
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;

    #@5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    #@8
    .line 196
    return-void
.end method

.method public wakeup()V
    .locals 2

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 188
    const-string/jumbo v1, "Nobody waiting on this object."

    #@9
    .line 187
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 193
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;

    #@f
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    #@12
    .line 182
    return-void
.end method
