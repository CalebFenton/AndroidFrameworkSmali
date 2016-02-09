.class final Ljava/util/concurrent/ThreadPoolExecutor$Worker;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Worker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x552f9a9a47f02c71L


# instance fields
.field volatile completedTasks:J

.field firstTask:Ljava/lang/Runnable;

.field final synthetic this$0:Ljava/util/concurrent/ThreadPoolExecutor;

.field final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .param p2, "firstTask"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 580
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    #@5
    .line 581
    const/4 v0, -0x1

    #@6
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setState(I)V

    #@9
    .line 582
    iput-object p2, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    #@b
    .line 583
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    #@15
    .line 580
    return-void
.end method


# virtual methods
.method interruptIfStarted()V
    .locals 3

    #@0
    .prologue
    .line 621
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->getState()I

    #@3
    move-result v2

    #@4
    if-ltz v2, :cond_0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    #@8
    .local v1, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 619
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 623
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    goto :goto_0

    #@15
    .line 624
    :catch_0
    move-exception v0

    #@16
    .local v0, "ignore":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method protected isHeldExclusively()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 597
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->getState()I

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isLocked()Z
    .locals 1

    #@0
    .prologue
    .line 617
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isHeldExclusively()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public lock()V
    .locals 1

    #@0
    .prologue
    .line 614
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->acquire(I)V

    #@4
    return-void
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 588
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->runWorker(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    #@5
    .line 587
    return-void
.end method

.method protected tryAcquire(I)Z
    .locals 3
    .param p1, "unused"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 601
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->compareAndSetState(II)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 602
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    #@f
    .line 603
    return v2

    #@10
    .line 605
    :cond_0
    return v1
.end method

.method public tryLock()Z
    .locals 1

    #@0
    .prologue
    .line 615
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->tryAcquire(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected tryRelease(I)Z
    .locals 1
    .param p1, "unused"    # I

    #@0
    .prologue
    .line 609
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    #@4
    .line 610
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setState(I)V

    #@8
    .line 611
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method public unlock()V
    .locals 1

    #@0
    .prologue
    .line 616
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->release(I)Z

    #@4
    return-void
.end method
