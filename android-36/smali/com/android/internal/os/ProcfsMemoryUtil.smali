.class public final Lcom/android/internal/os/ProcfsMemoryUtil;
.super Ljava/lang/Object;
.source "ProcfsMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;,
        Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;
    }
.end annotation


# static fields
.field private static final blacklist CMDLINE_OUT:[I

.field private static final blacklist OOM_SCORE_ADJ_OUT:[I

.field private static final blacklist STATUS_KEYS:[Ljava/lang/String;

.field private static final blacklist VMSTAT_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 25
    const/16 v0, 0x1000

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->CMDLINE_OUT:[I

    .line 26
    const/16 v0, 0x200a

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->OOM_SCORE_ADJ_OUT:[I

    .line 27
    const-string v5, "RssShmem:"

    const-string v6, "VmSwap:"

    const-string v1, "Uid:"

    const-string v2, "VmHWM:"

    const-string v3, "VmRSS:"

    const-string v4, "RssAnon:"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    .line 35
    const-string v0, "oom_kill"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->VMSTAT_KEYS:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getProcessCmdlines()Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    const/16 v0, 0x400

    new-array v0, v0, [I

    .line 143
    .local v0, "pids":[I
    const-string v1, "/proc"

    invoke-static {v1, v0}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 145
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 146
    .local v1, "cmdlines":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_2a

    aget v4, v0, v3

    .line 147
    .local v4, "pid":I
    if-gez v4, :cond_19

    .line 148
    goto :goto_2a

    .line 150
    :cond_19
    invoke-static {v4}, Lcom/android/internal/os/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "cmdline":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 152
    goto :goto_27

    .line 154
    :cond_24
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 146
    .end local v4    # "pid":I
    .end local v5    # "cmdline":Ljava/lang/String;
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 156
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public static blacklist readCmdlineFromProcfs()Ljava/lang/String;
    .registers 1

    .line 101
    const-string v0, "/proc/self/cmdline"

    invoke-static {v0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readCmdlineFromProcfs(I)Ljava/lang/String;
    .registers 3
    .param p0, "pid"    # I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist readCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 106
    .local v0, "cmdline":[Ljava/lang/String;
    sget-object v1, Lcom/android/internal/os/ProcfsMemoryUtil;->CMDLINE_OUT:[I

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-nez v1, :cond_f

    .line 107
    const-string v1, ""

    return-object v1

    .line 109
    :cond_f
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static blacklist readMemorySnapshotFromProcfs()Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
    .registers 1

    .line 60
    const-string v0, "/proc/self/status"

    invoke-static {v0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(Ljava/lang/String;)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
    .registers 3
    .param p0, "pid"    # I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(Ljava/lang/String;)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist readMemorySnapshotFromProcfs(Ljava/lang/String;)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
    .registers 10
    .param p0, "path"    # Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    .line 65
    .local v0, "output":[J
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    .line 66
    const/4 v4, 0x3

    aput-wide v2, v0, v4

    .line 67
    const/4 v5, 0x4

    aput-wide v2, v0, v5

    .line 68
    const/4 v6, 0x5

    aput-wide v2, v0, v6

    .line 69
    sget-object v7, Lcom/android/internal/os/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    invoke-static {p0, v7, v0}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 70
    aget-wide v7, v0, v1

    cmp-long v7, v7, v2

    if-eqz v7, :cond_57

    aget-wide v7, v0, v4

    cmp-long v7, v7, v2

    if-eqz v7, :cond_57

    aget-wide v7, v0, v5

    cmp-long v7, v7, v2

    if-eqz v7, :cond_57

    aget-wide v7, v0, v6

    cmp-long v2, v7, v2

    if-nez v2, :cond_31

    goto :goto_57

    .line 74
    :cond_31
    new-instance v2, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    invoke-direct {v2}, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;-><init>()V

    .line 75
    .local v2, "snapshot":Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
    aget-wide v7, v0, v1

    long-to-int v1, v7

    iput v1, v2, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 76
    const/4 v1, 0x1

    aget-wide v7, v0, v1

    long-to-int v1, v7

    iput v1, v2, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    .line 77
    const/4 v1, 0x2

    aget-wide v7, v0, v1

    long-to-int v1, v7

    iput v1, v2, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    .line 78
    aget-wide v3, v0, v4

    long-to-int v1, v3

    iput v1, v2, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    .line 79
    aget-wide v3, v0, v5

    long-to-int v1, v3

    iput v1, v2, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    .line 80
    aget-wide v3, v0, v6

    long-to-int v1, v3

    iput v1, v2, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    .line 81
    return-object v2

    .line 72
    .end local v2    # "snapshot":Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
    :cond_57
    :goto_57
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist readOomScoreAdjFromProcfs()I
    .registers 1

    .line 127
    const-string v0, "/proc/self/oom_score_adj"

    invoke-static {v0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readOomScoreAdjFromProcfs(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist readOomScoreAdjFromProcfs(I)I
    .registers 3
    .param p0, "pid"    # I

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/oom_score_adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readOomScoreAdjFromProcfs(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static blacklist readOomScoreAdjFromProcfs(Ljava/lang/String;)I
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 132
    .local v0, "oom_score_adj":[J
    sget-object v1, Lcom/android/internal/os/ProcfsMemoryUtil;->OOM_SCORE_ADJ_OUT:[I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 133
    aget-wide v1, v0, v2

    long-to-int v1, v1

    return v1

    .line 135
    :cond_11
    return v2
.end method

.method public static blacklist readVmStat()Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;
    .registers 6

    .line 171
    sget-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->VMSTAT_KEYS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    .line 172
    .local v0, "vmstat":[J
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    .line 173
    const-string v4, "/proc/vmstat"

    sget-object v5, Lcom/android/internal/os/ProcfsMemoryUtil;->VMSTAT_KEYS:[Ljava/lang/String;

    invoke-static {v4, v5, v0}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 174
    aget-wide v4, v0, v1

    cmp-long v2, v4, v2

    if-nez v2, :cond_19

    .line 175
    const/4 v1, 0x0

    return-object v1

    .line 177
    :cond_19
    new-instance v2, Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;

    invoke-direct {v2}, Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;-><init>()V

    .line 178
    .local v2, "result":Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;
    aget-wide v3, v0, v1

    long-to-int v1, v3

    iput v1, v2, Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;->oomKillCount:I

    .line 179
    return-object v2
.end method
