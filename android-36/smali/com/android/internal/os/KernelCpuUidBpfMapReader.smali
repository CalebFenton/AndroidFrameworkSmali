.class public abstract Lcom/android/internal/os/KernelCpuUidBpfMapReader;
.super Ljava/lang/Object;
.source "KernelCpuUidBpfMapReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;,
        Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidFreqTimeBpfMapReader;,
        Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidActiveTimeBpfMapReader;,
        Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidClusterTimeBpfMapReader;
    }
.end annotation


# static fields
.field private static final blacklist ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

.field private static final blacklist CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

.field private static final blacklist ERROR_THRESHOLD:I = 0x5

.field private static final blacklist FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

.field private static final blacklist FRESHNESS_MS:J = 0x1f4L


# instance fields
.field protected blacklist mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field private blacklist mErrors:I

.field private blacklist mLastReadTime:J

.field protected final blacklist mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected final blacklist mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field final blacklist mTag:Ljava/lang/String;

.field protected final blacklist mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidFreqTimeBpfMapReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidFreqTimeBpfMapReader;-><init>()V

    sput-object v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    .line 51
    new-instance v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidActiveTimeBpfMapReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidActiveTimeBpfMapReader;-><init>()V

    sput-object v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    .line 54
    new-instance v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidClusterTimeBpfMapReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidClusterTimeBpfMapReader;-><init>()V

    sput-object v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mTag:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mLastReadTime:J

    .line 73
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 74
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 75
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-void
.end method

.method private blacklist dataValid()Z
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mLastReadTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method static blacklist getActiveTimeReaderInstance()Lcom/android/internal/os/KernelCpuUidBpfMapReader;
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    return-object v0
.end method

.method static blacklist getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuUidBpfMapReader;
    .registers 1

    .line 66
    sget-object v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    return-object v0
.end method

.method static blacklist getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuUidBpfMapReader;
    .registers 1

    .line 58
    sget-object v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getDataDimensions()[J
.end method

.method public blacklist open()Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    .registers 2

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    .registers 5
    .param p1, "ignoreCache"    # Z

    .line 117
    iget v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-le v0, v1, :cond_7

    .line 118
    return-object v2

    .line 120
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->startTrackingBpfTimes()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 121
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mTag:Ljava/lang/String;

    const-string v1, "Failed to start tracking"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    .line 123
    return-object v2

    .line 125
    :cond_1b
    if-eqz p1, :cond_23

    .line 126
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    goto :goto_54

    .line 128
    :cond_23
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 129
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->dataValid()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 130
    new-instance v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    invoke-direct {v0, p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;-><init>(Lcom/android/internal/os/KernelCpuUidBpfMapReader;)V

    return-object v0

    .line 132
    :cond_34
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 133
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 134
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->dataValid()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 135
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 136
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 137
    new-instance v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    invoke-direct {v0, p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;-><init>(Lcom/android/internal/os/KernelCpuUidBpfMapReader;)V

    return-object v0

    .line 140
    :cond_54
    :goto_54
    invoke-virtual {p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->readBpfData()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mLastReadTime:J

    .line 142
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 143
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 144
    new-instance v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    invoke-direct {v0, p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;-><init>(Lcom/android/internal/os/KernelCpuUidBpfMapReader;)V

    return-object v0

    .line 147
    :cond_70
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 148
    iget v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    .line 149
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mTag:Ljava/lang/String;

    const-string v1, "Failed to read bpf times"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-object v2
.end method

.method protected abstract blacklist readBpfData()Z
.end method

.method public blacklist removeUidsInRange(II)V
    .registers 7
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .line 90
    iget v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_6

    .line 91
    return-void

    .line 93
    :cond_6
    if-lt p2, p1, :cond_46

    if-gez p1, :cond_b

    goto :goto_46

    .line 97
    :cond_b
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 98
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 99
    .local v0, "firstIndex":I
    const/4 v1, 0x0

    if-gez v0, :cond_24

    .line 100
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 103
    :cond_24
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 104
    .local v2, "lastIndex":I
    if-gez v2, :cond_37

    .line 105
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 108
    :cond_37
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    sub-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->removeAtRange(II)V

    .line 109
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 110
    return-void

    .line 94
    .end local v0    # "firstIndex":I
    .end local v2    # "lastIndex":I
    :cond_46
    :goto_46
    return-void
.end method

.method public blacklist startTrackingBpfTimes()Z
    .registers 2

    .line 78
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->startTracking()Z

    move-result v0

    return v0
.end method
