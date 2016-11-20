.class public Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;
.super Ljava/lang/Object;
.source "RefQueueWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field protected final refHandler:Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;

.field protected final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<*>;"
        }
    .end annotation
.end field

.field protected volatile workerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;)V
    .locals 2
    .param p2, "handler"    # Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<*>;",
            "Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 79
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->log:Lorg/apache/commons/logging/Log;

    #@d
    .line 80
    if-nez p1, :cond_0

    #@f
    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Queue must not be null."

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 83
    :cond_0
    if-nez p2, :cond_1

    #@1a
    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v1, "Handler must not be null."

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 87
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->refQueue:Ljava/lang/ref/ReferenceQueue;

    #@25
    .line 88
    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->refHandler:Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;

    #@27
    .line 79
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 100
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@7
    move-result-object v2

    #@8
    iput-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    #@a
    .line 104
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    #@c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@f
    move-result-object v3

    #@10
    if-ne v2, v3, :cond_1

    #@12
    .line 107
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->refQueue:Ljava/lang/ref/ReferenceQueue;

    #@14
    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    #@17
    move-result-object v1

    #@18
    .line 108
    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->refHandler:Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;

    #@1a
    invoke-interface {v2, v1}, Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;->handleReference(Ljava/lang/ref/Reference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 109
    .end local v1    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :catch_0
    move-exception v0

    #@1f
    .line 112
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->log:Lorg/apache/commons/logging/Log;

    #@21
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 113
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->log:Lorg/apache/commons/logging/Log;

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    const-string/jumbo v4, " interrupted"

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@44
    goto :goto_0

    #@45
    .line 98
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 125
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    #@3
    .line 126
    .local v0, "wt":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    #@5
    .line 127
    iput-object v1, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    #@7
    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@a
    .line 124
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RefQueueWorker::"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
