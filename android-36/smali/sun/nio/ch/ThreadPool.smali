.class public Lsun/nio/ch/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/ThreadPool$DefaultThreadPoolHolder;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_THREAD_POOL_INITIAL_SIZE:Ljava/lang/String; = "java.nio.channels.DefaultThreadPool.initialSize"

.field private static final blacklist DEFAULT_THREAD_POOL_THREAD_FACTORY:Ljava/lang/String; = "java.nio.channels.DefaultThreadPool.threadFactory"


# instance fields
.field private final blacklist executor:Ljava/util/concurrent/ExecutorService;

.field private final blacklist isFixed:Z

.field private final blacklist poolSize:I


# direct methods
.method private constructor blacklist <init>(Ljava/util/concurrent/ExecutorService;ZI)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "isFixed"    # Z
    .param p3, "poolSize"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lsun/nio/ch/ThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    .line 57
    iput-boolean p2, p0, Lsun/nio/ch/ThreadPool;->isFixed:Z

    .line 58
    iput p3, p0, Lsun/nio/ch/ThreadPool;->poolSize:I

    .line 59
    return-void
.end method

.method static blacklist create(ILjava/util/concurrent/ThreadFactory;)Lsun/nio/ch/ThreadPool;
    .registers 5
    .param p0, "nThreads"    # I
    .param p1, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .line 127
    if-lez p0, :cond_d

    .line 129
    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 130
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lsun/nio/ch/ThreadPool;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p0}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    return-object v1

    .line 128
    .end local v0    # "executor":Ljava/util/concurrent/ExecutorService;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'nThreads\' must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist createDefault()Lsun/nio/ch/ThreadPool;
    .registers 5

    .line 113
    invoke-static {}, Lsun/nio/ch/ThreadPool;->getDefaultThreadPoolInitialSize()I

    move-result v0

    .line 114
    .local v0, "initialSize":I
    if-gez v0, :cond_e

    .line 115
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 117
    :cond_e
    invoke-static {}, Lsun/nio/ch/ThreadPool;->getDefaultThreadPoolThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 118
    .local v1, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    if-nez v1, :cond_18

    .line 119
    invoke-static {}, Lsun/nio/ch/ThreadPool;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 121
    :cond_18
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 122
    .local v2, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v3, Lsun/nio/ch/ThreadPool;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v0}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    return-object v3
.end method

.method static blacklist defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 1

    .line 93
    new-instance v0, Lsun/nio/ch/ThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lsun/nio/ch/ThreadPool$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method static blacklist getDefault()Lsun/nio/ch/ThreadPool;
    .registers 1

    .line 107
    sget-object v0, Lsun/nio/ch/ThreadPool$DefaultThreadPoolHolder;->defaultThreadPool:Lsun/nio/ch/ThreadPool;

    return-object v0
.end method

.method private static blacklist getDefaultThreadPoolInitialSize()I
    .registers 5

    .line 157
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "java.nio.channels.DefaultThreadPool.initialSize"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    .local v0, "propValue":Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 161
    :try_start_f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_13} :catch_14

    return v1

    .line 162
    :catch_14
    move-exception v1

    .line 163
    .local v1, "x":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value of property \'java.nio.channels.DefaultThreadPool.initialSize\' is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    .end local v1    # "x":Ljava/lang/NumberFormatException;
    :cond_2e
    const/4 v1, -0x1

    return v1
.end method

.method private static blacklist getDefaultThreadPoolThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 3

    .line 171
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "java.nio.channels.DefaultThreadPool.threadFactory"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    .local v0, "propValue":Ljava/lang/String;
    if-eqz v0, :cond_35

    .line 175
    nop

    .line 176
    :try_start_10
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 177
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadFactory;
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_1f} :catch_2e
    .catch Ljava/lang/InstantiationException; {:try_start_10 .. :try_end_1f} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_1f} :catch_20

    return-object v2

    .line 182
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_20
    move-exception v1

    .line 183
    .local v1, "x":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 180
    .end local v1    # "x":Ljava/lang/IllegalAccessException;
    :catch_27
    move-exception v1

    .line 181
    .local v1, "x":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 178
    .end local v1    # "x":Ljava/lang/InstantiationException;
    :catch_2e
    move-exception v1

    .line 179
    .local v1, "x":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 186
    .end local v1    # "x":Ljava/lang/ClassNotFoundException;
    :cond_35
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic blacklist lambda$defaultThreadFactory$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 94
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 96
    return-object v0
.end method

.method public static blacklist wrap(Ljava/util/concurrent/ExecutorService;I)Lsun/nio/ch/ThreadPool;
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "initialSize"    # I

    .line 135
    if-eqz p0, :cond_29

    .line 138
    instance-of v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1f

    .line 139
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    .line 140
    .local v0, "max":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1e

    .line 141
    if-gez p1, :cond_1d

    .line 142
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    goto :goto_1e

    .line 145
    :cond_1d
    const/4 p1, 0x0

    .line 148
    .end local v0    # "max":I
    :cond_1e
    :goto_1e
    goto :goto_22

    .line 150
    :cond_1f
    if-gez p1, :cond_22

    .line 151
    const/4 p1, 0x0

    .line 153
    :cond_22
    :goto_22
    new-instance v0, Lsun/nio/ch/ThreadPool;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    return-object v0

    .line 136
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'executor\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist executor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 62
    iget-object v0, p0, Lsun/nio/ch/ThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method blacklist isFixedThreadPool()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Lsun/nio/ch/ThreadPool;->isFixed:Z

    return v0
.end method

.method blacklist poolSize()I
    .registers 2

    .line 70
    iget v0, p0, Lsun/nio/ch/ThreadPool;->poolSize:I

    return v0
.end method
