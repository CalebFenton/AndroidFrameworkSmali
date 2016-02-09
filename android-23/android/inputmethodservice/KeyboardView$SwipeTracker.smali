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
.field static final LONGEST_PAST_TIME:I = 0xc8

.field static final NUM_PAST:I = 0x4


# instance fields
.field final mPastTime:[J

.field final mPastX:[F

.field final mPastY:[F

.field mXVelocity:F

.field mYVelocity:F


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 1457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1462
    new-array v0, v1, [F

    #@6
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    #@8
    .line 1463
    new-array v0, v1, [F

    #@a
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    #@c
    .line 1464
    new-array v0, v1, [J

    #@e
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    #@10
    .line 1457
    return-void
.end method

.method synthetic constructor <init>(Landroid/inputmethodservice/KeyboardView$SwipeTracker;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>()V

    #@3
    return-void
.end method

.method private addPoint(FFJ)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    #@0
    .prologue
    .line 1484
    const/4 v1, -0x1

    #@1
    .line 1486
    .local v1, "drop":I
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    #@3
    .line 1487
    .local v3, "pastTime":[J
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    const/4 v7, 0x4

    #@5
    if-ge v2, v7, :cond_0

    #@7
    .line 1488
    aget-wide v8, v3, v2

    #@9
    const-wide/16 v10, 0x0

    #@b
    cmp-long v7, v8, v10

    #@d
    if-nez v7, :cond_5

    #@f
    .line 1494
    :cond_0
    const/4 v7, 0x4

    #@10
    if-ne v2, v7, :cond_1

    #@12
    if-gez v1, :cond_1

    #@14
    .line 1495
    const/4 v1, 0x0

    #@15
    .line 1497
    :cond_1
    if-ne v1, v2, :cond_2

    #@17
    add-int/lit8 v1, v1, -0x1

    #@19
    .line 1498
    :cond_2
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    #@1b
    .line 1499
    .local v4, "pastX":[F
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    #@1d
    .line 1500
    .local v5, "pastY":[F
    if-ltz v1, :cond_3

    #@1f
    .line 1501
    add-int/lit8 v6, v1, 0x1

    #@21
    .line 1502
    .local v6, "start":I
    rsub-int/lit8 v7, v1, 0x4

    #@23
    add-int/lit8 v0, v7, -0x1

    #@25
    .line 1503
    .local v0, "count":I
    const/4 v7, 0x0

    #@26
    invoke-static {v4, v6, v4, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@29
    .line 1504
    const/4 v7, 0x0

    #@2a
    invoke-static {v5, v6, v5, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@2d
    .line 1505
    const/4 v7, 0x0

    #@2e
    invoke-static {v3, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@31
    .line 1506
    add-int/lit8 v7, v1, 0x1

    #@33
    sub-int/2addr v2, v7

    #@34
    .line 1508
    .end local v0    # "count":I
    .end local v6    # "start":I
    :cond_3
    aput p1, v4, v2

    #@36
    .line 1509
    aput p2, v5, v2

    #@38
    .line 1510
    aput-wide p3, v3, v2

    #@3a
    .line 1511
    add-int/lit8 v2, v2, 0x1

    #@3c
    .line 1512
    const/4 v7, 0x4

    #@3d
    if-ge v2, v7, :cond_4

    #@3f
    .line 1513
    const-wide/16 v8, 0x0

    #@41
    aput-wide v8, v3, v2

    #@43
    .line 1483
    :cond_4
    return-void

    #@44
    .line 1490
    .end local v4    # "pastX":[F
    .end local v5    # "pastY":[F
    :cond_5
    aget-wide v8, v3, v2

    #@46
    const-wide/16 v10, 0xc8

    #@48
    sub-long v10, p3, v10

    #@4a
    cmp-long v7, v8, v10

    #@4c
    if-gez v7, :cond_6

    #@4e
    .line 1491
    move v1, v2

    #@4f
    .line 1487
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@3
    move-result-wide v2

    #@4
    .line 1475
    .local v2, "time":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    #@7
    move-result v0

    #@8
    .line 1476
    .local v0, "N":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 1477
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    #@e
    move-result v4

    #@f
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    #@12
    move-result v5

    #@13
    .line 1478
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    #@16
    move-result-wide v6

    #@17
    .line 1477
    invoke-direct {p0, v4, v5, v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    #@1a
    .line 1476
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1480
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@20
    move-result v4

    #@21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@24
    move-result v5

    #@25
    invoke-direct {p0, v4, v5, v2, v3}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    #@28
    .line 1473
    return-void
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .line 1470
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    #@2
    const-wide/16 v2, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    aput-wide v2, v0, v1

    #@7
    .line 1469
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .param p1, "units"    # I

    #@0
    .prologue
    .line 1518
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(IF)V

    #@6
    .line 1517
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 20
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    #@0
    .prologue
    .line 1522
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    #@4
    .line 1523
    .local v13, "pastX":[F
    move-object/from16 v0, p0

    #@6
    iget-object v14, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    #@8
    .line 1524
    .local v14, "pastY":[F
    move-object/from16 v0, p0

    #@a
    iget-object v12, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    #@c
    .line 1526
    .local v12, "pastTime":[J
    const/16 v16, 0x0

    #@e
    aget v10, v13, v16

    #@10
    .line 1527
    .local v10, "oldestX":F
    const/16 v16, 0x0

    #@12
    aget v11, v14, v16

    #@14
    .line 1528
    .local v11, "oldestY":F
    const/16 v16, 0x0

    #@16
    aget-wide v8, v12, v16

    #@18
    .line 1529
    .local v8, "oldestTime":J
    const/4 v3, 0x0

    #@19
    .line 1530
    .local v3, "accumX":F
    const/4 v4, 0x0

    #@1a
    .line 1531
    .local v4, "accumY":F
    const/4 v2, 0x0

    #@1b
    .line 1532
    .local v2, "N":I
    :goto_0
    const/16 v16, 0x4

    #@1d
    move/from16 v0, v16

    #@1f
    if-ge v2, v0, :cond_0

    #@21
    .line 1533
    aget-wide v16, v12, v2

    #@23
    const-wide/16 v18, 0x0

    #@25
    cmp-long v16, v16, v18

    #@27
    if-nez v16, :cond_1

    #@29
    .line 1539
    :cond_0
    const/4 v7, 0x1

    #@2a
    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_5

    #@2c
    .line 1540
    aget-wide v16, v12, v7

    #@2e
    sub-long v16, v16, v8

    #@30
    move-wide/from16 v0, v16

    #@32
    long-to-int v6, v0

    #@33
    .line 1541
    .local v6, "dur":I
    if-nez v6, :cond_2

    #@35
    .line 1539
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@37
    goto :goto_1

    #@38
    .line 1536
    .end local v6    # "dur":I
    .end local v7    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 1542
    .restart local v6    # "dur":I
    .restart local v7    # "i":I
    :cond_2
    aget v16, v13, v7

    #@3d
    sub-float v5, v16, v10

    #@3f
    .line 1543
    .local v5, "dist":F
    int-to-float v0, v6

    #@40
    move/from16 v16, v0

    #@42
    div-float v16, v5, v16

    #@44
    move/from16 v0, p1

    #@46
    int-to-float v0, v0

    #@47
    move/from16 v17, v0

    #@49
    mul-float v15, v16, v17

    #@4b
    .line 1544
    .local v15, "vel":F
    const/16 v16, 0x0

    #@4d
    cmpl-float v16, v3, v16

    #@4f
    if-nez v16, :cond_3

    #@51
    move v3, v15

    #@52
    .line 1547
    :goto_3
    aget v16, v14, v7

    #@54
    sub-float v5, v16, v11

    #@56
    .line 1548
    int-to-float v0, v6

    #@57
    move/from16 v16, v0

    #@59
    div-float v16, v5, v16

    #@5b
    move/from16 v0, p1

    #@5d
    int-to-float v0, v0

    #@5e
    move/from16 v17, v0

    #@60
    mul-float v15, v16, v17

    #@62
    .line 1549
    const/16 v16, 0x0

    #@64
    cmpl-float v16, v4, v16

    #@66
    if-nez v16, :cond_4

    #@68
    move v4, v15

    #@69
    goto :goto_2

    #@6a
    .line 1545
    :cond_3
    add-float v16, v3, v15

    #@6c
    const/high16 v17, 0x3f000000    # 0.5f

    #@6e
    mul-float v3, v16, v17

    #@70
    goto :goto_3

    #@71
    .line 1550
    :cond_4
    add-float v16, v4, v15

    #@73
    const/high16 v17, 0x3f000000    # 0.5f

    #@75
    mul-float v4, v16, v17

    #@77
    goto :goto_2

    #@78
    .line 1552
    .end local v5    # "dist":F
    .end local v6    # "dur":I
    .end local v15    # "vel":F
    :cond_5
    const/16 v16, 0x0

    #@7a
    cmpg-float v16, v3, v16

    #@7c
    if-gez v16, :cond_6

    #@7e
    move/from16 v0, p2

    #@80
    neg-float v0, v0

    #@81
    move/from16 v16, v0

    #@83
    move/from16 v0, v16

    #@85
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    #@88
    move-result v16

    #@89
    :goto_4
    move/from16 v0, v16

    #@8b
    move-object/from16 v1, p0

    #@8d
    iput v0, v1, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    #@8f
    .line 1554
    const/16 v16, 0x0

    #@91
    cmpg-float v16, v4, v16

    #@93
    if-gez v16, :cond_7

    #@95
    move/from16 v0, p2

    #@97
    neg-float v0, v0

    #@98
    move/from16 v16, v0

    #@9a
    move/from16 v0, v16

    #@9c
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    #@9f
    move-result v16

    #@a0
    :goto_5
    move/from16 v0, v16

    #@a2
    move-object/from16 v1, p0

    #@a4
    iput v0, v1, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    #@a6
    .line 1521
    return-void

    #@a7
    .line 1553
    :cond_6
    move/from16 v0, p2

    #@a9
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    #@ac
    move-result v16

    #@ad
    goto :goto_4

    #@ae
    .line 1555
    :cond_7
    move/from16 v0, p2

    #@b0
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    #@b3
    move-result v16

    #@b4
    goto :goto_5
.end method

.method public getXVelocity()F
    .locals 1

    #@0
    .prologue
    .line 1559
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    #@2
    return v0
.end method

.method public getYVelocity()F
    .locals 1

    #@0
    .prologue
    .line 1563
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    #@2
    return v0
.end method
