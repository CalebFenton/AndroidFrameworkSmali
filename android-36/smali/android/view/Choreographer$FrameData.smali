.class public Landroid/view/Choreographer$FrameData;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameData"
.end annotation


# instance fields
.field private blacklist mFrameTimeNanos:J

.field private blacklist mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

.field private blacklist mInCallback:Z

.field private blacklist mPreferredFrameTimelineIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    .line 1346
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/view/Choreographer$FrameData;->allocateFrameTimelines(I)V

    .line 1347
    return-void
.end method

.method private blacklist allocateFrameTimelines(I)V
    .registers 5
    .param p1, "length"    # I

    .line 1387
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1389
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v0, v0

    if-eq v0, p1, :cond_24

    .line 1390
    :cond_e
    new-array v0, p1, [Landroid/view/Choreographer$FrameTimeline;

    iput-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    .line 1391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 1392
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    new-instance v2, Landroid/view/Choreographer$FrameTimeline;

    invoke-direct {v2}, Landroid/view/Choreographer$FrameTimeline;-><init>()V

    aput-object v2, v1, v0

    .line 1391
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1395
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method private blacklist checkInCallback()V
    .registers 3

    .line 1378
    iget-boolean v0, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    if-eqz v0, :cond_5

    .line 1382
    return-void

    .line 1379
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FrameData is not valid outside of the vsync callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getFrameTimeNanos()J
    .registers 3

    .line 1351
    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    .line 1352
    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFrameTimelines()[Landroid/view/Choreographer$FrameTimeline;
    .registers 2

    .line 1359
    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    .line 1360
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    return-object v0
.end method

.method public whitelist getPreferredFrameTimeline()Landroid/view/Choreographer$FrameTimeline;
    .registers 3

    .line 1366
    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    .line 1367
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method blacklist setInCallback(Z)V
    .registers 4
    .param p1, "inCallback"    # Z

    .line 1371
    iput-boolean p1, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    .line 1372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 1373
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/Choreographer$FrameTimeline;->setInCallback(Z)V

    .line 1372
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1375
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method blacklist update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;
    .registers 14
    .param p1, "frameTimeNanos"    # J
    .param p3, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 1403
    iget v0, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    invoke-direct {p0, v0}, Landroid/view/Choreographer$FrameData;->allocateFrameTimelines(I)V

    .line 1404
    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    .line 1405
    iget v0, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    iput v0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    .line 1406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 1407
    iget-object v1, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object v1, v1, v0

    .line 1409
    .local v1, "frameTimeline":Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    iget-object v2, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v3, v2, v0

    iget-wide v4, v1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iget-wide v6, v1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    iget-wide v8, v1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    invoke-virtual/range {v3 .. v9}, Landroid/view/Choreographer$FrameTimeline;->update(JJJ)V

    .line 1406
    .end local v1    # "frameTimeline":Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1412
    .end local v0    # "i":I
    :cond_25
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method blacklist update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;
    .registers 14
    .param p1, "frameTimeNanos"    # J
    .param p3, "displayEventReceiver"    # Landroid/view/DisplayEventReceiver;
    .param p4, "jitterNanos"    # J

    .line 1422
    const/4 v0, 0x0

    .line 1423
    .local v0, "newPreferredIndex":I
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v2, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v1

    add-long/2addr v1, p4

    .line 1428
    .local v1, "minimumDeadline":J
    :goto_c
    iget-object v3, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_22

    iget-object v3, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_22

    .line 1430
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1433
    :cond_22
    iget-object v3, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v3

    .line 1434
    .local v3, "newPreferredDeadline":J
    cmp-long v5, v3, v1

    if-gez v5, :cond_41

    .line 1435
    nop

    .line 1436
    invoke-virtual {p3}, Landroid/view/DisplayEventReceiver;->getLatestVsyncEventData()Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-result-object v5

    .line 1437
    .local v5, "latestVsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    if-nez v5, :cond_3d

    .line 1438
    const-string v6, "Choreographer"

    const-string v7, "Could not get latest VsyncEventData. Did SurfaceFlinger crash?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 1440
    :cond_3d
    invoke-virtual {p0, p1, p2, v5}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;

    .line 1442
    .end local v5    # "latestVsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    :goto_40
    goto :goto_44

    .line 1443
    :cond_41
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/Choreographer$FrameData;->update(JI)V

    .line 1445
    :goto_44
    iget-object v5, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v6, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v5, v5, v6

    return-object v5
.end method

.method blacklist update(JI)V
    .registers 4
    .param p1, "frameTimeNanos"    # J
    .param p3, "newPreferredFrameTimelineIndex"    # I

    .line 1449
    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    .line 1450
    iput p3, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    .line 1451
    return-void
.end method
