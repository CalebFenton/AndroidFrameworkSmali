.class final Ljava/util/concurrent/ForkJoinPool$WorkQueue;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkQueue"
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field static final INITIAL_QUEUE_CAPACITY:I = 0x2000

.field static final MAXIMUM_QUEUE_CAPACITY:I = 0x4000000

.field private static final QLOCK:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field array:[Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile base:I

.field config:I

.field volatile currentJoin:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile currentSteal:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field hint:I

.field nsteals:I

.field final owner:Ljava/util/concurrent/ForkJoinWorkerThread;

.field volatile parker:Ljava/lang/Thread;

.field final pool:Ljava/util/concurrent/ForkJoinPool;

.field volatile qlock:I

.field volatile scanState:I

.field stackPred:I

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 1316
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@6
    .line 1322
    :try_start_0
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@8
    .line 1323
    const-class v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@a
    const-string/jumbo v4, "qlock"

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 1322
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    #@17
    .line 1324
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@19
    const-class v3, [Ljava/util/concurrent/ForkJoinTask;

    #@1b
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    #@1e
    move-result v2

    #@1f
    sput v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@21
    .line 1325
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@23
    const-class v3, [Ljava/util/concurrent/ForkJoinTask;

    #@25
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    #@28
    move-result v1

    #@29
    .line 1326
    .local v1, "scale":I
    add-int/lit8 v2, v1, -0x1

    #@2b
    and-int/2addr v2, v1

    #@2c
    if-eqz v2, :cond_0

    #@2e
    .line 1327
    new-instance v2, Ljava/lang/Error;

    #@30
    const-string/jumbo v3, "array index scale not a power of two"

    #@33
    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@36
    throw v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 1329
    :catch_0
    move-exception v0

    #@38
    .line 1330
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    #@3a
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@3d
    throw v2

    #@3e
    .line 1328
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@41
    move-result v2

    #@42
    rsub-int/lit8 v2, v2, 0x1f

    #@44
    sput v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    #@46
    .line 756
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;)V
    .locals 1
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p2, "owner"    # Ljava/util/concurrent/ForkJoinWorkerThread;

    #@0
    .prologue
    const/16 v0, 0x1000

    #@2
    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 798
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@7
    .line 799
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    #@9
    .line 801
    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@b
    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@d
    .line 797
    return-void
.end method

.method private growAndSharedPush(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v4, 0x0

    #@1
    .line 1017
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    #@4
    .line 1018
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@6
    .line 1019
    .local v2, "s":I
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@8
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    #@a
    array-length v1, v0

    #@b
    .local v1, "al":I
    if-lez v1, :cond_0

    #@d
    .line 1020
    add-int/lit8 v3, v1, -0x1

    #@f
    and-int/2addr v3, v2

    #@10
    aput-object p1, v0, v3

    #@12
    .line 1021
    add-int/lit8 v3, v2, 0x1

    #@14
    iput v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1024
    .end local v1    # "al":I
    :cond_0
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@18
    .line 1015
    return-void

    #@19
    .line 1023
    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "s":I
    :catchall_0
    move-exception v3

    #@1a
    .line 1024
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@1c
    .line 1023
    throw v3
.end method


# virtual methods
.method final cancelAll()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1056
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@3
    .local v0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    #@5
    .line 1057
    iput-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@7
    .line 1058
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    #@a
    .line 1060
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1061
    iput-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@10
    .line 1062
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    #@13
    .line 1064
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 1065
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    #@1c
    goto :goto_0

    #@1d
    .line 1054
    :cond_2
    return-void
.end method

.method final getPoolIndex()I
    .locals 2

    #@0
    .prologue
    .line 808
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@2
    const v1, 0xffff

    #@5
    and-int/2addr v0, v1

    #@6
    ushr-int/lit8 v0, v0, 0x1

    #@8
    return v0
.end method

.method final growArray()[Ljava/util/concurrent/ForkJoinTask;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 860
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@4
    .line 861
    .local v3, "oldA":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_1

    #@6
    array-length v2, v3

    #@7
    shl-int/lit8 v13, v2, 0x1

    #@9
    .line 862
    .local v13, "size":I
    :goto_0
    const/16 v2, 0x2000

    #@b
    if-lt v13, v2, :cond_0

    #@d
    const/high16 v2, 0x4000000

    #@f
    if-le v13, v2, :cond_2

    #@11
    .line 863
    :cond_0
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    #@13
    const-string/jumbo v7, "Queue capacity exceeded"

    #@16
    invoke-direct {v2, v7}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 861
    .end local v13    # "size":I
    :cond_1
    const/16 v13, 0x2000

    #@1c
    goto :goto_0

    #@1d
    .line 865
    .restart local v13    # "size":I
    :cond_2
    new-array v8, v13, [Ljava/util/concurrent/ForkJoinTask;

    #@1f
    move-object/from16 v0, p0

    #@21
    iput-object v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@23
    .line 866
    .local v8, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_5

    #@25
    array-length v2, v3

    #@26
    add-int/lit8 v12, v2, -0x1

    #@28
    .local v12, "oldMask":I
    if-lez v12, :cond_5

    #@2a
    .line 867
    move-object/from16 v0, p0

    #@2c
    iget v14, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@2e
    .local v14, "t":I
    move-object/from16 v0, p0

    #@30
    iget v9, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@32
    .local v9, "b":I
    sub-int v2, v14, v9

    #@34
    if-lez v2, :cond_5

    #@36
    .line 868
    add-int/lit8 v11, v13, -0x1

    #@38
    .line 870
    .local v11, "mask":I
    :cond_3
    and-int v10, v9, v12

    #@3a
    .line 871
    .local v10, "index":I
    int-to-long v0, v10

    #@3b
    move-wide/from16 v16, v0

    #@3d
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@3f
    shl-long v16, v16, v2

    #@41
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@43
    int-to-long v0, v2

    #@44
    move-wide/from16 v18, v0

    #@46
    add-long v4, v16, v18

    #@48
    .line 873
    .local v4, "offset":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@4a
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@4d
    move-result-object v6

    #@4e
    .line 872
    check-cast v6, Ljava/util/concurrent/ForkJoinTask;

    #@50
    .line 874
    .local v6, "x":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_4

    #@52
    .line 875
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@54
    const/4 v7, 0x0

    #@55
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    .line 874
    if-eqz v2, :cond_4

    #@5b
    .line 876
    and-int v2, v9, v11

    #@5d
    aput-object v6, v8, v2

    #@5f
    .line 877
    :cond_4
    add-int/lit8 v9, v9, 0x1

    #@61
    if-ne v9, v14, :cond_3

    #@63
    .line 878
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@65
    invoke-virtual {v2}, Lsun/misc/Unsafe;->storeFence()V

    #@68
    .line 880
    .end local v4    # "offset":J
    .end local v6    # "x":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v9    # "b":I
    .end local v10    # "index":I
    .end local v11    # "mask":I
    .end local v12    # "oldMask":I
    .end local v14    # "t":I
    :cond_5
    return-object v8
.end method

.method final isApparentlyUnblocked()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1308
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@3
    if-ltz v3, :cond_0

    #@5
    .line 1309
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    #@7
    .local v1, "wt":Ljava/lang/Thread;
    if-eqz v1, :cond_0

    #@9
    .line 1310
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    #@c
    move-result-object v0

    #@d
    .local v0, "s":Ljava/lang/Thread$State;
    sget-object v3, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    #@f
    if-eq v0, v3, :cond_0

    #@11
    .line 1311
    sget-object v3, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    #@13
    if-eq v0, v3, :cond_0

    #@15
    .line 1312
    sget-object v3, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    #@17
    if-eq v0, v3, :cond_0

    #@19
    const/4 v2, 0x1

    #@1a
    .line 1308
    .end local v0    # "s":Ljava/lang/Thread$State;
    .end local v1    # "wt":Ljava/lang/Thread;
    :cond_0
    return v2
.end method

.method final isEmpty()Z
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 826
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@4
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@6
    .local v3, "s":I
    sub-int v2, v6, v3

    #@8
    .local v2, "n":I
    if-gez v2, :cond_0

    #@a
    .line 827
    const/4 v6, -0x1

    #@b
    if-ne v2, v6, :cond_2

    #@d
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@f
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    #@11
    .line 828
    array-length v1, v0

    #@12
    .local v1, "al":I
    if-nez v1, :cond_1

    #@14
    .line 826
    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "al":I
    :cond_0
    :goto_0
    return v4

    #@15
    .line 829
    .restart local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v1    # "al":I
    :cond_1
    add-int/lit8 v6, v1, -0x1

    #@17
    add-int/lit8 v7, v3, -0x1

    #@19
    and-int/2addr v6, v7

    #@1a
    aget-object v6, v0, v6

    #@1c
    if-eqz v6, :cond_0

    #@1e
    move v4, v5

    #@1f
    goto :goto_0

    #@20
    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "al":I
    :cond_2
    move v4, v5

    #@21
    .line 827
    goto :goto_0
.end method

.method final localPollAndExec()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 1099
    const/4 v5, 0x0

    #@2
    .line 1100
    .local v5, "nexec":I
    :cond_0
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@4
    .local v2, "b":I
    iget v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@6
    .line 1101
    .local v8, "s":I
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@8
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_1

    #@a
    if-eq v2, v8, :cond_1

    #@c
    array-length v1, v0

    #@d
    .local v1, "al":I
    if-lez v1, :cond_1

    #@f
    .line 1102
    add-int/lit8 v10, v1, -0x1

    #@11
    add-int/lit8 v3, v2, 0x1

    #@13
    .end local v2    # "b":I
    .local v3, "b":I
    and-int v4, v10, v2

    #@15
    .line 1103
    .local v4, "index":I
    int-to-long v10, v4

    #@16
    sget v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@18
    shl-long/2addr v10, v12

    #@19
    sget v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@1b
    int-to-long v12, v12

    #@1c
    add-long v6, v10, v12

    #@1e
    .line 1105
    .local v6, "offset":J
    sget-object v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@20
    invoke-virtual {v10, v0, v6, v7, v14}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v9

    #@24
    .line 1104
    check-cast v9, Ljava/util/concurrent/ForkJoinTask;

    #@26
    .line 1106
    .local v9, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v9, :cond_0

    #@28
    .line 1107
    iput v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@2a
    .line 1108
    invoke-virtual {v9}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@2d
    .line 1109
    add-int/lit8 v5, v5, 0x1

    #@2f
    const/16 v10, 0x3ff

    #@31
    if-le v5, v10, :cond_0

    #@33
    move v2, v3

    #@34
    .line 1098
    .end local v1    # "al":I
    .end local v3    # "b":I
    .end local v4    # "index":I
    .end local v6    # "offset":J
    .end local v9    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v2    # "b":I
    :cond_1
    return-void
.end method

.method final localPopAndExec()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 1074
    const/4 v4, 0x0

    #@2
    .line 1075
    .local v4, "nexec":I
    :cond_0
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@4
    .local v2, "b":I
    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@6
    .line 1076
    .local v5, "s":I
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@8
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_1

    #@a
    if-eq v2, v5, :cond_1

    #@c
    array-length v1, v0

    #@d
    .local v1, "al":I
    if-lez v1, :cond_1

    #@f
    .line 1077
    add-int/lit8 v9, v1, -0x1

    #@11
    add-int/lit8 v5, v5, -0x1

    #@13
    and-int v3, v9, v5

    #@15
    .line 1078
    .local v3, "index":I
    int-to-long v10, v3

    #@16
    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@18
    shl-long/2addr v10, v9

    #@19
    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@1b
    int-to-long v12, v9

    #@1c
    add-long v6, v10, v12

    #@1e
    .line 1080
    .local v6, "offset":J
    sget-object v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@20
    invoke-virtual {v9, v0, v6, v7, v14}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v8

    #@24
    .line 1079
    check-cast v8, Ljava/util/concurrent/ForkJoinTask;

    #@26
    .line 1081
    .local v8, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v8, :cond_1

    #@28
    .line 1082
    iput v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@2a
    .line 1083
    iput-object v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@2c
    invoke-virtual {v8}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@2f
    .line 1084
    add-int/lit8 v4, v4, 0x1

    #@31
    const/16 v9, 0x3ff

    #@33
    if-le v4, v9, :cond_0

    #@35
    .line 1073
    .end local v1    # "al":I
    .end local v3    # "index":I
    .end local v6    # "offset":J
    .end local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    return-void
.end method

.method final nextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 957
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@2
    if-gez v0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method final peek()Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 965
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@3
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    #@5
    array-length v1, v0

    #@6
    .local v1, "al":I
    if-lez v1, :cond_0

    #@8
    .line 966
    add-int/lit8 v3, v1, -0x1

    #@a
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@c
    if-gez v2, :cond_1

    #@e
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@10
    :goto_0
    and-int/2addr v2, v3

    #@11
    aget-object v2, v0, v2

    #@13
    .line 965
    .end local v1    # "al":I
    :cond_0
    return-object v2

    #@14
    .line 966
    .restart local v1    # "al":I
    :cond_1
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@16
    add-int/lit8 v2, v2, -0x1

    #@18
    goto :goto_0
.end method

.method final poll()Ljava/util/concurrent/ForkJoinTask;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 929
    :cond_0
    move-object/from16 v0, p0

    #@2
    iget v9, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@4
    .local v9, "b":I
    move-object/from16 v0, p0

    #@6
    iget v13, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@8
    .line 930
    .local v13, "s":I
    move-object/from16 v0, p0

    #@a
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@c
    .local v3, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_2

    #@e
    sub-int v11, v9, v13

    #@10
    .local v11, "d":I
    if-gez v11, :cond_2

    #@12
    .line 931
    array-length v8, v3

    #@13
    .local v8, "al":I
    if-lez v8, :cond_2

    #@15
    .line 932
    add-int/lit8 v2, v8, -0x1

    #@17
    and-int v12, v2, v9

    #@19
    .line 933
    .local v12, "index":I
    int-to-long v14, v12

    #@1a
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@1c
    shl-long/2addr v14, v2

    #@1d
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@1f
    int-to-long v0, v2

    #@20
    move-wide/from16 v16, v0

    #@22
    add-long v4, v14, v16

    #@24
    .line 935
    .local v4, "offset":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@26
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@29
    move-result-object v6

    #@2a
    .line 934
    check-cast v6, Ljava/util/concurrent/ForkJoinTask;

    #@2c
    .line 936
    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    add-int/lit8 v10, v9, 0x1

    #@2e
    .end local v9    # "b":I
    .local v10, "b":I
    move-object/from16 v0, p0

    #@30
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@32
    if-ne v9, v2, :cond_0

    #@34
    .line 937
    if-eqz v6, :cond_1

    #@36
    .line 938
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@38
    const/4 v7, 0x0

    #@39
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_0

    #@3f
    .line 939
    move-object/from16 v0, p0

    #@41
    iput v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@43
    .line 940
    return-object v6

    #@44
    .line 943
    :cond_1
    const/4 v2, -0x1

    #@45
    if-ne v11, v2, :cond_0

    #@47
    move v9, v10

    #@48
    .line 950
    .end local v4    # "offset":J
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "al":I
    .end local v10    # "b":I
    .end local v11    # "d":I
    .end local v12    # "index":I
    .restart local v9    # "b":I
    :cond_2
    const/4 v2, 0x0

    #@49
    return-object v2
.end method

.method final pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1267
    .local p1, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p0

    #@2
    iget v9, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@4
    .local v9, "b":I
    move-object/from16 v0, p0

    #@6
    iget v15, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@8
    .line 1268
    .local v15, "s":I
    move-object/from16 v0, p0

    #@a
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@c
    .local v3, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_5

    #@e
    if-eq v9, v15, :cond_5

    #@10
    array-length v8, v3

    #@11
    .local v8, "al":I
    if-lez v8, :cond_5

    #@13
    .line 1269
    add-int/lit8 v2, v8, -0x1

    #@15
    and-int v12, v2, v9

    #@17
    .line 1270
    .local v12, "index":I
    int-to-long v0, v12

    #@18
    move-wide/from16 v16, v0

    #@1a
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@1c
    shl-long v16, v16, v2

    #@1e
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@20
    int-to-long v0, v2

    #@21
    move-wide/from16 v18, v0

    #@23
    add-long v4, v16, v18

    #@25
    .line 1272
    .local v4, "offset":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@27
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@2a
    move-result-object v13

    #@2b
    .line 1271
    check-cast v13, Ljava/util/concurrent/ForkJoinTask;

    #@2d
    .line 1273
    .local v13, "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v13, :cond_0

    #@2f
    .line 1274
    const/4 v11, 0x2

    #@30
    .line 1300
    .end local v4    # "offset":J
    .end local v8    # "al":I
    .end local v12    # "index":I
    .end local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v11, "h":I
    :goto_0
    return v11

    #@31
    .line 1275
    .end local v11    # "h":I
    .restart local v4    # "offset":J
    .restart local v8    # "al":I
    .restart local v12    # "index":I
    .restart local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    instance-of v2, v13, Ljava/util/concurrent/CountedCompleter;

    #@33
    if-nez v2, :cond_1

    #@35
    .line 1276
    const/4 v11, -0x1

    #@36
    .restart local v11    # "h":I
    goto :goto_0

    #@37
    .end local v11    # "h":I
    :cond_1
    move-object v6, v13

    #@38
    .line 1278
    nop

    #@39
    nop

    #@3a
    .line 1279
    .local v6, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v14, v6

    #@3b
    .line 1280
    .local v14, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_2
    move-object/from16 v0, p1

    #@3d
    if-ne v14, v0, :cond_4

    #@3f
    .line 1281
    add-int/lit8 v10, v9, 0x1

    #@41
    .end local v9    # "b":I
    .local v10, "b":I
    move-object/from16 v0, p0

    #@43
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@45
    if-ne v9, v2, :cond_3

    #@47
    .line 1282
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@49
    const/4 v7, 0x0

    #@4a
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@4d
    move-result v2

    #@4e
    .line 1281
    if-eqz v2, :cond_3

    #@50
    .line 1283
    move-object/from16 v0, p0

    #@52
    iput v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@54
    .line 1284
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@57
    .line 1285
    const/4 v11, 0x1

    #@58
    .restart local v11    # "h":I
    :goto_1
    move v9, v10

    #@59
    .line 1289
    .end local v10    # "b":I
    .restart local v9    # "b":I
    goto :goto_0

    #@5a
    .line 1288
    .end local v9    # "b":I
    .end local v11    # "h":I
    .restart local v10    # "b":I
    :cond_3
    const/4 v11, 0x2

    #@5b
    .restart local v11    # "h":I
    goto :goto_1

    #@5c
    .line 1291
    .end local v10    # "b":I
    .end local v11    # "h":I
    .restart local v9    # "b":I
    :cond_4
    iget-object v14, v14, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@5e
    if-nez v14, :cond_2

    #@60
    .line 1292
    const/4 v11, -0x1

    #@61
    .line 1293
    .restart local v11    # "h":I
    goto :goto_0

    #@62
    .line 1299
    .end local v4    # "offset":J
    .end local v6    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v8    # "al":I
    .end local v11    # "h":I
    .end local v12    # "index":I
    .end local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_5
    const/high16 v2, -0x80000000

    #@64
    or-int v11, v9, v2

    #@66
    .restart local v11    # "h":I
    goto :goto_0
.end method

.method final pollAt(I)Ljava/util/concurrent/ForkJoinTask;
    .locals 14
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 910
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@3
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    #@5
    array-length v6, v1

    #@6
    .local v6, "al":I
    if-lez v6, :cond_1

    #@8
    .line 911
    add-int/lit8 v0, v6, -0x1

    #@a
    and-int v8, v0, p1

    #@c
    .line 912
    .local v8, "index":I
    int-to-long v10, v8

    #@d
    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@f
    shl-long/2addr v10, v0

    #@10
    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@12
    int-to-long v12, v0

    #@13
    add-long v2, v10, v12

    #@15
    .line 914
    .local v2, "offset":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@17
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    .line 913
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    #@1d
    .line 915
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_1

    #@1f
    add-int/lit8 v7, p1, 0x1

    #@21
    .end local p1    # "b":I
    .local v7, "b":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@23
    if-ne p1, v0, :cond_0

    #@25
    .line 916
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@27
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    .line 915
    if-eqz v0, :cond_2

    #@2d
    .line 917
    iput v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@2f
    .line 918
    return-object v4

    #@30
    :cond_0
    move p1, v7

    #@31
    .line 921
    .end local v2    # "offset":J
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "al":I
    .end local v7    # "b":I
    .end local v8    # "index":I
    .restart local p1    # "b":I
    :cond_1
    :goto_0
    return-object v5

    #@32
    .end local p1    # "b":I
    .restart local v2    # "offset":J
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "al":I
    .restart local v7    # "b":I
    .restart local v8    # "index":I
    :cond_2
    move p1, v7

    #@33
    .end local v7    # "b":I
    .restart local p1    # "b":I
    goto :goto_0
.end method

.method final pop()Ljava/util/concurrent/ForkJoinTask;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 888
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@3
    .local v7, "b":I
    iget v9, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@5
    .line 889
    .local v9, "s":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@7
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    #@9
    if-eq v7, v9, :cond_0

    #@b
    array-length v6, v1

    #@c
    .local v6, "al":I
    if-lez v6, :cond_0

    #@e
    .line 890
    add-int/lit8 v0, v6, -0x1

    #@10
    add-int/lit8 v9, v9, -0x1

    #@12
    and-int v8, v0, v9

    #@14
    .line 891
    .local v8, "index":I
    int-to-long v10, v8

    #@15
    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@17
    shl-long/2addr v10, v0

    #@18
    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@1a
    int-to-long v12, v0

    #@1b
    add-long v2, v10, v12

    #@1d
    .line 893
    .local v2, "offset":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@1f
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    .line 892
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    #@25
    .line 894
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    #@27
    .line 895
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@29
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    .line 894
    if-eqz v0, :cond_0

    #@2f
    .line 896
    iput v9, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@31
    .line 897
    return-object v4

    #@32
    .line 900
    .end local v2    # "offset":J
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "al":I
    .end local v8    # "index":I
    :cond_0
    return-object v5
.end method

.method final popCC(Ljava/util/concurrent/CountedCompleter;I)Ljava/util/concurrent/CountedCompleter;
    .locals 19
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1216
    .local p1, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p0

    #@2
    iget v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@4
    .local v10, "b":I
    move-object/from16 v0, p0

    #@6
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@8
    move/from16 v17, v0

    #@a
    .line 1217
    .local v17, "s":I
    move-object/from16 v0, p0

    #@c
    iget-object v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@e
    .local v8, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v8, :cond_4

    #@10
    move/from16 v0, v17

    #@12
    if-eq v10, v0, :cond_4

    #@14
    array-length v9, v8

    #@15
    .local v9, "al":I
    if-lez v9, :cond_4

    #@17
    .line 1218
    add-int/lit8 v2, v9, -0x1

    #@19
    add-int/lit8 v3, v17, -0x1

    #@1b
    and-int v11, v2, v3

    #@1d
    .line 1219
    .local v11, "index":I
    int-to-long v2, v11

    #@1e
    sget v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@20
    shl-long/2addr v2, v4

    #@21
    sget v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@23
    int-to-long v4, v4

    #@24
    add-long v14, v2, v4

    #@26
    .line 1221
    .local v14, "offset":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@28
    invoke-virtual {v2, v8, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@2b
    move-result-object v12

    #@2c
    .line 1220
    check-cast v12, Ljava/util/concurrent/ForkJoinTask;

    #@2e
    .line 1222
    .local v12, "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    instance-of v2, v12, Ljava/util/concurrent/CountedCompleter;

    #@30
    if-eqz v2, :cond_4

    #@32
    move-object/from16 v18, v12

    #@34
    .line 1223
    nop

    #@35
    nop

    #@36
    .line 1224
    .local v18, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v16, v18

    #@38
    .line 1225
    .local v16, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_0
    move-object/from16 v0, v16

    #@3a
    move-object/from16 v1, p1

    #@3c
    if-ne v0, v1, :cond_3

    #@3e
    .line 1226
    and-int/lit8 v2, p2, 0x1

    #@40
    if-nez v2, :cond_2

    #@42
    .line 1227
    const/4 v13, 0x0

    #@43
    .line 1228
    .local v13, "popped":Z
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@45
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    #@47
    const/4 v6, 0x0

    #@48
    const/4 v7, 0x1

    #@49
    move-object/from16 v3, p0

    #@4b
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_4

    #@51
    .line 1229
    move-object/from16 v0, p0

    #@53
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@55
    move/from16 v0, v17

    #@57
    if-ne v2, v0, :cond_1

    #@59
    move-object/from16 v0, p0

    #@5b
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@5d
    if-ne v2, v8, :cond_1

    #@5f
    .line 1230
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@61
    .line 1231
    const/4 v7, 0x0

    #@62
    move-object v3, v8

    #@63
    move-wide v4, v14

    #@64
    move-object/from16 v6, v18

    #@66
    .line 1230
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@69
    move-result v2

    #@6a
    .line 1229
    if-eqz v2, :cond_1

    #@6c
    .line 1232
    const/4 v13, 0x1

    #@6d
    .line 1233
    add-int/lit8 v2, v17, -0x1

    #@6f
    move-object/from16 v0, p0

    #@71
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@73
    .line 1235
    :cond_1
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@75
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    #@77
    const/4 v3, 0x0

    #@78
    move-object/from16 v0, p0

    #@7a
    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@7d
    .line 1236
    if-eqz v13, :cond_4

    #@7f
    .line 1237
    return-object v18

    #@80
    .line 1240
    .end local v13    # "popped":Z
    :cond_2
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@82
    .line 1241
    const/4 v7, 0x0

    #@83
    move-object v3, v8

    #@84
    move-wide v4, v14

    #@85
    move-object/from16 v6, v18

    #@87
    .line 1240
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@8a
    move-result v2

    #@8b
    if-eqz v2, :cond_4

    #@8d
    .line 1242
    add-int/lit8 v2, v17, -0x1

    #@8f
    move-object/from16 v0, p0

    #@91
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@93
    .line 1243
    return-object v18

    #@94
    .line 1247
    :cond_3
    move-object/from16 v0, v16

    #@96
    iget-object v0, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@98
    move-object/from16 v16, v0

    #@9a
    if-nez v16, :cond_0

    #@9c
    .line 1252
    .end local v9    # "al":I
    .end local v11    # "index":I
    .end local v12    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "offset":J
    .end local v16    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v18    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_4
    const/4 v2, 0x0

    #@9d
    return-object v2
.end method

.method final push(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 839
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@2
    invoke-virtual {v5}, Lsun/misc/Unsafe;->storeFence()V

    #@5
    .line 840
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@7
    .line 841
    .local v4, "s":I
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@9
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    #@b
    array-length v1, v0

    #@c
    .local v1, "al":I
    if-lez v1, :cond_0

    #@e
    .line 842
    add-int/lit8 v5, v1, -0x1

    #@10
    and-int/2addr v5, v4

    #@11
    aput-object p1, v0, v5

    #@13
    .line 843
    add-int/lit8 v5, v4, 0x1

    #@15
    iput v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@17
    .line 844
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@19
    .line 845
    .local v3, "p":Ljava/util/concurrent/ForkJoinPool;
    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@1b
    sub-int v2, v5, v4

    #@1d
    .local v2, "d":I
    if-nez v2, :cond_1

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 846
    sget-object v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@23
    invoke-virtual {v5}, Lsun/misc/Unsafe;->fullFence()V

    #@26
    .line 847
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    #@29
    .line 838
    .end local v1    # "al":I
    .end local v2    # "d":I
    .end local v3    # "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 849
    .restart local v1    # "al":I
    .restart local v2    # "d":I
    .restart local v3    # "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_1
    add-int v5, v1, v2

    #@2c
    const/4 v6, 0x1

    #@2d
    if-ne v5, v6, :cond_0

    #@2f
    .line 850
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    #@32
    goto :goto_0
.end method

.method final queueSize()I
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 815
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@3
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@5
    sub-int v0, v2, v3

    #@7
    .line 816
    .local v0, "n":I
    if-ltz v0, :cond_0

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    neg-int v1, v0

    #@b
    goto :goto_0
.end method

.method final runTask(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v3, 0x0

    #@1
    .line 1122
    if-eqz p1, :cond_1

    #@3
    .line 1123
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@6
    .line 1124
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@8
    if-gez v2, :cond_2

    #@a
    .line 1125
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->localPollAndExec()V

    #@d
    .line 1128
    :goto_0
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@f
    add-int/lit8 v0, v2, 0x1

    #@11
    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@13
    .line 1129
    .local v0, "ns":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    #@15
    .line 1130
    .local v1, "thread":Ljava/util/concurrent/ForkJoinWorkerThread;
    iput-object v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@17
    .line 1131
    if-gez v0, :cond_0

    #@19
    .line 1132
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@1b
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->transferStealCount(Ljava/util/concurrent/ForkJoinPool;)V

    #@1e
    .line 1133
    :cond_0
    if-eqz v1, :cond_1

    #@20
    .line 1134
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->afterTopLevelExec()V

    #@23
    .line 1121
    .end local v0    # "ns":I
    .end local v1    # "thread":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    return-void

    #@24
    .line 1127
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->localPopAndExec()V

    #@27
    goto :goto_0
.end method

.method final sharedPush(Ljava/util/concurrent/ForkJoinTask;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v4, 0x0

    #@1
    .line 992
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@3
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    #@5
    const/4 v5, 0x1

    #@6
    move-object v1, p0

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 993
    iget v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@f
    .local v8, "b":I
    iget v10, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@11
    .line 994
    .local v10, "s":I
    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@13
    .local v6, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_1

    #@15
    array-length v7, v6

    #@16
    .local v7, "al":I
    if-lez v7, :cond_1

    #@18
    .line 995
    add-int/lit8 v0, v7, -0x1

    #@1a
    sub-int v9, v8, v10

    #@1c
    .local v9, "d":I
    add-int/2addr v0, v9

    #@1d
    if-lez v0, :cond_1

    #@1f
    .line 996
    add-int/lit8 v0, v7, -0x1

    #@21
    and-int/2addr v0, v10

    #@22
    aput-object p1, v6, v0

    #@24
    .line 997
    add-int/lit8 v0, v10, 0x1

    #@26
    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@28
    .line 998
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@2a
    .line 999
    if-gez v9, :cond_0

    #@2c
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@2e
    if-ne v8, v0, :cond_0

    #@30
    move v11, v9

    #@31
    .line 1008
    .end local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "al":I
    .end local v8    # "b":I
    .end local v9    # "d":I
    .end local v10    # "s":I
    .local v11, "stat":I
    :goto_0
    return v11

    #@32
    .line 999
    .end local v11    # "stat":I
    .restart local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v7    # "al":I
    .restart local v8    # "b":I
    .restart local v9    # "d":I
    .restart local v10    # "s":I
    :cond_0
    const/4 v11, 0x0

    #@33
    .restart local v11    # "stat":I
    goto :goto_0

    #@34
    .line 1002
    .end local v7    # "al":I
    .end local v9    # "d":I
    .end local v11    # "stat":I
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growAndSharedPush(Ljava/util/concurrent/ForkJoinTask;)V

    #@37
    .line 1003
    const/4 v11, 0x0

    #@38
    .restart local v11    # "stat":I
    goto :goto_0

    #@39
    .line 1007
    .end local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "b":I
    .end local v10    # "s":I
    .end local v11    # "stat":I
    :cond_2
    const/4 v11, 0x1

    #@3a
    .restart local v11    # "stat":I
    goto :goto_0
.end method

.method final transferStealCount(Ljava/util/concurrent/ForkJoinPool;)V
    .locals 6
    .param p1, "p"    # Ljava/util/concurrent/ForkJoinPool;

    #@0
    .prologue
    .line 1143
    if-eqz p1, :cond_1

    #@2
    iget-object v0, p1, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    #@4
    .local v0, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v0, :cond_1

    #@6
    .line 1144
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@8
    int-to-long v2, v1

    #@9
    .line 1145
    .local v2, "s":J
    const/4 v1, 0x0

    #@a
    iput v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@c
    .line 1146
    const-wide/16 v4, 0x0

    #@e
    cmp-long v1, v2, v4

    #@10
    if-gez v1, :cond_0

    #@12
    const-wide/32 v2, 0x7fffffff

    #@15
    .line 1147
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@18
    .line 1149
    :try_start_0
    iget-wide v4, v0, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    #@1a
    add-long/2addr v4, v2

    #@1b
    iput-wide v4, v0, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 1151
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@20
    .line 1141
    .end local v0    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v2    # "s":J
    :cond_1
    return-void

    #@21
    .line 1150
    .restart local v0    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .restart local v2    # "s":J
    :catchall_0
    move-exception v1

    #@22
    .line 1151
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 1150
    throw v1
.end method

.method final tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1163
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p1, :cond_8

    #@2
    iget v0, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@4
    if-ltz v0, :cond_8

    #@6
    .line 1165
    :cond_0
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@8
    .local v7, "b":I
    iget v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@a
    .local v12, "s":I
    sub-int v8, v7, v12

    #@c
    .local v8, "d":I
    if-gez v8, :cond_8

    #@e
    .line 1166
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@10
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_8

    #@12
    array-length v6, v1

    #@13
    .local v6, "al":I
    if-lez v6, :cond_8

    #@15
    .line 1168
    :cond_1
    add-int/lit8 v12, v12, -0x1

    #@17
    add-int/lit8 v0, v6, -0x1

    #@19
    and-int v9, v12, v0

    #@1b
    .line 1169
    .local v9, "index":I
    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@1d
    shl-int v0, v9, v0

    #@1f
    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@21
    add-int/2addr v0, v5

    #@22
    int-to-long v2, v0

    #@23
    .line 1171
    .local v2, "offset":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@25
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    .line 1170
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    #@2b
    .line 1172
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v4, :cond_3

    #@2d
    .line 1204
    :cond_2
    :goto_0
    iget v0, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2f
    if-gez v0, :cond_0

    #@31
    .line 1205
    const/4 v0, 0x0

    #@32
    return v0

    #@33
    .line 1174
    :cond_3
    if-ne v4, p1, :cond_6

    #@35
    .line 1175
    const/4 v11, 0x0

    #@36
    .line 1176
    .local v11, "removed":Z
    add-int/lit8 v0, v12, 0x1

    #@38
    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@3a
    if-ne v0, v5, :cond_5

    #@3c
    .line 1177
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@3e
    const/4 v5, 0x0

    #@3f
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_4

    #@45
    .line 1178
    iput v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@47
    .line 1179
    const/4 v11, 0x1

    #@48
    .line 1185
    .end local v11    # "removed":Z
    :cond_4
    :goto_1
    if-eqz v11, :cond_2

    #@4a
    .line 1186
    iget-object v10, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@4c
    .line 1187
    .local v10, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@4e
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@51
    .line 1188
    iput-object v10, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@53
    goto :goto_0

    #@54
    .line 1182
    .end local v10    # "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "removed":Z
    :cond_5
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@56
    if-ne v0, v7, :cond_4

    #@58
    .line 1183
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@5a
    .line 1184
    new-instance v5, Ljava/util/concurrent/ForkJoinPool$EmptyTask;

    #@5c
    invoke-direct {v5}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;-><init>()V

    #@5f
    .line 1183
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@62
    move-result v11

    #@63
    .local v11, "removed":Z
    goto :goto_1

    #@64
    .line 1192
    .end local v11    # "removed":Z
    :cond_6
    iget v0, v4, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@66
    if-gez v0, :cond_7

    #@68
    add-int/lit8 v0, v12, 0x1

    #@6a
    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@6c
    if-ne v0, v5, :cond_7

    #@6e
    .line 1193
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@70
    const/4 v5, 0x0

    #@71
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@74
    move-result v0

    #@75
    if-eqz v0, :cond_2

    #@77
    .line 1194
    iput v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@79
    goto :goto_0

    #@7a
    .line 1198
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@7c
    if-nez v8, :cond_1

    #@7e
    .line 1199
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@80
    if-ne v0, v7, :cond_2

    #@82
    .line 1201
    const/4 v0, 0x0

    #@83
    return v0

    #@84
    .line 1208
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "offset":J
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "al":I
    .end local v7    # "b":I
    .end local v8    # "d":I
    .end local v9    # "index":I
    .end local v12    # "s":I
    :cond_8
    const/4 v0, 0x1

    #@85
    return v0
.end method

.method final trySharedUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1032
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v9, 0x0

    #@1
    .line 1033
    .local v9, "popped":Z
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@3
    add-int/lit8 v12, v0, -0x1

    #@5
    .line 1034
    .local v12, "s":I
    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@7
    .local v6, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_1

    #@9
    array-length v7, v6

    #@a
    .local v7, "al":I
    if-lez v7, :cond_1

    #@c
    .line 1035
    add-int/lit8 v0, v7, -0x1

    #@e
    and-int v8, v0, v12

    #@10
    .line 1036
    .local v8, "index":I
    int-to-long v0, v8

    #@11
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@13
    shl-long/2addr v0, v2

    #@14
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@16
    int-to-long v2, v2

    #@17
    add-long v10, v0, v2

    #@19
    .line 1037
    .local v10, "offset":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@1b
    invoke-virtual {v0, v6, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    #@1e
    move-result-object v13

    #@1f
    check-cast v13, Ljava/util/concurrent/ForkJoinTask;

    #@21
    .line 1038
    .local v13, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-ne v13, p1, :cond_1

    #@23
    .line 1039
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@25
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    #@27
    const/4 v4, 0x0

    #@28
    const/4 v5, 0x1

    #@29
    move-object v1, p0

    #@2a
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@2d
    move-result v0

    #@2e
    .line 1038
    if-eqz v0, :cond_1

    #@30
    .line 1040
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@32
    add-int/lit8 v1, v12, 0x1

    #@34
    if-ne v0, v1, :cond_0

    #@36
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@38
    if-ne v0, v6, :cond_0

    #@3a
    .line 1041
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@3c
    const/4 v5, 0x0

    #@3d
    move-object v1, v6

    #@3e
    move-wide v2, v10

    #@3f
    move-object v4, p1

    #@40
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    .line 1040
    if-eqz v0, :cond_0

    #@46
    .line 1042
    const/4 v9, 0x1

    #@47
    .line 1043
    iput v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@49
    .line 1045
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@4b
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    #@4d
    const/4 v1, 0x0

    #@4e
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@51
    .line 1048
    .end local v7    # "al":I
    .end local v8    # "index":I
    .end local v10    # "offset":J
    .end local v13    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    return v9
.end method

.method final tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 973
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@2
    .local v7, "b":I
    iget v9, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@4
    .line 974
    .local v9, "s":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@6
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    #@8
    if-eq v7, v9, :cond_0

    #@a
    array-length v6, v1

    #@b
    .local v6, "al":I
    if-lez v6, :cond_0

    #@d
    .line 975
    add-int/lit8 v0, v6, -0x1

    #@f
    add-int/lit8 v9, v9, -0x1

    #@11
    and-int v8, v0, v9

    #@13
    .line 976
    .local v8, "index":I
    int-to-long v4, v8

    #@14
    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@16
    shl-long/2addr v4, v0

    #@17
    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@19
    int-to-long v10, v0

    #@1a
    add-long v2, v4, v10

    #@1c
    .line 977
    .local v2, "offset":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@1e
    const/4 v5, 0x0

    #@1f
    move-object v4, p1

    #@20
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 978
    iput v9, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@28
    .line 979
    const/4 v0, 0x1

    #@29
    return v0

    #@2a
    .line 982
    .end local v2    # "offset":J
    .end local v6    # "al":I
    .end local v8    # "index":I
    :cond_0
    const/4 v0, 0x0

    #@2b
    return v0
.end method
