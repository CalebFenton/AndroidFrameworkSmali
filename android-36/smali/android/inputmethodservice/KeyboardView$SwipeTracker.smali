.class Landroid/inputmethodservice/KeyboardView$SwipeTracker;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeTracker"
.end annotation


# static fields
.field static final greylist-max-o LONGEST_PAST_TIME:I = 0xc8

.field static final greylist-max-o NUM_PAST:I = 0x4


# instance fields
.field final greylist-max-o mPastTime:[J

.field final greylist-max-o mPastX:[F

.field final greylist-max-o mPastY:[F

.field greylist-max-o mXVelocity:F

.field greylist-max-o mYVelocity:F


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 1465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1470
    const/4 v0, 0x4

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1471
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1472
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/inputmethodservice/KeyboardView-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>()V

    return-void
.end method

.method private greylist-max-o addPoint(FFJ)V
    .registers 16
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .line 1492
    const/4 v0, -0x1

    .line 1494
    .local v0, "drop":I
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    .line 1495
    .local v1, "pastTime":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    if-ge v2, v5, :cond_1e

    .line 1496
    aget-wide v6, v1, v2

    cmp-long v6, v6, v3

    if-nez v6, :cond_10

    .line 1497
    goto :goto_1e

    .line 1498
    :cond_10
    aget-wide v3, v1, v2

    const-wide/16 v5, 0xc8

    sub-long v5, p3, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1b

    .line 1499
    move v0, v2

    .line 1495
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1502
    :cond_1e
    :goto_1e
    if-ne v2, v5, :cond_23

    if-gez v0, :cond_23

    .line 1503
    const/4 v0, 0x0

    .line 1505
    :cond_23
    if-ne v0, v2, :cond_27

    add-int/lit8 v0, v0, -0x1

    .line 1506
    :cond_27
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1507
    .local v6, "pastX":[F
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1508
    .local v7, "pastY":[F
    if-ltz v0, :cond_40

    .line 1509
    add-int/lit8 v8, v0, 0x1

    .line 1510
    .local v8, "start":I
    rsub-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, -0x1

    .line 1511
    .local v9, "count":I
    const/4 v10, 0x0

    invoke-static {v6, v8, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1512
    invoke-static {v7, v8, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1513
    invoke-static {v1, v8, v1, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1514
    add-int/lit8 v10, v0, 0x1

    sub-int/2addr v2, v10

    .line 1516
    .end local v8    # "start":I
    .end local v9    # "count":I
    :cond_40
    aput p1, v6, v2

    .line 1517
    aput p2, v7, v2

    .line 1518
    aput-wide p3, v1, v2

    .line 1519
    add-int/lit8 v2, v2, 0x1

    .line 1520
    if-ge v2, v5, :cond_4c

    .line 1521
    aput-wide v3, v1, v2

    .line 1523
    :cond_4c
    return-void
.end method


# virtual methods
.method public greylist-max-o addMovement(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 1483
    .local v0, "time":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 1484
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_1d

    .line 1485
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    .line 1486
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    .line 1485
    invoke-direct {p0, v4, v5, v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    .line 1484
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1488
    .end local v3    # "i":I
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4, v0, v1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    .line 1489
    return-void
.end method

.method public greylist-max-o clear()V
    .registers 5

    .line 1478
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 1479
    return-void
.end method

.method public greylist-max-o computeCurrentVelocity(I)V
    .registers 3
    .param p1, "units"    # I

    .line 1526
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(IF)V

    .line 1527
    return-void
.end method

.method public greylist-max-o computeCurrentVelocity(IF)V
    .registers 24
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .line 1530
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1531
    .local v3, "pastX":[F
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1532
    .local v4, "pastY":[F
    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    .line 1534
    .local v5, "pastTime":[J
    const/4 v6, 0x0

    aget v7, v3, v6

    .line 1535
    .local v7, "oldestX":F
    aget v8, v4, v6

    .line 1536
    .local v8, "oldestY":F
    aget-wide v9, v5, v6

    .line 1537
    .local v9, "oldestTime":J
    const/4 v6, 0x0

    .line 1538
    .local v6, "accumX":F
    const/4 v11, 0x0

    .line 1539
    .local v11, "accumY":F
    const/4 v12, 0x0

    .line 1540
    .local v12, "N":I
    :goto_16
    const/4 v13, 0x4

    if-ge v12, v13, :cond_25

    .line 1541
    aget-wide v13, v5, v12

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_22

    .line 1542
    goto :goto_25

    .line 1544
    :cond_22
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    .line 1547
    :cond_25
    :goto_25
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_26
    if-ge v13, v12, :cond_69

    .line 1548
    aget-wide v15, v5, v13

    const/16 v17, 0x0

    sub-long v14, v15, v9

    long-to-int v14, v14

    .line 1549
    .local v14, "dur":I
    if-nez v14, :cond_34

    move-object/from16 v16, v3

    goto :goto_64

    .line 1550
    :cond_34
    aget v15, v3, v13

    sub-float/2addr v15, v7

    .line 1551
    .local v15, "dist":F
    move-object/from16 v16, v3

    .end local v3    # "pastX":[F
    .local v16, "pastX":[F
    int-to-float v3, v14

    div-float v3, v15, v3

    move/from16 v18, v3

    int-to-float v3, v1

    mul-float v3, v3, v18

    .line 1552
    .local v3, "vel":F
    cmpl-float v18, v6, v17

    const/high16 v19, 0x3f000000    # 0.5f

    if-nez v18, :cond_49

    move v6, v3

    goto :goto_4d

    .line 1553
    :cond_49
    add-float v18, v6, v3

    mul-float v6, v18, v19

    .line 1555
    :goto_4d
    aget v18, v4, v13

    sub-float v18, v18, v8

    .line 1556
    .end local v15    # "dist":F
    .local v18, "dist":F
    int-to-float v15, v14

    div-float v15, v18, v15

    move/from16 v20, v3

    .end local v3    # "vel":F
    .local v20, "vel":F
    int-to-float v3, v1

    mul-float/2addr v15, v3

    .line 1557
    .end local v20    # "vel":F
    .local v15, "vel":F
    cmpl-float v3, v11, v17

    if-nez v3, :cond_5f

    move v3, v15

    move v11, v3

    .end local v11    # "accumY":F
    .local v3, "accumY":F
    goto :goto_64

    .line 1558
    .end local v3    # "accumY":F
    .restart local v11    # "accumY":F
    :cond_5f
    add-float v3, v11, v15

    mul-float v3, v3, v19

    move v11, v3

    .line 1547
    .end local v14    # "dur":I
    .end local v15    # "vel":F
    .end local v18    # "dist":F
    :goto_64
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    goto :goto_26

    .end local v16    # "pastX":[F
    .local v3, "pastX":[F
    :cond_69
    move-object/from16 v16, v3

    const/16 v17, 0x0

    .line 1560
    .end local v3    # "pastX":[F
    .end local v13    # "i":I
    .restart local v16    # "pastX":[F
    cmpg-float v3, v6, v17

    if-gez v3, :cond_77

    neg-float v3, v2

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_7b

    .line 1561
    :cond_77
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_7b
    iput v3, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    .line 1562
    cmpg-float v3, v11, v17

    if-gez v3, :cond_87

    neg-float v3, v2

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_8b

    .line 1563
    :cond_87
    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_8b
    iput v3, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    .line 1564
    return-void
.end method

.method public greylist-max-o getXVelocity()F
    .registers 2

    .line 1567
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public greylist-max-o getYVelocity()F
    .registers 2

    .line 1571
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    return v0
.end method
