.class Lcom/android/server/content/SyncManager$SyncTimeTracker;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTimeTracker"
.end annotation


# instance fields
.field mLastWasSyncing:Z

.field private mTimeSpentSyncing:J

.field mWhenSyncStarted:J

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method private constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    #@0
    .prologue
    .line 2037
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2039
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    #@8
    .line 2041
    const-wide/16 v0, 0x0

    #@a
    iput-wide v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    #@c
    .line 2037
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$SyncTimeTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public declared-synchronized timeSpentSyncing()J
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2060
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    #@3
    if-nez v2, :cond_0

    #@5
    iget-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-wide v2

    #@9
    .line 2062
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v0

    #@d
    .line 2063
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    #@f
    iget-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    sub-long v4, v0, v4

    #@13
    add-long/2addr v2, v4

    #@14
    monitor-exit p0

    #@15
    return-wide v2

    #@16
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    #@17
    monitor-exit p0

    #@18
    throw v2
.end method

.method public declared-synchronized update()V
    .locals 8

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2047
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    #@3
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x0

    #@c
    .line 2048
    .local v0, "isSyncInProgress":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    if-ne v0, v1, :cond_1

    #@10
    monitor-exit p0

    #@11
    return-void

    #@12
    .line 2047
    .end local v0    # "isSyncInProgress":Z
    :cond_0
    const/4 v0, 0x1

    #@13
    .restart local v0    # "isSyncInProgress":Z
    goto :goto_0

    #@14
    .line 2049
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@17
    move-result-wide v2

    #@18
    .line 2050
    .local v2, "now":J
    if-eqz v0, :cond_2

    #@1a
    .line 2051
    iput-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    #@1c
    .line 2055
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 2046
    return-void

    #@20
    .line 2053
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    #@22
    iget-wide v6, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    #@24
    sub-long v6, v2, v6

    #@26
    add-long/2addr v4, v6

    #@27
    iput-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    goto :goto_1

    #@2a
    .end local v0    # "isSyncInProgress":Z
    .end local v2    # "now":J
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit p0

    #@2c
    throw v1
.end method
