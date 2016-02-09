.class public Lcom/android/internal/os/SamplingProfilerIntegration;
.super Ljava/lang/Object;
.source "SamplingProfilerIntegration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/SamplingProfilerIntegration$1;
    }
.end annotation


# static fields
.field public static final SNAPSHOT_DIR:Ljava/lang/String; = "/data/snapshots"

.field private static final TAG:Ljava/lang/String; = "SamplingProfilerIntegration"

.field private static final enabled:Z

.field private static final pending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

.field private static final samplingProfilerDepth:I

.field private static final samplingProfilerMilliseconds:I

.field private static final snapshotWriter:Ljava/util/concurrent/Executor;

.field private static startMillis:J


# direct methods
.method static synthetic -get0()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    #@0
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshotFile(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 53
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@8
    sput-object v1, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    .line 56
    const-string/jumbo v1, "persist.sys.profiler_ms"

    #@d
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@10
    move-result v1

    #@11
    sput v1, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    #@13
    .line 57
    const-string/jumbo v1, "persist.sys.profiler_depth"

    #@16
    const/4 v2, 0x4

    #@17
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@1a
    move-result v1

    #@1b
    sput v1, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerDepth:I

    #@1d
    .line 58
    sget v1, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    #@1f
    if-lez v1, :cond_1

    #@21
    .line 59
    new-instance v0, Ljava/io/File;

    #@23
    const-string/jumbo v1, "/data/snapshots"

    #@26
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@29
    .line 60
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@2c
    .line 62
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    #@2f
    .line 64
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    #@32
    .line 65
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_0

    #@38
    .line 66
    new-instance v1, Lcom/android/internal/os/SamplingProfilerIntegration$1;

    #@3a
    invoke-direct {v1}, Lcom/android/internal/os/SamplingProfilerIntegration$1;-><init>()V

    #@3d
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    #@40
    move-result-object v1

    #@41
    sput-object v1, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    #@43
    .line 71
    sput-boolean v4, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    #@45
    .line 72
    const-string/jumbo v1, "SamplingProfilerIntegration"

    #@48
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v3, "Profiling enabled. Sampling interval ms: "

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    .line 73
    sget v3, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    #@56
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 41
    .end local v0    # "dir":Ljava/io/File;
    :goto_0
    return-void

    #@62
    .line 75
    .restart local v0    # "dir":Ljava/io/File;
    :cond_0
    sput-object v5, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    #@64
    .line 76
    sput-boolean v4, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    #@66
    .line 77
    const-string/jumbo v1, "SamplingProfilerIntegration"

    #@69
    const-string/jumbo v2, "Profiling setup failed. Could not create /data/snapshots"

    #@6c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    goto :goto_0

    #@70
    .line 80
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    sput-object v5, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    #@72
    .line 81
    sput-boolean v3, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    #@74
    .line 82
    const-string/jumbo v1, "SamplingProfilerIntegration"

    #@77
    const-string/jumbo v2, "Profiling disabled."

    #@7a
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static generateSnapshotHeader(Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 216
    const-string/jumbo v0, "Version: 3"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "Process: "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 218
    if-eqz p1, :cond_0

    #@1f
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v1, "Package: "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v1, "Package-Version: "

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    .line 222
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v1, "Build: "

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6a
    .line 224
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    #@6d
    .line 214
    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 93
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    #@2
    return v0
.end method

.method public static start()V
    .locals 8

    #@0
    .prologue
    .line 100
    sget-boolean v2, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 101
    return-void

    #@5
    .line 103
    :cond_0
    sget-object v2, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 104
    const-string/jumbo v2, "SamplingProfilerIntegration"

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "SamplingProfilerIntegration already started at "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    new-instance v4, Ljava/util/Date;

    #@1a
    sget-wide v6, Lcom/android/internal/os/SamplingProfilerIntegration;->startMillis:J

    #@1c
    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 105
    return-void

    #@2b
    .line 108
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@32
    move-result-object v0

    #@33
    .line 109
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-static {v0}, Ldalvik/system/profiler/SamplingProfiler;->newThreadGroupThreadSet(Ljava/lang/ThreadGroup;)Ldalvik/system/profiler/SamplingProfiler$ThreadSet;

    #@36
    move-result-object v1

    #@37
    .line 110
    .local v1, "threadSet":Ldalvik/system/profiler/SamplingProfiler$ThreadSet;
    new-instance v2, Ldalvik/system/profiler/SamplingProfiler;

    #@39
    sget v3, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerDepth:I

    #@3b
    invoke-direct {v2, v3, v1}, Ldalvik/system/profiler/SamplingProfiler;-><init>(ILdalvik/system/profiler/SamplingProfiler$ThreadSet;)V

    #@3e
    sput-object v2, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    #@40
    .line 111
    sget-object v2, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    #@42
    sget v3, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    #@44
    invoke-virtual {v2, v3}, Ldalvik/system/profiler/SamplingProfiler;->start(I)V

    #@47
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4a
    move-result-wide v2

    #@4b
    sput-wide v2, Lcom/android/internal/os/SamplingProfilerIntegration;->startMillis:J

    #@4d
    .line 99
    return-void
.end method

.method public static writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 119
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 120
    return-void

    #@5
    .line 122
    :cond_0
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 123
    const-string/jumbo v0, "SamplingProfilerIntegration"

    #@c
    const-string/jumbo v1, "SamplingProfilerIntegration is not started"

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 124
    return-void

    #@13
    .line 133
    :cond_1
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@15
    const/4 v1, 0x0

    #@16
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 134
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    #@1f
    new-instance v1, Lcom/android/internal/os/SamplingProfilerIntegration$2;

    #@21
    invoke-direct {v1, p0, p1}, Lcom/android/internal/os/SamplingProfilerIntegration$2;-><init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    #@24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@27
    .line 118
    :cond_2
    return-void
.end method

.method private static writeSnapshotFile(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 14
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 163
    sget-boolean v10, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    #@2
    if-nez v10, :cond_0

    #@4
    .line 164
    return-void

    #@5
    .line 166
    :cond_0
    sget-object v10, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    #@7
    invoke-virtual {v10}, Ldalvik/system/profiler/SamplingProfiler;->stop()V

    #@a
    .line 174
    const-string/jumbo v10, ":"

    #@d
    const-string/jumbo v11, "."

    #@10
    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 175
    .local v1, "name":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v11, "/data/snapshots/"

    #@1c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v10

    #@20
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v10

    #@24
    const-string/jumbo v11, "-"

    #@27
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v10

    #@2b
    sget-wide v12, Lcom/android/internal/os/SamplingProfilerIntegration;->startMillis:J

    #@2d
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@30
    move-result-object v10

    #@31
    const-string/jumbo v11, ".snapshot"

    #@34
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v10

    #@38
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    .line 176
    .local v7, "path":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3f
    move-result-wide v8

    #@40
    .line 177
    .local v8, "start":J
    const/4 v5, 0x0

    #@41
    .line 179
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Ljava/io/BufferedOutputStream;

    #@43
    new-instance v10, Ljava/io/FileOutputStream;

    #@45
    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@48
    invoke-direct {v6, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 180
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v6, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v4, Ljava/io/PrintStream;

    #@4d
    invoke-direct {v4, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@50
    .line 181
    .local v4, "out":Ljava/io/PrintStream;
    invoke-static {v1, p1, v4}, Lcom/android/internal/os/SamplingProfilerIntegration;->generateSnapshotHeader(Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/PrintStream;)V

    #@53
    .line 182
    invoke-virtual {v4}, Ljava/io/PrintStream;->checkError()Z

    #@56
    move-result v10

    #@57
    if-eqz v10, :cond_1

    #@59
    .line 183
    new-instance v10, Ljava/io/IOException;

    #@5b
    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    #@5e
    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5f
    .line 186
    .end local v4    # "out":Ljava/io/PrintStream;
    :catch_0
    move-exception v0

    #@60
    .local v0, "e":Ljava/io/IOException;
    move-object v5, v6

    #@61
    .line 187
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    const-string/jumbo v10, "SamplingProfilerIntegration"

    #@64
    new-instance v11, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v12, "Error writing snapshot to "

    #@6c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v11

    #@70
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v11

    #@74
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v11

    #@78
    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7b
    .line 190
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@7e
    .line 188
    return-void

    #@7f
    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/PrintStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    :try_start_3
    sget-object v10, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    #@81
    invoke-virtual {v10}, Ldalvik/system/profiler/SamplingProfiler;->getHprofData()Ldalvik/system/profiler/HprofData;

    #@84
    move-result-object v10

    #@85
    invoke-static {v10, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->write(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@88
    .line 190
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8b
    .line 194
    new-instance v10, Ljava/io/File;

    #@8d
    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@90
    const/4 v11, 0x1

    #@91
    const/4 v12, 0x0

    #@92
    invoke-virtual {v10, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    #@95
    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@98
    move-result-wide v10

    #@99
    sub-long v2, v10, v8

    #@9b
    .line 197
    .local v2, "elapsed":J
    const-string/jumbo v10, "SamplingProfilerIntegration"

    #@9e
    new-instance v11, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v12, "Wrote snapshot "

    #@a6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v11

    #@aa
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v11

    #@ae
    const-string/jumbo v12, " in "

    #@b1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v11

    #@b5
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v11

    #@b9
    const-string/jumbo v12, "ms."

    #@bc
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v11

    #@c0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v11

    #@c4
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    .line 198
    sget-object v10, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    #@c9
    sget v11, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    #@cb
    invoke-virtual {v10, v11}, Ldalvik/system/profiler/SamplingProfiler;->start(I)V

    #@ce
    .line 162
    return-void

    #@cf
    .line 189
    .end local v2    # "elapsed":J
    .end local v4    # "out":Ljava/io/PrintStream;
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v10

    #@d0
    .line 190
    :goto_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d3
    .line 189
    throw v10

    #@d4
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v10

    #@d5
    move-object v5, v6

    #@d6
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    #@d7
    .line 186
    .local v5, "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    #@d8
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static writeZygoteSnapshot()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 150
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 151
    return-void

    #@6
    .line 153
    :cond_0
    const-string/jumbo v0, "zygote"

    #@9
    invoke-static {v0, v1}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshotFile(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    #@c
    .line 154
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    #@e
    invoke-virtual {v0}, Ldalvik/system/profiler/SamplingProfiler;->shutdown()V

    #@11
    .line 155
    sput-object v1, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    #@13
    .line 156
    const-wide/16 v0, 0x0

    #@15
    sput-wide v0, Lcom/android/internal/os/SamplingProfilerIntegration;->startMillis:J

    #@17
    .line 149
    return-void
.end method
