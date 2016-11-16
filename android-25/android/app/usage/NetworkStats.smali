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

.field private mTag:I

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidOrUidIndex:I

.field private mUids:[I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V
    .locals 5
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
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 43
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@b
    .line 69
    iput v3, p0, Landroid/app/usage/NetworkStats;->mTag:I

    #@d
    .line 81
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@f
    .line 86
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@11
    .line 91
    iput v3, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@13
    .line 96
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@15
    .line 97
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@17
    .line 103
    const-string/jumbo v1, "netstats"

    #@1a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1d
    move-result-object v1

    #@1e
    .line 102
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    #@21
    move-result-object v0

    #@22
    .line 105
    .local v0, "statsService":Landroid/net/INetworkStatsService;
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->openSessionForUsageStats(Ljava/lang/String;)Landroid/net/INetworkStatsSession;

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@2c
    .line 106
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2e
    const-string/jumbo v2, "close"

    #@31
    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@34
    .line 107
    iput-object p2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    #@36
    .line 108
    iput-wide p3, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    #@38
    .line 109
    iput-wide p5, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    #@3a
    .line 101
    return-void
.end method

.method private fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V
    .locals 2
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    #@0
    .prologue
    .line 491
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@2
    iget v0, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@4
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap3(I)I

    #@7
    move-result v0

    #@8
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set9(Landroid/app/usage/NetworkStats$Bucket;I)I

    #@b
    .line 492
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@d
    iget v0, v0, Landroid/net/NetworkStats$Entry;->tag:I

    #@f
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap2(I)I

    #@12
    move-result v0

    #@13
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set6(Landroid/app/usage/NetworkStats$Bucket;I)I

    #@16
    .line 493
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@18
    iget v0, v0, Landroid/net/NetworkStats$Entry;->set:I

    #@1a
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap1(I)I

    #@1d
    move-result v0

    #@1e
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set5(Landroid/app/usage/NetworkStats$Bucket;I)I

    #@21
    .line 494
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@23
    iget v0, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    #@25
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap0(I)I

    #@28
    move-result v0

    #@29
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set2(Landroid/app/usage/NetworkStats$Bucket;I)I

    #@2c
    .line 495
    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    #@2e
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set0(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@31
    .line 496
    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    #@33
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set1(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@36
    .line 497
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@38
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@3a
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set3(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@3d
    .line 498
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@3f
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@41
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set4(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@44
    .line 499
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@46
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@48
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set7(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@4b
    .line 500
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@4d
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@4f
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set8(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@52
    .line 490
    return-void
.end method

.method private getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 4
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 535
    if-eqz p1, :cond_1

    #@3
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 536
    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@9
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@b
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->size()I

    #@e
    move-result v1

    #@f
    if-ge v0, v1, :cond_0

    #@11
    .line 537
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@13
    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@15
    add-int/lit8 v2, v1, 0x1

    #@17
    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@19
    .line 538
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@1b
    .line 537
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@21
    .line 539
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    #@24
    move-result v0

    #@25
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap3(I)I

    #@28
    move-result v0

    #@29
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set9(Landroid/app/usage/NetworkStats$Bucket;I)I

    #@2c
    .line 540
    iget v0, p0, Landroid/app/usage/NetworkStats;->mTag:I

    #@2e
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap2(I)I

    #@31
    move-result v0

    #@32
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set6(Landroid/app/usage/NetworkStats$Bucket;I)I

    #@35
    .line 541
    invoke-static {p1, v3}, Landroid/app/usage/NetworkStats$Bucket;->-set5(Landroid/app/usage/NetworkStats$Bucket;I)I

    #@38
    .line 542
    invoke-static {p1, v3}, Landroid/app/usage/NetworkStats$Bucket;->-set2(Landroid/app/usage/NetworkStats$Bucket;I)I

    #@3b
    .line 543
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@3d
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    #@3f
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set0(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@42
    .line 544
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@44
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    #@46
    .line 545
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@48
    iget-wide v2, v2, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    #@4a
    .line 544
    add-long/2addr v0, v2

    #@4b
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set1(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@4e
    .line 546
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@50
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    #@52
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set3(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@55
    .line 547
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@57
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    #@59
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set4(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@5c
    .line 548
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@5e
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    #@60
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set7(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@63
    .line 549
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    #@65
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    #@67
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set8(Landroid/app/usage/NetworkStats$Bucket;J)J

    #@6a
    .line 550
    const/4 v0, 0x1

    #@6b
    return v0

    #@6c
    .line 551
    :cond_0
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_1

    #@72
    .line 552
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    #@75
    .line 553
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    #@78
    move-result v0

    #@79
    return v0

    #@7a
    .line 556
    :cond_1
    const/4 v0, 0x0

    #@7b
    return v0
.end method

.method private getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 3
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    #@0
    .prologue
    .line 509
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
    .line 510
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
    .line 511
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    #@1f
    .line 512
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 514
    :cond_0
    const/4 v0, 0x0

    #@22
    return v0
.end method

.method private getUid()I
    .locals 3

    #@0
    .prologue
    .line 571
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_2

    #@6
    .line 572
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
    .line 573
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@13
    .line 574
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
    .line 573
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 576
    :cond_1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    #@3d
    iget v1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@3f
    aget v0, v0, v1

    #@41
    return v0

    #@42
    .line 579
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
    .line 566
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
    .line 562
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

.method private setSingleUidTag(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "tag"    # I

    #@0
    .prologue
    .line 583
    iput p1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@2
    .line 584
    iput p2, p0, Landroid/app/usage/NetworkStats;->mTag:I

    #@4
    .line 582
    return-void
.end method

.method private stepHistory()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 475
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 476
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepUid()V

    #@a
    .line 477
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@d
    .line 479
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@f
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    #@11
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    #@14
    move-result v2

    #@15
    .line 481
    iget-wide v6, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    #@17
    iget-wide v8, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    #@19
    .line 480
    const/4 v3, -0x1

    #@1a
    const/4 v4, 0x0

    #@1b
    .line 481
    const/4 v5, -0x1

    #@1c
    .line 479
    invoke-interface/range {v0 .. v9}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 486
    :goto_0
    iput v11, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@24
    .line 474
    :cond_0
    return-void

    #@25
    .line 482
    :catch_0
    move-exception v10

    #@26
    .line 483
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
    .line 588
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 589
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    iput v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@a
    .line 587
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
    .line 380
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 382
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@7
    invoke-interface {v1}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 388
    :cond_0
    :goto_0
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@c
    .line 389
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 390
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@12
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    #@15
    .line 379
    :cond_1
    return-void

    #@16
    .line 383
    :catch_0
    move-exception v0

    #@17
    .line 384
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
    .line 115
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 116
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 113
    return-void

    #@10
    .line 119
    :catchall_0
    move-exception v0

    #@11
    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 119
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
    .line 401
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
    .line 405
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@10
    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@16
    .line 407
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
    .line 354
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 355
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 357
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
    .line 518
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 519
    return-object v2

    #@6
    .line 521
    :cond_0
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    #@8
    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    #@b
    .line 522
    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@d
    if-nez v1, :cond_1

    #@f
    .line 523
    new-instance v1, Landroid/net/NetworkStats$Entry;

    #@11
    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@14
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@16
    .line 525
    :cond_1
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@18
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    #@1a
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@1d
    .line 526
    invoke-direct {p0, v0}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    #@20
    .line 527
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
    .line 366
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 367
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
    .line 368
    :cond_1
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@15
    if-eqz v2, :cond_3

    #@17
    .line 369
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
    .line 370
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    #@24
    move-result v0

    #@25
    .line 369
    :cond_2
    return v0

    #@26
    .line 372
    :cond_3
    return v1
.end method

.method startHistoryEnumeration(I)V
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 424
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/usage/NetworkStats;->startHistoryEnumeration(II)V

    #@4
    .line 423
    return-void
.end method

.method startHistoryEnumeration(II)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "tag"    # I

    #@0
    .prologue
    .line 431
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@3
    .line 433
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@5
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    #@7
    .line 435
    iget-wide v6, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    #@9
    iget-wide v8, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    #@b
    .line 434
    const/4 v3, -0x1

    #@c
    .line 435
    const/4 v5, -0x1

    #@d
    move v2, p1

    #@e
    move v4, p2

    #@f
    .line 433
    invoke-interface/range {v0 .. v9}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    #@15
    .line 436
    invoke-direct {p0, p1, p2}, Landroid/app/usage/NetworkStats;->setSingleUidTag(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 441
    :goto_0
    const/4 v0, 0x0

    #@19
    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@1b
    .line 430
    return-void

    #@1c
    .line 437
    :catch_0
    move-exception v10

    #@1d
    .line 438
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
    .line 415
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
    .line 417
    iput v6, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    #@11
    .line 414
    return-void
.end method

.method startUserUidEnumeration()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@4
    invoke-interface {v2}, Landroid/net/INetworkStatsSession;->getRelevantUids()[I

    #@7
    move-result-object v15

    #@8
    .line 453
    .local v15, "uids":[I
    new-instance v13, Landroid/util/IntArray;

    #@a
    array-length v2, v15

    #@b
    invoke-direct {v13, v2}, Landroid/util/IntArray;-><init>(I)V

    #@e
    .line 454
    .local v13, "filteredUids":Landroid/util/IntArray;
    const/4 v2, 0x0

    #@f
    array-length v0, v15

    #@10
    move/from16 v17, v0

    #@12
    move/from16 v16, v2

    #@14
    :goto_0
    move/from16 v0, v16

    #@16
    move/from16 v1, v17

    #@18
    if-ge v0, v1, :cond_1

    #@1a
    aget v4, v15, v16

    #@1c
    .line 456
    .local v4, "uid":I
    :try_start_0
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    #@20
    move-object/from16 v0, p0

    #@22
    iget-object v3, v0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    #@24
    .line 458
    move-object/from16 v0, p0

    #@26
    iget-wide v8, v0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-wide v10, v0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    #@2c
    .line 457
    const/4 v5, -0x1

    #@2d
    const/4 v6, 0x0

    #@2e
    .line 458
    const/4 v7, -0x1

    #@2f
    .line 456
    invoke-interface/range {v2 .. v11}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    #@32
    move-result-object v14

    #@33
    .line 459
    .local v14, "history":Landroid/net/NetworkStatsHistory;
    if-eqz v14, :cond_0

    #@35
    invoke-virtual {v14}, Landroid/net/NetworkStatsHistory;->size()I

    #@38
    move-result v2

    #@39
    if-lez v2, :cond_0

    #@3b
    .line 460
    invoke-virtual {v13, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 454
    .end local v14    # "history":Landroid/net/NetworkStatsHistory;
    :cond_0
    :goto_1
    add-int/lit8 v2, v16, 0x1

    #@40
    move/from16 v16, v2

    #@42
    goto :goto_0

    #@43
    .line 462
    :catch_0
    move-exception v12

    #@44
    .line 463
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NetworkStats"

    #@47
    new-instance v3, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v5, "Error while getting history of uid "

    #@4f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5e
    goto :goto_1

    #@5f
    .line 466
    .end local v4    # "uid":I
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {v13}, Landroid/util/IntArray;->toArray()[I

    #@62
    move-result-object v2

    #@63
    move-object/from16 v0, p0

    #@65
    iput-object v2, v0, Landroid/app/usage/NetworkStats;->mUids:[I

    #@67
    .line 467
    const/4 v2, -0x1

    #@68
    move-object/from16 v0, p0

    #@6a
    iput v2, v0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    #@6c
    .line 468
    invoke-direct/range {p0 .. p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    #@6f
    .line 448
    return-void
.end method
