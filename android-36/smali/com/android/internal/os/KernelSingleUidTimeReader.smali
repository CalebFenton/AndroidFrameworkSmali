.class public Lcom/android/internal/os/KernelSingleUidTimeReader;
.super Ljava/lang/Object;
.source "KernelSingleUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o PROC_FILE_DIR:Ljava/lang/String; = "/proc/uid/"

.field private static final greylist-max-o PROC_FILE_NAME:Ljava/lang/String; = "/time_in_state"

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field public static final greylist-max-o TOTAL_READ_ERROR_COUNT:I = 0x5

.field private static final blacklist UID_TIMES_PROC_FILE:Ljava/lang/String; = "/proc/uid_time_in_state"


# instance fields
.field private blacklist mBpfTimesAvailable:Z

.field private final greylist-max-o mCpuFreqsCount:I

.field private greylist-max-o mCpuFreqsCountVerified:Z

.field private final greylist-max-o mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

.field private greylist-max-o mLastUidCpuTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field private greylist-max-o mReadErrorCounter:I

.field private greylist-max-o mSingleUidCpuTimesAvailable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/android/internal/os/KernelSingleUidTimeReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelSingleUidTimeReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "cpuFreqsCount"    # I

    .line 70
    new-instance v0, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    invoke-direct {v0}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelSingleUidTimeReader;-><init>(ILcom/android/internal/os/KernelSingleUidTimeReader$Injector;)V

    .line 71
    return-void
.end method

.method public constructor greylist-max-o <init>(ILcom/android/internal/os/KernelSingleUidTimeReader$Injector;)V
    .registers 4
    .param p1, "cpuFreqsCount"    # I
    .param p2, "injector"    # Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mBpfTimesAvailable:Z

    .line 74
    iput-object p2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    .line 75
    iput p1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    .line 76
    iget v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    if-nez v0, :cond_1a

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    .line 79
    :cond_1a
    return-void
.end method

.method private static final native blacklist canReadBpfTimes()Z
.end method

.method private greylist-max-o readCpuTimesFromByteBuffer(Ljava/nio/ByteBuffer;)[J
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 140
    iget v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    new-array v0, v0, [J

    .line 141
    .local v0, "cpuTimesMs":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    if-ge v1, v2, :cond_15

    .line 143
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 145
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method private greylist-max-o verifyCpuFreqsCount(ILjava/lang/String;)V
    .registers 7
    .param p1, "numBytes"    # I
    .param p2, "procFile"    # Ljava/lang/String;

    .line 128
    div-int/lit8 v0, p1, 0x8

    .line 129
    .local v0, "actualCount":I
    iget v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    if-ne v1, v0, :cond_a

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCountVerified:Z

    .line 136
    return-void

    .line 130
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    .line 131
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freq count didn\'t match,count from /proc/uid_time_in_state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", butcount from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist addDelta(ILcom/android/internal/os/LongArrayMultiStateCounter;J)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "counter"    # Lcom/android/internal/os/LongArrayMultiStateCounter;
    .param p3, "timestampMs"    # J

    .line 249
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    .end local p1    # "uid":I
    .end local p2    # "counter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    .end local p3    # "timestampMs":J
    .local v1, "uid":I
    .local v2, "counter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    .local v3, "timestampMs":J
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->addDelta(ILcom/android/internal/os/LongArrayMultiStateCounter;J[J)Z

    .line 250
    return-void
.end method

.method public blacklist addDelta(ILcom/android/internal/os/LongArrayMultiStateCounter;J[J)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "counter"    # Lcom/android/internal/os/LongArrayMultiStateCounter;
    .param p3, "timestampMs"    # J
    .param p5, "delta"    # [J

    .line 258
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "uid":I
    .end local p2    # "counter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    .end local p3    # "timestampMs":J
    .end local p5    # "delta":[J
    .local v1, "uid":I
    .local v2, "counter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    .local v3, "timestampMs":J
    .local v5, "delta":[J
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->addDelta(ILcom/android/internal/os/LongArrayMultiStateCounter;J[J)Z

    .line 259
    return-void
.end method

.method public greylist-max-o computeDelta(I[J)[J
    .registers 12
    .param p1, "uid"    # I
    .param p2, "latestCpuTimesMs"    # [J

    .line 155
    monitor-enter p0

    .line 156
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 157
    monitor-exit p0

    return-object v1

    .line 160
    :cond_8
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 161
    .local v0, "lastCpuTimesMs":[J
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/os/KernelSingleUidTimeReader;->getDeltaLocked([J[J)[J

    move-result-object v2

    .line 162
    .local v2, "deltaTimesMs":[J
    if-nez v2, :cond_18

    .line 166
    monitor-exit p0

    return-object v1

    .line 169
    :cond_18
    const/4 v3, 0x0

    .line 170
    .local v3, "hasNonZero":Z
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1c
    if-ltz v4, :cond_2b

    .line 171
    aget-wide v5, v2, v4

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_28

    .line 172
    const/4 v3, 0x1

    .line 173
    goto :goto_2b

    .line 170
    :cond_28
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c

    .line 176
    .end local v4    # "i":I
    :cond_2b
    :goto_2b
    if-eqz v3, :cond_34

    .line 177
    iget-object v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    monitor-exit p0

    return-object v2

    .line 180
    :cond_34
    monitor-exit p0

    return-object v1

    .line 182
    .end local v0    # "lastCpuTimesMs":[J
    .end local v2    # "deltaTimesMs":[J
    .end local v3    # "hasNonZero":Z
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public greylist-max-o getDeltaLocked([J[J)[J
    .registers 12
    .param p1, "lastCpuTimesMs"    # [J
    .param p2, "latestCpuTimesMs"    # [J

    .line 195
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-ltz v0, :cond_12

    .line 196
    aget-wide v4, p2, v0

    cmp-long v2, v4, v2

    if-gez v2, :cond_f

    .line 197
    return-object v1

    .line 195
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 200
    .end local v0    # "i":I
    :cond_12
    if-nez p1, :cond_15

    .line 201
    return-object p2

    .line 203
    :cond_15
    array-length v0, p2

    new-array v0, v0, [J

    .line 204
    .local v0, "deltaTimesMs":[J
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1b
    if-ltz v4, :cond_2e

    .line 205
    aget-wide v5, p2, v4

    aget-wide v7, p1, v4

    sub-long/2addr v5, v7

    aput-wide v5, v0, v4

    .line 206
    aget-wide v5, v0, v4

    cmp-long v5, v5, v2

    if-gez v5, :cond_2b

    .line 207
    return-object v1

    .line 204
    :cond_2b
    add-int/lit8 v4, v4, -0x1

    goto :goto_1b

    .line 210
    .end local v4    # "i":I
    :cond_2e
    return-object v0
.end method

.method public greylist-max-o getLastUidCpuTimeMs()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    return-object v0
.end method

.method public greylist-max-o readDeltaMs(I)[J
    .registers 9
    .param p1, "uid"    # I

    .line 86
    monitor-enter p0

    .line 87
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 88
    monitor-exit p0

    return-object v1

    .line 90
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mBpfTimesAvailable:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2f

    .line 91
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->readBpfData(I)[J

    move-result-object v0

    .line 92
    .local v0, "cpuTimesMs":[J
    array-length v4, v0

    if-nez v4, :cond_1a

    .line 93
    iput-boolean v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mBpfTimesAvailable:Z

    goto :goto_2f

    .line 94
    :cond_1a
    iget-boolean v4, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCountVerified:Z

    if-nez v4, :cond_27

    array-length v4, v0

    iget v5, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    if-eq v4, v5, :cond_27

    .line 95
    iput-boolean v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    .line 96
    monitor-exit p0

    return-object v1

    .line 98
    :cond_27
    iput-boolean v2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCountVerified:Z

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/KernelSingleUidTimeReader;->computeDelta(I[J)[J

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 103
    .end local v0    # "cpuTimesMs":[J
    :cond_2f
    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "/proc/uid/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/time_in_state"

    .line 105
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_75

    .line 108
    .local v0, "procFile":Ljava/lang/String;
    :try_start_44
    iget-object v4, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    invoke-virtual {v4, v0}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->readData(Ljava/lang/String;)[B

    move-result-object v4

    .line 109
    .local v4, "data":[B
    iget-boolean v5, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCountVerified:Z

    if-nez v5, :cond_52

    .line 110
    array-length v5, v4

    invoke-direct {p0, v5, v0}, Lcom/android/internal/os/KernelSingleUidTimeReader;->verifyCpuFreqsCount(ILjava/lang/String;)V

    .line 112
    :cond_52
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 113
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 114
    invoke-direct {p0, v5}, Lcom/android/internal/os/KernelSingleUidTimeReader;->readCpuTimesFromByteBuffer(Ljava/nio/ByteBuffer;)[J

    move-result-object v1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_61} :catch_68
    .catchall {:try_start_44 .. :try_end_61} :catchall_75

    .line 121
    .end local v4    # "data":[B
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .local v1, "cpuTimesMs":[J
    nop

    .line 123
    :try_start_62
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/KernelSingleUidTimeReader;->computeDelta(I[J)[J

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 115
    .end local v1    # "cpuTimesMs":[J
    :catch_68
    move-exception v4

    .line 116
    .local v4, "e":Ljava/lang/Exception;
    iget v5, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mReadErrorCounter:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mReadErrorCounter:I

    const/4 v2, 0x5

    if-lt v5, v2, :cond_73

    .line 117
    iput-boolean v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    .line 120
    :cond_73
    monitor-exit p0

    return-object v1

    .line 124
    .end local v0    # "procFile":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_75
    move-exception v0

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_75

    throw v0
.end method

.method public greylist-max-o removeUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 226
    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 228
    monitor-exit p0

    .line 229
    return-void

    .line 228
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public greylist-max-o removeUidsInRange(II)V
    .registers 7
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .line 232
    if-ge p2, p1, :cond_3

    .line 233
    return-void

    .line 235
    :cond_3
    monitor-enter p0

    .line 236
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 239
    .local v0, "startIdx":I
    iget-object v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 240
    .local v1, "endIdx":I
    iget-object v2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->removeAtRange(II)V

    .line 241
    .end local v0    # "startIdx":I
    .end local v1    # "endIdx":I
    monitor-exit p0

    .line 242
    return-void

    .line 241
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public greylist-max-o setAllUidsCpuTimesMs(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[J>;)V"
        }
    .end annotation

    .line 214
    .local p1, "allUidsCpuTimesMs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[J>;"
    monitor-enter p0

    .line 215
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 216
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_28

    .line 217
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 218
    .local v1, "cpuTimesMs":[J
    if-eqz v1, :cond_25

    .line 219
    iget-object v2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    .end local v1    # "cpuTimesMs":[J
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 222
    .end local v0    # "i":I
    :cond_28
    monitor-exit p0

    .line 223
    return-void

    .line 222
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public greylist-max-o setSingleUidCpuTimesAvailable(Z)V
    .registers 2
    .param p1, "singleUidCpuTimesAvailable"    # Z

    .line 308
    iput-boolean p1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    .line 309
    return-void
.end method

.method public greylist-max-o singleUidCpuTimesAvailable()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    return v0
.end method
