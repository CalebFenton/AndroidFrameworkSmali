.class public Landroid/app/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# static fields
.field private static final sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    #@5
    .line 38
    sput-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@7
    .line 41
    const/4 v0, 0x0

    #@8
    sput-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    #@a
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static add(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "finisher"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 70
    sget-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    #@5
    .line 69
    return-void
.end method

.method public static hasPendingWork()Z
    .locals 1

    #@0
    .prologue
    .line 98
    sget-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public static remove(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "finisher"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 74
    sget-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    #@5
    .line 73
    return-void
.end method

.method public static singleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    #@0
    .prologue
    .line 48
    const-class v1, Landroid/app/QueuedWork;

    #@2
    monitor-enter v1

    #@3
    .line 49
    :try_start_0
    sget-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    #@d
    .line 53
    :cond_0
    sget-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 48
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public static waitToFinish()V
    .locals 2

    #@0
    .prologue
    .line 87
    .local v0, "toFinish":Ljava/lang/Runnable;
    :goto_0
    sget-object v1, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .end local v0    # "toFinish":Ljava/lang/Runnable;
    check-cast v0, Ljava/lang/Runnable;

    #@8
    .restart local v0    # "toFinish":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    #@a
    .line 88
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@d
    goto :goto_0

    #@e
    .line 85
    :cond_0
    return-void
.end method
