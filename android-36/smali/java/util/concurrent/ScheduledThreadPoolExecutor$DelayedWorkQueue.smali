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
        "Ljava/util/AbstractQueue<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/util/concurrent/BlockingQueue<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_CAPACITY:I = 0x10


# instance fields
.field private final greylist-max-o available:Ljava/util/concurrent/locks/Condition;

.field private greylist-max-o leader:Ljava/lang/Thread;

.field private final greylist-max-o lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private greylist-max-o queue:[Ljava/util/concurrent/RunnableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o size:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 953
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 980
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/util/concurrent/RunnableScheduledFuture;

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    .line 982
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1007
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private greylist-max-o finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 1195
    .local p1, "f":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 1196
    .local v0, "s":I
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v1, v0

    .line 1197
    .local v1, "x":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 1198
    if-eqz v0, :cond_15

    .line 1199
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftDown(ILjava/util/concurrent/RunnableScheduledFuture;)V

    .line 1200
    :cond_15
    const/4 v2, -0x1

    invoke-static {p1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 1201
    return-object p1
.end method

.method private greylist-max-o grow()V
    .registers 4

    .line 1061
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    array-length v0, v0

    .line 1062
    .local v0, "oldCapacity":I
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v0

    .line 1063
    .local v1, "newCapacity":I
    if-gez v1, :cond_b

    .line 1064
    const v1, 0x7fffffff

    .line 1065
    :cond_b
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/concurrent/RunnableScheduledFuture;

    iput-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    .line 1066
    return-void
.end method

.method private greylist-max-o indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "x"    # Ljava/lang/Object;

    .line 1072
    if-eqz p1, :cond_2c

    .line 1073
    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    if-eqz v0, :cond_19

    .line 1074
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    iget v0, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    .line 1077
    .local v0, "i":I
    if-ltz v0, :cond_18

    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_18

    .line 1078
    return v0

    .line 1079
    .end local v0    # "i":I
    :cond_18
    goto :goto_2c

    .line 1080
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1a
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v0, v1, :cond_2c

    .line 1081
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1082
    return v0

    .line 1080
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1085
    .end local v0    # "i":I
    :cond_2c
    :goto_2c
    const/4 v0, -0x1

    return v0
.end method

.method private static greylist-max-o setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V
    .registers 3
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;I)V"
        }
    .end annotation

    .line 1013
    .local p0, "f":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    instance-of v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    if-eqz v0, :cond_9

    .line 1014
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    iput p1, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    .line 1015
    :cond_9
    return-void
.end method

.method private greylist-max-o siftDown(ILjava/util/concurrent/RunnableScheduledFuture;)V
    .registers 8
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 1040
    .local p2, "key":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    ushr-int/lit8 v0, v0, 0x1

    .line 1041
    .local v0, "half":I
    :goto_4
    if-ge p1, v0, :cond_33

    .line 1042
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 1043
    .local v1, "child":I
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v2, v2, v1

    .line 1044
    .local v2, "c":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    add-int/lit8 v3, v1, 0x1

    .line 1045
    .local v3, "right":I
    iget v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v3, v4, :cond_23

    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_23

    .line 1046
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    move v1, v3

    aget-object v2, v4, v3

    .line 1047
    :cond_23
    invoke-interface {p2, v2}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_2a

    .line 1048
    goto :goto_33

    .line 1049
    :cond_2a
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object v2, v4, p1

    .line 1050
    invoke-static {v2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 1051
    move p1, v1

    .line 1052
    .end local v1    # "child":I
    .end local v2    # "c":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v3    # "right":I
    goto :goto_4

    .line 1053
    :cond_33
    :goto_33
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object p2, v1, p1

    .line 1054
    invoke-static {p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 1055
    return-void
.end method

.method private greylist-max-o siftUp(ILjava/util/concurrent/RunnableScheduledFuture;)V
    .registers 6
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 1022
    .local p2, "key":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    nop

    :goto_1
    if-lez p1, :cond_1b

    .line 1023
    add-int/lit8 v0, p1, -0x1

    ushr-int/lit8 v0, v0, 0x1

    .line 1024
    .local v0, "parent":I
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v1, v0

    .line 1025
    .local v1, "e":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-interface {p2, v1}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_12

    .line 1026
    goto :goto_1b

    .line 1027
    :cond_12
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object v1, v2, p1

    .line 1028
    invoke-static {v1, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 1029
    move p1, v0

    .line 1030
    .end local v0    # "parent":I
    .end local v1    # "e":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    goto :goto_1

    .line 1031
    :cond_1b
    :goto_1b
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object p2, v0, p1

    .line 1032
    invoke-static {p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 1033
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 953
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->add(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o add(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "e"    # Ljava/lang/Runnable;

    .line 1181
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 6

    .line 1294
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1295
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    :try_start_6
    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v1, v2, :cond_1c

    .line 1298
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v2, v2, v1

    .line 1299
    .local v2, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v2, :cond_19

    .line 1300
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 1301
    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 1297
    .end local v2    # "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1304
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_24

    .line 1306
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1307
    nop

    .line 1308
    return-void

    .line 1306
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1307
    throw v1
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "x"    # Ljava/lang/Object;

    .line 1089
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1090
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1092
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->indexOf(Ljava/lang/Object;)I

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_13

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 1094
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1092
    return v1

    .line 1094
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1095
    throw v1
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Ljava/lang/Runnable;",
            ">;)I"
        }
    .end annotation

    .line 1311
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/lang/Runnable;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;I)I
    .registers 12
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Ljava/lang/Runnable;",
            ">;I)I"
        }
    .end annotation

    .line 1315
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/lang/Runnable;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    if-eq p1, p0, :cond_37

    .line 1318
    const/4 v0, 0x0

    if-gtz p2, :cond_9

    .line 1319
    return v0

    .line 1320
    :cond_9
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1321
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1323
    const/4 v2, 0x0

    .line 1327
    .local v2, "n":I
    :goto_f
    if-ge v2, p2, :cond_32

    :try_start_11
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v3, v3, v0

    move-object v4, v3

    .local v4, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v3, :cond_32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v3}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gtz v3, :cond_32

    .line 1328
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1329
    invoke-direct {p0, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2d

    .line 1330
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1334
    .end local v2    # "n":I
    .end local v4    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :catchall_2d
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1335
    throw v0

    .line 1332
    .restart local v2    # "n":I
    :cond_32
    nop

    .line 1334
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1332
    return v2

    .line 1317
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "n":I
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1132
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1365
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1366
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1368
    :try_start_5
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;

    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-direct {v1, p0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;[Ljava/util/concurrent/RunnableScheduledFuture;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 1370
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1368
    return-object v1

    .line 1370
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1371
    throw v1
.end method

.method public bridge synthetic whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 953
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 953
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o offer(Ljava/lang/Runnable;)Z
    .registers 7
    .param p1, "x"    # Ljava/lang/Runnable;

    .line 1150
    if-eqz p1, :cond_3f

    .line 1152
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/RunnableScheduledFuture;

    .line 1153
    .local v0, "e":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1154
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1156
    :try_start_a
    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 1157
    .local v2, "i":I
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    array-length v3, v3

    if-lt v2, v3, :cond_14

    .line 1158
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->grow()V

    .line 1159
    :cond_14
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 1160
    const/4 v3, 0x0

    if-nez v2, :cond_23

    .line 1161
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object v0, v4, v3

    .line 1162
    invoke-static {v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    goto :goto_26

    .line 1164
    :cond_23
    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftUp(ILjava/util/concurrent/RunnableScheduledFuture;)V

    .line 1166
    :goto_26
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v3, v4, v3

    if-ne v3, v0, :cond_34

    .line 1167
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    .line 1168
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_3a

    .line 1171
    .end local v2    # "i":I
    :cond_34
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1172
    nop

    .line 1173
    const/4 v2, 0x1

    return v2

    .line 1171
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1172
    throw v2

    .line 1151
    .end local v0    # "e":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist-max-o offer(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .param p1, "e"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1185
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api peek()Ljava/lang/Object;
    .registers 2

    .line 953
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->peek()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public blacklist peek()Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 1140
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1141
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1143
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 1145
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1143
    return-object v1

    .line 1145
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1146
    throw v1
.end method

.method public bridge synthetic whitelist test-api poll()Ljava/lang/Object;
    .registers 2

    .line 953
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->poll()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 953
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist poll()Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1206
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1208
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1209
    .local v1, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v1, :cond_1e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    goto :goto_1e

    .line 1211
    :cond_19
    invoke-direct {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_23

    goto :goto_1f

    .line 1210
    :cond_1e
    :goto_1e
    const/4 v2, 0x0

    .line 1213
    :goto_1f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1209
    return-object v2

    .line 1213
    .end local v1    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1214
    throw v1
.end method

.method public blacklist poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 22
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1253
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    .line 1254
    .local v5, "nanos":J
    iget-object v7, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1255
    .local v7, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1258
    :goto_f
    const/4 v8, 0x0

    :try_start_10
    iget-object v0, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v0, v0, v8
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_a7

    .line 1259
    .local v0, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_3a

    .line 1260
    cmp-long v9, v5, v9

    if-gtz v9, :cond_31

    .line 1261
    nop

    .line 1287
    iget-object v9, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v9, :cond_2d

    iget-object v9, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v8, v9, v8

    if-eqz v8, :cond_2d

    .line 1288
    iget-object v8, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1289
    :cond_2d
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1261
    return-object v11

    .line 1263
    :cond_31
    :try_start_31
    iget-object v9, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9, v5, v6}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v8

    move-wide v5, v8

    .end local v5    # "nanos":J
    .local v8, "nanos":J
    goto/16 :goto_a5

    .line 1265
    .end local v8    # "nanos":J
    .restart local v5    # "nanos":J
    :cond_3a
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v12}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    .line 1266
    .local v12, "delay":J
    cmp-long v14, v12, v9

    if-gtz v14, :cond_5b

    .line 1267
    invoke-direct {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v9
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_a7

    .line 1287
    iget-object v10, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v10, :cond_57

    iget-object v10, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v8, v10, v8

    if-eqz v8, :cond_57

    .line 1288
    iget-object v8, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1289
    :cond_57
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1267
    return-object v9

    .line 1268
    :cond_5b
    cmp-long v9, v5, v9

    if-gtz v9, :cond_73

    .line 1269
    nop

    .line 1287
    iget-object v9, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v9, :cond_6f

    iget-object v9, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v8, v9, v8

    if-eqz v8, :cond_6f

    .line 1288
    iget-object v8, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1289
    :cond_6f
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1269
    return-object v11

    .line 1270
    :cond_73
    const/4 v9, 0x0

    .line 1271
    .end local v0    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .local v9, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    cmp-long v0, v5, v12

    if-ltz v0, :cond_9e

    :try_start_78
    iget-object v0, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-eqz v0, :cond_7d

    goto :goto_9e

    .line 1274
    :cond_7d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v10, v0

    .line 1275
    .local v10, "thisThread":Ljava/lang/Thread;
    iput-object v10, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;
    :try_end_84
    .catchall {:try_start_78 .. :try_end_84} :catchall_a7

    .line 1277
    :try_start_84
    iget-object v0, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v12, v13}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v14
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_95

    .line 1278
    .local v14, "timeLeft":J
    sub-long v16, v12, v14

    sub-long v5, v5, v16

    .line 1280
    .end local v14    # "timeLeft":J
    :try_start_8e
    iget-object v0, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-ne v0, v10, :cond_a5

    .line 1281
    iput-object v11, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    goto :goto_a5

    .line 1280
    :catchall_95
    move-exception v0

    iget-object v14, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-ne v14, v10, :cond_9c

    .line 1281
    iput-object v11, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    .line 1282
    :cond_9c
    nop

    .end local v5    # "nanos":J
    .end local v7    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v0

    .line 1272
    .end local v10    # "thisThread":Ljava/lang/Thread;
    .restart local v5    # "nanos":J
    .restart local v7    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
    .restart local p1    # "timeout":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_9e
    :goto_9e
    iget-object v0, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v5, v6}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v10
    :try_end_a4
    .catchall {:try_start_8e .. :try_end_a4} :catchall_a7

    move-wide v5, v10

    .line 1285
    .end local v9    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v12    # "delay":J
    :cond_a5
    :goto_a5
    goto/16 :goto_f

    .line 1287
    :catchall_a7
    move-exception v0

    iget-object v9, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v9, :cond_b7

    iget-object v9, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v8, v9, v8

    if-eqz v8, :cond_b7

    .line 1288
    iget-object v8, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1289
    :cond_b7
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1290
    throw v0
.end method

.method public bridge synthetic whitelist test-api put(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 953
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->put(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o put(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Runnable;

    .line 1177
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    .line 1178
    return-void
.end method

.method public whitelist test-api remainingCapacity()I
    .registers 2

    .line 1136
    const v0, 0x7fffffff

    return v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "x"    # Ljava/lang/Object;

    .line 1099
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1100
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1102
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->indexOf(Ljava/lang/Object;)I

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_3b

    .line 1103
    .local v1, "i":I
    if-gez v1, :cond_11

    .line 1104
    nop

    .line 1117
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1104
    const/4 v2, 0x0

    return v2

    .line 1106
    :cond_11
    :try_start_11
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v2, v2, v1

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 1107
    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 1108
    .local v2, "s":I
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v4, v4, v2

    .line 1109
    .local v4, "replacement":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 1110
    if-eq v2, v1, :cond_36

    .line 1111
    invoke-direct {p0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftDown(ILjava/util/concurrent/RunnableScheduledFuture;)V

    .line 1112
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v5, v5, v1

    if-ne v5, v4, :cond_36

    .line 1113
    invoke-direct {p0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftUp(ILjava/util/concurrent/RunnableScheduledFuture;)V
    :try_end_36
    .catchall {:try_start_11 .. :try_end_36} :catchall_3b

    .line 1115
    :cond_36
    nop

    .line 1117
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1115
    return v3

    .line 1117
    .end local v1    # "i":I
    .end local v2    # "s":I
    .end local v4    # "replacement":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1118
    throw v1
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 1122
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1123
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1125
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 1127
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1125
    return v1

    .line 1127
    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1128
    throw v1
.end method

.method public bridge synthetic whitelist test-api take()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 953
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->take()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public blacklist take()Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1219
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1222
    :goto_5
    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v2, v2, v1

    .line 1223
    .local v2, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-nez v2, :cond_12

    .line 1224
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_52

    .line 1226
    :cond_12
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 1227
    .local v3, "delay":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_35

    .line 1228
    invoke-direct {p0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v5
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_5c

    .line 1245
    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v6, :cond_31

    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v6, v1

    if-eqz v1, :cond_31

    .line 1246
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1247
    :cond_31
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1228
    return-object v5

    .line 1229
    :cond_35
    const/4 v2, 0x0

    .line 1230
    :try_start_36
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-eqz v5, :cond_40

    .line 1231
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_52

    .line 1233
    :cond_40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 1234
    .local v5, "thisThread":Ljava/lang/Thread;
    iput-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_5c

    .line 1236
    const/4 v6, 0x0

    :try_start_47
    iget-object v7, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v7, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_53

    .line 1238
    :try_start_4c
    iget-object v7, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-ne v7, v5, :cond_52

    .line 1239
    iput-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    .line 1243
    .end local v2    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v3    # "delay":J
    .end local v5    # "thisThread":Ljava/lang/Thread;
    :cond_52
    :goto_52
    goto :goto_5

    .line 1238
    .restart local v2    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .restart local v3    # "delay":J
    .restart local v5    # "thisThread":Ljava/lang/Thread;
    :catchall_53
    move-exception v7

    iget-object v8, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-ne v8, v5, :cond_5a

    .line 1239
    iput-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    .line 1240
    :cond_5a
    nop

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
    throw v7
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_5c

    .line 1245
    .end local v2    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v3    # "delay":J
    .end local v5    # "thisThread":Ljava/lang/Thread;
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
    :catchall_5c
    move-exception v2

    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v3, :cond_6c

    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v3, v1

    if-eqz v1, :cond_6c

    .line 1246
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1247
    :cond_6c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1248
    throw v2
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 5

    .line 1339
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1340
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1342
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    const-class v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    .line 1344
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1342
    return-object v1

    .line 1344
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1345
    throw v1
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1350
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1351
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1353
    :try_start_5
    array-length v1, p1

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v1, v2, :cond_1a

    .line 1354
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_31

    .line 1360
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1354
    return-object v1

    .line 1355
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1356
    array-length v1, p1

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-le v1, v2, :cond_2c

    .line 1357
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, p1, v1
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_31

    .line 1358
    :cond_2c
    nop

    .line 1360
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1358
    return-object p1

    .line 1360
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1361
    throw v1
.end method
