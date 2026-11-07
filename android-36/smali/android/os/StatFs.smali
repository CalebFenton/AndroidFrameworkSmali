.class public Landroid/os/StatFs;
.super Ljava/lang/Object;
.source "StatFs.java"


# instance fields
.field private greylist-max-r mStat:Landroid/system/StructStatVfs;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    .line 44
    return-void
.end method

.method private static greylist-max-o doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 51
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v0
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 52
    :catch_5
    move-exception v0

    .line 53
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist getAvailableBlocks()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bavail:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getAvailableBlocksLong()J
    .registers 3

    .line 140
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bavail:J

    return-wide v0
.end method

.method public whitelist getAvailableBytes()J
    .registers 5

    .line 148
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bavail:J

    iget-object v2, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v2, v2, Landroid/system/StructStatVfs;->f_frsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getBlockCount()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_blocks:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getBlockCountLong()J
    .registers 3

    .line 97
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_blocks:J

    return-wide v0
.end method

.method public whitelist getBlockSize()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_frsize:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getBlockSizeLong()J
    .registers 3

    .line 81
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_frsize:J

    return-wide v0
.end method

.method public whitelist getFreeBlocks()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bfree:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getFreeBlocksLong()J
    .registers 3

    .line 115
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bfree:J

    return-wide v0
.end method

.method public whitelist getFreeBytes()J
    .registers 5

    .line 124
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bfree:J

    iget-object v2, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v2, v2, Landroid/system/StructStatVfs;->f_frsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getTotalBytes()J
    .registers 5

    .line 155
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_blocks:J

    iget-object v2, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v2, v2, Landroid/system/StructStatVfs;->f_frsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist restat(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 65
    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    .line 66
    return-void
.end method
