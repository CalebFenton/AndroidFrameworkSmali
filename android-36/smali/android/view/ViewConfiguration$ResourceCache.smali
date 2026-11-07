.class final Landroid/view/ViewConfiguration$ResourceCache;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceCache"
.end annotation


# instance fields
.field private blacklist mDefaultActionModeHideDuration:J

.field private blacklist mDoubleTapMinTime:I

.field private blacklist mDoubleTapTimeout:I

.field private blacklist mHoverTapSlop:I

.field private blacklist mHoverTapTimeout:I

.field private blacklist mJumpTapTimeout:I

.field private blacklist mPressedStateDuration:I

.field private blacklist mScrollFriction:F

.field private blacklist mTapTimeout:I

.field private blacklist mZoomControlsTimeout:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 4

    .line 1468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1470
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mPressedStateDuration:I

    .line 1471
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mTapTimeout:I

    .line 1472
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mJumpTapTimeout:I

    .line 1473
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapTimeout:I

    .line 1474
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapMinTime:I

    .line 1475
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapTimeout:I

    .line 1476
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapSlop:I

    .line 1477
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mZoomControlsTimeout:J

    .line 1478
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/ViewConfiguration$ResourceCache;->mScrollFriction:F

    .line 1479
    iput-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultActionModeHideDuration:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ViewConfiguration-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/ViewConfiguration$ResourceCache;-><init>()V

    return-void
.end method

.method private static blacklist getCurrentResources()Landroid/content/res/Resources;
    .registers 3

    .line 1583
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->migrateViewconfigurationConstantsToResources()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1584
    return-object v1

    .line 1586
    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1587
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_14

    :cond_13
    move-object v2, v1

    .line 1588
    .local v2, "context":Landroid/content/Context;
    :goto_14
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :cond_1a
    return-object v1
.end method


# virtual methods
.method public blacklist getDefaultActionModeHideDuration()J
    .registers 5

    .line 1572
    iget-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultActionModeHideDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1b

    .line 1573
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1574
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_17

    .line 1575
    const v1, 0x10e0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_19

    .line 1576
    :cond_17
    const-wide/16 v1, 0x7d0

    :goto_19
    iput-wide v1, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultActionModeHideDuration:J

    .line 1578
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_1b
    iget-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultActionModeHideDuration:J

    return-wide v0
.end method

.method public blacklist getDoubleTapMinTime()I
    .registers 3

    .line 1522
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapMinTime:I

    if-gez v0, :cond_16

    .line 1523
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1524
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_12

    .line 1525
    const v1, 0x10e0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_14

    .line 1526
    :cond_12
    const/16 v1, 0x28

    :goto_14
    iput v1, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapMinTime:I

    .line 1528
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapMinTime:I

    return v0
.end method

.method public blacklist getDoubleTapTimeout()I
    .registers 3

    .line 1512
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapTimeout:I

    if-gez v0, :cond_16

    .line 1513
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1514
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_12

    .line 1515
    const v1, 0x10e008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_14

    .line 1516
    :cond_12
    const/16 v1, 0x12c

    :goto_14
    iput v1, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapTimeout:I

    .line 1518
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapTimeout:I

    return v0
.end method

.method public blacklist getHoverTapSlop()I
    .registers 3

    .line 1542
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapSlop:I

    if-gez v0, :cond_16

    .line 1543
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1544
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_12

    .line 1545
    const v1, 0x10500ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_14

    .line 1546
    :cond_12
    const/16 v1, 0x14

    :goto_14
    iput v1, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapSlop:I

    .line 1548
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapSlop:I

    return v0
.end method

.method public blacklist getHoverTapTimeout()I
    .registers 3

    .line 1532
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapTimeout:I

    if-gez v0, :cond_16

    .line 1533
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1534
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_12

    .line 1535
    const v1, 0x10e00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_14

    .line 1536
    :cond_12
    const/16 v1, 0x96

    :goto_14
    iput v1, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapTimeout:I

    .line 1538
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapTimeout:I

    return v0
.end method

.method public blacklist getJumpTapTimeout()I
    .registers 3

    .line 1502
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mJumpTapTimeout:I

    if-gez v0, :cond_16

    .line 1503
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1504
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_12

    .line 1505
    const v1, 0x10e00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_14

    .line 1506
    :cond_12
    const/16 v1, 0x1f4

    :goto_14
    iput v1, p0, Landroid/view/ViewConfiguration$ResourceCache;->mJumpTapTimeout:I

    .line 1508
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mJumpTapTimeout:I

    return v0
.end method

.method public blacklist getPressedStateDuration()I
    .registers 3

    .line 1482
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mPressedStateDuration:I

    if-gez v0, :cond_16

    .line 1483
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1484
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_12

    .line 1485
    const v1, 0x10e0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_14

    .line 1486
    :cond_12
    const/16 v1, 0x40

    :goto_14
    iput v1, p0, Landroid/view/ViewConfiguration$ResourceCache;->mPressedStateDuration:I

    .line 1488
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mPressedStateDuration:I

    return v0
.end method

.method public blacklist getScrollFriction()F
    .registers 3

    .line 1562
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mScrollFriction:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    .line 1563
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1564
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_15

    .line 1565
    const v1, 0x1050113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    goto :goto_18

    .line 1566
    :cond_15
    const v1, 0x3c75c28f    # 0.015f

    :goto_18
    iput v1, p0, Landroid/view/ViewConfiguration$ResourceCache;->mScrollFriction:F

    .line 1568
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_1a
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mScrollFriction:F

    return v0
.end method

.method public blacklist getTapTimeout()I
    .registers 3

    .line 1492
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mTapTimeout:I

    if-gez v0, :cond_16

    .line 1493
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1494
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_12

    .line 1495
    const v1, 0x10e0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_14

    .line 1496
    :cond_12
    const/16 v1, 0x64

    :goto_14
    iput v1, p0, Landroid/view/ViewConfiguration$ResourceCache;->mTapTimeout:I

    .line 1498
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mTapTimeout:I

    return v0
.end method

.method public blacklist getZoomControlsTimeout()J
    .registers 5

    .line 1552
    iget-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mZoomControlsTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1b

    .line 1553
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1554
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_17

    .line 1555
    const v1, 0x10e0165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_19

    .line 1556
    :cond_17
    const-wide/16 v1, 0xbb8

    :goto_19
    iput-wide v1, p0, Landroid/view/ViewConfiguration$ResourceCache;->mZoomControlsTimeout:J

    .line 1558
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_1b
    iget-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mZoomControlsTimeout:J

    return-wide v0
.end method
