.class public Lcom/android/internal/os/KernelCpuThreadReader;
.super Ljava/lang/Object;
.source "KernelCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuThreadReader$Injector;,
        Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;,
        Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;,
        Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    }
.end annotation


# static fields
.field private static final blacklist CPU_STATISTICS_FILENAME:Ljava/lang/String; = "time_in_state"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_INITIAL_TIME_IN_STATE_PATH:Ljava/nio/file/Path;

.field private static final blacklist DEFAULT_PROCESS_NAME:Ljava/lang/String; = "unknown_process"

.field private static final blacklist DEFAULT_PROC_PATH:Ljava/nio/file/Path;

.field private static final blacklist DEFAULT_THREAD_NAME:Ljava/lang/String; = "unknown_thread"

.field private static final blacklist ID_ERROR:I = -0x1

.field private static final blacklist PROCESS_DIRECTORY_FILTER:Ljava/lang/String; = "[0-9]*"

.field private static final blacklist PROCESS_NAME_FILENAME:Ljava/lang/String; = "cmdline"

.field private static final blacklist TAG:Ljava/lang/String; = "KernelCpuThreadReader"

.field private static final blacklist THREAD_NAME_FILENAME:Ljava/lang/String; = "comm"


# instance fields
.field private blacklist mFrequenciesKhz:[I

.field private blacklist mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

.field private final blacklist mInjector:Lcom/android/internal/os/KernelCpuThreadReader$Injector;

.field private final blacklist mProcPath:Ljava/nio/file/Path;

.field private final blacklist mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

.field private blacklist mUidPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/proc"

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_PROC_PATH:Ljava/nio/file/Path;

    .line 92
    sget-object v0, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_PROC_PATH:Ljava/nio/file/Path;

    .line 93
    const-string/jumbo v1, "self/time_in_state"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_INITIAL_TIME_IN_STATE_PATH:Ljava/nio/file/Path;

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/function/Predicate;Ljava/nio/file/Path;Ljava/nio/file/Path;Lcom/android/internal/os/KernelCpuThreadReader$Injector;)V
    .registers 7
    .param p1, "numBuckets"    # I
    .param p3, "procPath"    # Ljava/nio/file/Path;
    .param p4, "initialTimeInStatePath"    # Ljava/nio/file/Path;
    .param p5, "injector"    # Lcom/android/internal/os/KernelCpuThreadReader$Injector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lcom/android/internal/os/KernelCpuThreadReader$Injector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    .local p2, "uidPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mUidPredicate:Ljava/util/function/Predicate;

    .line 137
    iput-object p3, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcPath:Ljava/nio/file/Path;

    .line 138
    new-instance v0, Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-direct {v0, p4}, Lcom/android/internal/os/ProcTimeInStateReader;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    .line 139
    iput-object p5, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mInjector:Lcom/android/internal/os/KernelCpuThreadReader$Injector;

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->setNumBuckets(I)V

    .line 141
    return-void
.end method

.method public static blacklist create(ILjava/util/function/Predicate;)Lcom/android/internal/os/KernelCpuThreadReader;
    .registers 8
    .param p0, "numBuckets"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/internal/os/KernelCpuThreadReader;"
        }
    .end annotation

    .line 151
    .local p1, "uidPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v0, Lcom/android/internal/os/KernelCpuThreadReader;

    sget-object v3, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_PROC_PATH:Ljava/nio/file/Path;

    sget-object v4, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_INITIAL_TIME_IN_STATE_PATH:Ljava/nio/file/Path;

    new-instance v5, Lcom/android/internal/os/KernelCpuThreadReader$Injector;

    invoke-direct {v5}, Lcom/android/internal/os/KernelCpuThreadReader$Injector;-><init>()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_14

    move v1, p0

    move-object v2, p1

    .end local p0    # "numBuckets":I
    .end local p1    # "uidPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .local v1, "numBuckets":I
    .local v2, "uidPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    :try_start_d
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/KernelCpuThreadReader;-><init>(ILjava/util/function/Predicate;Ljava/nio/file/Path;Ljava/nio/file/Path;Lcom/android/internal/os/KernelCpuThreadReader$Injector;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    return-object v0

    .line 157
    :catch_11
    move-exception v0

    move-object p0, v0

    goto :goto_18

    .end local v1    # "numBuckets":I
    .end local v2    # "uidPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .restart local p0    # "numBuckets":I
    .restart local p1    # "uidPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    :catch_14
    move-exception v0

    move v1, p0

    move-object v2, p1

    move-object p0, v0

    .line 158
    .end local p1    # "uidPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .restart local v1    # "numBuckets":I
    .restart local v2    # "uidPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .local p0, "e":Ljava/io/IOException;
    :goto_18
    const-string p1, "KernelCpuThreadReader"

    const-string v0, "Failed to initialize KernelCpuThreadReader"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist getProcessCpuUsage(Ljava/nio/file/Path;II)Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    .registers 11
    .param p1, "processPath"    # Ljava/nio/file/Path;
    .param p2, "processId"    # I
    .param p3, "uid"    # I

    .line 274
    const-string/jumbo v0, "task"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 275
    .local v0, "allThreadsPath":Ljava/nio/file/Path;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v1, "threadCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    const/4 v2, 0x0

    :try_start_d
    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_50
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_d .. :try_end_11} :catch_50

    .line 277
    .local v3, "threadPaths":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_11
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    .line 278
    .local v5, "threadDirectory":Ljava/nio/file/Path;
    invoke-direct {p0, v5}, Lcom/android/internal/os/KernelCpuThreadReader;->getThreadCpuUsage(Ljava/nio/file/Path;)Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    move-result-object v6

    .line 279
    .local v6, "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    if-nez v6, :cond_28

    .line 280
    goto :goto_15

    .line 282
    :cond_28
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_44

    .line 283
    nop

    .end local v5    # "threadDirectory":Ljava/nio/file/Path;
    .end local v6    # "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    goto :goto_15

    .line 284
    :cond_2d
    if-eqz v3, :cond_32

    :try_start_2f
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_50
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_2f .. :try_end_32} :catch_50

    .line 287
    .end local v3    # "threadPaths":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_32
    nop

    .line 290
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 291
    return-object v2

    .line 296
    :cond_3a
    new-instance v2, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3, p3, v1}, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;-><init>(ILjava/lang/String;ILjava/util/ArrayList;)V

    return-object v2

    .line 276
    .restart local v3    # "threadPaths":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_44
    move-exception v4

    if-eqz v3, :cond_4f

    :try_start_47
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v5

    :try_start_4c
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "allThreadsPath":Ljava/nio/file/Path;
    .end local v1    # "threadCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    .end local p0    # "this":Lcom/android/internal/os/KernelCpuThreadReader;
    .end local p1    # "processPath":Ljava/nio/file/Path;
    .end local p2    # "processId":I
    .end local p3    # "uid":I
    :cond_4f
    :goto_4f
    throw v4
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_50} :catch_50
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_4c .. :try_end_50} :catch_50

    .line 284
    .end local v3    # "threadPaths":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v0    # "allThreadsPath":Ljava/nio/file/Path;
    .restart local v1    # "threadCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    .restart local p0    # "this":Lcom/android/internal/os/KernelCpuThreadReader;
    .restart local p1    # "processPath":Ljava/nio/file/Path;
    .restart local p2    # "processId":I
    .restart local p3    # "uid":I
    :catch_50
    move-exception v3

    .line 286
    .local v3, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method private blacklist getProcessId(Ljava/nio/file/Path;)I
    .registers 6
    .param p1, "processPath"    # Ljava/nio/file/Path;

    .line 367
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "fileName":Ljava/lang/String;
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 370
    :catch_d
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as process ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KernelCpuThreadReader"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist getProcessName(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 5
    .param p1, "processPath"    # Ljava/nio/file/Path;

    .line 341
    const-string v0, "cmdline"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 343
    .local v0, "processNamePath":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ProcStatsUtil;->readSingleLineProcFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "processName":Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 345
    return-object v1

    .line 347
    :cond_11
    const-string/jumbo v2, "unknown_process"

    return-object v2
.end method

.method private blacklist getThreadCpuUsage(Ljava/nio/file/Path;)Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    .registers 10
    .param p1, "threadDirectory"    # Ljava/nio/file/Path;

    .line 311
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "directoryName":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_42

    .line 316
    .end local v1    # "directoryName":Ljava/lang/String;
    .local v2, "threadId":I
    nop

    .line 319
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->getThreadName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "threadName":Ljava/lang/String;
    const-string/jumbo v3, "time_in_state"

    invoke-interface {p1, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 323
    .local v3, "threadCpuStatPath":Ljava/nio/file/Path;
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/ProcTimeInStateReader;->getUsageTimesMillis(Ljava/nio/file/Path;)[J

    move-result-object v4

    .line 324
    .local v4, "cpuUsagesLong":[J
    if-nez v4, :cond_22

    .line 325
    return-object v0

    .line 328
    :cond_22
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    if-eqz v0, :cond_2d

    .line 329
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    invoke-virtual {v0, v4}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->bucketValues([J)[I

    move-result-object v0

    .local v0, "cpuUsages":[I
    goto :goto_3c

    .line 331
    .end local v0    # "cpuUsages":[I
    :cond_2d
    array-length v0, v4

    new-array v0, v0, [I

    .line 332
    .restart local v0    # "cpuUsages":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_31
    array-length v6, v4

    if-ge v5, v6, :cond_3c

    .line 333
    aget-wide v6, v4, v5

    long-to-int v6, v6

    aput v6, v0, v5

    .line 332
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 336
    .end local v5    # "i":I
    :cond_3c
    :goto_3c
    new-instance v5, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    invoke-direct {v5, v2, v1, v0}, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;-><init>(ILjava/lang/String;[I)V

    return-object v5

    .line 313
    .end local v0    # "cpuUsages":[I
    .end local v1    # "threadName":Ljava/lang/String;
    .end local v2    # "threadId":I
    .end local v3    # "threadCpuStatPath":Ljava/nio/file/Path;
    .end local v4    # "cpuUsagesLong":[J
    :catch_42
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "KernelCpuThreadReader"

    const-string v3, "Failed to parse thread ID when iterating over /proc/*/task"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    return-object v0
.end method

.method private blacklist getThreadName(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 5
    .param p1, "threadPath"    # Ljava/nio/file/Path;

    .line 352
    const-string v0, "comm"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 353
    .local v0, "threadNamePath":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ProcStatsUtil;->readNullSeparatedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "threadName":Ljava/lang/String;
    if-nez v1, :cond_14

    .line 355
    const-string/jumbo v2, "unknown_thread"

    return-object v2

    .line 357
    :cond_14
    return-object v1
.end method


# virtual methods
.method public blacklist getCpuFrequenciesKhz()[I
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    return-object v0
.end method

.method public blacklist getProcessCpuUsage()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ">;"
        }
    .end annotation

    .line 180
    const-string v0, "KernelCpuThreadReader"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, "processCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;>;"
    const/4 v2, 0x0

    :try_start_8
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcPath:Ljava/nio/file/Path;

    const-string v4, "[0-9]*"

    .line 183
    invoke-static {v3, v4}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_67

    .line 184
    .local v3, "processPaths":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_10
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    .line 185
    .local v5, "processPath":Ljava/nio/file/Path;
    invoke-direct {p0, v5}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessId(Ljava/nio/file/Path;)I

    move-result v6

    .line 186
    .local v6, "processId":I
    iget-object v7, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mInjector:Lcom/android/internal/os/KernelCpuThreadReader$Injector;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/KernelCpuThreadReader$Injector;->getUidForPid(I)I

    move-result v7

    .line 187
    .local v7, "uid":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_14

    if-ne v6, v8, :cond_30

    .line 188
    goto :goto_14

    .line 190
    :cond_30
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mUidPredicate:Ljava/util/function/Predicate;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    .line 191
    goto :goto_14

    .line 194
    :cond_3d
    nop

    .line 195
    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessCpuUsage(Ljava/nio/file/Path;II)Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    move-result-object v8

    .line 196
    .local v8, "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    if-eqz v8, :cond_47

    .line 197
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_10 .. :try_end_47} :catchall_5b

    .line 199
    .end local v5    # "processPath":Ljava/nio/file/Path;
    .end local v6    # "processId":I
    .end local v7    # "uid":I
    .end local v8    # "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    :cond_47
    goto :goto_14

    .line 200
    :cond_48
    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_67

    .line 203
    .end local v3    # "processPaths":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_4d
    nop

    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 206
    const-string v3, "Didn\'t successfully get any process CPU information for UIDs specified"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-object v2

    .line 214
    :cond_5a
    return-object v1

    .line 182
    .restart local v3    # "processPaths":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_5b
    move-exception v4

    if-eqz v3, :cond_66

    :try_start_5e
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v5

    :try_start_63
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "processCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;>;"
    .end local p0    # "this":Lcom/android/internal/os/KernelCpuThreadReader;
    :cond_66
    :goto_66
    throw v4
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_67

    .line 200
    .end local v3    # "processPaths":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v1    # "processCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;>;"
    .restart local p0    # "this":Lcom/android/internal/os/KernelCpuThreadReader;
    :catch_67
    move-exception v3

    .line 201
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Failed to iterate over process paths"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    return-object v2
.end method

.method blacklist setNumBuckets(I)V
    .registers 7
    .param p1, "numBuckets"    # I

    .line 229
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    array-length v0, v0

    if-ne v0, p1, :cond_a

    .line 230
    return-void

    .line 233
    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcTimeInStateReader;->getFrequenciesKhz()[J

    move-result-object v0

    .line 234
    .local v0, "frequenciesKhz":[J
    if-eqz p1, :cond_22

    .line 235
    new-instance v1, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;-><init>([JI)V

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    .line 236
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->bucketFrequencies([J)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    goto :goto_38

    .line 238
    :cond_22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    .line 239
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    .line 240
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    array-length v2, v0

    if-ge v1, v2, :cond_38

    .line 241
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    aget-wide v3, v0, v1

    long-to-int v3, v3

    aput v3, v2, v1

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 244
    .end local v1    # "i":I
    :cond_38
    :goto_38
    return-void
.end method

.method public blacklist setUidPredicate(Ljava/util/function/Predicate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p1, "uidPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mUidPredicate:Ljava/util/function/Predicate;

    .line 250
    return-void
.end method
