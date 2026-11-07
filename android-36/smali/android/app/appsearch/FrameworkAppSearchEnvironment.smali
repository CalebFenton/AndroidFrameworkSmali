.class public Landroid/app/appsearch/FrameworkAppSearchEnvironment;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/app/appsearch/AppSearchEnvironment;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public blacklist createCachedThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public blacklist createContextAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public blacklist createExecutorService(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;I)Ljava/util/concurrent/ExecutorService;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;I)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public blacklist createSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public blacklist getAppSearchDir(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/io/File;
    .registers 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/io/File;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "system_ce"

    .line 11
    .line 12
    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Ljava/io/File;

    .line 29
    .line 30
    const-string p2, "appsearch"

    .line 31
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public blacklist getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public blacklist getEnvironment()I
    .registers 1

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public blacklist isInfoLoggingEnabled()Z
    .registers 1

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
