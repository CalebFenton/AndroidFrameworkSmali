.class Lcom/google/android/maps/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/GestureDetector$OnGestureListener;,
        Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;,
        Lcom/google/android/maps/GestureDetector$SimpleOnGestureListener;,
        Lcom/google/android/maps/GestureDetector$GestureHandler;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/google/android/maps/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/google/android/maps/GestureDetector;)Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/google/android/maps/GestureDetector;)Lcom/google/android/maps/GestureDetector$OnGestureListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/google/android/maps/GestureDetector;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/google/android/maps/GestureDetector;->mStillDown:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/google/android/maps/GestureDetector;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/google/android/maps/GestureDetector;->dispatchLongPress()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 207
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@3
    move-result v0

    #@4
    sput v0, Lcom/google/android/maps/GestureDetector;->LONGPRESS_TIMEOUT:I

    #@6
    .line 208
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@9
    move-result v0

    #@a
    sput v0, Lcom/google/android/maps/GestureDetector;->TAP_TIMEOUT:I

    #@c
    .line 209
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@f
    move-result v0

    #@10
    sput v0, Lcom/google/android/maps/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    #@12
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/maps/GestureDetector$OnGestureListener;

    #@0
    .prologue
    .line 329
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/GestureDetector;-><init>(Landroid/content/Context;Lcom/google/android/maps/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    #@4
    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/maps/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 345
    if-eqz p3, :cond_1

    #@5
    .line 346
    new-instance v0, Lcom/google/android/maps/GestureDetector$GestureHandler;

    #@7
    invoke-direct {v0, p0, p3}, Lcom/google/android/maps/GestureDetector$GestureHandler;-><init>(Lcom/google/android/maps/GestureDetector;Landroid/os/Handler;)V

    #@a
    iput-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@c
    .line 350
    :goto_0
    iput-object p2, p0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    #@e
    .line 351
    instance-of v0, p2, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 352
    check-cast p2, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    #@14
    .end local p2    # "listener":Lcom/google/android/maps/GestureDetector$OnGestureListener;
    invoke-virtual {p0, p2}, Lcom/google/android/maps/GestureDetector;->setOnDoubleTapListener(Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;)V

    #@17
    .line 354
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/GestureDetector;->init(Landroid/content/Context;)V

    #@1a
    .line 344
    return-void

    #@1b
    .line 348
    .restart local p2    # "listener":Lcom/google/android/maps/GestureDetector$OnGestureListener;
    :cond_1
    new-instance v0, Lcom/google/android/maps/GestureDetector$GestureHandler;

    #@1d
    invoke-direct {v0, p0}, Lcom/google/android/maps/GestureDetector$GestureHandler;-><init>(Lcom/google/android/maps/GestureDetector;)V

    #@20
    iput-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@22
    goto :goto_0
.end method

.method private cancel()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 600
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 601
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@9
    const/4 v1, 0x2

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@d
    .line 602
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@f
    const/4 v1, 0x3

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@13
    .line 603
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@15
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@18
    .line 604
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    .line 605
    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    #@1d
    .line 606
    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mStillDown:Z

    #@1f
    .line 607
    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    #@21
    .line 608
    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    #@23
    .line 609
    iget-boolean v0, p0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 610
    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    #@29
    .line 599
    :cond_0
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 615
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 616
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@9
    const/4 v1, 0x2

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@d
    .line 617
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@f
    const/4 v1, 0x3

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@13
    .line 618
    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    #@15
    .line 619
    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    #@17
    .line 620
    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    #@19
    .line 621
    iget-boolean v0, p0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 622
    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    #@1f
    .line 614
    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    #@0
    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 643
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    #@9
    .line 644
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    #@b
    iget-object v1, p0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@d
    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    #@10
    .line 641
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 375
    iget-object v4, p0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 376
    new-instance v4, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v5, "OnGestureListener must not be null"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 378
    :cond_0
    const/4 v4, 0x1

    #@e
    iput-boolean v4, p0, Lcom/google/android/maps/GestureDetector;->mIsLongpressEnabled:Z

    #@10
    .line 382
    if-nez p1, :cond_1

    #@12
    .line 384
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    #@15
    move-result v3

    #@16
    .line 385
    .local v3, "touchSlop":I
    move v2, v3

    #@17
    .line 386
    .local v2, "doubleTapTouchSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    #@1a
    move-result v1

    #@1b
    .line 388
    .local v1, "doubleTapSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    #@1e
    move-result v4

    #@1f
    iput v4, p0, Lcom/google/android/maps/GestureDetector;->mMinimumFlingVelocity:I

    #@21
    .line 389
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    #@24
    move-result v4

    #@25
    iput v4, p0, Lcom/google/android/maps/GestureDetector;->mMaximumFlingVelocity:I

    #@27
    .line 398
    :goto_0
    mul-int v4, v3, v3

    #@29
    iput v4, p0, Lcom/google/android/maps/GestureDetector;->mTouchSlopSquare:I

    #@2b
    .line 399
    mul-int v4, v2, v2

    #@2d
    iput v4, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapTouchSlopSquare:I

    #@2f
    .line 400
    mul-int v4, v1, v1

    #@31
    iput v4, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapSlopSquare:I

    #@33
    .line 374
    return-void

    #@34
    .line 391
    .end local v1    # "doubleTapSlop":I
    .end local v2    # "doubleTapTouchSlop":I
    .end local v3    # "touchSlop":I
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@37
    move-result-object v0

    #@38
    .line 392
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@3b
    move-result v3

    #@3c
    .line 393
    .restart local v3    # "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    #@3f
    move-result v2

    #@40
    .line 394
    .restart local v2    # "doubleTapTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    #@43
    move-result v1

    #@44
    .line 395
    .restart local v1    # "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@47
    move-result v4

    #@48
    iput v4, p0, Lcom/google/android/maps/GestureDetector;->mMinimumFlingVelocity:I

    #@4a
    .line 396
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@4d
    move-result v4

    #@4e
    iput v4, p0, Lcom/google/android/maps/GestureDetector;->mMaximumFlingVelocity:I

    #@50
    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 628
    iget-boolean v3, p0, Lcom/google/android/maps/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 629
    return v2

    #@6
    .line 632
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    #@9
    move-result-wide v4

    #@a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    #@d
    move-result-wide v6

    #@e
    sub-long/2addr v4, v6

    #@f
    sget v3, Lcom/google/android/maps/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    #@11
    int-to-long v6, v3

    #@12
    cmp-long v3, v4, v6

    #@14
    if-lez v3, :cond_1

    #@16
    .line 633
    return v2

    #@17
    .line 636
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1a
    move-result v3

    #@1b
    float-to-int v3, v3

    #@1c
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@1f
    move-result v4

    #@20
    float-to-int v4, v4

    #@21
    sub-int v0, v3, v4

    #@23
    .line 637
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@26
    move-result v3

    #@27
    float-to-int v3, v3

    #@28
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@2b
    move-result v4

    #@2c
    float-to-int v4, v4

    #@2d
    sub-int v1, v3, v4

    #@2f
    .line 638
    .local v1, "deltaY":I
    mul-int v3, v0, v0

    #@31
    mul-int v4, v1, v1

    #@33
    add-int/2addr v3, v4

    #@34
    iget v4, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapSlopSquare:I

    #@36
    if-ge v3, v4, :cond_2

    #@38
    const/4 v2, 0x1

    #@39
    :cond_2
    return v2
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 443
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v6

    #@4
    .line 445
    .local v6, "action":I
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@8
    move-object/from16 v27, v0

    #@a
    if-nez v27, :cond_0

    #@c
    .line 446
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@f
    move-result-object v27

    #@10
    move-object/from16 v0, v27

    #@12
    move-object/from16 v1, p0

    #@14
    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@16
    .line 448
    :cond_0
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1a
    move-object/from16 v27, v0

    #@1c
    move-object/from16 v0, v27

    #@1e
    move-object/from16 v1, p1

    #@20
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@23
    .line 451
    and-int/lit16 v0, v6, 0xff

    #@25
    move/from16 v27, v0

    #@27
    const/16 v28, 0x6

    #@29
    move/from16 v0, v27

    #@2b
    move/from16 v1, v28

    #@2d
    if-ne v0, v1, :cond_1

    #@2f
    const/16 v18, 0x1

    #@31
    .line 452
    .local v18, "pointerUp":Z
    :goto_0
    if-eqz v18, :cond_2

    #@33
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@36
    move-result v21

    #@37
    .line 455
    .local v21, "skipIndex":I
    :goto_1
    const/16 v22, 0x0

    #@39
    .local v22, "sumX":F
    const/16 v23, 0x0

    #@3b
    .line 456
    .local v23, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3e
    move-result v7

    #@3f
    .line 457
    .local v7, "count":I
    const/16 v17, 0x0

    #@41
    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    #@43
    if-ge v0, v7, :cond_4

    #@45
    .line 458
    move/from16 v0, v21

    #@47
    move/from16 v1, v17

    #@49
    if-ne v0, v1, :cond_3

    #@4b
    .line 457
    :goto_3
    add-int/lit8 v17, v17, 0x1

    #@4d
    goto :goto_2

    #@4e
    .line 451
    .end local v7    # "count":I
    .end local v17    # "i":I
    .end local v18    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .end local v22    # "sumX":F
    .end local v23    # "sumY":F
    :cond_1
    const/16 v18, 0x0

    #@50
    .restart local v18    # "pointerUp":Z
    goto :goto_0

    #@51
    .line 452
    :cond_2
    const/16 v21, -0x1

    #@53
    .restart local v21    # "skipIndex":I
    goto :goto_1

    #@54
    .line 459
    .restart local v7    # "count":I
    .restart local v17    # "i":I
    .restart local v22    # "sumX":F
    .restart local v23    # "sumY":F
    :cond_3
    move-object/from16 v0, p1

    #@56
    move/from16 v1, v17

    #@58
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@5b
    move-result v27

    #@5c
    add-float v22, v22, v27

    #@5e
    .line 460
    move-object/from16 v0, p1

    #@60
    move/from16 v1, v17

    #@62
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@65
    move-result v27

    #@66
    add-float v23, v23, v27

    #@68
    goto :goto_3

    #@69
    .line 462
    :cond_4
    if-eqz v18, :cond_6

    #@6b
    add-int/lit8 v12, v7, -0x1

    #@6d
    .line 463
    .local v12, "div":I
    :goto_4
    int-to-float v0, v12

    #@6e
    move/from16 v27, v0

    #@70
    div-float v13, v22, v27

    #@72
    .line 464
    .local v13, "focusX":F
    int-to-float v0, v12

    #@73
    move/from16 v27, v0

    #@75
    div-float v14, v23, v27

    #@77
    .line 466
    .local v14, "focusY":F
    const/16 v16, 0x0

    #@79
    .line 468
    .local v16, "handled":Z
    and-int/lit16 v0, v6, 0xff

    #@7b
    move/from16 v27, v0

    #@7d
    packed-switch v27, :pswitch_data_0

    #@80
    .line 596
    .end local v16    # "handled":Z
    :cond_5
    :goto_5
    :pswitch_0
    return v16

    #@81
    .line 462
    .end local v12    # "div":I
    .end local v13    # "focusX":F
    .end local v14    # "focusY":F
    :cond_6
    move v12, v7

    #@82
    .restart local v12    # "div":I
    goto :goto_4

    #@83
    .line 470
    .restart local v13    # "focusX":F
    .restart local v14    # "focusY":F
    .restart local v16    # "handled":Z
    :pswitch_1
    move-object/from16 v0, p0

    #@85
    iput v13, v0, Lcom/google/android/maps/GestureDetector;->mLastFocusX:F

    #@87
    move-object/from16 v0, p0

    #@89
    iput v13, v0, Lcom/google/android/maps/GestureDetector;->mDownFocusX:F

    #@8b
    .line 471
    move-object/from16 v0, p0

    #@8d
    iput v14, v0, Lcom/google/android/maps/GestureDetector;->mLastFocusY:F

    #@8f
    move-object/from16 v0, p0

    #@91
    iput v14, v0, Lcom/google/android/maps/GestureDetector;->mDownFocusY:F

    #@93
    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/GestureDetector;->cancelTaps()V

    #@96
    goto :goto_5

    #@97
    .line 477
    :pswitch_2
    move-object/from16 v0, p0

    #@99
    iput v13, v0, Lcom/google/android/maps/GestureDetector;->mLastFocusX:F

    #@9b
    move-object/from16 v0, p0

    #@9d
    iput v13, v0, Lcom/google/android/maps/GestureDetector;->mDownFocusX:F

    #@9f
    .line 478
    move-object/from16 v0, p0

    #@a1
    iput v14, v0, Lcom/google/android/maps/GestureDetector;->mLastFocusY:F

    #@a3
    move-object/from16 v0, p0

    #@a5
    iput v14, v0, Lcom/google/android/maps/GestureDetector;->mDownFocusY:F

    #@a7
    .line 479
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@ab
    move-object/from16 v27, v0

    #@ad
    invoke-virtual/range {v27 .. v27}, Landroid/view/VelocityTracker;->clear()V

    #@b0
    goto :goto_5

    #@b1
    .line 483
    :pswitch_3
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    #@b5
    move-object/from16 v27, v0

    #@b7
    if-eqz v27, :cond_8

    #@b9
    .line 484
    move-object/from16 v0, p0

    #@bb
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@bd
    move-object/from16 v27, v0

    #@bf
    const/16 v28, 0x3

    #@c1
    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    #@c4
    move-result v15

    #@c5
    .line 485
    .local v15, "hadTapMessage":Z
    if-eqz v15, :cond_7

    #@c7
    move-object/from16 v0, p0

    #@c9
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@cb
    move-object/from16 v27, v0

    #@cd
    const/16 v28, 0x3

    #@cf
    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    #@d2
    .line 486
    :cond_7
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@d6
    move-object/from16 v27, v0

    #@d8
    if-eqz v27, :cond_b

    #@da
    move-object/from16 v0, p0

    #@dc
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@de
    move-object/from16 v27, v0

    #@e0
    if-eqz v27, :cond_b

    #@e2
    if-eqz v15, :cond_b

    #@e4
    .line 487
    move-object/from16 v0, p0

    #@e6
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@e8
    move-object/from16 v27, v0

    #@ea
    move-object/from16 v0, p0

    #@ec
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@ee
    move-object/from16 v28, v0

    #@f0
    move-object/from16 v0, p0

    #@f2
    move-object/from16 v1, v27

    #@f4
    move-object/from16 v2, v28

    #@f6
    move-object/from16 v3, p1

    #@f8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    #@fb
    move-result v27

    #@fc
    .line 486
    if-eqz v27, :cond_b

    #@fe
    .line 489
    const/16 v27, 0x1

    #@100
    move/from16 v0, v27

    #@102
    move-object/from16 v1, p0

    #@104
    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    #@106
    .line 491
    move-object/from16 v0, p0

    #@108
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    #@10a
    move-object/from16 v27, v0

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@110
    move-object/from16 v28, v0

    #@112
    invoke-interface/range {v27 .. v28}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    #@115
    move-result v16

    #@116
    .line 493
    .local v16, "handled":Z
    move-object/from16 v0, p0

    #@118
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    #@11a
    move-object/from16 v27, v0

    #@11c
    move-object/from16 v0, v27

    #@11e
    move-object/from16 v1, p1

    #@120
    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    #@123
    move-result v27

    #@124
    or-int v16, v16, v27

    #@126
    .line 500
    .end local v15    # "hadTapMessage":Z
    .end local v16    # "handled":Z
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    #@128
    iput v13, v0, Lcom/google/android/maps/GestureDetector;->mLastFocusX:F

    #@12a
    move-object/from16 v0, p0

    #@12c
    iput v13, v0, Lcom/google/android/maps/GestureDetector;->mDownFocusX:F

    #@12e
    .line 501
    move-object/from16 v0, p0

    #@130
    iput v14, v0, Lcom/google/android/maps/GestureDetector;->mLastFocusY:F

    #@132
    move-object/from16 v0, p0

    #@134
    iput v14, v0, Lcom/google/android/maps/GestureDetector;->mDownFocusY:F

    #@136
    .line 502
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@13a
    move-object/from16 v27, v0

    #@13c
    if-eqz v27, :cond_9

    #@13e
    .line 503
    move-object/from16 v0, p0

    #@140
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@142
    move-object/from16 v27, v0

    #@144
    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    #@147
    .line 505
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@14a
    move-result-object v27

    #@14b
    move-object/from16 v0, v27

    #@14d
    move-object/from16 v1, p0

    #@14f
    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@151
    .line 506
    const/16 v27, 0x1

    #@153
    move/from16 v0, v27

    #@155
    move-object/from16 v1, p0

    #@157
    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    #@159
    .line 507
    const/16 v27, 0x1

    #@15b
    move/from16 v0, v27

    #@15d
    move-object/from16 v1, p0

    #@15f
    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    #@161
    .line 508
    const/16 v27, 0x1

    #@163
    move/from16 v0, v27

    #@165
    move-object/from16 v1, p0

    #@167
    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mStillDown:Z

    #@169
    .line 509
    const/16 v27, 0x0

    #@16b
    move/from16 v0, v27

    #@16d
    move-object/from16 v1, p0

    #@16f
    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    #@171
    .line 511
    move-object/from16 v0, p0

    #@173
    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mIsLongpressEnabled:Z

    #@175
    move/from16 v27, v0

    #@177
    if-eqz v27, :cond_a

    #@179
    .line 512
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@17d
    move-object/from16 v27, v0

    #@17f
    const/16 v28, 0x2

    #@181
    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    #@184
    .line 513
    move-object/from16 v0, p0

    #@186
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@188
    move-object/from16 v27, v0

    #@18a
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@18e
    move-object/from16 v28, v0

    #@190
    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->getDownTime()J

    #@193
    move-result-wide v28

    #@194
    .line 514
    sget v30, Lcom/google/android/maps/GestureDetector;->TAP_TIMEOUT:I

    #@196
    move/from16 v0, v30

    #@198
    int-to-long v0, v0

    #@199
    move-wide/from16 v30, v0

    #@19b
    .line 513
    add-long v28, v28, v30

    #@19d
    .line 514
    sget v30, Lcom/google/android/maps/GestureDetector;->LONGPRESS_TIMEOUT:I

    #@19f
    move/from16 v0, v30

    #@1a1
    int-to-long v0, v0

    #@1a2
    move-wide/from16 v30, v0

    #@1a4
    .line 513
    add-long v28, v28, v30

    #@1a6
    const/16 v30, 0x2

    #@1a8
    move-object/from16 v0, v27

    #@1aa
    move/from16 v1, v30

    #@1ac
    move-wide/from16 v2, v28

    #@1ae
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    #@1b1
    .line 516
    :cond_a
    move-object/from16 v0, p0

    #@1b3
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@1b5
    move-object/from16 v27, v0

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@1bb
    move-object/from16 v28, v0

    #@1bd
    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->getDownTime()J

    #@1c0
    move-result-wide v28

    #@1c1
    sget v30, Lcom/google/android/maps/GestureDetector;->TAP_TIMEOUT:I

    #@1c3
    move/from16 v0, v30

    #@1c5
    int-to-long v0, v0

    #@1c6
    move-wide/from16 v30, v0

    #@1c8
    add-long v28, v28, v30

    #@1ca
    const/16 v30, 0x1

    #@1cc
    move-object/from16 v0, v27

    #@1ce
    move/from16 v1, v30

    #@1d0
    move-wide/from16 v2, v28

    #@1d2
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    #@1d5
    .line 517
    move-object/from16 v0, p0

    #@1d7
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    #@1d9
    move-object/from16 v27, v0

    #@1db
    move-object/from16 v0, v27

    #@1dd
    move-object/from16 v1, p1

    #@1df
    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    #@1e2
    move-result v27

    #@1e3
    or-int v16, v16, v27

    #@1e5
    .line 518
    .restart local v16    # "handled":Z
    goto/16 :goto_5

    #@1e7
    .line 496
    .restart local v15    # "hadTapMessage":Z
    .local v16, "handled":Z
    :cond_b
    move-object/from16 v0, p0

    #@1e9
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@1eb
    move-object/from16 v27, v0

    #@1ed
    sget v28, Lcom/google/android/maps/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    #@1ef
    move/from16 v0, v28

    #@1f1
    int-to-long v0, v0

    #@1f2
    move-wide/from16 v28, v0

    #@1f4
    const/16 v30, 0x3

    #@1f6
    move-object/from16 v0, v27

    #@1f8
    move/from16 v1, v30

    #@1fa
    move-wide/from16 v2, v28

    #@1fc
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@1ff
    goto/16 :goto_6

    #@201
    .line 521
    .end local v15    # "hadTapMessage":Z
    :pswitch_4
    move-object/from16 v0, p0

    #@203
    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    #@205
    move/from16 v27, v0

    #@207
    if-nez v27, :cond_5

    #@209
    .line 524
    move-object/from16 v0, p0

    #@20b
    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mLastFocusX:F

    #@20d
    move/from16 v27, v0

    #@20f
    sub-float v19, v27, v13

    #@211
    .line 525
    .local v19, "scrollX":F
    move-object/from16 v0, p0

    #@213
    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mLastFocusY:F

    #@215
    move/from16 v27, v0

    #@217
    sub-float v20, v27, v14

    #@219
    .line 526
    .local v20, "scrollY":F
    move-object/from16 v0, p0

    #@21b
    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    #@21d
    move/from16 v27, v0

    #@21f
    if-eqz v27, :cond_c

    #@221
    .line 528
    move-object/from16 v0, p0

    #@223
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    #@225
    move-object/from16 v27, v0

    #@227
    move-object/from16 v0, v27

    #@229
    move-object/from16 v1, p1

    #@22b
    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    #@22e
    move-result v16

    #@22f
    .local v16, "handled":Z
    goto/16 :goto_5

    #@231
    .line 529
    .local v16, "handled":Z
    :cond_c
    move-object/from16 v0, p0

    #@233
    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    #@235
    move/from16 v27, v0

    #@237
    if-eqz v27, :cond_e

    #@239
    .line 530
    move-object/from16 v0, p0

    #@23b
    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mDownFocusX:F

    #@23d
    move/from16 v27, v0

    #@23f
    sub-float v27, v13, v27

    #@241
    move/from16 v0, v27

    #@243
    float-to-int v9, v0

    #@244
    .line 531
    .local v9, "deltaX":I
    move-object/from16 v0, p0

    #@246
    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mDownFocusY:F

    #@248
    move/from16 v27, v0

    #@24a
    sub-float v27, v14, v27

    #@24c
    move/from16 v0, v27

    #@24e
    float-to-int v10, v0

    #@24f
    .line 532
    .local v10, "deltaY":I
    mul-int v27, v9, v9

    #@251
    mul-int v28, v10, v10

    #@253
    add-int v11, v27, v28

    #@255
    .line 533
    .local v11, "distance":I
    move-object/from16 v0, p0

    #@257
    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mTouchSlopSquare:I

    #@259
    move/from16 v27, v0

    #@25b
    move/from16 v0, v27

    #@25d
    if-le v11, v0, :cond_d

    #@25f
    .line 534
    move-object/from16 v0, p0

    #@261
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    #@263
    move-object/from16 v27, v0

    #@265
    move-object/from16 v0, p0

    #@267
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@269
    move-object/from16 v28, v0

    #@26b
    move-object/from16 v0, v27

    #@26d
    move-object/from16 v1, v28

    #@26f
    move-object/from16 v2, p1

    #@271
    move/from16 v3, v19

    #@273
    move/from16 v4, v20

    #@275
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    #@278
    move-result v16

    #@279
    .line 535
    .local v16, "handled":Z
    move-object/from16 v0, p0

    #@27b
    iput v13, v0, Lcom/google/android/maps/GestureDetector;->mLastFocusX:F

    #@27d
    .line 536
    move-object/from16 v0, p0

    #@27f
    iput v14, v0, Lcom/google/android/maps/GestureDetector;->mLastFocusY:F

    #@281
    .line 537
    const/16 v27, 0x0

    #@283
    move/from16 v0, v27

    #@285
    move-object/from16 v1, p0

    #@287
    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    #@289
    .line 538
    move-object/from16 v0, p0

    #@28b
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@28d
    move-object/from16 v27, v0

    #@28f
    const/16 v28, 0x3

    #@291
    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    #@294
    .line 539
    move-object/from16 v0, p0

    #@296
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@298
    move-object/from16 v27, v0

    #@29a
    const/16 v28, 0x1

    #@29c
    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    #@29f
    .line 540
    move-object/from16 v0, p0

    #@2a1
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@2a3
    move-object/from16 v27, v0

    #@2a5
    const/16 v28, 0x2

    #@2a7
    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    #@2aa
    .line 542
    .end local v16    # "handled":Z
    :cond_d
    move-object/from16 v0, p0

    #@2ac
    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapTouchSlopSquare:I

    #@2ae
    move/from16 v27, v0

    #@2b0
    move/from16 v0, v27

    #@2b2
    if-le v11, v0, :cond_5

    #@2b4
    .line 543
    const/16 v27, 0x0

    #@2b6
    move/from16 v0, v27

    #@2b8
    move-object/from16 v1, p0

    #@2ba
    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    #@2bc
    goto/16 :goto_5

    #@2be
    .line 545
    .end local v9    # "deltaX":I
    .end local v10    # "deltaY":I
    .end local v11    # "distance":I
    .local v16, "handled":Z
    :cond_e
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    #@2c1
    move-result v27

    #@2c2
    const/high16 v28, 0x3f800000    # 1.0f

    #@2c4
    cmpl-float v27, v27, v28

    #@2c6
    if-gez v27, :cond_f

    #@2c8
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    #@2cb
    move-result v27

    #@2cc
    const/high16 v28, 0x3f800000    # 1.0f

    #@2ce
    cmpl-float v27, v27, v28

    #@2d0
    if-ltz v27, :cond_5

    #@2d2
    .line 546
    :cond_f
    move-object/from16 v0, p0

    #@2d4
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    #@2d6
    move-object/from16 v27, v0

    #@2d8
    move-object/from16 v0, p0

    #@2da
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@2dc
    move-object/from16 v28, v0

    #@2de
    move-object/from16 v0, v27

    #@2e0
    move-object/from16 v1, v28

    #@2e2
    move-object/from16 v2, p1

    #@2e4
    move/from16 v3, v19

    #@2e6
    move/from16 v4, v20

    #@2e8
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    #@2eb
    move-result v16

    #@2ec
    .line 547
    .local v16, "handled":Z
    move-object/from16 v0, p0

    #@2ee
    iput v13, v0, Lcom/google/android/maps/GestureDetector;->mLastFocusX:F

    #@2f0
    .line 548
    move-object/from16 v0, p0

    #@2f2
    iput v14, v0, Lcom/google/android/maps/GestureDetector;->mLastFocusY:F

    #@2f4
    goto/16 :goto_5

    #@2f6
    .line 553
    .end local v19    # "scrollX":F
    .end local v20    # "scrollY":F
    .local v16, "handled":Z
    :pswitch_5
    const/16 v27, 0x0

    #@2f8
    move/from16 v0, v27

    #@2fa
    move-object/from16 v1, p0

    #@2fc
    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mStillDown:Z

    #@2fe
    .line 554
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@301
    move-result-object v8

    #@302
    .line 555
    .local v8, "currentUpEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    #@304
    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    #@306
    move/from16 v27, v0

    #@308
    if-eqz v27, :cond_13

    #@30a
    .line 557
    move-object/from16 v0, p0

    #@30c
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    #@30e
    move-object/from16 v27, v0

    #@310
    move-object/from16 v0, v27

    #@312
    move-object/from16 v1, p1

    #@314
    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    #@317
    move-result v16

    #@318
    .line 575
    .end local v16    # "handled":Z
    :cond_10
    :goto_7
    move-object/from16 v0, p0

    #@31a
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@31c
    move-object/from16 v27, v0

    #@31e
    if-eqz v27, :cond_11

    #@320
    .line 576
    move-object/from16 v0, p0

    #@322
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@324
    move-object/from16 v27, v0

    #@326
    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    #@329
    .line 579
    :cond_11
    move-object/from16 v0, p0

    #@32b
    iput-object v8, v0, Lcom/google/android/maps/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@32d
    .line 580
    move-object/from16 v0, p0

    #@32f
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@331
    move-object/from16 v27, v0

    #@333
    if-eqz v27, :cond_12

    #@335
    .line 583
    move-object/from16 v0, p0

    #@337
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@339
    move-object/from16 v27, v0

    #@33b
    invoke-virtual/range {v27 .. v27}, Landroid/view/VelocityTracker;->recycle()V

    #@33e
    .line 584
    const/16 v27, 0x0

    #@340
    move-object/from16 v0, v27

    #@342
    move-object/from16 v1, p0

    #@344
    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@346
    .line 586
    :cond_12
    const/16 v27, 0x0

    #@348
    move/from16 v0, v27

    #@34a
    move-object/from16 v1, p0

    #@34c
    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    #@34e
    .line 587
    move-object/from16 v0, p0

    #@350
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@352
    move-object/from16 v27, v0

    #@354
    const/16 v28, 0x1

    #@356
    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    #@359
    .line 588
    move-object/from16 v0, p0

    #@35b
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@35d
    move-object/from16 v27, v0

    #@35f
    const/16 v28, 0x2

    #@361
    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    #@364
    goto/16 :goto_5

    #@366
    .line 558
    .restart local v16    # "handled":Z
    :cond_13
    move-object/from16 v0, p0

    #@368
    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    #@36a
    move/from16 v27, v0

    #@36c
    if-eqz v27, :cond_14

    #@36e
    .line 559
    move-object/from16 v0, p0

    #@370
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    #@372
    move-object/from16 v27, v0

    #@374
    const/16 v28, 0x3

    #@376
    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    #@379
    .line 560
    const/16 v27, 0x0

    #@37b
    move/from16 v0, v27

    #@37d
    move-object/from16 v1, p0

    #@37f
    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    #@381
    goto :goto_7

    #@382
    .line 561
    :cond_14
    move-object/from16 v0, p0

    #@384
    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    #@386
    move/from16 v27, v0

    #@388
    if-eqz v27, :cond_15

    #@38a
    .line 562
    move-object/from16 v0, p0

    #@38c
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    #@38e
    move-object/from16 v27, v0

    #@390
    move-object/from16 v0, v27

    #@392
    move-object/from16 v1, p1

    #@394
    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    #@397
    move-result v16

    #@398
    .local v16, "handled":Z
    goto :goto_7

    #@399
    .line 565
    .local v16, "handled":Z
    :cond_15
    move-object/from16 v0, p0

    #@39b
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@39d
    move-object/from16 v24, v0

    #@39f
    .line 566
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    #@3a1
    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mMaximumFlingVelocity:I

    #@3a3
    move/from16 v27, v0

    #@3a5
    move/from16 v0, v27

    #@3a7
    int-to-float v0, v0

    #@3a8
    move/from16 v27, v0

    #@3aa
    const/16 v28, 0x3e8

    #@3ac
    move-object/from16 v0, v24

    #@3ae
    move/from16 v1, v28

    #@3b0
    move/from16 v2, v27

    #@3b2
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@3b5
    .line 567
    invoke-virtual/range {v24 .. v24}, Landroid/view/VelocityTracker;->getYVelocity()F

    #@3b8
    move-result v26

    #@3b9
    .line 568
    .local v26, "velocityY":F
    invoke-virtual/range {v24 .. v24}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@3bc
    move-result v25

    #@3bd
    .line 570
    .local v25, "velocityX":F
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    #@3c0
    move-result v27

    #@3c1
    move-object/from16 v0, p0

    #@3c3
    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mMinimumFlingVelocity:I

    #@3c5
    move/from16 v28, v0

    #@3c7
    move/from16 v0, v28

    #@3c9
    int-to-float v0, v0

    #@3ca
    move/from16 v28, v0

    #@3cc
    cmpl-float v27, v27, v28

    #@3ce
    if-gtz v27, :cond_16

    #@3d0
    .line 571
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    #@3d3
    move-result v27

    #@3d4
    move-object/from16 v0, p0

    #@3d6
    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mMinimumFlingVelocity:I

    #@3d8
    move/from16 v28, v0

    #@3da
    move/from16 v0, v28

    #@3dc
    int-to-float v0, v0

    #@3dd
    move/from16 v28, v0

    #@3df
    cmpl-float v27, v27, v28

    #@3e1
    if-lez v27, :cond_10

    #@3e3
    .line 572
    :cond_16
    move-object/from16 v0, p0

    #@3e5
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    #@3e7
    move-object/from16 v27, v0

    #@3e9
    move-object/from16 v0, p0

    #@3eb
    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@3ed
    move-object/from16 v28, v0

    #@3ef
    move-object/from16 v0, v27

    #@3f1
    move-object/from16 v1, v28

    #@3f3
    move-object/from16 v2, p1

    #@3f5
    move/from16 v3, v25

    #@3f7
    move/from16 v4, v26

    #@3f9
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    #@3fc
    move-result v16

    #@3fd
    .local v16, "handled":Z
    goto/16 :goto_7

    #@3ff
    .line 592
    .end local v8    # "currentUpEvent":Landroid/view/MotionEvent;
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v25    # "velocityX":F
    .end local v26    # "velocityY":F
    .local v16, "handled":Z
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/GestureDetector;->cancel()V

    #@402
    goto/16 :goto_5

    #@404
    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .param p1, "isLongpressEnabled"    # Z

    #@0
    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/google/android/maps/GestureDetector;->mIsLongpressEnabled:Z

    #@2
    .line 423
    return-void
.end method

.method public setOnDoubleTapListener(Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    #@0
    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    #@2
    .line 410
    return-void
.end method
