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

.field private static final QBASE:J

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

.field volatile currentJoin:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field currentSteal:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile eventCount:I

.field hint:I

.field final mode:S

.field nextWait:I

.field nsteals:I

.field final owner:Ljava/util/concurrent/ForkJoinWorkerThread;

.field volatile pad00:J

.field volatile pad01:J

.field volatile pad02:J

.field volatile pad03:J

.field volatile pad04:J

.field volatile pad05:J

.field volatile pad06:J

.field volatile pad10:Ljava/lang/Object;

.field volatile pad11:Ljava/lang/Object;

.field volatile pad12:Ljava/lang/Object;

.field volatile pad13:Ljava/lang/Object;

.field volatile pad14:Ljava/lang/Object;

.field volatile pad15:Ljava/lang/Object;

.field volatile pad16:Ljava/lang/Object;

.field volatile pad17:Ljava/lang/Object;

.field volatile pad18:Ljava/lang/Object;

.field volatile pad19:Ljava/lang/Object;

.field volatile pad1a:Ljava/lang/Object;

.field volatile pad1b:Ljava/lang/Object;

.field volatile pad1c:Ljava/lang/Object;

.field volatile pad1d:Ljava/lang/Object;

.field volatile parker:Ljava/lang/Thread;

.field final pool:Ljava/util/concurrent/ForkJoinPool;

.field poolIndex:S

.field volatile qlock:I

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 1023
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v4

    #@4
    sput-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@6
    .line 1024
    const-class v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@8
    .line 1025
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, [Ljava/util/concurrent/ForkJoinTask;

    #@a
    .line 1026
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@c
    .line 1027
    const-string/jumbo v5, "base"

    #@f
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@12
    move-result-object v5

    #@13
    .line 1026
    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@16
    move-result-wide v4

    #@17
    sput-wide v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QBASE:J

    #@19
    .line 1028
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@1b
    .line 1029
    const-string/jumbo v5, "qlock"

    #@1e
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@21
    move-result-object v5

    #@22
    .line 1028
    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@25
    move-result-wide v4

    #@26
    sput-wide v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    #@28
    .line 1030
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@2a
    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    #@2d
    move-result v4

    #@2e
    sput v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@30
    .line 1031
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@32
    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    #@35
    move-result v3

    #@36
    .line 1032
    .local v3, "scale":I
    add-int/lit8 v4, v3, -0x1

    #@38
    and-int/2addr v4, v3

    #@39
    if-eqz v4, :cond_0

    #@3b
    .line 1033
    new-instance v4, Ljava/lang/Error;

    #@3d
    const-string/jumbo v5, "data type scale not a power of two"

    #@40
    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@43
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 1035
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "scale":I
    :catch_0
    move-exception v1

    #@45
    .line 1036
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    #@47
    invoke-direct {v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@4a
    throw v4

    #@4b
    .line 1034
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "scale":I
    :cond_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@4e
    move-result v4

    #@4f
    rsub-int/lit8 v4, v4, 0x1f

    #@51
    sput v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@53
    .line 599
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;II)V
    .locals 2
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p2, "owner"    # Ljava/util/concurrent/ForkJoinWorkerThread;
    .param p3, "mode"    # I
    .param p4, "seed"    # I

    #@0
    .prologue
    const/16 v1, 0x1000

    #@2
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 644
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@7
    .line 645
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    #@9
    .line 646
    int-to-short v0, p3

    #@a
    iput-short v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->mode:S

    #@c
    .line 647
    iput p4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    #@e
    .line 649
    iput v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@10
    iput v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@12
    .line 643
    return-void
.end method


# virtual methods
.method final cancelAll()V
    .locals 2

    #@0
    .prologue
    .line 823
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@2
    invoke-static {v1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    #@5
    .line 824
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@7
    invoke-static {v1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    #@a
    .line 825
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    #@d
    move-result-object v0

    #@e
    .local v0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    #@10
    .line 826
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    #@13
    goto :goto_0

    #@14
    .line 822
    :cond_0
    return-void
.end method

.method final externalPopAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 954
    .local p1, "root":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@2
    iget v11, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@4
    .local v11, "s":I
    sub-int/2addr v0, v11

    #@5
    if-gez v0, :cond_4

    #@7
    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@9
    .local v6, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_4

    #@b
    .line 955
    array-length v0, v6

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    add-int/lit8 v1, v11, -0x1

    #@10
    and-int/2addr v0, v1

    #@11
    sget v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@13
    shl-int/2addr v0, v1

    #@14
    sget v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@16
    add-int/2addr v0, v1

    #@17
    int-to-long v8, v0

    #@18
    .line 956
    .local v8, "j":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@1a
    invoke-virtual {v0, v6, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    #@1d
    move-result-object v7

    #@1e
    .local v7, "o":Ljava/lang/Object;
    instance-of v0, v7, Ljava/util/concurrent/CountedCompleter;

    #@20
    if-eqz v0, :cond_4

    #@22
    move-object v12, v7

    #@23
    .line 957
    check-cast v12, Ljava/util/concurrent/CountedCompleter;

    #@25
    .local v12, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v10, v12

    #@26
    .line 958
    .local v10, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_0
    if-ne v10, p1, :cond_3

    #@28
    .line 959
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@2a
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    #@2c
    const/4 v4, 0x0

    #@2d
    const/4 v5, 0x1

    #@2e
    move-object v1, p0

    #@2f
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 960
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@37
    if-ne v0, v11, :cond_2

    #@39
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@3b
    if-ne v0, v6, :cond_2

    #@3d
    .line 961
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@3f
    const/4 v5, 0x0

    #@40
    move-object v1, v6

    #@41
    move-wide v2, v8

    #@42
    move-object v4, v12

    #@43
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@46
    move-result v0

    #@47
    .line 960
    if-eqz v0, :cond_2

    #@49
    .line 962
    add-int/lit8 v0, v11, -0x1

    #@4b
    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@4d
    .line 963
    const/4 v0, 0x0

    #@4e
    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@50
    .line 964
    invoke-virtual {v12}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    #@53
    .line 969
    :cond_1
    :goto_0
    const/4 v0, 0x1

    #@54
    return v0

    #@55
    .line 967
    :cond_2
    const/4 v0, 0x0

    #@56
    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@58
    goto :goto_0

    #@59
    .line 971
    :cond_3
    iget-object v10, v10, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@5b
    if-nez v10, :cond_0

    #@5d
    .line 976
    .end local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "j":J
    .end local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v12    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_4
    const/4 v0, 0x0

    #@5e
    return v0
.end method

.method final growArray()[Ljava/util/concurrent/ForkJoinTask;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 702
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@3
    .line 703
    .local v1, "oldA":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    #@5
    array-length v0, v1

    #@6
    shl-int/lit8 v12, v0, 0x1

    #@8
    .line 704
    .local v12, "size":I
    :goto_0
    const/high16 v0, 0x4000000

    #@a
    if-le v12, v0, :cond_1

    #@c
    .line 705
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    #@e
    const-string/jumbo v2, "Queue capacity exceeded"

    #@11
    invoke-direct {v0, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 703
    .end local v12    # "size":I
    :cond_0
    const/16 v12, 0x2000

    #@17
    .restart local v12    # "size":I
    goto :goto_0

    #@18
    .line 707
    :cond_1
    new-array v6, v12, [Ljava/util/concurrent/ForkJoinTask;

    #@1a
    iput-object v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@1c
    .line 708
    .local v6, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_4

    #@1e
    array-length v0, v1

    #@1f
    add-int/lit8 v10, v0, -0x1

    #@21
    .local v10, "oldMask":I
    if-ltz v10, :cond_4

    #@23
    .line 709
    iget v13, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@25
    .local v13, "t":I
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@27
    .local v7, "b":I
    sub-int v0, v13, v7

    #@29
    if-lez v0, :cond_4

    #@2b
    .line 710
    add-int/lit8 v9, v12, -0x1

    #@2d
    .line 713
    .local v9, "mask":I
    :cond_2
    and-int v0, v7, v10

    #@2f
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@31
    shl-int/2addr v0, v2

    #@32
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@34
    add-int v11, v0, v2

    #@36
    .line 714
    .local v11, "oldj":I
    and-int v0, v7, v9

    #@38
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@3a
    shl-int/2addr v0, v2

    #@3b
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@3d
    add-int v8, v0, v2

    #@3f
    .line 715
    .local v8, "j":I
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@41
    int-to-long v2, v11

    #@42
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@45
    move-result-object v4

    #@46
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    #@48
    .line 716
    .local v4, "x":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_3

    #@4a
    .line 717
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@4c
    int-to-long v2, v11

    #@4d
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@50
    move-result v0

    #@51
    .line 716
    if-eqz v0, :cond_3

    #@53
    .line 718
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@55
    int-to-long v2, v8

    #@56
    invoke-virtual {v0, v6, v2, v3, v4}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    #@59
    .line 719
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@5b
    if-ne v7, v13, :cond_2

    #@5d
    .line 721
    .end local v4    # "x":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "b":I
    .end local v8    # "j":I
    .end local v9    # "mask":I
    .end local v10    # "oldMask":I
    .end local v11    # "oldj":I
    .end local v13    # "t":I
    :cond_4
    return-object v6
.end method

.method final internalPopAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "root":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v10, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 984
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@4
    iget v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@6
    .local v8, "s":I
    sub-int/2addr v0, v8

    #@7
    if-gez v0, :cond_3

    #@9
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@b
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_3

    #@d
    .line 985
    array-length v0, v1

    #@e
    add-int/lit8 v0, v0, -0x1

    #@10
    add-int/lit8 v9, v8, -0x1

    #@12
    and-int/2addr v0, v9

    #@13
    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@15
    shl-int/2addr v0, v9

    #@16
    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@18
    add-int/2addr v0, v9

    #@19
    int-to-long v2, v0

    #@1a
    .line 986
    .local v2, "j":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@1c
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    #@1f
    move-result-object v6

    #@20
    .local v6, "o":Ljava/lang/Object;
    instance-of v0, v6, Ljava/util/concurrent/CountedCompleter;

    #@22
    if-eqz v0, :cond_3

    #@24
    move-object v4, v6

    #@25
    .line 987
    check-cast v4, Ljava/util/concurrent/CountedCompleter;

    #@27
    .local v4, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v7, v4

    #@28
    .line 988
    .local v7, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_0
    if-ne v7, p1, :cond_2

    #@2a
    .line 989
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@2c
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_1

    #@32
    .line 990
    add-int/lit8 v0, v8, -0x1

    #@34
    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@36
    .line 991
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    #@39
    .line 993
    :cond_1
    const/4 v0, 0x1

    #@3a
    return v0

    #@3b
    .line 995
    :cond_2
    iget-object v7, v7, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@3d
    if-nez v7, :cond_0

    #@3f
    .line 1000
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v4    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_3
    return v10
.end method

.method final isApparentlyUnblocked()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1008
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@3
    if-ltz v3, :cond_0

    #@5
    .line 1009
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    #@7
    .local v1, "wt":Ljava/lang/Thread;
    if-eqz v1, :cond_0

    #@9
    .line 1010
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    #@c
    move-result-object v0

    #@d
    .local v0, "s":Ljava/lang/Thread$State;
    sget-object v3, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    #@f
    if-eq v0, v3, :cond_0

    #@11
    .line 1011
    sget-object v3, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    #@13
    if-eq v0, v3, :cond_0

    #@15
    .line 1012
    sget-object v3, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    #@17
    if-eq v0, v3, :cond_0

    #@19
    const/4 v2, 0x1

    #@1a
    .line 1008
    .end local v0    # "s":Ljava/lang/Thread$State;
    .end local v1    # "wt":Ljava/lang/Thread;
    :cond_0
    return v2
.end method

.method final isEmpty()Z
    .locals 12

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 667
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@4
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@6
    .local v3, "s":I
    sub-int v2, v6, v3

    #@8
    .line 668
    .local v2, "n":I
    if-gez v2, :cond_0

    #@a
    .line 669
    const/4 v6, -0x1

    #@b
    if-ne v2, v6, :cond_2

    #@d
    .line 670
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@f
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    #@11
    .line 671
    array-length v6, v0

    #@12
    add-int/lit8 v1, v6, -0x1

    #@14
    .local v1, "m":I
    if-gez v1, :cond_1

    #@16
    .line 668
    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "m":I
    :cond_0
    :goto_0
    return v4

    #@17
    .line 672
    .restart local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v1    # "m":I
    :cond_1
    sget-object v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@19
    .line 673
    add-int/lit8 v7, v3, -0x1

    #@1b
    and-int/2addr v7, v1

    #@1c
    sget v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@1e
    shl-int/2addr v7, v8

    #@1f
    int-to-long v8, v7

    #@20
    sget v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@22
    int-to-long v10, v7

    #@23
    add-long/2addr v8, v10

    #@24
    .line 672
    invoke-virtual {v6, v0, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    if-eqz v6, :cond_0

    #@2a
    move v4, v5

    #@2b
    goto :goto_0

    #@2c
    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "m":I
    :cond_2
    move v4, v5

    #@2d
    .line 669
    goto :goto_0
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
    .line 789
    iget-short v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->mode:S

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method final peek()Ljava/util/concurrent/ForkJoinTask;
    .locals 8
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
    .line 796
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@3
    .line 797
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    #@5
    array-length v4, v0

    #@6
    add-int/lit8 v3, v4, -0x1

    #@8
    .local v3, "m":I
    if-gez v3, :cond_1

    #@a
    .line 798
    .end local v3    # "m":I
    :cond_0
    return-object v5

    #@b
    .line 799
    .restart local v3    # "m":I
    :cond_1
    iget-short v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->mode:S

    #@d
    if-nez v4, :cond_2

    #@f
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@11
    add-int/lit8 v1, v4, -0x1

    #@13
    .line 800
    .local v1, "i":I
    :goto_0
    and-int v4, v1, v3

    #@15
    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@17
    shl-int/2addr v4, v5

    #@18
    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@1a
    add-int v2, v4, v5

    #@1c
    .line 801
    .local v2, "j":I
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@1e
    int-to-long v6, v2

    #@1f
    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    #@25
    return-object v4

    #@26
    .line 799
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@28
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method final poll()Ljava/util/concurrent/ForkJoinTask;
    .locals 8
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
    .line 767
    :cond_0
    :goto_0
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@3
    .local v6, "b":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@5
    sub-int v0, v6, v0

    #@7
    if-gez v0, :cond_2

    #@9
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@b
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_2

    #@d
    .line 768
    array-length v0, v1

    #@e
    add-int/lit8 v0, v0, -0x1

    #@10
    and-int/2addr v0, v6

    #@11
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@13
    shl-int/2addr v0, v2

    #@14
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@16
    add-int v7, v0, v2

    #@18
    .line 769
    .local v7, "j":I
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@1a
    int-to-long v2, v7

    #@1b
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    #@21
    .line 770
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_1

    #@23
    .line 771
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@25
    int-to-long v2, v7

    #@26
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_0

    #@2c
    .line 772
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@2e
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QBASE:J

    #@30
    add-int/lit8 v5, v6, 0x1

    #@32
    invoke-virtual {v0, p0, v2, v3, v5}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@35
    .line 773
    return-object v4

    #@36
    .line 776
    :cond_1
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@38
    if-ne v0, v6, :cond_0

    #@3a
    .line 777
    add-int/lit8 v0, v6, 0x1

    #@3c
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@3e
    if-ne v0, v2, :cond_3

    #@40
    .line 782
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "j":I
    :cond_2
    return-object v5

    #@41
    .line 779
    .restart local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v7    # "j":I
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@44
    goto :goto_0
.end method

.method final pollAndExecAll()V
    .locals 1

    #@0
    .prologue
    .line 835
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    #@3
    move-result-object v0

    #@4
    .local v0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    #@6
    .line 836
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@9
    goto :goto_0

    #@a
    .line 834
    :cond_0
    return-void
.end method

.method final pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "root":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v12, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 926
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@5
    .local v6, "b":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@7
    sub-int v0, v6, v0

    #@9
    if-gez v0, :cond_4

    #@b
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@d
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_4

    #@f
    .line 927
    array-length v0, v1

    #@10
    add-int/lit8 v0, v0, -0x1

    #@12
    and-int/2addr v0, v6

    #@13
    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@15
    shl-int/2addr v0, v9

    #@16
    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@18
    add-int/2addr v0, v9

    #@19
    int-to-long v2, v0

    #@1a
    .line 928
    .local v2, "j":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@1c
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@1f
    move-result-object v7

    #@20
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_0

    #@22
    .line 929
    return v12

    #@23
    .line 930
    :cond_0
    instance-of v0, v7, Ljava/util/concurrent/CountedCompleter;

    #@25
    if-eqz v0, :cond_4

    #@27
    move-object v4, v7

    #@28
    .line 931
    check-cast v4, Ljava/util/concurrent/CountedCompleter;

    #@2a
    .local v4, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v8, v4

    #@2b
    .line 932
    .local v8, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_1
    if-ne v8, p1, :cond_3

    #@2d
    .line 933
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@2f
    if-ne v0, v6, :cond_2

    #@31
    .line 934
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@33
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    .line 933
    if-eqz v0, :cond_2

    #@39
    .line 935
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@3b
    sget-wide v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QBASE:J

    #@3d
    add-int/lit8 v5, v6, 0x1

    #@3f
    invoke-virtual {v0, p0, v10, v11, v5}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@42
    .line 936
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    #@45
    .line 938
    :cond_2
    return v12

    #@46
    .line 940
    :cond_3
    iget-object v8, v8, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@48
    if-nez v8, :cond_1

    #@4a
    .line 945
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v4    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_4
    return v10
.end method

.method final pollAt(I)Ljava/util/concurrent/ForkJoinTask;
    .locals 7
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
    .line 751
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@3
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    #@5
    .line 752
    array-length v0, v1

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    and-int/2addr v0, p1

    #@9
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@b
    shl-int/2addr v0, v2

    #@c
    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@e
    add-int v6, v0, v2

    #@10
    .line 753
    .local v6, "j":I
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@12
    int-to-long v2, v6

    #@13
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    #@19
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    #@1b
    .line 754
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@1d
    if-ne v0, p1, :cond_0

    #@1f
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@21
    int-to-long v2, v6

    #@22
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    .line 753
    if-eqz v0, :cond_0

    #@28
    .line 755
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@2a
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QBASE:J

    #@2c
    add-int/lit8 v5, p1, 0x1

    #@2e
    invoke-virtual {v0, p0, v2, v3, v5}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@31
    .line 756
    return-object v4

    #@32
    .line 759
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "j":I
    :cond_0
    return-object v5
.end method

.method final pop()Ljava/util/concurrent/ForkJoinTask;
    .locals 9
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
    .line 730
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@3
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    #@5
    array-length v0, v1

    #@6
    add-int/lit8 v6, v0, -0x1

    #@8
    .local v6, "m":I
    if-ltz v6, :cond_1

    #@a
    .line 731
    :cond_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@c
    add-int/lit8 v7, v0, -0x1

    #@e
    .local v7, "s":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@10
    sub-int v0, v7, v0

    #@12
    if-ltz v0, :cond_1

    #@14
    .line 732
    and-int v0, v6, v7

    #@16
    sget v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@18
    shl-int/2addr v0, v8

    #@19
    sget v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@1b
    add-int/2addr v0, v8

    #@1c
    int-to-long v2, v0

    #@1d
    .line 733
    .local v2, "j":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@1f
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    #@25
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v4, :cond_2

    #@27
    .line 741
    .end local v2    # "j":J
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "m":I
    .end local v7    # "s":I
    :cond_1
    return-object v5

    #@28
    .line 735
    .restart local v2    # "j":J
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "m":I
    .restart local v7    # "s":I
    :cond_2
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@2a
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_0

    #@30
    .line 736
    iput v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@32
    .line 737
    return-object v4
.end method

.method final push(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 685
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@2
    .line 686
    .local v4, "s":I
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@4
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    #@6
    .line 687
    array-length v5, v0

    #@7
    add-int/lit8 v1, v5, -0x1

    #@9
    .line 688
    .local v1, "m":I
    sget-object v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@b
    and-int v6, v1, v4

    #@d
    sget v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@f
    shl-int/2addr v6, v7

    #@10
    sget v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@12
    add-int/2addr v6, v7

    #@13
    int-to-long v6, v6

    #@14
    invoke-virtual {v5, v0, v6, v7, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@17
    .line 689
    add-int/lit8 v5, v4, 0x1

    #@19
    iput v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@1b
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@1d
    sub-int v2, v5, v6

    #@1f
    .local v2, "n":I
    const/4 v5, 0x2

    #@20
    if-gt v2, v5, :cond_1

    #@22
    .line 690
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@24
    .local v3, "p":Ljava/util/concurrent/ForkJoinPool;
    iget-object v5, v3, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@26
    invoke-virtual {v3, v5, p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork([Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    #@29
    .line 683
    .end local v1    # "m":I
    .end local v2    # "n":I
    .end local v3    # "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 691
    .restart local v1    # "m":I
    .restart local v2    # "n":I
    :cond_1
    if-lt v2, v1, :cond_0

    #@2c
    .line 692
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    #@2f
    goto :goto_0
.end method

.method final queueSize()I
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 656
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@3
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@5
    sub-int v0, v2, v3

    #@7
    .line 657
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
    .locals 10
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
    const/4 v5, 0x0

    #@1
    .line 844
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@3
    if-eqz p1, :cond_0

    #@5
    .line 845
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@8
    .line 846
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@a
    .line 847
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-short v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->mode:S

    #@c
    .line 848
    .local v7, "md":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@12
    .line 849
    iput-object v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@14
    .line 850
    if-eqz v7, :cond_1

    #@16
    .line 851
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAndExecAll()V

    #@19
    .line 843
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "md":I
    :cond_0
    return-void

    #@1a
    .line 852
    .restart local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v7    # "md":I
    :cond_1
    if-eqz v1, :cond_0

    #@1c
    .line 853
    array-length v0, v1

    #@1d
    add-int/lit8 v6, v0, -0x1

    #@1f
    .line 854
    .local v6, "m":I
    :cond_2
    :goto_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@21
    add-int/lit8 v8, v0, -0x1

    #@23
    .local v8, "s":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@25
    sub-int v0, v8, v0

    #@27
    if-ltz v0, :cond_0

    #@29
    .line 855
    and-int v0, v6, v8

    #@2b
    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@2d
    shl-int/2addr v0, v9

    #@2e
    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@30
    add-int/2addr v0, v9

    #@31
    int-to-long v2, v0

    #@32
    .line 856
    .local v2, "i":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@34
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    #@3a
    .line 857
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    #@3c
    .line 859
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@3e
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_2

    #@44
    .line 860
    iput v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@46
    .line 861
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@49
    goto :goto_0
.end method

.method final tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z
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
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v5, 0x0

    #@1
    .line 878
    if-eqz p1, :cond_8

    #@3
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@5
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_8

    #@7
    array-length v0, v1

    #@8
    add-int/lit8 v8, v0, -0x1

    #@a
    .local v8, "m":I
    if-ltz v8, :cond_8

    #@c
    .line 879
    iget v11, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@e
    .local v11, "s":I
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@10
    .local v6, "b":I
    sub-int v9, v11, v6

    #@12
    .local v9, "n":I
    if-lez v9, :cond_8

    #@14
    .line 880
    const/4 v10, 0x0

    #@15
    .local v10, "removed":Z
    const/4 v7, 0x1

    #@16
    .line 881
    .local v7, "empty":Z
    const/4 v12, 0x1

    #@17
    .line 883
    .local v12, "stat":Z
    :cond_0
    add-int/lit8 v11, v11, -0x1

    #@19
    and-int v0, v11, v8

    #@1b
    sget v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@1d
    shl-int/2addr v0, v13

    #@1e
    sget v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@20
    add-int/2addr v0, v13

    #@21
    int-to-long v2, v0

    #@22
    .line 884
    .local v2, "j":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@24
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    #@2a
    .line 885
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v4, :cond_3

    #@2c
    .line 912
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v10    # "removed":Z
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    #@2e
    .line 913
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@31
    .line 917
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v6    # "b":I
    .end local v7    # "empty":Z
    .end local v8    # "m":I
    .end local v9    # "n":I
    .end local v11    # "s":I
    :cond_2
    :goto_1
    return v12

    #@32
    .line 887
    .restart local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v2    # "j":J
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "b":I
    .restart local v7    # "empty":Z
    .restart local v8    # "m":I
    .restart local v9    # "n":I
    .restart local v10    # "removed":Z
    .restart local v11    # "s":I
    :cond_3
    if-ne v4, p1, :cond_5

    #@34
    .line 888
    add-int/lit8 v0, v11, 0x1

    #@36
    iget v13, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@38
    if-ne v0, v13, :cond_4

    #@3a
    .line 889
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@3c
    move-object v4, p1

    #@3d
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@40
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-result v0

    #@41
    if-eqz v0, :cond_1

    #@43
    .line 891
    iput v11, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@45
    .line 892
    const/4 v10, 0x1

    #@46
    goto :goto_0

    #@47
    .line 894
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@49
    if-ne v0, v6, :cond_1

    #@4b
    .line 895
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@4d
    .line 896
    new-instance v5, Ljava/util/concurrent/ForkJoinPool$EmptyTask;

    #@4f
    invoke-direct {v5}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;-><init>()V

    #@52
    move-object v4, p1

    #@53
    .line 895
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@56
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-result v10

    #@57
    .local v10, "removed":Z
    goto :goto_0

    #@58
    .line 899
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v10, "removed":Z
    :cond_5
    iget v0, v4, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@5a
    if-ltz v0, :cond_7

    #@5c
    .line 900
    const/4 v7, 0x0

    #@5d
    .line 906
    :cond_6
    add-int/lit8 v9, v9, -0x1

    #@5f
    if-nez v9, :cond_0

    #@61
    .line 907
    if-nez v7, :cond_1

    #@63
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@65
    if-ne v0, v6, :cond_1

    #@67
    .line 908
    const/4 v12, 0x0

    #@68
    goto :goto_0

    #@69
    .line 901
    :cond_7
    add-int/lit8 v0, v11, 0x1

    #@6b
    iget v13, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@6d
    if-ne v0, v13, :cond_6

    #@6f
    .line 902
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@71
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@74
    move-result v0

    #@75
    if-eqz v0, :cond_1

    #@77
    .line 903
    iput v11, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@79
    goto :goto_0

    #@7a
    .line 916
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "b":I
    .end local v7    # "empty":Z
    .end local v8    # "m":I
    .end local v9    # "n":I
    .end local v10    # "removed":Z
    .end local v11    # "s":I
    .end local v12    # "stat":Z
    :cond_8
    const/4 v12, 0x0

    #@7b
    .restart local v12    # "stat":Z
    goto :goto_1
.end method

.method final tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v5, 0x0

    #@1
    .line 810
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@3
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    #@5
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@7
    .local v6, "s":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@9
    if-eq v6, v0, :cond_0

    #@b
    .line 811
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    #@d
    .line 812
    array-length v2, v1

    #@e
    add-int/lit8 v2, v2, -0x1

    #@10
    add-int/lit8 v6, v6, -0x1

    #@12
    and-int/2addr v2, v6

    #@13
    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    #@15
    shl-int/2addr v2, v3

    #@16
    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    #@18
    add-int/2addr v2, v3

    #@19
    int-to-long v2, v2

    #@1a
    move-object v4, p1

    #@1b
    .line 811
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    .line 810
    if-eqz v0, :cond_0

    #@21
    .line 813
    iput v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@23
    .line 814
    const/4 v0, 0x1

    #@24
    return v0

    #@25
    .line 816
    .end local v6    # "s":I
    :cond_0
    const/4 v0, 0x0

    #@26
    return v0
.end method
