.class public Lcom/android/server/policy/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;,
        Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_FLING_TIME_MILLIS:I = 0x1388

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

.field private final mContext:Landroid/content/Context;

.field private mDebugFireable:Z

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLastFlingTime:J

.field private mMouseHoveringAtEdge:Z

.field private mOverscroller:Landroid/widget/OverScroller;

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/SystemGesturesPointerEventListener;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J

    #@2
    return-wide p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@0
    .prologue
    const/16 v1, 0x20

    #@2
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 51
    new-array v0, v1, [I

    #@7
    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    #@9
    .line 52
    new-array v0, v1, [F

    #@b
    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    #@d
    .line 53
    new-array v0, v1, [F

    #@f
    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    #@11
    .line 54
    new-array v0, v1, [J

    #@13
    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    #@15
    .line 68
    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    #@17
    .line 69
    const-string/jumbo v0, "callbacks"

    #@1a
    invoke-static {v0, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@20
    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@22
    .line 70
    const-string/jumbo v0, "context"

    #@25
    invoke-static {v0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/content/Context;

    #@2b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v0

    #@2f
    .line 71
    const v1, 0x1050017

    #@32
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@35
    move-result v0

    #@36
    iput v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    #@38
    .line 72
    iget v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    #@3a
    iput v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    #@3c
    .line 67
    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    #@0
    .prologue
    .line 160
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@3
    move-result v1

    #@4
    .line 161
    .local v1, "pointerId":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    #@7
    move-result v0

    #@8
    .line 164
    .local v0, "i":I
    const/4 v2, -0x1

    #@9
    if-eq v0, v2, :cond_0

    #@b
    .line 165
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    #@d
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    #@10
    move-result v3

    #@11
    aput v3, v2, v0

    #@13
    .line 166
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    #@15
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    #@18
    move-result v3

    #@19
    aput v3, v2, v0

    #@1b
    .line 167
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    #@1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@20
    move-result-wide v4

    #@21
    aput-wide v4, v2, v0

    #@23
    .line 159
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
    .line 78
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    #@2
    .line 79
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
    .line 81
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
    .line 212
    iget-object v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    #@4
    aget v2, v4, p1

    #@6
    .line 213
    .local v2, "fromX":F
    iget-object v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    #@8
    aget v3, v4, p1

    #@a
    .line 214
    .local v3, "fromY":F
    iget-object v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    #@c
    aget-wide v4, v4, p1

    #@e
    sub-long v0, p2, v4

    #@10
    .line 217
    .local v0, "elapsed":J
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    #@12
    int-to-float v4, v4

    #@13
    cmpg-float v4, v3, v4

    #@15
    if-gtz v4, :cond_0

    #@17
    .line 218
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
    .line 219
    cmp-long v4, v0, v6

    #@21
    if-gez v4, :cond_0

    #@23
    .line 220
    const/4 v4, 0x1

    #@24
    return v4

    #@25
    .line 222
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
    .line 223
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
    .line 224
    cmp-long v4, v0, v6

    #@3a
    if-gez v4, :cond_1

    #@3c
    .line 225
    const/4 v4, 0x2

    #@3d
    return v4

    #@3e
    .line 227
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
    .line 228
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
    .line 229
    cmp-long v4, v0, v6

    #@53
    if-gez v4, :cond_2

    #@55
    .line 230
    const/4 v4, 0x3

    #@56
    return v4

    #@57
    .line 232
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
    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    #@3
    move-result v15

    #@4
    .line 188
    .local v15, "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@7
    move-result v17

    #@8
    .line 189
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
    .line 190
    move-object/from16 v0, p1

    #@12
    move/from16 v1, v16

    #@14
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@17
    move-result v18

    #@18
    .line 191
    .local v18, "pointerId":I
    move-object/from16 v0, p0

    #@1a
    move/from16 v1, v18

    #@1c
    invoke-direct {v0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    #@1f
    move-result v3

    #@20
    .line 192
    .local v3, "i":I
    const/4 v2, -0x1

    #@21
    if-eq v3, v2, :cond_2

    #@23
    .line 193
    const/4 v14, 0x0

    #@24
    .local v14, "h":I
    :goto_1
    if-ge v14, v15, :cond_1

    #@26
    .line 194
    move-object/from16 v0, p1

    #@28
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    #@2b
    move-result-wide v4

    #@2c
    .line 195
    .local v4, "time":J
    move-object/from16 v0, p1

    #@2e
    move/from16 v1, v16

    #@30
    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    #@33
    move-result v6

    #@34
    .line 196
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
    .line 197
    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    #@41
    move-result v19

    #@42
    .line 198
    .local v19, "swipe":I
    if-eqz v19, :cond_0

    #@44
    .line 199
    return v19

    #@45
    .line 193
    :cond_0
    add-int/lit8 v14, v14, 0x1

    #@47
    goto :goto_1

    #@48
    .line 202
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
    .line 203
    .restart local v19    # "swipe":I
    if-eqz v19, :cond_2

    #@65
    .line 204
    return v19

    #@66
    .line 189
    .end local v14    # "h":I
    .end local v19    # "swipe":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    #@68
    goto :goto_0

    #@69
    .line 208
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
    .line 174
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 175
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    #@8
    aget v1, v1, v0

    #@a
    if-ne v1, p1, :cond_0

    #@c
    .line 176
    return v0

    #@d
    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 179
    :cond_1
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    #@12
    const/16 v2, 0x20

    #@14
    if-eq v1, v2, :cond_2

    #@16
    if-ne p1, v3, :cond_3

    #@18
    .line 180
    :cond_2
    return v3

    #@19
    .line 182
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
    .line 183
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    #@25
    add-int/lit8 v1, v1, -0x1

    #@27
    return v1
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 92
    iget-object v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    #@5
    if-eqz v3, :cond_0

    #@7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 93
    iget-object v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    #@f
    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@12
    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@15
    move-result v3

    #@16
    packed-switch v3, :pswitch_data_0

    #@19
    .line 91
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    #@1a
    .line 97
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    #@1c
    .line 98
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    #@1e
    .line 99
    iput v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    #@20
    .line 100
    invoke-direct {p0, p1, v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    #@23
    .line 101
    iget-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 102
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    #@29
    .line 103
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@2b
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    #@2e
    .line 105
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@30
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    #@33
    goto :goto_0

    #@34
    .line 108
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@37
    move-result v3

    #@38
    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    #@3b
    .line 109
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    #@3d
    if-eqz v3, :cond_1

    #@3f
    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@42
    move-result v3

    #@43
    const/4 v4, 0x5

    #@44
    if-ge v3, v4, :cond_3

    #@46
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    #@48
    .line 111
    iget-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    #@4a
    if-nez v1, :cond_1

    #@4c
    .line 113
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@4e
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    #@51
    goto :goto_0

    #@52
    :cond_3
    move v1, v2

    #@53
    .line 110
    goto :goto_1

    #@54
    .line 118
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    #@56
    if-eqz v3, :cond_1

    #@58
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    #@5b
    move-result v0

    #@5c
    .line 120
    .local v0, "swipe":I
    if-nez v0, :cond_4

    #@5e
    move v2, v1

    #@5f
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    #@61
    .line 121
    if-ne v0, v1, :cond_5

    #@63
    .line 123
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@65
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    #@68
    goto :goto_0

    #@69
    .line 124
    :cond_5
    const/4 v1, 0x2

    #@6a
    if-ne v0, v1, :cond_6

    #@6c
    .line 126
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@6e
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    #@71
    goto :goto_0

    #@72
    .line 127
    :cond_6
    const/4 v1, 0x3

    #@73
    if-ne v0, v1, :cond_1

    #@75
    .line 129
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@77
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    #@7a
    goto :goto_0

    #@7b
    .line 134
    .end local v0    # "swipe":I
    :pswitch_4
    const/16 v3, 0x2002

    #@7d
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@80
    move-result v3

    #@81
    if-eqz v3, :cond_1

    #@83
    .line 135
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    #@85
    if-nez v3, :cond_7

    #@87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@8a
    move-result v3

    #@8b
    cmpl-float v3, v3, v5

    #@8d
    if-nez v3, :cond_7

    #@8f
    .line 136
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@91
    invoke-interface {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtTop()V

    #@94
    .line 137
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    #@96
    goto :goto_0

    #@97
    .line 138
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    #@99
    if-nez v3, :cond_8

    #@9b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@9e
    move-result v3

    #@9f
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    #@a1
    add-int/lit8 v4, v4, -0x1

    #@a3
    int-to-float v4, v4

    #@a4
    cmpl-float v3, v3, v4

    #@a6
    if-ltz v3, :cond_8

    #@a8
    .line 139
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@aa
    invoke-interface {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtBottom()V

    #@ad
    .line 140
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    #@af
    goto/16 :goto_0

    #@b1
    .line 141
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    #@b3
    if-eqz v1, :cond_1

    #@b5
    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@b8
    move-result v1

    #@b9
    cmpl-float v1, v1, v5

    #@bb
    if-lez v1, :cond_1

    #@bd
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@c0
    move-result v1

    #@c1
    iget v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    #@c3
    add-int/lit8 v3, v3, -0x1

    #@c5
    int-to-float v3, v3

    #@c6
    cmpg-float v1, v1, v3

    #@c8
    if-gez v1, :cond_1

    #@ca
    .line 143
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@cc
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    #@cf
    .line 144
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    #@d1
    goto/16 :goto_0

    #@d3
    .line 150
    :pswitch_5
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    #@d5
    .line 151
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    #@d7
    .line 152
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@d9
    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    #@dc
    goto/16 :goto_0

    #@de
    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public systemReady()V
    .locals 5

    #@0
    .prologue
    .line 85
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    .line 86
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Landroid/view/GestureDetector;

    #@b
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    #@d
    new-instance v3, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;

    #@f
    const/4 v4, 0x0

    #@10
    invoke-direct {v3, p0, v4}, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;)V

    #@13
    invoke-direct {v1, v2, v3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    #@16
    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    #@18
    .line 87
    new-instance v1, Landroid/widget/OverScroller;

    #@1a
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    #@1c
    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    #@1f
    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;

    #@21
    .line 84
    return-void
.end method
