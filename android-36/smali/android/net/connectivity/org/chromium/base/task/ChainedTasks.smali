.class public Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;
.super Ljava/lang/Object;
.source "ChainedTasks.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private volatile blacklist mCanceled:Z

.field private blacklist mFinalized:Z

.field private blacklist mIterationIdForTesting:I

.field private final blacklist mRunAndPost:Ljava/lang/Runnable;

.field private final blacklist mTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$AelxkZa94I0Q27PF4VAc8k16EGw(Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->lambda$start$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCanceled(Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mCanceled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIterationIdForTesting(Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;)I
    .registers 1

    iget p0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mIterationIdForTesting:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTasks(Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mTasks:Ljava/util/LinkedList;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 27
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mTasks:Ljava/util/LinkedList;

    .line 34
    sget v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTestIterationForTesting:I

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mIterationIdForTesting:I

    .line 36
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks$1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks$1;-><init>(Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mRunAndPost:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic blacklist lambda$start$0()V
    .registers 4

    .line 96
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 97
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Runnable;>;"
    nop

    .line 98
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 99
    iget-boolean v2, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mCanceled:Z

    if-eqz v2, :cond_1f

    return-void

    .line 100
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Runnable;>;"
    :cond_1f
    goto :goto_6

    .line 101
    :cond_20
    return-void
.end method


# virtual methods
.method public blacklist add(ILjava/lang/Runnable;)V
    .registers 7
    .param p1, "traits"    # I
    .param p2, "task"    # Ljava/lang/Runnable;

    .line 61
    nop

    .line 62
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->ENABLE_TASK_ORIGINS:Z

    if-eqz v0, :cond_e

    .line 63
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;-><init>()V

    invoke-static {v0, p2}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->populateTaskOrigin(Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    .line 65
    :cond_e
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mTasks:Ljava/util/LinkedList;

    monitor-enter v0

    .line 66
    nop

    .line 67
    :try_start_12
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mTasks:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_24

    throw v1

    :catchall_24
    move-exception v1

    goto :goto_22
.end method

.method public blacklist cancel()V
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mTasks:Ljava/util/LinkedList;

    monitor-enter v0

    .line 74
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mFinalized:Z

    .line 75
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mCanceled:Z

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist start(Z)V
    .registers 4
    .param p1, "coalesceTasks"    # Z

    .line 86
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mTasks:Ljava/util/LinkedList;

    monitor-enter v0

    .line 87
    nop

    .line 88
    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mFinalized:Z

    .line 89
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_44

    .line 90
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 91
    :cond_11
    if-eqz p1, :cond_2c

    .line 92
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    .local v0, "traits":I
    new-instance v1, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;)V

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    .line 102
    .end local v0    # "traits":I
    goto :goto_41

    .line 103
    :cond_2c
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->mRunAndPost:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    .line 105
    :goto_41
    return-void

    .line 89
    :goto_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_44

    throw v1

    :catchall_44
    move-exception v1

    goto :goto_42
.end method
