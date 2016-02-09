.class public Lcom/android/server/policy/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

.field private mDebugFireable:Z

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@0
    .prologue
    const/16 v1, 0x20

    #@2
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 43
    new-array v0, v1, [I

    #@7
    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    #@9
    .line 44
    new-array v0, v1, [F

    #@b
    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    #@d
    .line 45
    new-array v0, v1, [F

    #@f
    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    #@11
    .line 46
    new-array v0, v1, [J

    #@13
    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    #@15
    .line 55
    const-string/jumbo v0, "callbacks"

    #@18
    invoke-static {v0, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@1e
    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@20
    .line 56
    const-string/jumbo v0, "context"

    #@23
    invoke-static {v0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/content/Context;

    #@29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2c
    move-result-object v0

    #@2d
    .line 57
    const v1, 0x1050017

    #@30
    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@33
    move-result v0

    #@34
    iput v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    #@36
    .line 58
    iget v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    #@38
    iput v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    #@3a
    .line 54
    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    #@0
    .prologue
    .line 118
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@3
    move-result v1

    #@4
    .line 119
    .local v1, "pointerId":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    #@7
    move-result v0

    #@8
    .line 122
    .local v0, "i":I
    const/4 v2, -0x1

    #@9
    if-eq v0, v2, :cond_0

    #@b
    .line 123
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    #@d
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    #@10
    move-result v3

    #@11
    aput v3, v2, v0

    #@13
    .line 124
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    #@15
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    #@18
    move-result v3

    #@19
    aput v3, v2, v0

    #@1b
    .line 125
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    #@1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@20
    move-result-wide v4

    #@21
    aput-wide v4, v2, v0

    #@23
    .line 117
    :cond_0
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    #@2
    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, " must not be null"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 67
    :cond_0
    return-object p1
.end method

.method private detectSwipe(IJFF)I
    .locals 8
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    #@0
    .prologue
    const-wide/16 v6, 0x1f4

    #@2
    .line 170
    iget-object v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    #@4
    aget v2, v4, p1

    #@6
    .line 171
    .local v2, "fromX":F
    iget-object v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    #@8
    aget v3, v4, p1

    #@a
    .line 172
    .local v3, "fromY":F
    iget-object v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    #@c
    aget-wide v4, v4, p1

    #@e
    sub-long v0, p2, v4

    #@10
    .line 175
    .local v0, "elapsed":J
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    #@12
    int-to-float v4, v4

    #@13
    cmpg-float v4, v3, v4

    #@15
    if-gtz v4, :cond_0

    #@17
    .line 176
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    #@19
    int-to-float v4, v4

    #@1a
    add-float/2addr v4, v3

    #@1b
    cmpl-float v4, p5, v4

    #@1d
    if-lez v4, :cond_0

    #@1f
    .line 177
    cmp-long v4, v0, v6

    #@21
    if-gez v4, :cond_0

    #@23
    .line 178
    const/4 v4, 0x1

    #@24
    return v4

    #@25
    .line 180
    :cond_0
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    #@27
    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    #@29
    sub-int/2addr v4, v5

    #@2a
    int-to-float v4, v4

    #@2b
    cmpl-float v4, v3, v4

    #@2d
    if-ltz v4, :cond_1

    #@2f
    .line 181
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    #@31
    int-to-float v4, v4

    #@32
    sub-float v4, v3, v4

    #@34
    cmpg-float v4, p5, v4

    #@36
    if-gez v4, :cond_1

    #@38
    .line 182
    cmp-long v4, v0, v6

    #@3a
    if-gez v4, :cond_1

    #@3c
    .line 183
    const/4 v4, 0x2

    #@3d
    return v4

    #@3e
    .line 185
    :cond_1
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    #@40
    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    #@42
    sub-int/2addr v4, v5

    #@43
    int-to-float v4, v4

    #@44
    cmpl-float v4, v2, v4

    #@46
    if-ltz v4, :cond_2

    #@48
    .line 186
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    #@4a
    int-to-float v4, v4

    #@4b
    sub-float v4, v2, v4

    #@4d
    cmpg-float v4, p4, v4

    #@4f
    if-gez v4, :cond_2

    #@51
    .line 187
    cmp-long v4, v0, v6

    #@53
    if-gez v4, :cond_2

    #@55
    .line 188
    const/4 v4, 0x3

    #@56
    return v4

    #@57
    .line 190
    :cond_2
    const/4 v4, 0x0

    #@58
    return v4
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .locals 20
    .param p1, "move"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    #@3
    move-result v15

    #@4
    .line 146
    .local v15, "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@7
    move-result v17

    #@8
    .line 147
    .local v17, "pointerCount":I
    const/16 v16, 0x0

    #@a
    .local v16, "p":I
    :goto_0
    move/from16 v0, v16

    #@c
    move/from16 v1, v17

    #@e
    if-ge v0, v1, :cond_3

    #@10
    .line 148
    move-object/from16 v0, p1

    #@12
    move/from16 v1, v16

    #@14
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@17
    move-result v18

    #@18
    .line 149
    .local v18, "pointerId":I
    move-object/from16 v0, p0

    #@1a
    move/from16 v1, v18

    #@1c
    invoke-direct {v0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    #@1f
    move-result v3

    #@20
    .line 150
    .local v3, "i":I
    const/4 v2, -0x1

    #@21
    if-eq v3, v2, :cond_2

    #@23
    .line 151
    const/4 v14, 0x0

    #@24
    .local v14, "h":I
    :goto_1
    if-ge v14, v15, :cond_1

    #@26
    .line 152
    move-object/from16 v0, p1

    #@28
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    #@2b
    move-result-wide v4

    #@2c
    .line 153
    .local v4, "time":J
    move-object/from16 v0, p1

    #@2e
    move/from16 v1, v16

    #@30
    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    #@33
    move-result v6

    #@34
    .line 154
    .local v6, "x":F
    move-object/from16 v0, p1

    #@36
    move/from16 v1, v16

    #@38
    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    #@3b
    move-result v7

    #@3c
    .local v7, "y":F
    move-object/from16 v2, p0

    #@3e
    .line 155
    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    #@41
    move-result v19

    #@42
    .line 156
    .local v19, "swipe":I
    if-eqz v19, :cond_0

    #@44
    .line 157
    return v19

    #@45
    .line 151
    :cond_0
    add-int/lit8 v14, v14, 0x1

    #@47
    goto :goto_1

    #@48
    .line 160
    .end local v4    # "time":J
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v19    # "swipe":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@4b
    move-result-wide v10

    #@4c
    move-object/from16 v0, p1

    #@4e
    move/from16 v1, v16

    #@50
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@53
    move-result v12

    #@54
    move-object/from16 v0, p1

    #@56
    move/from16 v1, v16

    #@58
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@5b
    move-result v13

    #@5c
    move-object/from16 v8, p0

    #@5e
    move v9, v3

    #@5f
    invoke-direct/range {v8 .. v13}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    #@62
    move-result v19

    #@63
    .line 161
    .restart local v19    # "swipe":I
    if-eqz v19, :cond_2

    #@65
    .line 162
    return v19

    #@66
    .line 147
    .end local v14    # "h":I
    .end local v19    # "swipe":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    #@68
    goto :goto_0

    #@69
    .line 166
    .end local v3    # "i":I
    .end local v18    # "pointerId":I
    :cond_3
    const/4 v2, 0x0

    #@6a
    return v2
.end method

.method private findIndex(I)I
    .locals 4
    .param p1, "pointerId"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 132
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 133
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    #@8
    aget v1, v1, v0

    #@a
    if-ne v1, p1, :cond_0

    #@c
    .line 134
    return v0

    #@d
    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 137
    :cond_1
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    #@12
    const/16 v2, 0x20

    #@14
    if-eq v1, v2, :cond_2

    #@16
    if-ne p1, v3, :cond_3

    #@18
    .line 138
    :cond_2
    return v3

    #@19
    .line 140
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    #@1b
    iget v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    #@1d
    add-int/lit8 v3, v2, 0x1

    #@1f
    iput v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    #@21
    aput p1, v1, v2

    #@23
    .line 141
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    #@25
    add-int/lit8 v1, v1, -0x1

    #@27
    return v1
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v3

    #@6
    packed-switch v3, :pswitch_data_0

    #@9
    .line 71
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@a
    .line 74
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    #@c
    .line 75
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    #@e
    .line 76
    iput v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    #@10
    .line 77
    invoke-direct {p0, p1, v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    #@13
    .line 78
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@15
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    #@18
    goto :goto_0

    #@19
    .line 81
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@1c
    move-result v3

    #@1d
    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    #@20
    .line 82
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@27
    move-result v3

    #@28
    const/4 v4, 0x5

    #@29
    if-ge v3, v4, :cond_1

    #@2b
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    #@2d
    .line 84
    iget-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    #@2f
    if-nez v1, :cond_0

    #@31
    .line 86
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@33
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    #@36
    goto :goto_0

    #@37
    :cond_1
    move v1, v2

    #@38
    .line 83
    goto :goto_1

    #@39
    .line 91
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    #@3b
    if-eqz v3, :cond_0

    #@3d
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    #@40
    move-result v0

    #@41
    .line 93
    .local v0, "swipe":I
    if-nez v0, :cond_2

    #@43
    move v2, v1

    #@44
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    #@46
    .line 94
    if-ne v0, v1, :cond_3

    #@48
    .line 96
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@4a
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    #@4d
    goto :goto_0

    #@4e
    .line 97
    :cond_3
    const/4 v1, 0x2

    #@4f
    if-ne v0, v1, :cond_4

    #@51
    .line 99
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@53
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    #@56
    goto :goto_0

    #@57
    .line 100
    :cond_4
    const/4 v1, 0x3

    #@58
    if-ne v0, v1, :cond_0

    #@5a
    .line 102
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@5c
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    #@5f
    goto :goto_0

    #@60
    .line 108
    .end local v0    # "swipe":I
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    #@62
    .line 109
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    #@64
    .line 110
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@66
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    #@69
    goto :goto_0

    #@6a
    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
