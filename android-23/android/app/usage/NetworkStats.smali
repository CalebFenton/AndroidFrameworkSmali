.class public final Landroid/app/usage/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStats$Bucket;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStats"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mEndTimeStamp:J

.field private mEnumerationIndex:I

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

.field private mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStartTimeStamp:J

.field private mSummary:Landroid/net/NetworkStats;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidOrUidIndex:I

.field private mUids:[I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "startTimestamp"    # J
    .param p5, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@a
    .line 72
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@c
    .line 77
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@e
    .line 82
    const/4 v1, 0x0

    #@f
    iput v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@11
    .line 87
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@13
    .line 88
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@15
    .line 94
    const-string/jumbo v1, "netstats"

    #@18
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1b
    move-result-object v1

    #@1c
    .line 93
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    #@1f
    move-result-object v0

    #@20
    .line 96
    .local v0, "statsService":Landroid/net/INetworkStatsService;
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->openSessionForUsageStats(Ljava/lang/String;)Landroid/net/INetworkStatsSession;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@2a
    .line 97
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2c
    const-string/jumbo v2, "close"

    #@2f
    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@32
    .line 98
    iput-object p2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    #@34
    .line 99
    iput-wide p3, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    #@36
    .line 100
    iput-wide p5, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    #@38
    .line 92
    return-void
.end method

.method private fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V
    .locals 2
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    #@0
    .prologue
    .line 380
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@2
    iget v0, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@4
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap1(I)I

    #@7
    move-result v0

    #@8
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set7(Landroid/app/usage/NetworkStats$Bucket;I)I

    #@b
    .line 381
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@d
    iget v0, v0, Landroid/net/NetworkStats$Entry;->set:I

    #@f
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap0(I)I

    #@12
    move-result v0

    #@13
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set4(Landroid/app/usage/NetworkStats$Bucket;I)I

    #@16
    .line 382
    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    #@18
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set0(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@1b
    .line 383
    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    #@1d
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set1(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@20
    .line 384
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@22
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@24
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set2(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@27
    .line 385
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@29
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@2b
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set3(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@2e
    .line 386
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@30
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@32
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set5(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@35
    .line 387
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@37
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@39
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set6(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@3c
    .line 379
    return-void
.end method

.method private getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 4
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    #@0
    .prologue
    .line 422
    if-eqz p1, :cond_1

    #@2
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 423
    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@8
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@a
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->size()I

    #@d
    move-result v1

    #@e
    if-ge v0, v1, :cond_0

    #@10
    .line 424
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@12
    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@14
    add-int/lit8 v2, v1, 0x1

    #@16
    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@18
    .line 425
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@1a
    .line 424
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@20
    .line 426
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    #@23
    move-result v0

    #@24
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap1(I)I

    #@27
    move-result v0

    #@28
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set7(Landroid/app/usage/NetworkStats$Bucket;I)I

    #@2b
    .line 427
    const/4 v0, -0x1

    #@2c
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set4(Landroid/app/usage/NetworkStats$Bucket;I)I

    #@2f
    .line 428
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@31
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    #@33
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set0(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@36
    .line 429
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@38
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    #@3a
    .line 430
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@3c
    iget-wide v2, v2, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    #@3e
    .line 429
    add-long/2addr v0, v2

    #@3f
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set1(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@42
    .line 431
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@44
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    #@46
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set2(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@49
    .line 432
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@4b
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    #@4d
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set3(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@50
    .line 433
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@52
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    #@54
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set5(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@57
    .line 434
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@59
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    #@5b
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set6(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@5e
    .line 435
    const/4 v0, 0x1

    #@5f
    return v0

    #@60
    .line 436
    :cond_0
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_1

    #@66
    .line 437
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    #@69
    .line 438
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    #@6c
    move-result v0

    #@6d
    return v0

    #@6e
    .line 441
    :cond_1
    const/4 v0, 0x0

    #@6f
    return v0
.end method

.method private getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 3
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    #@0
    .prologue
    .line 396
    if-eqz p1, :cond_0

    #@2
    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@4
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@6
    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 397
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@e
    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@14
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@1c
    .line 398
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    #@1f
    .line 399
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 401
    :cond_0
    const/4 v0, 0x0

    #@22
    return v0
.end method

.method private getUid()I
    .locals 3

    #@0
    .prologue
    .line 456
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_2

    #@6
    .line 457
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@8
    if-ltz v0, :cond_0

    #@a
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@c
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    #@e
    array-length v1, v1

    #@f
    if-lt v0, v1, :cond_1

    #@11
    .line 458
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@13
    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Index="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, " mUids.length="

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    #@2e
    array-length v2, v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 458
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 461
    :cond_1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    #@3d
    iget v1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@3f
    aget v0, v0, v1

    #@41
    return v0

    #@42
    .line 464
    :cond_2
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@44
    return v0
.end method

.method private hasNextUid()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 451
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    #@d
    array-length v2, v2

    #@e
    if-ge v1, v2, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method private isUidEnumeration()Z
    .locals 1

    #@0
    .prologue
    .line 447
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private setSingleUid(I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 468
    iput p1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@2
    .line 467
    return-void
.end method

.method private setUidEnumeration([I)V
    .locals 1
    .param p1, "uids"    # [I

    #@0
    .prologue
    .line 472
    iput-object p1, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    #@2
    .line 473
    const/4 v0, -0x1

    #@3
    iput v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@5
    .line 471
    return-void
.end method

.method private stepHistory()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 364
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 365
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepUid()V

    #@a
    .line 366
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@d
    .line 368
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@f
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    #@11
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    #@14
    move-result v2

    #@15
    .line 370
    iget-wide v6, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    #@17
    iget-wide v8, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    #@19
    .line 369
    const/4 v3, -0x1

    #@1a
    const/4 v4, 0x0

    #@1b
    .line 370
    const/4 v5, -0x1

    #@1c
    .line 368
    invoke-interface/range {v0 .. v9}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 375
    :goto_0
    iput v11, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@24
    .line 363
    :cond_0
    return-void

    #@25
    .line 371
    :catch_0
    move-exception v10

    #@26
    .line 372
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "NetworkStats"

    #@29
    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_0
.end method

.method private stepUid()V
    .locals 1

    #@0
    .prologue
    .line 477
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 478
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    iput v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@a
    .line 476
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 294
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 296
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@7
    invoke-interface {v1}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 302
    :cond_0
    :goto_0
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@c
    .line 303
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 304
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@12
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    #@15
    .line 293
    :cond_1
    return-void

    #@16
    .line 297
    :catch_0
    move-exception v0

    #@17
    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NetworkStats"

    #@1a
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 107
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 104
    return-void

    #@10
    .line 110
    :catchall_0
    move-exception v0

    #@11
    .line 111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 110
    throw v0
.end method

.method getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@2
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    #@4
    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    #@6
    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    #@8
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@e
    .line 319
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@10
    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@16
    .line 321
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 1
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 269
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 271
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 405
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 406
    return-object v2

    #@6
    .line 408
    :cond_0
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    #@8
    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    #@b
    .line 409
    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@d
    if-nez v1, :cond_1

    #@f
    .line 410
    new-instance v1, Landroid/net/NetworkStats$Entry;

    #@11
    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@14
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@16
    .line 412
    :cond_1
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@18
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@1a
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@1d
    .line 413
    invoke-direct {p0, v0}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    #@20
    .line 414
    return-object v0
.end method

.method public hasNextBucket()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 280
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 281
    iget v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@8
    iget-object v3, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@a
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    #@d
    move-result v3

    #@e
    if-ge v2, v3, :cond_0

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    move v0, v1

    #@12
    goto :goto_0

    #@13
    .line 282
    :cond_1
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@15
    if-eqz v2, :cond_3

    #@17
    .line 283
    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@19
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@1b
    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->size()I

    #@1e
    move-result v2

    #@1f
    if-lt v1, v2, :cond_2

    #@21
    .line 284
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    #@24
    move-result v0

    #@25
    .line 283
    :cond_2
    return v0

    #@26
    .line 286
    :cond_3
    return v1
.end method

.method startHistoryEnumeration(I)V
    .locals 12
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 338
    const/4 v0, 0x0

    #@2
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@4
    .line 340
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@6
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    #@8
    .line 342
    iget-wide v6, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    #@a
    iget-wide v8, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    #@c
    .line 341
    const/4 v3, -0x1

    #@d
    const/4 v4, 0x0

    #@e
    .line 342
    const/4 v5, -0x1

    #@f
    move v2, p1

    #@10
    .line 340
    invoke-interface/range {v0 .. v9}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@16
    .line 343
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->setSingleUid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 348
    :goto_0
    iput v11, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@1b
    .line 337
    return-void

    #@1c
    .line 344
    :catch_0
    move-exception v10

    #@1d
    .line 345
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "NetworkStats"

    #@20
    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    goto :goto_0
.end method

.method startSummaryEnumeration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 329
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@3
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    #@5
    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    #@7
    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    #@9
    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@f
    .line 331
    iput v6, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@11
    .line 328
    return-void
.end method

.method startUserUidEnumeration()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@2
    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->getRelevantUids()[I

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/app/usage/NetworkStats;->setUidEnumeration([I)V

    #@9
    .line 357
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    #@c
    .line 355
    return-void
.end method
