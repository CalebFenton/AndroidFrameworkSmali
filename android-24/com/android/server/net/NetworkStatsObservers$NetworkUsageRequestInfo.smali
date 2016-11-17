.class Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;
.super Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
.source "NetworkStatsObservers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkUsageRequestInfo"
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
    .line 339
    invoke-direct/range {p0 .. p6}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    #@3
    .line 338
    return-void
.end method

.method private getTotalBytesForNetwork(Landroid/net/NetworkTemplate;)J
    .locals 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    .line 372
    iget v6, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mAccessLevel:I

    #@4
    iget v7, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mCallingUid:I

    #@6
    .line 371
    const-wide/high16 v2, -0x8000000000000000L

    #@8
    const-wide v4, 0x7fffffffffffffffL

    #@d
    move-object v1, p1

    #@e
    .line 370
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    #@11
    move-result-object v8

    #@12
    .line 373
    .local v8, "stats":Landroid/net/NetworkStats;
    invoke-virtual {v8}, Landroid/net/NetworkStats;->getTotalBytes()J

    #@15
    move-result-wide v0

    #@16
    return-wide v0
.end method


# virtual methods
.method protected checkStats()Z
    .locals 4

    #@0
    .prologue
    .line 344
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    #@2
    iget-object v2, v2, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    #@4
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->getTotalBytesForNetwork(Landroid/net/NetworkTemplate;)J

    #@7
    move-result-wide v0

    #@8
    .line 349
    .local v0, "bytesSoFar":J
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    #@a
    iget-wide v2, v2, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    #@c
    cmp-long v2, v0, v2

    #@e
    if-lez v2, :cond_0

    #@10
    .line 350
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 352
    :cond_0
    const/4 v2, 0x0

    #@13
    return v2
.end method

.method protected recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .locals 6
    .param p1, "statsContext"    # Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    #@0
    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@2
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mXtSnapshot:Landroid/net/NetworkStats;

    #@4
    iget-object v2, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mActiveIfaces:Landroid/util/ArrayMap;

    #@6
    .line 361
    iget-wide v4, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mCurrentTime:J

    #@8
    const/4 v3, 0x0

    #@9
    .line 360
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    #@c
    .line 356
    return-void
.end method
