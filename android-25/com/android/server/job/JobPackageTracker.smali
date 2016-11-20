.class public final Lcom/android/server/job/JobPackageTracker;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobPackageTracker$DataSet;,
        Lcom/android/server/job/JobPackageTracker$PackageEntry;
    }
.end annotation


# static fields
.field static final BATCHING_TIME:J = 0x1b7740L

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field public static final EVENT_NULL:I = 0x0

.field public static final EVENT_START_JOB:I = 0x1

.field public static final EVENT_STOP_JOB:I = 0x2

.field static final NUM_HISTORY:I = 0x5


# instance fields
.field mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

.field private final mEventCmds:[I

.field private final mEventIndices:Lcom/android/internal/util/RingBufferIndices;

.field private final mEventTags:[Ljava/lang/String;

.field private final mEventTimes:[J

.field private final mEventUids:[I

.field mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x64

    #@2
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 43
    new-instance v0, Lcom/android/internal/util/RingBufferIndices;

    #@7
    invoke-direct {v0, v1}, Lcom/android/internal/util/RingBufferIndices;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    #@c
    .line 44
    new-array v0, v1, [I

    #@e
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    #@10
    .line 45
    new-array v0, v1, [J

    #@12
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    #@14
    .line 46
    new-array v0, v1, [I

    #@16
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    #@18
    .line 47
    new-array v0, v1, [Ljava/lang/String;

    #@1a
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    #@1c
    .line 57
    new-instance v0, Lcom/android/server/job/JobPackageTracker$DataSet;

    #@1e
    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@23
    .line 58
    const/4 v0, 0x5

    #@24
    new-array v0, v0, [Lcom/android/server/job/JobPackageTracker$DataSet;

    #@26
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@28
    .line 31
    return-void
.end method


# virtual methods
.method public addEvent(IILjava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "uid"    # I
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/util/RingBufferIndices;->add()I

    #@5
    move-result v0

    #@6
    .line 51
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    #@8
    aput p1, v1, v0

    #@a
    .line 52
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    #@c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f
    move-result-wide v2

    #@10
    aput-wide v2, v1, v0

    #@12
    .line 53
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    #@14
    aput p2, v1, v0

    #@16
    .line 54
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    #@18
    aput-object p3, v1, v0

    #@1a
    .line 49
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filterUid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v4

    #@5
    .line 412
    .local v4, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v6

    #@9
    .line 414
    .local v6, "nowEllapsed":J
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@b
    aget-object v0, v0, v1

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 415
    new-instance v10, Lcom/android/server/job/JobPackageTracker$DataSet;

    #@11
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@13
    aget-object v0, v0, v1

    #@15
    invoke-direct {v10, v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    #@18
    .line 416
    .local v10, "total":Lcom/android/server/job/JobPackageTracker$DataSet;
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@1a
    aget-object v0, v0, v1

    #@1c
    invoke-virtual {v0, v10, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    #@1f
    .line 420
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@21
    invoke-virtual {v0, v10, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    #@24
    .line 421
    const/4 v9, 0x1

    #@25
    .local v9, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@27
    array-length v0, v0

    #@28
    if-ge v9, v0, :cond_2

    #@2a
    .line 422
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@2c
    aget-object v0, v0, v9

    #@2e
    if-eqz v0, :cond_0

    #@30
    .line 423
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@32
    aget-object v0, v0, v9

    #@34
    const-string/jumbo v2, "Historical stats"

    #@37
    move-object v1, p1

    #@38
    move-object v3, p2

    #@39
    move v8, p3

    #@3a
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V

    #@3d
    .line 424
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@40
    .line 421
    :cond_0
    add-int/lit8 v9, v9, 0x1

    #@42
    goto :goto_1

    #@43
    .line 418
    .end local v9    # "i":I
    .end local v10    # "total":Lcom/android/server/job/JobPackageTracker$DataSet;
    :cond_1
    new-instance v10, Lcom/android/server/job/JobPackageTracker$DataSet;

    #@45
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@47
    invoke-direct {v10, v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    #@4a
    .restart local v10    # "total":Lcom/android/server/job/JobPackageTracker$DataSet;
    goto :goto_0

    #@4b
    .line 427
    .restart local v9    # "i":I
    :cond_2
    const-string/jumbo v2, "Current stats"

    #@4e
    move-object v0, v10

    #@4f
    move-object v1, p1

    #@50
    move-object v3, p2

    #@51
    move v8, p3

    #@52
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V

    #@55
    .line 410
    return-void
.end method

.method public dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filterUid"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 431
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    #@3
    invoke-virtual {v8}, Lcom/android/internal/util/RingBufferIndices;->size()I

    #@6
    move-result v6

    #@7
    .line 432
    .local v6, "size":I
    if-gtz v6, :cond_0

    #@9
    .line 433
    return v9

    #@a
    .line 435
    :cond_0
    const-string/jumbo v8, "  Job history:"

    #@d
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 436
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@13
    move-result-wide v4

    #@14
    .line 437
    .local v4, "now":J
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_3

    #@17
    .line 438
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    #@19
    invoke-virtual {v8, v1}, Lcom/android/internal/util/RingBufferIndices;->indexOf(I)I

    #@1c
    move-result v2

    #@1d
    .line 439
    .local v2, "index":I
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    #@1f
    aget v7, v8, v2

    #@21
    .line 440
    .local v7, "uid":I
    const/4 v8, -0x1

    #@22
    if-eq p3, v8, :cond_2

    #@24
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    #@27
    move-result v8

    #@28
    if-eq p3, v8, :cond_2

    #@2a
    .line 437
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 443
    :cond_2
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    #@2f
    aget v0, v8, v2

    #@31
    .line 444
    .local v0, "cmd":I
    if-eqz v0, :cond_1

    #@33
    .line 448
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    #@35
    aget v8, v8, v2

    #@37
    packed-switch v8, :pswitch_data_0

    #@3a
    .line 451
    const-string/jumbo v3, "   ??"

    #@3d
    .line 453
    .local v3, "label":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    .line 454
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    #@42
    aget-wide v8, v8, v2

    #@44
    sub-long/2addr v8, v4

    #@45
    const/16 v10, 0x13

    #@47
    invoke-static {v8, v9, p1, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    #@4a
    .line 455
    const-string/jumbo v8, " "

    #@4d
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    .line 456
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    .line 457
    const-string/jumbo v8, ": "

    #@56
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59
    .line 458
    invoke-static {p1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@5c
    .line 459
    const-string/jumbo v8, " "

    #@5f
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    .line 460
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    #@64
    aget-object v8, v8, v2

    #@66
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@69
    goto :goto_1

    #@6a
    .line 449
    .end local v3    # "label":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v3, "START"

    #@6d
    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_2

    #@6e
    .line 450
    .end local v3    # "label":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v3, " STOP"

    #@71
    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_2

    #@72
    .line 462
    .end local v0    # "cmd":I
    .end local v2    # "index":I
    .end local v3    # "label":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_3
    const/4 v8, 0x1

    #@73
    return v8

    #@74
    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F
    .locals 14
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 390
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@3
    move-result v7

    #@4
    .line 391
    .local v7, "uid":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 392
    .local v6, "pkg":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@a
    invoke-virtual {v10, v7, v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@d
    move-result-object v0

    #@e
    .line 393
    .local v0, "cur":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@10
    const/4 v11, 0x0

    #@11
    aget-object v10, v10, v11

    #@13
    if-eqz v10, :cond_0

    #@15
    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@17
    const/4 v11, 0x0

    #@18
    aget-object v10, v10, v11

    #@1a
    invoke-virtual {v10, v7, v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@1d
    move-result-object v1

    #@1e
    .line 394
    :goto_0
    if-nez v0, :cond_1

    #@20
    if-nez v1, :cond_1

    #@22
    .line 395
    const/4 v10, 0x0

    #@23
    return v10

    #@24
    .line 393
    :cond_0
    const/4 v1, 0x0

    #@25
    .local v1, "last":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    goto :goto_0

    #@26
    .line 397
    .end local v1    # "last":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@29
    move-result-wide v2

    #@2a
    .line 398
    .local v2, "now":J
    const-wide/16 v8, 0x0

    #@2c
    .line 399
    .local v8, "time":J
    if-eqz v0, :cond_2

    #@2e
    .line 400
    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    #@31
    move-result-wide v10

    #@32
    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    #@35
    move-result-wide v12

    #@36
    add-long/2addr v10, v12

    #@37
    .line 398
    const-wide/16 v12, 0x0

    #@39
    .line 400
    add-long v8, v12, v10

    #@3b
    .line 402
    :cond_2
    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@3d
    invoke-virtual {v10, v2, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    #@40
    move-result-wide v4

    #@41
    .line 403
    .local v4, "period":J
    if-eqz v1, :cond_3

    #@43
    .line 404
    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    #@46
    move-result-wide v10

    #@47
    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    #@4a
    move-result-wide v12

    #@4b
    add-long/2addr v10, v12

    #@4c
    add-long/2addr v8, v10

    #@4d
    .line 405
    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@4f
    const/4 v11, 0x0

    #@50
    aget-object v10, v10, v11

    #@52
    invoke-virtual {v10, v2, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    #@55
    move-result-wide v10

    #@56
    add-long/2addr v4, v10

    #@57
    .line 407
    :cond_3
    long-to-float v10, v8

    #@58
    long-to-float v11, v4

    #@59
    div-float/2addr v10, v11

    #@5a
    return v10
.end method

.method public noteActive(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 360
    .local v0, "now":J
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    #@7
    .line 361
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    #@9
    const/16 v3, 0x28

    #@b
    if-lt v2, v3, :cond_0

    #@d
    .line 362
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@f
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@12
    move-result v3

    #@13
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incActiveTop(ILjava/lang/String;J)V

    #@1a
    .line 366
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    const/4 v4, 0x1

    #@23
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/job/JobPackageTracker;->addEvent(IILjava/lang/String;)V

    #@26
    .line 358
    return-void

    #@27
    .line 364
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@29
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@2c
    move-result v3

    #@2d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incActive(ILjava/lang/String;J)V

    #@34
    goto :goto_0
.end method

.method public noteConcurrency(II)V
    .locals 1
    .param p1, "totalActive"    # I
    .param p2, "fgActive"    # I

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@2
    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    #@4
    if-le p1, v0, :cond_0

    #@6
    .line 382
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@8
    iput p1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    #@a
    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@c
    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    #@e
    if-le p2, v0, :cond_1

    #@10
    .line 385
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@12
    iput p2, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    #@14
    .line 380
    :cond_1
    return-void
.end method

.method public noteInactive(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 371
    .local v0, "now":J
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    #@6
    const/16 v3, 0x28

    #@8
    if-lt v2, v3, :cond_0

    #@a
    .line 372
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@f
    move-result v3

    #@10
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->decActiveTop(ILjava/lang/String;J)V

    #@17
    .line 376
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    #@1a
    .line 377
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    const/4 v4, 0x2

    #@23
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/job/JobPackageTracker;->addEvent(IILjava/lang/String;)V

    #@26
    .line 369
    return-void

    #@27
    .line 374
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@29
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@2c
    move-result v3

    #@2d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->decActive(ILjava/lang/String;J)V

    #@34
    goto :goto_0
.end method

.method public noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 354
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@9
    move-result v3

    #@a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->decPending(ILjava/lang/String;J)V

    #@11
    .line 355
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    #@14
    .line 352
    return-void
.end method

.method public notePending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 348
    .local v0, "now":J
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    #@7
    .line 349
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@9
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@c
    move-result v3

    #@d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incPending(ILjava/lang/String;J)V

    #@14
    .line 346
    return-void
.end method

.method rebatchIfNeeded(J)V
    .locals 9
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 335
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@3
    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    #@6
    move-result-wide v2

    #@7
    .line 336
    .local v2, "totalTime":J
    const-wide/32 v4, 0x1b7740

    #@a
    cmp-long v1, v2, v4

    #@c
    if-lez v1, :cond_0

    #@e
    .line 337
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@10
    .line 338
    .local v0, "last":Lcom/android/server/job/JobPackageTracker$DataSet;
    iput-wide v2, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    #@12
    .line 339
    new-instance v1, Lcom/android/server/job/JobPackageTracker$DataSet;

    #@14
    invoke-direct {v1}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    #@17
    iput-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@19
    .line 340
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    #@1b
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    #@1e
    .line 341
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@20
    iget-object v4, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@22
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@24
    array-length v5, v5

    #@25
    add-int/lit8 v5, v5, -0x1

    #@27
    const/4 v6, 0x1

    #@28
    invoke-static {v1, v7, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2b
    .line 342
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    #@2d
    aput-object v0, v1, v7

    #@2f
    .line 334
    .end local v0    # "last":Lcom/android/server/job/JobPackageTracker$DataSet;
    :cond_0
    return-void
.end method
