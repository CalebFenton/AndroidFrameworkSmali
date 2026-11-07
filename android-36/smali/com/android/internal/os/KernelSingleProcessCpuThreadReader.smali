.class public Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;
.super Ljava/lang/Object;
.source "KernelSingleProcessCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;,
        Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "KernelSingleProcCpuThreadRdr"


# instance fields
.field private final blacklist mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

.field private blacklist mFrequencyCount:I

.field private blacklist mIsTracking:Z

.field private final blacklist mPid:I

.field private blacklist mSelectedThreadNativeTids:[I


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "cpuTimeInStateReader"    # Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    .line 95
    iput p1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mPid:I

    .line 96
    iput-object p2, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    .line 97
    return-void
.end method

.method public static blacklist create(I)Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;
    .registers 5
    .param p0, "pid"    # I

    .line 107
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;-><init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_7

    return-object v1

    .line 108
    :catch_7
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "KernelSingleProcCpuThreadRdr"

    const-string v3, "Failed to initialize KernelSingleProcessCpuThreadReader"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    return-object v0
.end method

.method private native blacklist getCpuFrequencyCount(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)I
.end method

.method private native blacklist readProcessCpuUsage(I[J[JLcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z
.end method

.method private native blacklist startAggregatingThreadCpuTimes([ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z
.end method

.method private native blacklist startTrackingProcessCpuTimes(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z
.end method


# virtual methods
.method public blacklist getCpuFrequencyCount()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mFrequencyCount:I

    if-nez v0, :cond_c

    .line 154
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mFrequencyCount:I

    .line 156
    :cond_c
    iget v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mFrequencyCount:I

    return v0
.end method

.method public blacklist getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    .registers 6

    .line 170
    new-instance v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    invoke-virtual {p0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;-><init>(I)V

    .line 172
    .local v0, "processCpuUsage":Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    iget v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mPid:I

    iget-object v2, v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    iget-object v3, v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->selectedThreadCpuTimesMillis:[J

    iget-object v4, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->readProcessCpuUsage(I[J[JLcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z

    move-result v1

    .line 176
    .local v1, "result":Z
    if-nez v1, :cond_19

    .line 177
    const/4 v2, 0x0

    return-object v2

    .line 187
    :cond_19
    return-object v0
.end method

.method public blacklist setSelectedThreadIds([I)V
    .registers 4
    .param p1, "nativeTids"    # [I

    .line 143
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    .line 144
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mIsTracking:Z

    if-eqz v0, :cond_13

    .line 145
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    iget-object v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startAggregatingThreadCpuTimes([ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z

    .line 147
    :cond_13
    return-void
.end method

.method public blacklist startTrackingThreadCpuTimes()V
    .registers 4

    .line 119
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mIsTracking:Z

    if-nez v0, :cond_60

    .line 120
    iget v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mPid:I

    iget-object v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startTrackingProcessCpuTimes(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z

    move-result v0

    const-string v1, "KernelSingleProcCpuThreadRdr"

    if-nez v0, :cond_2d

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start tracking process CPU times for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v0, "cpu.value_process_tracking_start_failure_count"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 124
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    array-length v0, v0

    if-lez v0, :cond_5d

    .line 125
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    iget-object v2, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startAggregatingThreadCpuTimes([ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start tracking aggregated thread CPU times for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    .line 128
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "cpu.value_aggregated_thread_tracking_start_failure_count"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 133
    :cond_5d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mIsTracking:Z

    .line 135
    :cond_60
    return-void
.end method
