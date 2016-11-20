.class public Lsun/nio/ch/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/ThreadPool$1;,
        Lsun/nio/ch/ThreadPool$DefaultThreadPoolHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_POOL_INITIAL_SIZE:Ljava/lang/String; = "java.nio.channels.DefaultThreadPool.initialSize"

.field private static final DEFAULT_THREAD_POOL_THREAD_FACTORY:Ljava/lang/String; = "java.nio.channels.DefaultThreadPool.threadFactory"

.field private static final defaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final isFixed:Z

.field private final poolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    new-instance v0, Lsun/nio/ch/ThreadPool$1;

    #@2
    invoke-direct {v0}, Lsun/nio/ch/ThreadPool$1;-><init>()V

    #@5
    sput-object v0, Lsun/nio/ch/ThreadPool;->defaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    #@7
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;ZI)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "isFixed"    # Z
    .param p3, "poolSize"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Lsun/nio/ch/ThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    #@5
    .line 65
    iput-boolean p2, p0, Lsun/nio/ch/ThreadPool;->isFixed:Z

    #@7
    .line 66
    iput p3, p0, Lsun/nio/ch/ThreadPool;->poolSize:I

    #@9
    .line 62
    return-void
.end method

.method static create(ILjava/util/concurrent/ThreadFactory;)Lsun/nio/ch/ThreadPool;
    .locals 3
    .param p0, "nThreads"    # I
    .param p1, "factory"    # Ljava/util/concurrent/ThreadFactory;

    #@0
    .prologue
    .line 115
    if-gtz p0, :cond_0

    #@2
    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "\'nThreads\' must be > 0"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 117
    :cond_0
    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    #@e
    move-result-object v0

    #@f
    .line 118
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lsun/nio/ch/ThreadPool;

    #@11
    const/4 v2, 0x1

    #@12
    invoke-direct {v1, v0, v2, p0}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    #@15
    return-object v1
.end method

.method static createDefault()Lsun/nio/ch/ThreadPool;
    .locals 9

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 97
    invoke-static {}, Lsun/nio/ch/ThreadPool;->getDefaultThreadPoolInitialSize()I

    #@4
    move-result v0

    #@5
    .line 98
    .local v0, "initialSize":I
    if-gez v0, :cond_0

    #@7
    .line 99
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    #@e
    move-result v0

    #@f
    .line 101
    :cond_0
    invoke-static {}, Lsun/nio/ch/ThreadPool;->getDefaultThreadPoolThreadFactory()Ljava/util/concurrent/ThreadFactory;

    #@12
    move-result-object v8

    #@13
    .line 102
    .local v8, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    if-nez v8, :cond_1

    #@15
    .line 103
    sget-object v8, Lsun/nio/ch/ThreadPool;->defaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    #@17
    .line 106
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@19
    .line 107
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@1b
    .line 108
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    #@1d
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    #@20
    .line 106
    const v3, 0x7fffffff

    #@23
    .line 107
    const-wide v4, 0x7fffffffffffffffL

    #@28
    .line 106
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@2b
    .line 110
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v3, Lsun/nio/ch/ThreadPool;

    #@2d
    invoke-direct {v3, v1, v2, v0}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    #@30
    return-object v3
.end method

.method static defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    #@0
    .prologue
    .line 82
    sget-object v0, Lsun/nio/ch/ThreadPool;->defaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    #@2
    return-object v0
.end method

.method static getDefault()Lsun/nio/ch/ThreadPool;
    .locals 1

    #@0
    .prologue
    .line 91
    sget-object v0, Lsun/nio/ch/ThreadPool$DefaultThreadPoolHolder;->defaultThreadPool:Lsun/nio/ch/ThreadPool;

    #@2
    return-object v0
.end method

.method private static getDefaultThreadPoolInitialSize()I
    .locals 5

    #@0
    .prologue
    .line 145
    new-instance v2, Lsun/security/action/GetPropertyAction;

    #@2
    .line 146
    const-string/jumbo v3, "java.nio.channels.DefaultThreadPool.initialSize"

    #@5
    .line 145
    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@8
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    .line 147
    .local v0, "propValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@10
    .line 149
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v2

    #@14
    return v2

    #@15
    .line 150
    :catch_0
    move-exception v1

    #@16
    .line 151
    .local v1, "x":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/Error;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Value of property \'java.nio.channels.DefaultThreadPool.initialSize\' is invalid: "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 155
    .end local v1    # "x":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v2, -0x1

    #@31
    return v2
.end method

.method private static getDefaultThreadPoolThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 159
    new-instance v5, Lsun/security/action/GetPropertyAction;

    #@3
    .line 160
    const-string/jumbo v6, "java.nio.channels.DefaultThreadPool.threadFactory"

    #@6
    .line 159
    invoke-direct {v5, v6}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@9
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/lang/String;

    #@f
    .line 161
    .local v1, "propValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@11
    .line 164
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@14
    move-result-object v5

    #@15
    const/4 v6, 0x1

    #@16
    .line 163
    invoke-static {v1, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@19
    move-result-object v0

    #@1a
    .line 165
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    check-cast v5, Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    return-object v5

    #@21
    .line 170
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    #@22
    .line 171
    .local v3, "x":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/Error;

    #@24
    invoke-direct {v5, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v5

    #@28
    .line 168
    .end local v3    # "x":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v4

    #@29
    .line 169
    .local v4, "x":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/Error;

    #@2b
    invoke-direct {v5, v4}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v5

    #@2f
    .line 166
    .end local v4    # "x":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    #@30
    .line 167
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/Error;

    #@32
    invoke-direct {v5, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@35
    throw v5

    #@36
    .line 174
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-object v7
.end method

.method public static wrap(Ljava/util/concurrent/ExecutorService;I)Lsun/nio/ch/ThreadPool;
    .locals 3
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "initialSize"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 123
    if-nez p0, :cond_0

    #@3
    .line 124
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "\'executor\' is null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 126
    :cond_0
    instance-of v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;

    #@e
    if-eqz v1, :cond_3

    #@10
    move-object v1, p0

    #@11
    .line 127
    nop

    #@12
    nop

    #@13
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    #@16
    move-result v0

    #@17
    .line 128
    .local v0, "max":I
    const v1, 0x7fffffff

    #@1a
    if-ne v0, v1, :cond_1

    #@1c
    .line 129
    if-gez p1, :cond_2

    #@1e
    .line 130
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    #@25
    move-result p1

    #@26
    .line 141
    .end local v0    # "max":I
    :cond_1
    :goto_0
    new-instance v1, Lsun/nio/ch/ThreadPool;

    #@28
    invoke-direct {v1, p0, v2, p1}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    #@2b
    return-object v1

    #@2c
    .line 133
    .restart local v0    # "max":I
    :cond_2
    const/4 p1, 0x0

    #@2d
    goto :goto_0

    #@2e
    .line 138
    .end local v0    # "max":I
    :cond_3
    if-gez p1, :cond_1

    #@30
    .line 139
    const/4 p1, 0x0

    #@31
    goto :goto_0
.end method


# virtual methods
.method executor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lsun/nio/ch/ThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    #@2
    return-object v0
.end method

.method isFixedThreadPool()Z
    .locals 1

    #@0
    .prologue
    .line 74
    iget-boolean v0, p0, Lsun/nio/ch/ThreadPool;->isFixed:Z

    #@2
    return v0
.end method

.method poolSize()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget v0, p0, Lsun/nio/ch/ThreadPool;->poolSize:I

    #@2
    return v0
.end method
