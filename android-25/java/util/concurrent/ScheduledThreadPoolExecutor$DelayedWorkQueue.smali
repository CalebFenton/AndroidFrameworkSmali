.class Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
.super Ljava/util/AbstractQueue;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayedWorkQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue",
        "<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/util/concurrent/BlockingQueue",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private final available:Ljava/util/concurrent/locks/Condition;

.field private leader:Ljava/lang/Thread;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private queue:[Ljava/util/concurrent/RunnableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 820
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 848
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [Ljava/util/concurrent/RunnableScheduledFuture;

    #@7
    .line 847
    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@9
    .line 849
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@b
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@e
    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@10
    .line 874
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@18
    .line 820
    return-void
.end method

.method private finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "f":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    const/4 v4, 0x0

    #@1
    .line 1062
    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@3
    add-int/lit8 v0, v2, -0x1

    #@5
    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@7
    .line 1063
    .local v0, "s":I
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@9
    aget-object v1, v2, v0

    #@b
    .line 1064
    .local v1, "x":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@d
    const/4 v3, 0x0

    #@e
    aput-object v3, v2, v0

    #@10
    .line 1065
    if-eqz v0, :cond_0

    #@12
    .line 1066
    invoke-direct {p0, v4, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftDown(ILjava/util/concurrent/RunnableScheduledFuture;)V

    #@15
    .line 1067
    :cond_0
    const/4 v2, -0x1

    #@16
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    #@19
    .line 1068
    return-object p1
.end method

.method private grow()V
    .locals 3

    #@0
    .prologue
    .line 928
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@2
    array-length v1, v2

    #@3
    .line 929
    .local v1, "oldCapacity":I
    shr-int/lit8 v2, v1, 0x1

    #@5
    add-int v0, v1, v2

    #@7
    .line 930
    .local v0, "newCapacity":I
    if-gez v0, :cond_0

    #@9
    .line 931
    const v0, 0x7fffffff

    #@c
    .line 932
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@e
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, [Ljava/util/concurrent/RunnableScheduledFuture;

    #@14
    iput-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@16
    .line 927
    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 939
    if-eqz p1, :cond_2

    #@2
    .line 940
    instance-of v1, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object v1, p1

    #@7
    .line 941
    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@9
    iget v0, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    #@b
    .line 944
    .local v0, "i":I
    if-ltz v0, :cond_2

    #@d
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@f
    if-ge v0, v1, :cond_2

    #@11
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@13
    aget-object v1, v1, v0

    #@15
    if-ne v1, p1, :cond_2

    #@17
    .line 945
    return v0

    #@18
    .line 947
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    #@19
    .restart local v0    # "i":I
    :goto_0
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@1b
    if-ge v0, v1, :cond_2

    #@1d
    .line 948
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@1f
    aget-object v1, v1, v0

    #@21
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 949
    return v0

    #@28
    .line 947
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 952
    .end local v0    # "i":I
    :cond_2
    const/4 v1, -0x1

    #@2c
    return v1
.end method

.method private peekExpired()Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1183
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@3
    const/4 v3, 0x0

    #@4
    aget-object v0, v2, v3

    #@6
    .line 1184
    .local v0, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v0, :cond_0

    #@8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@a
    invoke-interface {v0, v2}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    #@d
    move-result-wide v2

    #@e
    const-wide/16 v4, 0x0

    #@10
    cmp-long v2, v2, v4

    #@12
    if-lez v2, :cond_1

    #@14
    :cond_0
    move-object v0, v1

    #@15
    .end local v0    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_1
    return-object v0
.end method

.method private setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V
    .locals 1
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 880
    .local p1, "f":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 881
    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@6
    .end local p1    # "f":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iput p2, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    #@8
    .line 879
    :cond_0
    return-void
.end method

.method private siftDown(ILjava/util/concurrent/RunnableScheduledFuture;)V
    .locals 5
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 907
    .local p2, "key":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@2
    ushr-int/lit8 v2, v4, 0x1

    #@4
    .line 908
    .local v2, "half":I
    :goto_0
    if-ge p1, v2, :cond_1

    #@6
    .line 909
    shl-int/lit8 v4, p1, 0x1

    #@8
    add-int/lit8 v1, v4, 0x1

    #@a
    .line 910
    .local v1, "child":I
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@c
    aget-object v0, v4, v1

    #@e
    .line 911
    .local v0, "c":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    add-int/lit8 v3, v1, 0x1

    #@10
    .line 912
    .local v3, "right":I
    iget v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@12
    if-ge v3, v4, :cond_0

    #@14
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@16
    aget-object v4, v4, v3

    #@18
    invoke-interface {v0, v4}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    #@1b
    move-result v4

    #@1c
    if-lez v4, :cond_0

    #@1e
    .line 913
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@20
    move v1, v3

    #@21
    aget-object v0, v4, v3

    #@23
    .line 914
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    #@26
    move-result v4

    #@27
    if-gtz v4, :cond_2

    #@29
    .line 920
    .end local v0    # "c":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v1    # "child":I
    .end local v3    # "right":I
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@2b
    aput-object p2, v4, p1

    #@2d
    .line 921
    invoke-direct {p0, p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    #@30
    .line 906
    return-void

    #@31
    .line 916
    .restart local v0    # "c":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .restart local v1    # "child":I
    .restart local v3    # "right":I
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@33
    aput-object v0, v4, p1

    #@35
    .line 917
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    #@38
    .line 918
    move p1, v1

    #@39
    goto :goto_0
.end method

.method private siftUp(ILjava/util/concurrent/RunnableScheduledFuture;)V
    .locals 3
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 889
    .local p2, "key":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :goto_0
    if-lez p1, :cond_0

    #@2
    .line 890
    add-int/lit8 v2, p1, -0x1

    #@4
    ushr-int/lit8 v1, v2, 0x1

    #@6
    .line 891
    .local v1, "parent":I
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@8
    aget-object v0, v2, v1

    #@a
    .line 892
    .local v0, "e":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-interface {p2, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    #@d
    move-result v2

    #@e
    if-ltz v2, :cond_1

    #@10
    .line 898
    .end local v0    # "e":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v1    # "parent":I
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@12
    aput-object p2, v2, p1

    #@14
    .line 899
    invoke-direct {p0, p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    #@17
    .line 888
    return-void

    #@18
    .line 894
    .restart local v0    # "e":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .restart local v1    # "parent":I
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@1a
    aput-object v0, v2, p1

    #@1c
    .line 895
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    #@1f
    .line 896
    move p1, v1

    #@20
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1047
    check-cast p1, Ljava/lang/Runnable;

    #@2
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->add(Ljava/lang/Runnable;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public add(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1048
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public clear()V
    .locals 5

    #@0
    .prologue
    .line 1161
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1162
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1164
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@8
    if-ge v0, v3, :cond_1

    #@a
    .line 1165
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@c
    aget-object v2, v3, v0

    #@e
    .line 1166
    .local v2, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v2, :cond_0

    #@10
    .line 1167
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@12
    const/4 v4, 0x0

    #@13
    aput-object v4, v3, v0

    #@15
    .line 1168
    const/4 v3, -0x1

    #@16
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    #@19
    .line 1164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1171
    .end local v2    # "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_1
    const/4 v3, 0x0

    #@1d
    iput v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1173
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 1160
    return-void

    #@23
    .line 1172
    :catchall_0
    move-exception v3

    #@24
    .line 1173
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@27
    .line 1172
    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 956
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 957
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 959
    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    const/4 v2, -0x1

    #@a
    if-eq v1, v2, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    .line 961
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@10
    .line 959
    return v1

    #@11
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0

    #@13
    .line 960
    :catchall_0
    move-exception v1

    #@14
    .line 961
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 960
    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/lang/Runnable;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1189
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/lang/Runnable;>;"
    if-nez p1, :cond_0

    #@2
    .line 1190
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1191
    :cond_0
    if-ne p1, p0, :cond_1

    #@a
    .line 1192
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v3

    #@10
    .line 1193
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@12
    .line 1194
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@15
    .line 1197
    const/4 v2, 0x0

    #@16
    .line 1198
    .local v2, "n":I
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->peekExpired()Ljava/util/concurrent/RunnableScheduledFuture;

    #@19
    move-result-object v0

    #@1a
    .local v0, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v0, :cond_2

    #@1c
    .line 1199
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1f
    .line 1200
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1201
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1205
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@28
    .line 1203
    return v2

    #@29
    .line 1204
    .end local v0    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :catchall_0
    move-exception v3

    #@2a
    .line 1205
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2d
    .line 1204
    throw v3
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/lang/Runnable;",
            ">;I)I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/lang/Runnable;>;"
    const/4 v3, 0x0

    #@1
    .line 1210
    if-nez p1, :cond_0

    #@3
    .line 1211
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v3

    #@9
    .line 1212
    :cond_0
    if-ne p1, p0, :cond_1

    #@b
    .line 1213
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v3

    #@11
    .line 1214
    :cond_1
    if-gtz p2, :cond_2

    #@13
    .line 1215
    return v3

    #@14
    .line 1216
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    .line 1217
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@19
    .line 1220
    const/4 v2, 0x0

    #@1a
    .line 1221
    .local v2, "n":I
    :goto_0
    if-ge v2, p2, :cond_3

    #@1c
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->peekExpired()Ljava/util/concurrent/RunnableScheduledFuture;

    #@1f
    move-result-object v0

    #@20
    .local v0, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v0, :cond_3

    #@22
    .line 1222
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@25
    .line 1223
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 1224
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1228
    .end local v0    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2e
    .line 1226
    return v2

    #@2f
    .line 1227
    :catchall_0
    move-exception v3

    #@30
    .line 1228
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@33
    .line 1227
    throw v3
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 999
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1259
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;

    #@2
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@4
    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@6
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/util/concurrent/RunnableScheduledFuture;

    #@c
    invoke-direct {v1, p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;[Ljava/util/concurrent/RunnableScheduledFuture;)V

    #@f
    return-object v1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1016
    check-cast p1, Ljava/lang/Runnable;

    #@2
    .end local p1    # "x":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1051
    check-cast p1, Ljava/lang/Runnable;

    #@2
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public offer(Ljava/lang/Runnable;)Z
    .locals 5
    .param p1, "x"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1017
    if-nez p1, :cond_0

    #@2
    .line 1018
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 1019
    check-cast v0, Ljava/util/concurrent/RunnableScheduledFuture;

    #@b
    .line 1020
    .local v0, "e":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@d
    .line 1021
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@10
    .line 1023
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@12
    .line 1024
    .local v1, "i":I
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@14
    array-length v3, v3

    #@15
    if-lt v1, v3, :cond_1

    #@17
    .line 1025
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->grow()V

    #@1a
    .line 1026
    :cond_1
    add-int/lit8 v3, v1, 0x1

    #@1c
    iput v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@1e
    .line 1027
    if-nez v1, :cond_3

    #@20
    .line 1028
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@22
    const/4 v4, 0x0

    #@23
    aput-object v0, v3, v4

    #@25
    .line 1029
    const/4 v3, 0x0

    #@26
    invoke-direct {p0, v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    #@29
    .line 1033
    :goto_0
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@2b
    const/4 v4, 0x0

    #@2c
    aget-object v3, v3, v4

    #@2e
    if-ne v3, v0, :cond_2

    #@30
    .line 1034
    const/4 v3, 0x0

    #@31
    iput-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@33
    .line 1035
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@35
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 1038
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3b
    .line 1040
    const/4 v3, 0x1

    #@3c
    return v3

    #@3d
    .line 1031
    :cond_3
    :try_start_1
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftUp(ILjava/util/concurrent/RunnableScheduledFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    goto :goto_0

    #@41
    .line 1037
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@42
    .line 1038
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@45
    .line 1037
    throw v3
.end method

.method public offer(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 1052
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1006
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->peek()Ljava/util/concurrent/RunnableScheduledFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public peek()Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1007
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1008
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1010
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@7
    const/4 v2, 0x0

    #@8
    aget-object v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 1012
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 1010
    return-object v1

    #@e
    .line 1011
    :catchall_0
    move-exception v1

    #@f
    .line 1012
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@12
    .line 1011
    throw v1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1071
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->poll()Ljava/util/concurrent/RunnableScheduledFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1118
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/RunnableScheduledFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public poll()Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1072
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    .line 1073
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 1075
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@8
    const/4 v4, 0x0

    #@9
    aget-object v0, v3, v4

    #@b
    .line 1076
    .local v0, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v0, :cond_0

    #@d
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@f
    invoke-interface {v0, v3}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-wide v4

    #@13
    const-wide/16 v6, 0x0

    #@15
    cmp-long v3, v4, v6

    #@17
    if-lez v3, :cond_1

    #@19
    .line 1080
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1c
    .line 1076
    return-object v2

    #@1d
    .line 1078
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result-object v2

    #@21
    goto :goto_0

    #@22
    .line 1079
    .end local v0    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :catchall_0
    move-exception v2

    #@23
    .line 1080
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 1079
    throw v2
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1120
    move-object/from16 v0, p3

    #@2
    move-wide/from16 v1, p1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@7
    move-result-wide v8

    #@8
    .line 1121
    .local v8, "nanos":J
    move-object/from16 v0, p0

    #@a
    iget-object v7, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    .line 1122
    .local v7, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@f
    .line 1125
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    #@11
    iget-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@13
    const/4 v14, 0x0

    #@14
    aget-object v6, v11, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1126
    .local v6, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-nez v6, :cond_3

    #@18
    .line 1127
    const-wide/16 v14, 0x0

    #@1a
    cmp-long v11, v8, v14

    #@1c
    if-gtz v11, :cond_2

    #@1e
    .line 1128
    const/4 v11, 0x0

    #@1f
    .line 1154
    move-object/from16 v0, p0

    #@21
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@23
    if-nez v14, :cond_1

    #@25
    move-object/from16 v0, p0

    #@27
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@29
    const/4 v15, 0x0

    #@2a
    aget-object v14, v14, v15

    #@2c
    if-eqz v14, :cond_1

    #@2e
    .line 1155
    move-object/from16 v0, p0

    #@30
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@32
    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@35
    .line 1156
    :cond_1
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@38
    .line 1128
    return-object v11

    #@39
    .line 1130
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@3b
    iget-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@3d
    invoke-interface {v11, v8, v9}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@40
    move-result-wide v8

    #@41
    goto :goto_0

    #@42
    .line 1132
    :cond_3
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@44
    invoke-interface {v6, v11}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    #@47
    move-result-wide v4

    #@48
    .line 1133
    .local v4, "delay":J
    const-wide/16 v14, 0x0

    #@4a
    cmp-long v11, v4, v14

    #@4c
    if-gtz v11, :cond_5

    #@4e
    .line 1134
    move-object/from16 v0, p0

    #@50
    invoke-direct {v0, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    move-result-object v11

    #@54
    .line 1154
    move-object/from16 v0, p0

    #@56
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@58
    if-nez v14, :cond_4

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@5e
    const/4 v15, 0x0

    #@5f
    aget-object v14, v14, v15

    #@61
    if-eqz v14, :cond_4

    #@63
    .line 1155
    move-object/from16 v0, p0

    #@65
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@67
    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@6a
    .line 1156
    :cond_4
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@6d
    .line 1134
    return-object v11

    #@6e
    .line 1135
    :cond_5
    const-wide/16 v14, 0x0

    #@70
    cmp-long v11, v8, v14

    #@72
    if-gtz v11, :cond_7

    #@74
    .line 1136
    const/4 v11, 0x0

    #@75
    .line 1154
    move-object/from16 v0, p0

    #@77
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@79
    if-nez v14, :cond_6

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@7f
    const/4 v15, 0x0

    #@80
    aget-object v14, v14, v15

    #@82
    if-eqz v14, :cond_6

    #@84
    .line 1155
    move-object/from16 v0, p0

    #@86
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@88
    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@8b
    .line 1156
    :cond_6
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@8e
    .line 1136
    return-object v11

    #@8f
    .line 1137
    :cond_7
    const/4 v6, 0x0

    #@90
    .line 1138
    .local v6, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    cmp-long v11, v8, v4

    #@92
    if-ltz v11, :cond_8

    #@94
    :try_start_2
    move-object/from16 v0, p0

    #@96
    iget-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@98
    if-eqz v11, :cond_9

    #@9a
    .line 1139
    :cond_8
    move-object/from16 v0, p0

    #@9c
    iget-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@9e
    invoke-interface {v11, v8, v9}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@a1
    move-result-wide v8

    #@a2
    goto/16 :goto_0

    #@a4
    .line 1141
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@a7
    move-result-object v10

    #@a8
    .line 1142
    .local v10, "thisThread":Ljava/lang/Thread;
    move-object/from16 v0, p0

    #@aa
    iput-object v10, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ac
    .line 1144
    :try_start_3
    move-object/from16 v0, p0

    #@ae
    iget-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@b0
    invoke-interface {v11, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@b3
    move-result-wide v12

    #@b4
    .line 1145
    .local v12, "timeLeft":J
    sub-long v14, v4, v12

    #@b6
    sub-long/2addr v8, v14

    #@b7
    .line 1147
    :try_start_4
    move-object/from16 v0, p0

    #@b9
    iget-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@bb
    if-ne v11, v10, :cond_0

    #@bd
    .line 1148
    const/4 v11, 0x0

    #@be
    move-object/from16 v0, p0

    #@c0
    iput-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c2
    goto/16 :goto_0

    #@c4
    .line 1153
    .end local v4    # "delay":J
    .end local v6    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v10    # "thisThread":Ljava/lang/Thread;
    .end local v12    # "timeLeft":J
    :catchall_0
    move-exception v11

    #@c5
    .line 1154
    move-object/from16 v0, p0

    #@c7
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@c9
    if-nez v14, :cond_a

    #@cb
    move-object/from16 v0, p0

    #@cd
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@cf
    const/4 v15, 0x0

    #@d0
    aget-object v14, v14, v15

    #@d2
    if-eqz v14, :cond_a

    #@d4
    .line 1155
    move-object/from16 v0, p0

    #@d6
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@d8
    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@db
    .line 1156
    :cond_a
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@de
    .line 1153
    throw v11

    #@df
    .line 1146
    .restart local v4    # "delay":J
    .restart local v6    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .restart local v10    # "thisThread":Ljava/lang/Thread;
    :catchall_1
    move-exception v11

    #@e0
    .line 1147
    :try_start_5
    move-object/from16 v0, p0

    #@e2
    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@e4
    if-ne v14, v10, :cond_b

    #@e6
    .line 1148
    const/4 v14, 0x0

    #@e7
    move-object/from16 v0, p0

    #@e9
    iput-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@eb
    .line 1146
    :cond_b
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1043
    check-cast p1, Ljava/lang/Runnable;

    #@2
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->put(Ljava/lang/Runnable;)V

    #@5
    return-void
.end method

.method public put(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1044
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    #@3
    .line 1043
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    #@0
    .prologue
    .line 1003
    const v0, 0x7fffffff

    #@3
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "x"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 966
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    .line 967
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 969
    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    .line 970
    .local v0, "i":I
    if-gez v0, :cond_0

    #@c
    .line 984
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 971
    return v4

    #@10
    .line 973
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@12
    aget-object v4, v4, v0

    #@14
    const/4 v5, -0x1

    #@15
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    #@18
    .line 974
    iget v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@1a
    add-int/lit8 v3, v4, -0x1

    #@1c
    iput v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@1e
    .line 975
    .local v3, "s":I
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@20
    aget-object v2, v4, v3

    #@22
    .line 976
    .local v2, "replacement":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@24
    const/4 v5, 0x0

    #@25
    aput-object v5, v4, v3

    #@27
    .line 977
    if-eq v3, v0, :cond_1

    #@29
    .line 978
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftDown(ILjava/util/concurrent/RunnableScheduledFuture;)V

    #@2c
    .line 979
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@2e
    aget-object v4, v4, v0

    #@30
    if-ne v4, v2, :cond_1

    #@32
    .line 980
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftUp(ILjava/util/concurrent/RunnableScheduledFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 982
    :cond_1
    const/4 v4, 0x1

    #@36
    .line 984
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@39
    .line 982
    return v4

    #@3a
    .line 983
    .end local v0    # "i":I
    .end local v2    # "replacement":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v3    # "s":I
    :catchall_0
    move-exception v4

    #@3b
    .line 984
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3e
    .line 983
    throw v4
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 989
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 990
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 992
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 994
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a
    .line 992
    return v1

    #@b
    .line 993
    :catchall_0
    move-exception v1

    #@c
    .line 994
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 993
    throw v1
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1084
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->take()Ljava/util/concurrent/RunnableScheduledFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public take()Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1085
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    .line 1086
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@6
    .line 1089
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@8
    const/4 v6, 0x0

    #@9
    aget-object v2, v5, v6

    #@b
    .line 1090
    .local v2, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-nez v2, :cond_2

    #@d
    .line 1091
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@f
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    goto :goto_0

    #@13
    .line 1111
    .end local v2    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :catchall_0
    move-exception v5

    #@14
    .line 1112
    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@16
    if-nez v6, :cond_1

    #@18
    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@1a
    aget-object v6, v6, v8

    #@1c
    if-eqz v6, :cond_1

    #@1e
    .line 1113
    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@20
    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@23
    .line 1114
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 1111
    throw v5

    #@27
    .line 1093
    .restart local v2    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_2
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@29
    invoke-interface {v2, v5}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    #@2c
    move-result-wide v0

    #@2d
    .line 1094
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    #@2f
    cmp-long v5, v0, v6

    #@31
    if-gtz v5, :cond_4

    #@33
    .line 1095
    invoke-direct {p0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    move-result-object v5

    #@37
    .line 1112
    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@39
    if-nez v6, :cond_3

    #@3b
    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@3d
    aget-object v6, v6, v8

    #@3f
    if-eqz v6, :cond_3

    #@41
    .line 1113
    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@43
    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@46
    .line 1114
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@49
    .line 1095
    return-object v5

    #@4a
    .line 1096
    :cond_4
    const/4 v2, 0x0

    #@4b
    .line 1097
    .local v2, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :try_start_2
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@4d
    if-eqz v5, :cond_5

    #@4f
    .line 1098
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@51
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V

    #@54
    goto :goto_0

    #@55
    .line 1100
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@58
    move-result-object v4

    #@59
    .line 1101
    .local v4, "thisThread":Ljava/lang/Thread;
    iput-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    .line 1103
    :try_start_3
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@5d
    invoke-interface {v5, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@60
    .line 1105
    :try_start_4
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@62
    if-ne v5, v4, :cond_0

    #@64
    .line 1106
    const/4 v5, 0x0

    #@65
    iput-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@67
    goto :goto_0

    #@68
    .line 1104
    :catchall_1
    move-exception v5

    #@69
    .line 1105
    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@6b
    if-ne v6, v4, :cond_6

    #@6d
    .line 1106
    const/4 v6, 0x0

    #@6e
    iput-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    #@70
    .line 1104
    :cond_6
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 1233
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1234
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1236
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@7
    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@9
    const-class v3, [Ljava/lang/Object;

    #@b
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v1

    #@f
    .line 1238
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@12
    .line 1236
    return-object v1

    #@13
    .line 1237
    :catchall_0
    move-exception v1

    #@14
    .line 1238
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 1237
    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1244
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1245
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1247
    :try_start_0
    array-length v1, p1

    #@6
    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 1248
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@c
    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v3

    #@12
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v1

    #@16
    .line 1254
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 1248
    return-object v1

    #@1a
    .line 1249
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@1c
    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@1e
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@23
    .line 1250
    array-length v1, p1

    #@24
    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@26
    if-le v1, v2, :cond_1

    #@28
    .line 1251
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    #@2a
    const/4 v2, 0x0

    #@2b
    aput-object v2, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .line 1254
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@30
    .line 1252
    return-object p1

    #@31
    .line 1253
    :catchall_0
    move-exception v1

    #@32
    .line 1254
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@35
    .line 1253
    throw v1
.end method
