.class Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ChromeThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist CORE_POOL_SIZE:I

.field private static final blacklist CPU_COUNT:I

.field private static final blacklist KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final blacklist MAXIMUM_POOL_SIZE:I

.field private static final blacklist RUNNABLE_WARNING_COUNT:I = 0x20

.field private static final blacklist sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->CPU_COUNT:I

    .line 27
    sget v0, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->CORE_POOL_SIZE:I

    .line 28
    sget v0, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->CPU_COUNT:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->MAXIMUM_POOL_SIZE:I

    .line 31
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor$1;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 41
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 9

    .line 48
    sget v1, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->CORE_POOL_SIZE:I

    sget v2, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->MAXIMUM_POOL_SIZE:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v3, 0x1e

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 55
    return-void
.end method

.method constructor blacklist <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .registers 10
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .line 65
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 66
    move-object v0, p7

    move-object p7, p6

    move-object p6, p5

    move-wide p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "corePoolSize":I
    .end local p5    # "unit":Ljava/util/concurrent/TimeUnit;
    .local v0, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .local p2, "corePoolSize":I
    .local p3, "maximumPoolSize":I
    .local p4, "keepAliveTime":J
    .local p6, "unit":Ljava/util/concurrent/TimeUnit;
    .local p7, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 67
    return-void
.end method

.method private blacklist findClassNamesWithTooManyRunnables(Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 96
    .local p1, "counts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "classesWithTooManyRunnables":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 98
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_34

    .line 99
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_34
    goto :goto_d

    .line 102
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3e

    .line 103
    const-string v1, "NO CLASSES FOUND"

    return-object v1

    .line 105
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getClassName(Ljava/lang/Runnable;)Ljava/lang/String;
    .registers 4
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 72
    .local v0, "blamedClass":Ljava/lang/Class;
    const-class v1, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    if-ne v0, v1, :cond_10

    .line 73
    move-object v1, p0

    check-cast v1, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->getBlamedClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1a

    .line 74
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/os/AsyncTask;

    if-ne v1, v2, :cond_1a

    .line 75
    const-class v0, Landroid/os/AsyncTask;

    .line 77
    :cond_1a
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getNumberOfClassNameOccurrencesInQueue()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v0, "counts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Runnable;

    .line 83
    .local v1, "copiedQueue":[Ljava/lang/Runnable;
    array-length v3, v1

    move v4, v2

    :goto_14
    if-ge v4, v3, :cond_3a

    aget-object v5, v1, v4

    .line 84
    .local v5, "runnable":Ljava/lang/Runnable;
    invoke-static {v5}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->getClassName(Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "className":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2e

    :cond_2d
    move v7, v2

    .line 86
    .local v7, "count":I
    :goto_2e
    add-int/lit8 v8, v7, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v5    # "runnable":Ljava/lang/Runnable;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "count":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 88
    :cond_3a
    return-object v0
.end method


# virtual methods
.method public synthetic whitelist test-api close()V
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor$$ExternalSyntheticAutoCloseableForwarder0;->m(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 111
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_3} :catch_5

    .line 118
    nop

    .line 119
    return-void

    .line 112
    :catch_5
    move-exception v0

    .line 113
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->getNumberOfClassNameOccurrencesInQueue()Ljava/util/Map;

    move-result-object v1

    .line 115
    .local v1, "counts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prominent classes in AsyncTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 116
    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->findClassNamesWithTooManyRunnables(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
