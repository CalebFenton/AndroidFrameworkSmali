.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field final mInfos:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    const/16 v0, 0xd

    #@5
    new-array v0, v0, [J

    #@7
    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@9
    .line 22
    return-void
.end method


# virtual methods
.method public getCachedSize()J
    .locals 4

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x400

    #@6
    mul-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method public getCachedSizeKb()J
    .locals 4

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@2
    const/4 v1, 0x2

    #@3
    aget-wide v0, v0, v1

    #@5
    .line 86
    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@7
    const/4 v3, 0x3

    #@8
    aget-wide v2, v2, v3

    #@a
    .line 85
    add-long/2addr v0, v2

    #@b
    .line 86
    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@d
    const/16 v3, 0x9

    #@f
    aget-wide v2, v2, v3

    #@11
    .line 85
    sub-long/2addr v0, v2

    #@12
    return-wide v0
.end method

.method public getFreeSize()J
    .locals 4

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@2
    const/4 v1, 0x1

    #@3
    aget-wide v0, v0, v1

    #@5
    const-wide/16 v2, 0x400

    #@7
    mul-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method public getFreeSizeKb()J
    .locals 2

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@2
    const/4 v1, 0x1

    #@3
    aget-wide v0, v0, v1

    #@5
    return-wide v0
.end method

.method public getKernelUsedSize()J
    .locals 4

    #@0
    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x400

    #@6
    mul-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method public getKernelUsedSizeKb()J
    .locals 4

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@2
    const/4 v1, 0x4

    #@3
    aget-wide v0, v0, v1

    #@5
    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@7
    const/4 v3, 0x5

    #@8
    aget-wide v2, v2, v3

    #@a
    add-long/2addr v0, v2

    #@b
    .line 94
    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@d
    const/16 v3, 0xa

    #@f
    aget-wide v2, v2, v3

    #@11
    .line 93
    add-long/2addr v0, v2

    #@12
    .line 94
    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@14
    const/16 v3, 0xb

    #@16
    aget-wide v2, v2, v3

    #@18
    .line 93
    add-long/2addr v0, v2

    #@19
    .line 95
    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@1b
    const/16 v3, 0xc

    #@1d
    aget-wide v2, v2, v3

    #@1f
    .line 93
    add-long/2addr v0, v2

    #@20
    return-wide v0
.end method

.method public getRawInfo()[J
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@2
    return-object v0
.end method

.method public getSwapFreeSizeKb()J
    .locals 2

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@2
    const/4 v1, 0x7

    #@3
    aget-wide v0, v0, v1

    #@5
    return-wide v0
.end method

.method public getSwapTotalSizeKb()J
    .locals 2

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@2
    const/4 v1, 0x6

    #@3
    aget-wide v0, v0, v1

    #@5
    return-wide v0
.end method

.method public getTotalSize()J
    .locals 4

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@2
    const/4 v1, 0x0

    #@3
    aget-wide v0, v0, v1

    #@5
    const-wide/16 v2, 0x400

    #@7
    mul-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method public getTotalSizeKb()J
    .locals 2

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@2
    const/4 v1, 0x0

    #@3
    aget-wide v0, v0, v1

    #@5
    return-wide v0
.end method

.method public getZramTotalSizeKb()J
    .locals 2

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@2
    const/16 v1, 0x8

    #@4
    aget-wide v0, v0, v1

    #@6
    return-wide v0
.end method

.method public readMemInfo()V
    .locals 2

    #@0
    .prologue
    .line 29
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v0

    #@4
    .line 31
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    #@6
    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 33
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@c
    .line 25
    return-void

    #@d
    .line 32
    :catchall_0
    move-exception v1

    #@e
    .line 33
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@11
    .line 32
    throw v1
.end method
