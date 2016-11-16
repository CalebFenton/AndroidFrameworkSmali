.class Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;
.super Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
.source "NetworkStatsObservers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserUsageRequestInfo"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "statsObserver"    # Lcom/android/server/net/NetworkStatsObservers;
    .param p2, "request"    # Landroid/net/DataUsageRequest;
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "callingUid"    # I
    .param p6, "accessLevel"    # I

    #@0
    .prologue
    .line 381
    invoke-direct/range {p0 .. p6}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    #@3
    .line 380
    return-void
.end method

.method private getTotalBytesForNetworkUid(Landroid/net/NetworkTemplate;I)J
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    .line 417
    iget v10, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mAccessLevel:I

    #@4
    iget v11, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCallingUid:I

    #@6
    .line 414
    const/4 v3, -0x1

    #@7
    const/4 v4, 0x0

    #@8
    .line 415
    const/4 v5, -0x1

    #@9
    .line 416
    const-wide/high16 v6, -0x8000000000000000L

    #@b
    const-wide v8, 0x7fffffffffffffffL

    #@10
    move-object v1, p1

    #@11
    move/from16 v2, p2

    #@13
    .line 413
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJII)Landroid/net/NetworkStatsHistory;

    #@16
    move-result-object v13

    #@17
    .line 418
    .local v13, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v13}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-wide v0

    #@1b
    return-wide v0

    #@1c
    .line 419
    .end local v13    # "history":Landroid/net/NetworkStatsHistory;
    :catch_0
    move-exception v12

    #@1d
    .line 424
    .local v12, "e":Ljava/lang/SecurityException;
    const-wide/16 v0, 0x0

    #@1f
    return-wide v0
.end method


# virtual methods
.method protected checkStats()Z
    .locals 7

    #@0
    .prologue
    .line 386
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    iget v5, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mAccessLevel:I

    #@4
    iget v6, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCallingUid:I

    #@6
    invoke-virtual {v4, v5, v6}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(II)[I

    #@9
    move-result-object v3

    #@a
    .line 388
    .local v3, "uidsToMonitor":[I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    array-length v4, v3

    #@c
    if-ge v2, v4, :cond_1

    #@e
    .line 389
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    #@10
    iget-object v4, v4, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    #@12
    aget v5, v3, v2

    #@14
    invoke-direct {p0, v4, v5}, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->getTotalBytesForNetworkUid(Landroid/net/NetworkTemplate;I)J

    #@17
    move-result-wide v0

    #@18
    .line 390
    .local v0, "bytesSoFar":J
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    #@1a
    iget-wide v4, v4, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    #@1c
    cmp-long v4, v0, v4

    #@1e
    if-lez v4, :cond_0

    #@20
    .line 391
    const/4 v4, 0x1

    #@21
    return v4

    #@22
    .line 388
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 394
    .end local v0    # "bytesSoFar":J
    :cond_1
    const/4 v4, 0x0

    #@26
    return v4
.end method

.method protected recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .locals 6
    .param p1, "statsContext"    # Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@2
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mUidSnapshot:Landroid/net/NetworkStats;

    #@4
    iget-object v2, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@6
    .line 403
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mVpnArray:[Lcom/android/internal/net/VpnInfo;

    #@8
    iget-wide v4, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mCurrentTime:J

    #@a
    .line 402
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    #@d
    .line 398
    return-void
.end method
