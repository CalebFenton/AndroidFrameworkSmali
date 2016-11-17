.class public Ljava/lang/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# static fields
.field private static currentRuntime:Ljava/lang/Runtime;

.field private static finalizeOnExit:Z


# instance fields
.field private volatile mLibPaths:[Ljava/lang/String;

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
    .line 58
    new-instance v0, Ljava/lang/Runtime;

    #@2
    invoke-direct {v0}, Ljava/lang/Runtime;-><init>()V

    #@5
    sput-object v0, Ljava/lang/Runtime;->currentRuntime:Ljava/lang/Runtime;

    #@7
    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@a
    .line 1004
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    #@d
    .line 96
    return-void
.end method

.method private doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1051
    const/4 v1, 0x0

    #@1
    .line 1052
    .local v1, "librarySearchPath":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@3
    instance-of v2, p2, Ldalvik/system/BaseDexClassLoader;

    #@5
    if-eqz v2, :cond_0

    #@7
    move-object v0, p2

    #@8
    .line 1053
    check-cast v0, Ldalvik/system/BaseDexClassLoader;

    #@a
    .line 1054
    .local v0, "dexClassLoader":Ldalvik/system/BaseDexClassLoader;
    invoke-virtual {v0}, Ldalvik/system/BaseDexClassLoader;->getLdLibraryPath()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 1059
    .end local v0    # "dexClassLoader":Ldalvik/system/BaseDexClassLoader;
    .end local v1    # "librarySearchPath":Ljava/lang/String;
    :cond_0
    monitor-enter p0

    #@f
    .line 1060
    :try_start_0
    invoke-static {p1, p2, v1}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v2

    #@13
    monitor-exit p0

    #@14
    return-object v2

    #@15
    .line 1059
    :catchall_0
    move-exception v2

    #@16
    monitor-exit p0

    #@17
    throw v2
.end method

.method private getLibPaths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1007
    iget-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1008
    monitor-enter p0

    #@5
    .line 1009
    :try_start_0
    iget-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1010
    invoke-static {}, Ljava/lang/Runtime;->initLibPaths()[Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 1014
    :cond_1
    iget-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    #@12
    return-object v0

    #@13
    .line 1008
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public static getRuntime()Ljava/lang/Runtime;
    .locals 1

    #@0
    .prologue
    .line 92
    sget-object v0, Ljava/lang/Runtime;->currentRuntime:Ljava/lang/Runtime;

    #@2
    return-object v0
.end method

.method private static initLibPaths()[Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 1018
    const-string/jumbo v3, "java.library.path"

    #@3
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1019
    .local v1, "javaLibraryPath":Ljava/lang/String;
    if-nez v1, :cond_0

    #@9
    .line 1020
    sget-object v3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@b
    return-object v3

    #@c
    .line 1022
    :cond_0
    const-string/jumbo v3, ":"

    #@f
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 1024
    .local v2, "paths":[Ljava/lang/String;
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@15
    if-ge v0, v3, :cond_2

    #@17
    .line 1025
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
    .line 1026
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
    .line 1024
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 1029
    :cond_2
    return-object v2
.end method

.method private static native nativeExit(I)V
.end method

.method private static native nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native runFinalization0()V
.end method

.method public static runFinalizersOnExit(Z)V
    .locals 0
    .param p0, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 388
    sput-boolean p0, Ljava/lang/Runtime;->finalizeOnExit:Z

    #@2
    .line 387
    return-void
.end method


# virtual methods
.method public addShutdownHook(Ljava/lang/Thread;)V
    .locals 3
    .param p1, "hook"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 272
    if-nez p1, :cond_0

    #@2
    .line 273
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "hook == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 276
    :cond_0
    iget-boolean v0, p0, Ljava/lang/Runtime;->shuttingDown:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "VM already shutting down"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 280
    :cond_1
    iget-boolean v0, p1, Ljava/lang/Thread;->started:Z

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v1, "Hook has already been started"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 284
    :cond_2
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@27
    monitor-enter v1

    #@28
    .line 285
    :try_start_0
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@2a
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 286
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
    .line 284
    :catchall_0
    move-exception v0

    #@3a
    monitor-exit v1

    #@3b
    throw v0

    #@3c
    .line 289
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
    .line 270
    return-void
.end method

.method public availableProcessors()I
    .locals 2

    #@0
    .prologue
    .line 710
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
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 421
    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 462
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .param p3, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 518
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "Empty command"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 520
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    #@11
    invoke-direct {v2, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    #@14
    .line 521
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    #@17
    move-result v3

    #@18
    new-array v0, v3, [Ljava/lang/String;

    #@1a
    .line 522
    .local v0, "cmdarray":[Ljava/lang/String;
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 523
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    aput-object v3, v0, v1

    #@27
    .line 522
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 524
    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    #@2d
    move-result-object v3

    #@2e
    return-object v3
.end method

.method public exec([Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p1, "cmdarray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 559
    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p1, "cmdarray"    # [Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 602
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 1
    .param p1, "cmdarray"    # [Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .param p3, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 691
    new-instance v0, Ljava/lang/ProcessBuilder;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/ProcessBuilder;->environment([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p3}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public exit(I)V
    .locals 6
    .param p1, "status"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 140
    monitor-enter p0

    #@2
    .line 141
    :try_start_0
    iget-boolean v4, p0, Ljava/lang/Runtime;->shuttingDown:Z

    #@4
    if-nez v4, :cond_3

    #@6
    .line 142
    const/4 v4, 0x1

    #@7
    iput-boolean v4, p0, Ljava/lang/Runtime;->shuttingDown:Z

    #@9
    .line 145
    iget-object v4, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@b
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 147
    :try_start_1
    iget-object v5, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@e
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@11
    move-result v5

    #@12
    new-array v2, v5, [Ljava/lang/Thread;

    #@14
    .line 148
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
    .line 152
    array-length v5, v2

    #@1b
    move v4, v3

    #@1c
    :goto_0
    if-ge v4, v5, :cond_0

    #@1e
    aget-object v1, v2, v4

    #@20
    .line 153
    .local v1, "hook":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@23
    .line 152
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_0

    #@26
    .line 145
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
    .line 140
    :catchall_1
    move-exception v3

    #@2a
    monitor-exit p0

    #@2b
    throw v3

    #@2c
    .line 157
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
    .line 159
    .restart local v1    # "hook":Ljava/lang/Thread;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@34
    .line 157
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@36
    goto :goto_1

    #@37
    .line 160
    :catch_0
    move-exception v0

    #@38
    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_2

    #@39
    .line 166
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .end local v1    # "hook":Ljava/lang/Thread;
    :cond_1
    :try_start_5
    sget-boolean v3, Ljava/lang/Runtime;->finalizeOnExit:Z

    #@3b
    if-eqz v3, :cond_2

    #@3d
    .line 167
    invoke-virtual {p0}, Ljava/lang/Runtime;->runFinalization()V

    #@40
    .line 171
    :cond_2
    invoke-static {p1}, Ljava/lang/Runtime;->nativeExit(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@43
    .end local v2    # "hooks":[Ljava/lang/Thread;
    :cond_3
    monitor-exit p0

    #@44
    .line 138
    return-void
.end method

.method public native freeMemory()J
.end method

.method public native gc()V
.end method

.method public getLocalizedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1091
    return-object p1
.end method

.method public getLocalizedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1119
    return-object p1
.end method

.method public halt(I)V
    .locals 0
    .param p1, "status"    # I

    #@0
    .prologue
    .line 357
    invoke-static {p1}, Ljava/lang/Runtime;->nativeExit(I)V

    #@3
    .line 356
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 871
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p1}, Ljava/lang/Runtime;->load0(Ljava/lang/Class;Ljava/lang/String;)V

    #@7
    .line 870
    return-void
.end method

.method load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "absolutePath"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 876
    const-string/jumbo v1, "java.lang.Runtime#load(String, ClassLoader) is private and will be removed in a future Android release"

    #@3
    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@6
    .line 878
    if-nez p1, :cond_0

    #@8
    .line 879
    new-instance v1, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v2, "absolutePath == null"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 881
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Runtime;->doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 882
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@17
    .line 883
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    #@19
    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 875
    :cond_1
    return-void
.end method

.method declared-synchronized load0(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .param p1, "fromClass"    # Ljava/lang/Class;
    .param p2, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 888
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@3
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 889
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    #@e
    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Expecting an absolute path of the library: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 889
    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@25
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :catchall_0
    move-exception v1

    #@27
    monitor-exit p0

    #@28
    throw v1

    #@29
    .line 892
    :cond_0
    if-nez p2, :cond_1

    #@2b
    .line 893
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    #@2d
    const-string/jumbo v2, "filename == null"

    #@30
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1

    #@34
    .line 895
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@37
    move-result-object v1

    #@38
    invoke-direct {p0, p2, v1}, Ljava/lang/Runtime;->doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 896
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@3e
    .line 897
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    #@40
    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@43
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    :cond_2
    monitor-exit p0

    #@45
    .line 887
    return-void
.end method

.method public loadLibrary(Ljava/lang/String;)V
    .locals 1
    .param p1, "libname"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 940
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p1}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    #@7
    .line 939
    return-void
.end method

.method public loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "libname"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 954
    const-string/jumbo v0, "java.lang.Runtime#loadLibrary(String, ClassLoader) is private and will be removed in a future Android release"

    #@3
    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@6
    .line 956
    invoke-virtual {p0, p2, p1}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    #@9
    .line 953
    return-void
.end method

.method declared-synchronized loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 11
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "libname"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 960
    :try_start_0
    sget-char v7, Ljava/io/File;->separatorChar:C

    #@3
    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v7

    #@7
    const/4 v8, -0x1

    #@8
    if-eq v7, v8, :cond_0

    #@a
    .line 961
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    #@c
    .line 962
    new-instance v8, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v9, "Directory separator should not appear in library name: "

    #@14
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    .line 961
    invoke-direct {v7, v8}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@23
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :catchall_0
    move-exception v7

    #@25
    monitor-exit p0

    #@26
    throw v7

    #@27
    .line 964
    :cond_0
    move-object v6, p2

    #@28
    .line 965
    .local v6, "libraryName":Ljava/lang/String;
    if-eqz p1, :cond_3

    #@2a
    .line 966
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 967
    .local v4, "filename":Ljava/lang/String;
    if-nez v4, :cond_1

    #@30
    .line 972
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    #@32
    new-instance v8, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v8

    #@3b
    const-string/jumbo v9, " couldn\'t find \""

    #@3e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    .line 973
    invoke-static {p2}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v9

    #@46
    .line 972
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v8

    #@4a
    .line 973
    const-string/jumbo v9, "\""

    #@4d
    .line 972
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v8

    #@55
    invoke-direct {v7, v8}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@58
    throw v7

    #@59
    .line 975
    :cond_1
    invoke-direct {p0, v4, p1}, Ljava/lang/Runtime;->doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 976
    .local v3, "error":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@5f
    .line 977
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    #@61
    invoke-direct {v7, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@64
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@65
    :cond_2
    monitor-exit p0

    #@66
    .line 979
    return-void

    #@67
    .line 982
    .end local v3    # "error":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-static {p2}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    .line 983
    .restart local v4    # "filename":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    #@6d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@70
    .line 984
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@71
    .line 985
    .local v5, "lastError":Ljava/lang/String;
    invoke-direct {p0}, Ljava/lang/Runtime;->getLibPaths()[Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    const/4 v7, 0x0

    #@76
    array-length v9, v8

    #@77
    .end local v5    # "lastError":Ljava/lang/String;
    :goto_0
    if-ge v7, v9, :cond_6

    #@79
    aget-object v2, v8, v7

    #@7b
    .line 986
    .local v2, "directory":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v10

    #@88
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v0

    #@8c
    .line 987
    .local v0, "candidate":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8f
    .line 989
    invoke-static {v0}, Llibcore/io/IoUtils;->canOpenReadOnly(Ljava/lang/String;)Z

    #@92
    move-result v10

    #@93
    if-eqz v10, :cond_5

    #@95
    .line 990
    invoke-direct {p0, v0, p1}, Ljava/lang/Runtime;->doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@98
    move-result-object v3

    #@99
    .line 991
    .restart local v3    # "error":Ljava/lang/String;
    if-nez v3, :cond_4

    #@9b
    monitor-exit p0

    #@9c
    .line 992
    return-void

    #@9d
    .line 994
    :cond_4
    move-object v5, v3

    #@9e
    .line 985
    .end local v3    # "error":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    #@a0
    goto :goto_0

    #@a1
    .line 998
    .end local v0    # "candidate":Ljava/lang/String;
    .end local v2    # "directory":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    #@a3
    .line 999
    :try_start_3
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    #@a5
    invoke-direct {v7, v5}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@a8
    throw v7

    #@a9
    .line 1001
    :cond_7
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    #@ab
    new-instance v8, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v9, "Library "

    #@b3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v8

    #@b7
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v8

    #@bb
    const-string/jumbo v9, " not found; tried "

    #@be
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v8

    #@c2
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v8

    #@c6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v8

    #@ca
    invoke-direct {v7, v8}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@cd
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public native maxMemory()J
.end method

.method public removeShutdownHook(Ljava/lang/Thread;)Z
    .locals 2
    .param p1, "hook"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 315
    if-nez p1, :cond_0

    #@2
    .line 316
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "hook == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 319
    :cond_0
    iget-boolean v0, p0, Ljava/lang/Runtime;->shuttingDown:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "VM already shutting down"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 323
    :cond_1
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    #@1a
    monitor-enter v1

    #@1b
    .line 324
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
    .line 323
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
    .line 788
    const-wide/16 v0, 0x0

    #@2
    invoke-static {v0, v1}, Ldalvik/system/VMRuntime;->runFinalization(J)V

    #@5
    .line 787
    return-void
.end method

.method public native totalMemory()J
.end method

.method public traceInstructions(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 810
    return-void
.end method

.method public traceMethodCalls(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 831
    iget-boolean v0, p0, Ljava/lang/Runtime;->tracingMethods:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 832
    if-eqz p1, :cond_1

    #@6
    .line 833
    invoke-static {}, Ldalvik/system/VMDebug;->startMethodTracing()V

    #@9
    .line 837
    :goto_0
    iput-boolean p1, p0, Ljava/lang/Runtime;->tracingMethods:Z

    #@b
    .line 830
    :cond_0
    return-void

    #@c
    .line 835
    :cond_1
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    #@f
    goto :goto_0
.end method
