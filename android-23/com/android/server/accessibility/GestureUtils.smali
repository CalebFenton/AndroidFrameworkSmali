.class final Lcom/android/server/accessibility/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D
    .locals 4
    .param p0, "first"    # Landroid/view/MotionEvent;
    .param p1, "second"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    #@0
    .prologue
    .line 39
    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getX(I)F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getY(I)F

    #@7
    move-result v1

    #@8
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    #@b
    move-result v2

    #@c
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    #@f
    move-result v3

    #@10
    .line 39
    invoke-static {v0, v1, v2, v3}, Landroid/util/MathUtils;->dist(FFFF)F

    #@13
    move-result v0

    #@14
    float-to-double v0, v0

    #@15
    return-wide v0
.end method

.method private static eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .locals 5
    .param p0, "first"    # Landroid/view/MotionEvent;
    .param p1, "second"    # Landroid/view/MotionEvent;
    .param p2, "timeout"    # I
    .param p3, "distance"    # I
    .param p4, "actionIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 28
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 29
    return v4

    #@8
    .line 31
    :cond_0
    invoke-static {p0, p1, p4}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    #@b
    move-result-wide v0

    #@c
    .line 32
    .local v0, "deltaMove":D
    int-to-double v2, p3

    #@d
    cmpl-double v2, v0, v2

    #@f
    if-ltz v2, :cond_1

    #@11
    .line 33
    return v4

    #@12
    .line 35
    :cond_1
    const/4 v2, 0x1

    #@13
    return v2
.end method

.method public static isDraggingGesture(FFFFFFFFF)Z
    .locals 16
    .param p0, "firstPtrDownX"    # F
    .param p1, "firstPtrDownY"    # F
    .param p2, "secondPtrDownX"    # F
    .param p3, "secondPtrDownY"    # F
    .param p4, "firstPtrX"    # F
    .param p5, "firstPtrY"    # F
    .param p6, "secondPtrX"    # F
    .param p7, "secondPtrY"    # F
    .param p8, "maxDraggingAngleCos"    # F

    #@0
    .prologue
    .line 65
    sub-float v1, p4, p0

    #@2
    .line 66
    .local v1, "firstDeltaX":F
    sub-float v2, p5, p1

    #@4
    .line 68
    .local v2, "firstDeltaY":F
    const/4 v11, 0x0

    #@5
    cmpl-float v11, v1, v11

    #@7
    if-nez v11, :cond_0

    #@9
    const/4 v11, 0x0

    #@a
    cmpl-float v11, v2, v11

    #@c
    if-nez v11, :cond_0

    #@e
    .line 69
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 72
    :cond_0
    float-to-double v12, v1

    #@11
    float-to-double v14, v2

    #@12
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    #@15
    move-result-wide v12

    #@16
    double-to-float v3, v12

    #@17
    .line 74
    .local v3, "firstMagnitude":F
    const/4 v11, 0x0

    #@18
    cmpl-float v11, v3, v11

    #@1a
    if-lez v11, :cond_1

    #@1c
    div-float v4, v1, v3

    #@1e
    .line 76
    .local v4, "firstXNormalized":F
    :goto_0
    const/4 v11, 0x0

    #@1f
    cmpl-float v11, v3, v11

    #@21
    if-lez v11, :cond_2

    #@23
    div-float v5, v2, v3

    #@25
    .line 78
    .local v5, "firstYNormalized":F
    :goto_1
    sub-float v6, p6, p2

    #@27
    .line 79
    .local v6, "secondDeltaX":F
    sub-float v7, p7, p3

    #@29
    .line 81
    .local v7, "secondDeltaY":F
    const/4 v11, 0x0

    #@2a
    cmpl-float v11, v6, v11

    #@2c
    if-nez v11, :cond_3

    #@2e
    const/4 v11, 0x0

    #@2f
    cmpl-float v11, v7, v11

    #@31
    if-nez v11, :cond_3

    #@33
    .line 82
    const/4 v11, 0x1

    #@34
    return v11

    #@35
    .line 74
    .end local v4    # "firstXNormalized":F
    .end local v5    # "firstYNormalized":F
    .end local v6    # "secondDeltaX":F
    .end local v7    # "secondDeltaY":F
    :cond_1
    move v4, v1

    #@36
    .restart local v4    # "firstXNormalized":F
    goto :goto_0

    #@37
    .line 76
    :cond_2
    move v5, v2

    #@38
    .restart local v5    # "firstYNormalized":F
    goto :goto_1

    #@39
    .line 85
    .restart local v6    # "secondDeltaX":F
    .restart local v7    # "secondDeltaY":F
    :cond_3
    float-to-double v12, v6

    #@3a
    float-to-double v14, v7

    #@3b
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    #@3e
    move-result-wide v12

    #@3f
    double-to-float v8, v12

    #@40
    .line 87
    .local v8, "secondMagnitude":F
    const/4 v11, 0x0

    #@41
    cmpl-float v11, v8, v11

    #@43
    if-lez v11, :cond_4

    #@45
    div-float v9, v6, v8

    #@47
    .line 89
    .local v9, "secondXNormalized":F
    :goto_2
    const/4 v11, 0x0

    #@48
    cmpl-float v11, v8, v11

    #@4a
    if-lez v11, :cond_5

    #@4c
    div-float v10, v7, v8

    #@4e
    .line 92
    .local v10, "secondYNormalized":F
    :goto_3
    mul-float v11, v4, v9

    #@50
    mul-float v12, v5, v10

    #@52
    add-float v0, v11, v12

    #@54
    .line 94
    .local v0, "angleCos":F
    cmpg-float v11, v0, p8

    #@56
    if-gez v11, :cond_6

    #@58
    .line 95
    const/4 v11, 0x0

    #@59
    return v11

    #@5a
    .line 87
    .end local v0    # "angleCos":F
    .end local v9    # "secondXNormalized":F
    .end local v10    # "secondYNormalized":F
    :cond_4
    move v9, v6

    #@5b
    .restart local v9    # "secondXNormalized":F
    goto :goto_2

    #@5c
    .line 89
    :cond_5
    move v10, v7

    #@5d
    .restart local v10    # "secondYNormalized":F
    goto :goto_3

    #@5e
    .line 98
    .restart local v0    # "angleCos":F
    :cond_6
    const/4 v11, 0x1

    #@5f
    return v11
.end method

.method public static isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .locals 1
    .param p0, "firstUp"    # Landroid/view/MotionEvent;
    .param p1, "secondUp"    # Landroid/view/MotionEvent;
    .param p2, "multiTapTimeSlop"    # I
    .param p3, "multiTapDistanceSlop"    # I
    .param p4, "actionIndex"    # I

    #@0
    .prologue
    .line 22
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p0, "first"    # Landroid/view/MotionEvent;
    .param p1, "second"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 49
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    #@4
    move-result v1

    #@5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    #@8
    move-result v2

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 50
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@12
    move-result v1

    #@13
    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@16
    move-result v2

    #@17
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@1a
    move-result v2

    #@1b
    .line 50
    if-ne v1, v2, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 49
    :cond_0
    return v0
.end method

.method public static isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .locals 1
    .param p0, "down"    # Landroid/view/MotionEvent;
    .param p1, "up"    # Landroid/view/MotionEvent;
    .param p2, "tapTimeSlop"    # I
    .param p3, "tapDistanceSlop"    # I
    .param p4, "actionIndex"    # I

    #@0
    .prologue
    .line 17
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 6
    .param p0, "firstUp"    # Landroid/view/MotionEvent;
    .param p1, "secondUp"    # Landroid/view/MotionEvent;
    .param p2, "timeout"    # I

    #@0
    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@3
    move-result-wide v2

    #@4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    #@7
    move-result-wide v4

    #@8
    sub-long v0, v2, v4

    #@a
    .line 45
    .local v0, "deltaTime":J
    int-to-long v2, p2

    #@b
    cmp-long v2, v0, v2

    #@d
    if-ltz v2, :cond_0

    #@f
    const/4 v2, 0x1

    #@10
    :goto_0
    return v2

    #@11
    :cond_0
    const/4 v2, 0x0

    #@12
    goto :goto_0
.end method
