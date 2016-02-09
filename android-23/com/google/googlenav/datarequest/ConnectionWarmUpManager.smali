.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;
.super Ljava/lang/Object;
.source "ConnectionWarmUpManager.java"


# instance fields
.field private clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field private drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

.field private pendingKey:Ljava/lang/Object;

.field private pendingSource:Ljava/lang/String;

.field private pendingWarmUpTime:J

.field private requestSource:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/common/Clock;)V
    .locals 2
    .param p1, "drd"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .param p2, "clock"    # Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x0

    #@5
    .line 104
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    #@7
    .line 142
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->requestSource:Ljava/lang/String;

    #@9
    .line 149
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingSource:Ljava/lang/String;

    #@b
    .line 183
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@d
    .line 184
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@f
    .line 185
    return-void
.end method

.method private logUsed(Ljava/lang/String;III)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "interval"    # I
    .param p3, "firstByteLatency"    # I
    .param p4, "lastByteLatency"    # I

    #@0
    .prologue
    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "|d="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "|fb="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "|lb="

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, "|"

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v1, "u"

    #@34
    .line 354
    invoke-direct {p0, v1, p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->logWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@37
    .line 355
    return-void
.end method

.method private logWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "|s="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    const-string/jumbo v1, ""

    #@19
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 375
    .local v0, "fullData":Ljava/lang/String;
    const/16 v1, 0x40

    #@27
    invoke-static {v1, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    #@2a
    .line 376
    return-void

    #@2b
    .end local v0    # "fullData":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "|"

    #@2e
    goto :goto_0
.end method


# virtual methods
.method public onFinishServiceRequests(Ljava/lang/Object;JII)V
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "startTime"    # J
    .param p4, "firstByteLatency"    # I
    .param p5, "lastByteLatency"    # I

    #@0
    .prologue
    .line 332
    monitor-enter p0

    #@1
    .line 333
    :try_start_0
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    #@3
    const/4 v5, 0x3

    #@4
    if-eq v4, v5, :cond_1

    #@6
    .line 334
    :cond_0
    monitor-exit p0

    #@7
    return-void

    #@8
    .line 333
    :cond_1
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingKey:Ljava/lang/Object;

    #@a
    if-ne v4, p1, :cond_0

    #@c
    const/4 v4, 0x0

    #@d
    .line 336
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    #@f
    .line 337
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingSource:Ljava/lang/String;

    #@11
    .line 338
    .local v1, "source":Ljava/lang/String;
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingWarmUpTime:J

    #@13
    .local v2, "time":J
    const/4 v4, 0x0

    #@14
    .line 339
    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingKey:Ljava/lang/Object;

    #@16
    .line 340
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 342
    sub-long v4, p2, v2

    #@19
    long-to-int v0, v4

    #@1a
    .line 343
    .local v0, "interval":I
    invoke-direct {p0, v1, v0, p4, p5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->logUsed(Ljava/lang/String;III)V

    #@1d
    .line 344
    return-void

    #@1e
    .line 340
    .end local v0    # "interval":I
    .end local v1    # "source":Ljava/lang/String;
    .end local v2    # "time":J
    :catchall_0
    move-exception v4

    #@1f
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    throw v4
.end method

.method public onStartServiceRequests(Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 304
    monitor-enter p0

    #@2
    .line 305
    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 309
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    #@9
    if-eq v0, v2, :cond_1

    #@b
    .line 314
    :goto_0
    monitor-exit p0

    #@c
    .line 315
    return-void

    #@d
    :cond_0
    const/4 v0, 0x2

    #@e
    .line 307
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    #@10
    .line 308
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@12
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@15
    move-result-wide v0

    #@16
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingWarmUpTime:J

    #@18
    goto :goto_0

    #@19
    .line 314
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    throw v0

    #@1c
    :cond_1
    const/4 v0, 0x3

    #@1d
    .line 311
    :try_start_1
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    #@1f
    .line 312
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingKey:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    goto :goto_0
.end method
