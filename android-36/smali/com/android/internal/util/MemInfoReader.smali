.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field final blacklist mInfos:[J


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x1a

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    .line 29
    return-void
.end method


# virtual methods
.method public greylist-max-r getCachedSize()J
    .registers 5

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getCachedSizeKb()J
    .registers 7

    .line 102
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xf

    aget-wide v0, v0, v1

    .line 107
    .local v0, "kReclaimable":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 108
    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v3, 0x6

    aget-wide v0, v2, v3

    .line 110
    :cond_11
    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v5, 0xb

    aget-wide v4, v4, v5

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public greylist-max-r getFreeSize()J
    .registers 5

    .line 57
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getFreeSizeKb()J
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getKernelUsedSize()J
    .registers 5

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getKernelUsedSizeKb()J
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0xc

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0xd

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    .line 120
    .local v0, "size":J
    invoke-static {}, Landroid/os/Debug;->isVmapStack()Z

    move-result v2

    if-nez v2, :cond_26

    .line 121
    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0xe

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    .line 123
    :cond_26
    return-wide v0
.end method

.method public greylist getRawInfo()[J
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    return-object v0
.end method

.method public blacklist getShmemSizeKb()J
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getSwapFreeSizeKb()J
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x9

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getSwapTotalSizeKb()J
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x8

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public greylist getTotalSize()J
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getTotalSizeKb()J
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getZramTotalSizeKb()J
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xa

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public greylist readMemInfo()V
    .registers 3

    .line 36
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 38
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 40
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 41
    nop

    .line 42
    return-void

    .line 40
    :catchall_e
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 41
    throw v1
.end method
