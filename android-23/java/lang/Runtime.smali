.class public Ljava/lang/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# static fields
.field private static finalizeOnExit:Z

.field private static final mRuntime:Ljava/lang/Runtime;


# instance fields
.field private final mLibPaths:[Ljava/lang/String;

.field private shutdownHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private shuttingDown:Z

.field private tracingMethods:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 66
    new-instance v0, Ljava/lang/Runtime;

    #@2
    invoke-direct {v0}, Ljava/lang/Runtime;-><init>()V

    #@5
    sput-object v0, Ljava/lang/Runtime;->mRuntime:Ljava/lang/Runtime;

    #@7
    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    invoke-static {}, Ljava/lang/Runtime;->initLibPaths()[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    #@9
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@10
    .line 112
    return-void
.end method

.method private doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 421
    const/4 v2, 0x0

    #@1
    .line 422
    .local v2, "ldLibraryPath":Ljava/lang/String;
    const/4 v1, 0x0

    #@2
    .line 423
    .local v1, "dexPath":Ljava/lang/String;
    if-nez p2, :cond_1

    #@4
    .line 426
    const-string/jumbo v3, "java.library.path"

    #@7
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 434
    .end local v2    # "ldLibraryPath":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-enter p0

    #@c
    .line 435
    :try_start_0
    invoke-static {p1, p2, v2}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v3

    #@10
    monitor-exit p0

    #@11
    return-object v3

    #@12
    .line 427
    .restart local v2    # "ldLibraryPath":Ljava/lang/String;
    :cond_1
    instance-of v3, p2, Ldalvik/system/BaseDexClassLoader;

    #@14
    if-eqz v3, :cond_0

    #@16
    move-object v0, p2

    #@17
    .line 428
    check-cast v0, Ldalvik/system/BaseDexClassLoader;

    #@19
    .line 429
    .local v0, "dexClassLoader":Ldalvik/system/BaseDexClassLoader;
    invoke-virtual {v0}, Ldalvik/system/BaseDexClassLoader;->getLdLibraryPath()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .local v2, "ldLibraryPath":Ljava/lang/String;
    goto :goto_0

    #@1e
    .line 434
    .end local v0    # "dexClassLoader":Ldalvik/system/BaseDexClassLoader;
    .end local v2    # "ldLibraryPath":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@1f
    monitor-exit p0

    #@20
    throw v3
.end method

.method public static getRuntime()Ljava/lang/Runtime;
    .locals 1

    #@0
    .prologue
    .line 307
    sget-object v0, Ljava/lang/Runtime;->mRuntime:Ljava/lang/Runtime;

    #@2
    return-object v0
.end method

.method private static initLibPaths()[Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 74
    const-string/jumbo v3, "java.library.path"

    #@3
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 75
    .local v1, "javaLibraryPath":Ljava/lang/String;
    if-nez v1, :cond_0

    #@9
    .line 76
    sget-object v3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@b
    return-object v3

    #@c
    .line 78
    :cond_0
    const-string/jumbo v3, ":"

    #@f
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 80
    .local v2, "paths":[Ljava/lang/String;
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@15
    if-ge v0, v3, :cond_2

    #@17
    .line 81
    aget-object v3, v2, v0

    #@19
    const-string/jumbo v4, "/"

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_1

    #@22
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    aget-object v4, v2, v0

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, "/"

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    aput-object v3, v2, v0

    #@3a
    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 85
    :cond_2
    return-object v2
.end method

.method private static native nativeExit(I)V
.end method

.method private static native nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static runFinalizersOnExit(Z)V
    .locals 0
    .param p0, "run"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 465
    sput-boolean p0, Ljava/lang/Runtime;->finalizeOnExit:Z

    #@2
    .line 464
    return-void
.end method


# virtual methods
.method public addShutdownHook(Ljava/lang/Thread;)V
    .locals 3
    .param p1, "hook"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 563
    if-nez p1, :cond_0

    #@2
    .line 564
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "hook == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 567
    :cond_0
    iget-boolean v0, p0, Ljava/lang/Runtime;->shuttingDown:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "VM already shutting down"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 571
    :cond_1
    iget-boolean v0, p1, Ljava/lang/Thread;->hasBeenStarted:Z

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v1, "Hook has already been started"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 575
    :cond_2
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@27
    monitor-enter v1

    #@28
    .line 576
    :try_start_0
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@2a
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v2, "Hook already registered."

    #@35
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 575
    :catchall_0
    move-exception v0

    #@3a
    monitor-exit v1

    #@3b
    throw v0

    #@3c
    .line 580
    :cond_3
    :try_start_1
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@3e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    monitor-exit v1

    #@42
    .line 561
    return-void
.end method

.method public availableProcessors()I
    .locals 2

    #@0
    .prologue
    .line 629
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    sget v1, Landroid/system/OsConstants;->_SC_NPROCESSORS_CONF:I

    #@4
    invoke-interface {v0, v1}, Llibcore/io/Os;->sysconf(I)J

    #@7
    move-result-wide v0

    #@8
    long-to-int v0, v0

    #@9
    return v0
.end method

.method public exec(Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p1, "prog"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 190
    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p1, "prog"    # Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 6
    .param p1, "prog"    # Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .param p3, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    if-nez p1, :cond_0

    #@2
    .line 233
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "prog == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 234
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 235
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v5, "prog is empty"

    #@16
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v4

    #@1a
    .line 239
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    #@1c
    invoke-direct {v3, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    #@1f
    .line 240
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    #@22
    move-result v1

    #@23
    .line 241
    .local v1, "length":I
    new-array v2, v1, [Ljava/lang/String;

    #@25
    .line 242
    .local v2, "progArray":[Ljava/lang/String;
    const/4 v0, 0x0

    #@26
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@28
    .line 243
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    aput-object v4, v2, v0

    #@2e
    .line 242
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 247
    :cond_2
    invoke-virtual {p0, v2, p2, p3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    #@34
    move-result-object v4

    #@35
    return-object v4
.end method

.method public exec([Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p1, "progArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 129
    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p1, "progArray"    # [Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 2
    .param p1, "progArray"    # [Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .param p3, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-static {}, Ljava/lang/ProcessManager;->getInstance()Ljava/lang/ProcessManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/lang/ProcessManager;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public exit(I)V
    .locals 6
    .param p1, "code"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 260
    monitor-enter p0

    #@2
    .line 261
    :try_start_0
    iget-boolean v4, p0, Ljava/lang/Runtime;->shuttingDown:Z

    #@4
    if-nez v4, :cond_3

    #@6
    .line 262
    const/4 v4, 0x1

    #@7
    iput-boolean v4, p0, Ljava/lang/Runtime;->shuttingDown:Z

    #@9
    .line 265
    iget-object v4, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@b
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 267
    :try_start_1
    iget-object v5, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@e
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@11
    move-result v5

    #@12
    new-array v2, v5, [Ljava/lang/Thread;

    #@14
    .line 268
    .local v2, "hooks":[Ljava/lang/Thread;
    iget-object v5, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@16
    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    :try_start_2
    monitor-exit v4

    #@1a
    .line 272
    array-length v5, v2

    #@1b
    move v4, v3

    #@1c
    :goto_0
    if-ge v4, v5, :cond_0

    #@1e
    aget-object v1, v2, v4

    #@20
    .line 273
    .local v1, "hook":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@23
    .line 272
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_0

    #@26
    .line 265
    .end local v1    # "hook":Ljava/lang/Thread;
    .end local v2    # "hooks":[Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    #@27
    monitor-exit v4

    #@28
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@29
    .line 260
    :catchall_1
    move-exception v3

    #@2a
    monitor-exit p0

    #@2b
    throw v3

    #@2c
    .line 277
    .restart local v2    # "hooks":[Ljava/lang/Thread;
    :cond_0
    :try_start_3
    array-length v4, v2

    #@2d
    :goto_1
    if-ge v3, v4, :cond_1

    #@2f
    aget-object v1, v2, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@31
    .line 279
    .restart local v1    # "hook":Ljava/lang/Thread;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@34
    .line 277
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@36
    goto :goto_1

    #@37
    .line 280
    :catch_0
    move-exception v0

    #@38
    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_2

    #@39
    .line 286
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .end local v1    # "hook":Ljava/lang/Thread;
    :cond_1
    :try_start_5
    sget-boolean v3, Ljava/lang/Runtime;->finalizeOnExit:Z

    #@3b
    if-eqz v3, :cond_2

    #@3d
    .line 287
    invoke-virtual {p0}, Ljava/lang/Runtime;->runFinalization()V

    #@40
    .line 291
    :cond_2
    invoke-static {p1}, Ljava/lang/Runtime;->nativeExit(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@43
    .end local v2    # "hooks":[Ljava/lang/Thread;
    :cond_3
    monitor-exit p0

    #@44
    .line 258
    return-void
.end method

.method public native freeMemory()J
.end method

.method public native gc()V
.end method

.method public getLocalizedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 502
    const-string/jumbo v1, "file.encoding"

    #@3
    const-string/jumbo v2, "UTF-8"

    #@6
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 503
    .local v0, "encoding":Ljava/lang/String;
    const-string/jumbo v1, "UTF-8"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 504
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Cannot localize "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 506
    :cond_0
    return-object p1
.end method

.method public getLocalizedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 522
    const-string/jumbo v1, "file.encoding"

    #@3
    const-string/jumbo v2, "UTF-8"

    #@6
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 523
    .local v0, "encoding":Ljava/lang/String;
    const-string/jumbo v1, "UTF-8"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 524
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Cannot localize "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 526
    :cond_0
    return-object p1
.end method

.method public halt(I)V
    .locals 0
    .param p1, "code"    # I

    #@0
    .prologue
    .line 617
    invoke-static {p1}, Ljava/lang/Runtime;->nativeExit(I)V

    #@3
    .line 615
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 1
    .param p1, "absolutePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 320
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/Runtime;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@7
    .line 319
    return-void
.end method

.method load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "absolutePath"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 327
    if-nez p1, :cond_0

    #@2
    .line 328
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "absolutePath == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 330
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Runtime;->doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 331
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@11
    .line 332
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    #@13
    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 326
    :cond_1
    return-void
.end method

.method public loadLibrary(Ljava/lang/String;)V
    .locals 1
    .param p1, "nickname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 353
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@7
    .line 352
    return-void
.end method

.method loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 10
    .param p1, "libraryName"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 360
    if-eqz p2, :cond_2

    #@2
    .line 361
    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    .line 362
    .local v4, "filename":Ljava/lang/String;
    if-nez v4, :cond_0

    #@8
    .line 367
    new-instance v6, Ljava/lang/UnsatisfiedLinkError;

    #@a
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v7

    #@13
    const-string/jumbo v8, " couldn\'t find \""

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    .line 368
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    .line 367
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    .line 368
    const-string/jumbo v8, "\""

    #@25
    .line 367
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    invoke-direct {v6, v7}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@30
    throw v6

    #@31
    .line 370
    :cond_0
    invoke-direct {p0, v4, p2}, Ljava/lang/Runtime;->doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .line 371
    .local v3, "error":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@37
    .line 372
    new-instance v6, Ljava/lang/UnsatisfiedLinkError;

    #@39
    invoke-direct {v6, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@3c
    throw v6

    #@3d
    .line 374
    :cond_1
    return-void

    #@3e
    .line 377
    .end local v3    # "error":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    .line 378
    .restart local v4    # "filename":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    #@44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@47
    .line 379
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@48
    .line 380
    .local v5, "lastError":Ljava/lang/String;
    iget-object v7, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    #@4a
    const/4 v6, 0x0

    #@4b
    array-length v8, v7

    #@4c
    .end local v5    # "lastError":Ljava/lang/String;
    :goto_0
    if-ge v6, v8, :cond_5

    #@4e
    aget-object v2, v7, v6

    #@50
    .line 381
    .local v2, "directory":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v9

    #@5d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    .line 382
    .local v0, "candidate":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@64
    .line 384
    invoke-static {v0}, Llibcore/io/IoUtils;->canOpenReadOnly(Ljava/lang/String;)Z

    #@67
    move-result v9

    #@68
    if-eqz v9, :cond_4

    #@6a
    .line 385
    invoke-direct {p0, v0, p2}, Ljava/lang/Runtime;->doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 386
    .restart local v3    # "error":Ljava/lang/String;
    if-nez v3, :cond_3

    #@70
    .line 387
    return-void

    #@71
    .line 389
    :cond_3
    move-object v5, v3

    #@72
    .line 380
    .end local v3    # "error":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@74
    goto :goto_0

    #@75
    .line 393
    .end local v0    # "candidate":Ljava/lang/String;
    .end local v2    # "directory":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    #@77
    .line 394
    new-instance v6, Ljava/lang/UnsatisfiedLinkError;

    #@79
    invoke-direct {v6, v5}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@7c
    throw v6

    #@7d
    .line 396
    :cond_6
    new-instance v6, Ljava/lang/UnsatisfiedLinkError;

    #@7f
    new-instance v7, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v8, "Library "

    #@87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v7

    #@8b
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v7

    #@8f
    const-string/jumbo v8, " not found; tried "

    #@92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v7

    #@9a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v7

    #@9e
    invoke-direct {v6, v7}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@a1
    throw v6
.end method

.method public native maxMemory()J
.end method

.method public removeShutdownHook(Ljava/lang/Thread;)Z
    .locals 2
    .param p1, "hook"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 596
    if-nez p1, :cond_0

    #@2
    .line 597
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "hook == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 600
    :cond_0
    iget-boolean v0, p0, Ljava/lang/Runtime;->shuttingDown:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 601
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "VM already shutting down"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 604
    :cond_1
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@1a
    monitor-enter v1

    #@1b
    .line 605
    :try_start_0
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@1d
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result v0

    #@21
    monitor-exit v1

    #@22
    return v0

    #@23
    .line 604
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0
.end method

.method public runFinalization()V
    .locals 2

    #@0
    .prologue
    .line 449
    const-wide/16 v0, 0x0

    #@2
    invoke-static {v0, v1}, Ldalvik/system/VMRuntime;->runFinalization(J)V

    #@5
    .line 447
    return-void
.end method

.method public native totalMemory()J
.end method

.method public traceInstructions(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 472
    return-void
.end method

.method public traceMethodCalls(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 479
    iget-boolean v0, p0, Ljava/lang/Runtime;->tracingMethods:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 480
    if-eqz p1, :cond_1

    #@6
    .line 481
    invoke-static {}, Ldalvik/system/VMDebug;->startMethodTracing()V

    #@9
    .line 485
    :goto_0
    iput-boolean p1, p0, Ljava/lang/Runtime;->tracingMethods:Z

    #@b
    .line 478
    :cond_0
    return-void

    #@c
    .line 483
    :cond_1
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    #@f
    goto :goto_0
.end method
