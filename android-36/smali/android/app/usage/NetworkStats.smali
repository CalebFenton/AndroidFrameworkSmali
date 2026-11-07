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
.field private static final greylist-max-o TAG:Ljava/lang/String; = "NetworkStats"


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mEndTimeStamp:J

.field private greylist-max-o mEnumerationIndex:I

.field private greylist-max-o mHistory:Landroid/net/NetworkStatsHistory;

.field private greylist-max-o mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

.field private greylist-max-o mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

.field private greylist-max-o mSession:Landroid/net/INetworkStatsSession;

.field private final greylist-max-o mStartTimeStamp:J

.field private greylist-max-o mState:I

.field private greylist-max-o mSummary:Landroid/net/NetworkStats;

.field private greylist-max-o mTag:I

.field private greylist-max-o mTemplate:Landroid/net/NetworkTemplate;

.field private greylist-max-o mUidOrUidIndex:I

.field private greylist-max-o mUids:[I


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "flags"    # I
    .param p4, "startTimestamp"    # J
    .param p6, "endTimestamp"    # J
    .param p8, "statsService"    # Landroid/net/INetworkStatsService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mTag:I

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/usage/NetworkStats;->mState:I

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 93
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 98
    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 103
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 104
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p8, p3, v0}, Landroid/net/INetworkStatsService;->openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 112
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 113
    iput-object p2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    .line 114
    iput-wide p4, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    .line 115
    iput-wide p6, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 116
    return-void
.end method

.method private greylist-max-o fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V
    .registers 4
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .line 636
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$smconvertUid(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmUid(Landroid/app/usage/NetworkStats$Bucket;I)V

    .line 637
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$smconvertTag(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmTag(Landroid/app/usage/NetworkStats$Bucket;I)V

    .line 638
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->set:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$smconvertState(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmState(Landroid/app/usage/NetworkStats$Bucket;I)V

    .line 639
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$smconvertDefaultNetworkStatus(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmDefaultNetworkStatus(Landroid/app/usage/NetworkStats$Bucket;I)V

    .line 641
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->metered:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$smconvertMetered(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmMetered(Landroid/app/usage/NetworkStats$Bucket;I)V

    .line 642
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$smconvertRoaming(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmRoaming(Landroid/app/usage/NetworkStats$Bucket;I)V

    .line 643
    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmBeginTimeStamp(Landroid/app/usage/NetworkStats$Bucket;J)V

    .line 644
    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmEndTimeStamp(Landroid/app/usage/NetworkStats$Bucket;J)V

    .line 645
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmRxBytes(Landroid/app/usage/NetworkStats$Bucket;J)V

    .line 646
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmRxPackets(Landroid/app/usage/NetworkStats$Bucket;J)V

    .line 647
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmTxBytes(Landroid/app/usage/NetworkStats$Bucket;J)V

    .line 648
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmTxPackets(Landroid/app/usage/NetworkStats$Bucket;J)V

    .line 649
    return-void
.end method

.method private greylist-max-o getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .registers 6
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .line 684
    if-eqz p1, :cond_82

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_82

    .line 685
    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 686
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 688
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$smconvertUid(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmUid(Landroid/app/usage/NetworkStats$Bucket;I)V

    .line 689
    iget v0, p0, Landroid/app/usage/NetworkStats;->mTag:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$smconvertTag(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmTag(Landroid/app/usage/NetworkStats$Bucket;I)V

    .line 690
    iget v0, p0, Landroid/app/usage/NetworkStats;->mState:I

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmState(Landroid/app/usage/NetworkStats$Bucket;I)V

    .line 691
    const/4 v0, -0x1

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmDefaultNetworkStatus(Landroid/app/usage/NetworkStats$Bucket;I)V

    .line 692
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmMetered(Landroid/app/usage/NetworkStats$Bucket;I)V

    .line 693
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmRoaming(Landroid/app/usage/NetworkStats$Bucket;I)V

    .line 694
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmBeginTimeStamp(Landroid/app/usage/NetworkStats$Bucket;J)V

    .line 695
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v2, v2, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmEndTimeStamp(Landroid/app/usage/NetworkStats$Bucket;J)V

    .line 697
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmRxBytes(Landroid/app/usage/NetworkStats$Bucket;J)V

    .line 698
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmRxPackets(Landroid/app/usage/NetworkStats$Bucket;J)V

    .line 699
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmTxBytes(Landroid/app/usage/NetworkStats$Bucket;J)V

    .line 700
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$fputmTxPackets(Landroid/app/usage/NetworkStats$Bucket;J)V

    .line 701
    const/4 v0, 0x1

    return v0

    .line 702
    :cond_74
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 703
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    .line 704
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    return v0

    .line 707
    :cond_82
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .registers 5
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .line 657
    if-eqz p1, :cond_21

    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 658
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 659
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    .line 660
    const/4 v0, 0x1

    return v0

    .line 662
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getUid()I
    .registers 4

    .line 722
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 723
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    if-ltz v0, :cond_18

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 727
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    iget v1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    aget v0, v0, v1

    return v0

    .line 724
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUids.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_40
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    return v0
.end method

.method private greylist-max-o hasNextUid()Z
    .registers 4

    .line 717
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v2, v2

    if-ge v0, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private greylist-max-o isUidEnumeration()Z
    .registers 2

    .line 713
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o setSingleUidTagState(III)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "state"    # I

    .line 734
    iput p1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 735
    iput p2, p0, Landroid/app/usage/NetworkStats;->mTag:I

    .line 736
    iput p3, p0, Landroid/app/usage/NetworkStats;->mState:I

    .line 737
    return-void
.end method

.method private greylist-max-o stepHistory()V
    .registers 12

    .line 620
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 621
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepUid()V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 624
    :try_start_c
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    move-result v3

    iget-wide v7, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v9, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-interface/range {v1 .. v10}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_21} :catch_22

    .line 630
    goto :goto_28

    .line 627
    :catch_22
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 633
    :cond_2b
    return-void
.end method

.method private greylist-max-o stepUid()V
    .registers 2

    .line 740
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    if-eqz v0, :cond_a

    .line 741
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 743
    :cond_a
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 509
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_10

    .line 511
    :try_start_4
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 515
    goto :goto_10

    .line 512
    :catch_a
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 518
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1c

    .line 519
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 521
    :cond_1c
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 124
    :cond_9
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 126
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 127
    nop

    .line 128
    return-void

    .line 126
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 127
    throw v0
.end method

.method greylist-max-o getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 534
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 536
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .registers 3
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .line 483
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    if-eqz v0, :cond_9

    .line 484
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    return v0

    .line 486
    :cond_9
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;
    .registers 4

    .line 666
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    if-nez v0, :cond_6

    .line 667
    const/4 v0, 0x0

    return-object v0

    .line 669
    :cond_6
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 670
    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    if-nez v1, :cond_16

    .line 671
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 673
    :cond_16
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 674
    invoke-direct {p0, v0}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    .line 675
    return-object v0
.end method

.method public whitelist hasNextBucket()Z
    .registers 5

    .line 495
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 496
    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v3, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1

    .line 497
    :cond_13
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_2c

    .line 498
    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v3, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v3

    if-lt v0, v3, :cond_2a

    .line 499
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_2a

    :cond_28
    move v1, v2

    goto :goto_2b

    :cond_2a
    :goto_2a
    nop

    .line 498
    :goto_2b
    return v1

    .line 501
    :cond_2c
    return v2
.end method

.method blacklist startHistoryDeviceEnumeration()V
    .registers 8

    .line 580
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v3, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v5, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    const/4 v2, -0x1

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForNetwork(Landroid/net/NetworkTemplate;IJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 585
    goto :goto_19

    .line 582
    :catch_10
    move-exception v0

    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 586
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_19
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 587
    return-void
.end method

.method blacklist startHistoryUidEnumeration(III)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "state"    # I

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 564
    :try_start_3
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    .line 565
    invoke-static {p3}, Landroid/app/usage/NetworkStats$Bucket;->-$$Nest$smconvertSet(I)I

    move-result v4

    iget-wide v7, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v9, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_1f

    .line 564
    const/4 v6, -0x1

    move v3, p1

    move v5, p2

    .end local p1    # "uid":I
    .end local p2    # "tag":I
    .local v3, "uid":I
    .local v5, "tag":I
    :try_start_12
    invoke-interface/range {v1 .. v10}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object p1

    iput-object p1, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 567
    invoke-direct {p0, v3, v5, p3}, Landroid/app/usage/NetworkStats;->setSingleUidTagState(III)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1c

    .line 571
    goto :goto_28

    .line 568
    :catch_1c
    move-exception v0

    move-object p1, v0

    goto :goto_23

    .end local v3    # "uid":I
    .end local v5    # "tag":I
    .restart local p1    # "uid":I
    .restart local p2    # "tag":I
    :catch_1f
    move-exception v0

    move v3, p1

    move v5, p2

    move-object p1, v0

    .line 569
    .end local p2    # "tag":I
    .restart local v3    # "uid":I
    .restart local v5    # "tag":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_23
    const-string p2, "NetworkStats"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_28
    const/4 p1, 0x0

    iput p1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 573
    return-void
.end method

.method greylist-max-o startSummaryEnumeration()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 547
    return-void
.end method

.method blacklist startTaggedSummaryEnumeration()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getTaggedSummaryForAllUid(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 555
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 556
    return-void
.end method

.method greylist-max-o startUserUidEnumeration()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->getRelevantUids()[I

    move-result-object v1

    .line 598
    .local v1, "uids":[I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 599
    .local v2, "filteredUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, v1

    const/4 v0, 0x0

    move v4, v0

    :goto_f
    if-ge v4, v3, :cond_4e

    aget v7, v1, v4

    .line 601
    .local v7, "uid":I
    :try_start_13
    iget-object v5, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v6, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v11, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v13, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-interface/range {v5 .. v14}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 604
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v5

    if-lez v5, :cond_31

    .line 605
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_31} :catch_32

    .line 609
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    :cond_31
    goto :goto_4b

    .line 607
    :catch_32
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while getting history of uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NetworkStats"

    invoke-static {v6, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "uid":I
    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 611
    :cond_4e
    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    .line 612
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 613
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    .line 614
    return-void
.end method
