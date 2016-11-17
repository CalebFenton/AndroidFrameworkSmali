.class public Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEventGenerator"
.end annotation


# static fields
.field private static final EVENT_BUTTON_STATE:I = 0x0

.field private static final EVENT_DEVICE_ID:I = 0x0

.field private static final EVENT_EDGE_FLAGS:I = 0x0

.field private static final EVENT_FLAGS:I = 0x0

.field private static final EVENT_META_STATE:I = 0x0

.field private static final EVENT_SOURCE:I = 0x1002

.field private static final EVENT_X_PRECISION:F = 1.0f

.field private static final EVENT_Y_PRECISION:F = 1.0f

.field private static sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field private static sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field private static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)I
    .locals 9
    .param p1, "lastTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p2, "lastTouchPointsSize"    # I
    .param p3, "currentTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p4, "currentTouchPointsSize"    # I
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "I[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)I"
        }
    .end annotation

    #@0
    .prologue
    .line 595
    .local p0, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    const/4 v7, 0x0

    #@1
    .local v7, "i":I
    move v8, p2

    #@2
    .end local p2    # "lastTouchPointsSize":I
    .local v8, "lastTouchPointsSize":I
    :goto_0
    if-ge v7, p4, :cond_2

    #@4
    .line 596
    aget-object v2, p3, v7

    #@6
    iget-boolean v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    #@8
    if-eqz v2, :cond_3

    #@a
    .line 598
    add-int/lit8 p2, v8, 0x1

    #@c
    .end local v8    # "lastTouchPointsSize":I
    .restart local p2    # "lastTouchPointsSize":I
    aget-object v2, p1, v8

    #@e
    aget-object v3, p3, v7

    #@10
    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    #@13
    .line 599
    const/4 v2, 0x1

    #@14
    if-ne p2, v2, :cond_0

    #@16
    const/4 v4, 0x0

    #@17
    .line 601
    .local v4, "action":I
    :goto_1
    if-nez v4, :cond_1

    #@19
    move-wide v0, p5

    #@1a
    .line 603
    .local v0, "downTime":J
    :goto_2
    shl-int/lit8 v2, v7, 0x8

    #@1c
    or-int/2addr v4, v2

    #@1d
    move-wide v2, p5

    #@1e
    move-object v5, p1

    #@1f
    move v6, p2

    #@20
    .line 604
    invoke-static/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    #@23
    move-result-object v2

    #@24
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    .line 595
    .end local v0    # "downTime":J
    .end local v4    # "action":I
    :goto_3
    add-int/lit8 v7, v7, 0x1

    #@29
    move v8, p2

    #@2a
    .end local p2    # "lastTouchPointsSize":I
    .restart local v8    # "lastTouchPointsSize":I
    goto :goto_0

    #@2b
    .line 600
    .end local v8    # "lastTouchPointsSize":I
    .restart local p2    # "lastTouchPointsSize":I
    :cond_0
    const/4 v4, 0x5

    #@2c
    goto :goto_1

    #@2d
    .line 602
    .restart local v4    # "action":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@30
    move-result v2

    #@31
    add-int/lit8 v2, v2, -0x1

    #@33
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Landroid/view/MotionEvent;

    #@39
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    #@3c
    move-result-wide v0

    #@3d
    goto :goto_2

    #@3e
    .line 608
    .end local v4    # "action":I
    .end local p2    # "lastTouchPointsSize":I
    .restart local v8    # "lastTouchPointsSize":I
    :cond_2
    return v8

    #@3f
    :cond_3
    move p2, v8

    #@40
    .end local v8    # "lastTouchPointsSize":I
    .restart local p2    # "lastTouchPointsSize":I
    goto :goto_3
.end method

.method private static appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .locals 11
    .param p1, "lastTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p2, "lastTouchPointsSize"    # I
    .param p3, "currentTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p4, "currentTouchPointsSize"    # I
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "I[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 546
    .local p0, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    const/4 v9, 0x0

    #@1
    .line 547
    .local v9, "moveFound":Z
    const/4 v7, 0x0

    #@2
    .end local v9    # "moveFound":Z
    .local v7, "i":I
    :goto_0
    if-ge v7, p4, :cond_3

    #@4
    .line 549
    aget-object v2, p3, v7

    #@6
    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    #@8
    .line 548
    invoke-static {p1, p2, v2}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->findPointByPathIndex([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    #@b
    move-result v8

    #@c
    .line 550
    .local v8, "lastPointsIndex":I
    if-ltz v8, :cond_0

    #@e
    .line 551
    aget-object v2, p1, v8

    #@10
    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    #@12
    aget-object v3, p3, v7

    #@14
    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    #@16
    cmpl-float v2, v2, v3

    #@18
    if-nez v2, :cond_1

    #@1a
    .line 552
    aget-object v2, p1, v8

    #@1c
    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    #@1e
    aget-object v3, p3, v7

    #@20
    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    #@22
    cmpl-float v2, v2, v3

    #@24
    if-eqz v2, :cond_2

    #@26
    const/4 v2, 0x1

    #@27
    .line 551
    :goto_1
    or-int/2addr v9, v2

    #@28
    .line 553
    .local v9, "moveFound":Z
    aget-object v2, p1, v8

    #@2a
    aget-object v3, p3, v7

    #@2c
    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    #@2f
    .line 547
    .end local v9    # "moveFound":Z
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@31
    goto :goto_0

    #@32
    .line 551
    :cond_1
    const/4 v2, 0x1

    #@33
    goto :goto_1

    #@34
    .line 552
    :cond_2
    const/4 v2, 0x0

    #@35
    goto :goto_1

    #@36
    .line 557
    .end local v8    # "lastPointsIndex":I
    :cond_3
    if-eqz v9, :cond_4

    #@38
    .line 558
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3b
    move-result v2

    #@3c
    add-int/lit8 v2, v2, -0x1

    #@3e
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Landroid/view/MotionEvent;

    #@44
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    #@47
    move-result-wide v0

    #@48
    .line 559
    .local v0, "downTime":J
    const/4 v4, 0x2

    #@49
    move-wide/from16 v2, p5

    #@4b
    move-object v5, p1

    #@4c
    move v6, p2

    #@4d
    invoke-static/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    #@50
    move-result-object v2

    #@51
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@54
    .line 544
    .end local v0    # "downTime":J
    :cond_4
    return-void
.end method

.method private static appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)I
    .locals 11
    .param p1, "lastTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p2, "lastTouchPointsSize"    # I
    .param p3, "currentTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p4, "currentTouchPointsSize"    # I
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "I[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)I"
        }
    .end annotation

    #@0
    .prologue
    .line 568
    .local p0, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    const/4 v7, 0x0

    #@1
    .local v7, "i":I
    :goto_0
    if-ge v7, p4, :cond_4

    #@3
    .line 569
    aget-object v2, p3, v7

    #@5
    iget-boolean v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 571
    aget-object v2, p3, v7

    #@b
    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    #@d
    .line 570
    invoke-static {p1, p2, v2}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->findPointByPathIndex([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    #@10
    move-result v8

    #@11
    .line 572
    .local v8, "indexOfUpEvent":I
    if-gez v8, :cond_1

    #@13
    .line 568
    .end local v8    # "indexOfUpEvent":I
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@15
    goto :goto_0

    #@16
    .line 575
    .restart local v8    # "indexOfUpEvent":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@19
    move-result v2

    #@1a
    add-int/lit8 v2, v2, -0x1

    #@1c
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/view/MotionEvent;

    #@22
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    #@25
    move-result-wide v0

    #@26
    .line 576
    .local v0, "downTime":J
    const/4 v2, 0x1

    #@27
    if-ne p2, v2, :cond_2

    #@29
    const/4 v4, 0x1

    #@2a
    .line 578
    .local v4, "action":I
    :goto_2
    shl-int/lit8 v2, v8, 0x8

    #@2c
    or-int/2addr v4, v2

    #@2d
    move-wide/from16 v2, p5

    #@2f
    move-object v5, p1

    #@30
    move v6, p2

    #@31
    .line 579
    invoke-static/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    #@34
    move-result-object v2

    #@35
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    .line 582
    move v9, v8

    #@39
    .local v9, "j":I
    :goto_3
    add-int/lit8 v2, p2, -0x1

    #@3b
    if-ge v9, v2, :cond_3

    #@3d
    .line 583
    aget-object v2, p1, v9

    #@3f
    add-int/lit8 v3, v9, 0x1

    #@41
    aget-object v3, p1, v3

    #@43
    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    #@46
    .line 582
    add-int/lit8 v9, v9, 0x1

    #@48
    goto :goto_3

    #@49
    .line 577
    .end local v4    # "action":I
    .end local v9    # "j":I
    :cond_2
    const/4 v4, 0x6

    #@4a
    goto :goto_2

    #@4b
    .line 585
    .restart local v4    # "action":I
    .restart local v9    # "j":I
    :cond_3
    add-int/lit8 p2, p2, -0x1

    #@4d
    goto :goto_1

    #@4e
    .line 588
    .end local v0    # "downTime":J
    .end local v4    # "action":I
    .end local v8    # "indexOfUpEvent":I
    .end local v9    # "j":I
    :cond_4
    return p2
.end method

.method private static findPointByPathIndex([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I
    .locals 2
    .param p0, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p1, "touchPointsSize"    # I
    .param p2, "pathIndex"    # I

    #@0
    .prologue
    .line 632
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    #@3
    .line 633
    aget-object v1, p0, v0

    #@5
    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    #@7
    if-ne v1, p2, :cond_0

    #@9
    .line 634
    return v0

    #@a
    .line 632
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 637
    :cond_1
    const/4 v1, -0x1

    #@e
    return v1
.end method

.method private static getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 3
    .param p0, "requiredCapacity"    # I

    #@0
    .prologue
    .line 503
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@2
    if-eqz v1, :cond_0

    #@4
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@6
    array-length v1, v1

    #@7
    if-ge v1, p0, :cond_1

    #@9
    .line 504
    :cond_0
    new-array v1, p0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@b
    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@d
    .line 505
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@10
    .line 506
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@12
    new-instance v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@14
    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    #@17
    aput-object v2, v1, v0

    #@19
    .line 505
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 509
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@1e
    return-object v1
.end method

.method static getGestureStepsFromGestureDescription(Landroid/accessibilityservice/GestureDescription;I)Ljava/util/List;
    .locals 10
    .param p0, "description"    # Landroid/accessibilityservice/GestureDescription;
    .param p1, "sampleTimeMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/GestureDescription;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 454
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 458
    .local v2, "gestureSteps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription;->getStrokeCount()I

    #@8
    move-result v3

    #@9
    invoke-static {v3}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@c
    move-result-object v1

    #@d
    .line 459
    .local v1, "currentTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    const/4 v0, 0x0

    #@e
    .line 461
    .local v0, "currentTouchPointSize":I
    const-wide/16 v6, 0x0

    #@10
    .line 462
    .local v6, "timeSinceGestureStart":J
    invoke-static {p0, v6, v7}, Landroid/accessibilityservice/GestureDescription;->-wrap1(Landroid/accessibilityservice/GestureDescription;J)J

    #@13
    move-result-wide v4

    #@14
    .line 463
    .local v4, "nextKeyPointTime":J
    :goto_0
    const-wide/16 v8, 0x0

    #@16
    cmp-long v3, v4, v8

    #@18
    if-ltz v3, :cond_1

    #@1a
    .line 464
    if-nez v0, :cond_0

    #@1c
    move-wide v6, v4

    #@1d
    .line 466
    :goto_1
    invoke-static {p0, v6, v7, v1}, Landroid/accessibilityservice/GestureDescription;->-wrap0(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    #@20
    move-result v0

    #@21
    .line 468
    new-instance v3, Landroid/accessibilityservice/GestureDescription$GestureStep;

    #@23
    invoke-direct {v3, v6, v7, v0, v1}, Landroid/accessibilityservice/GestureDescription$GestureStep;-><init>(JI[Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    #@26
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    .line 472
    const-wide/16 v8, 0x1

    #@2b
    add-long/2addr v8, v6

    #@2c
    invoke-static {p0, v8, v9}, Landroid/accessibilityservice/GestureDescription;->-wrap1(Landroid/accessibilityservice/GestureDescription;J)J

    #@2f
    move-result-wide v4

    #@30
    goto :goto_0

    #@31
    .line 465
    :cond_0
    int-to-long v8, p1

    #@32
    add-long/2addr v8, v6

    #@33
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    #@36
    move-result-wide v6

    #@37
    goto :goto_1

    #@38
    .line 474
    :cond_1
    return-object v2
.end method

.method private static getLastTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 3
    .param p0, "requiredCapacity"    # I

    #@0
    .prologue
    .line 513
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@2
    if-eqz v1, :cond_0

    #@4
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@6
    array-length v1, v1

    #@7
    if-ge v1, p0, :cond_1

    #@9
    .line 514
    :cond_0
    new-array v1, p0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@b
    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@d
    .line 515
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@10
    .line 516
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@12
    new-instance v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@14
    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    #@17
    aput-object v2, v1, v0

    #@19
    .line 515
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 519
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@1e
    return-object v1
.end method

.method public static getMotionEventsFromGestureSteps(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 478
    .local p0, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 481
    .local v1, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    const/4 v3, 0x0

    #@6
    .line 484
    .local v3, "lastTouchPointSize":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@a
    move-result v4

    #@b
    if-ge v0, v4, :cond_0

    #@d
    .line 485
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v8

    #@11
    check-cast v8, Landroid/accessibilityservice/GestureDescription$GestureStep;

    #@13
    .line 486
    .local v8, "step":Landroid/accessibilityservice/GestureDescription$GestureStep;
    iget v5, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    #@15
    .line 488
    .local v5, "currentTouchPointSize":I
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    #@18
    move-result v4

    #@19
    .line 487
    invoke-static {v4}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getLastTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@1c
    move-result-object v2

    #@1d
    .line 491
    .local v2, "lastTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    iget-object v4, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@1f
    iget-wide v6, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    #@21
    .line 490
    invoke-static/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    #@24
    .line 493
    iget-object v4, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@26
    .line 494
    iget-wide v6, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    #@28
    .line 492
    invoke-static/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)I

    #@2b
    move-result v3

    #@2c
    .line 496
    iget-object v4, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@2e
    .line 497
    iget-wide v6, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    #@30
    .line 495
    invoke-static/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)I

    #@33
    move-result v3

    #@34
    .line 484
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 499
    .end local v2    # "lastTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .end local v5    # "currentTouchPointSize":I
    .end local v8    # "step":Landroid/accessibilityservice/GestureDescription$GestureStep;
    :cond_0
    return-object v1
.end method

.method private static getPointerCoords(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .param p0, "requiredCapacity"    # I

    #@0
    .prologue
    .line 523
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@2
    if-eqz v1, :cond_0

    #@4
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@6
    array-length v1, v1

    #@7
    if-ge v1, p0, :cond_1

    #@9
    .line 524
    :cond_0
    new-array v1, p0, [Landroid/view/MotionEvent$PointerCoords;

    #@b
    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@d
    .line 525
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@10
    .line 526
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@12
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    #@14
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@17
    aput-object v2, v1, v0

    #@19
    .line 525
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 529
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@1e
    return-object v1
.end method

.method private static getPointerProps(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 3
    .param p0, "requiredCapacity"    # I

    #@0
    .prologue
    .line 533
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    #@2
    if-eqz v1, :cond_0

    #@4
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    #@6
    array-length v1, v1

    #@7
    if-ge v1, p0, :cond_1

    #@9
    .line 534
    :cond_0
    new-array v1, p0, [Landroid/view/MotionEvent$PointerProperties;

    #@b
    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    #@d
    .line 535
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@10
    .line 536
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    #@12
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    #@14
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    #@17
    aput-object v2, v1, v0

    #@19
    .line 535
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 539
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    #@1e
    return-object v1
.end method

.method private static obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;
    .locals 20
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p6, "touchPointsSize"    # I

    #@0
    .prologue
    .line 613
    invoke-static/range {p6 .. p6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getPointerCoords(I)[Landroid/view/MotionEvent$PointerCoords;

    #@3
    move-result-object v9

    #@4
    .line 614
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {p6 .. p6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getPointerProps(I)[Landroid/view/MotionEvent$PointerProperties;

    #@7
    move-result-object v8

    #@8
    .line 615
    .local v8, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    #@a
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@c
    move/from16 v1, p6

    #@e
    if-ge v0, v1, :cond_0

    #@10
    .line 616
    aget-object v2, v8, v18

    #@12
    aget-object v3, p5, v18

    #@14
    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    #@16
    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    #@18
    .line 617
    aget-object v2, v8, v18

    #@1a
    const/4 v3, 0x0

    #@1b
    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    #@1d
    .line 618
    aget-object v2, v9, v18

    #@1f
    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    #@22
    .line 619
    aget-object v2, v9, v18

    #@24
    const/high16 v3, 0x3f800000    # 1.0f

    #@26
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@28
    .line 620
    aget-object v2, v9, v18

    #@2a
    const/high16 v3, 0x3f800000    # 1.0f

    #@2c
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@2e
    .line 621
    aget-object v2, v9, v18

    #@30
    aget-object v3, p5, v18

    #@32
    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    #@34
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@36
    .line 622
    aget-object v2, v9, v18

    #@38
    aget-object v3, p5, v18

    #@3a
    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    #@3c
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@3e
    .line 615
    add-int/lit8 v18, v18, 0x1

    #@40
    goto :goto_0

    #@41
    .line 625
    :cond_0
    const/4 v10, 0x0

    #@42
    const/4 v11, 0x0

    #@43
    .line 626
    const/high16 v12, 0x3f800000    # 1.0f

    #@45
    const/high16 v13, 0x3f800000    # 1.0f

    #@47
    const/4 v14, 0x0

    #@48
    const/4 v15, 0x0

    #@49
    .line 627
    const/16 v16, 0x1002

    #@4b
    const/16 v17, 0x0

    #@4d
    move-wide/from16 v2, p0

    #@4f
    move-wide/from16 v4, p2

    #@51
    move/from16 v6, p4

    #@53
    move/from16 v7, p6

    #@55
    .line 624
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@58
    move-result-object v2

    #@59
    return-object v2
.end method
