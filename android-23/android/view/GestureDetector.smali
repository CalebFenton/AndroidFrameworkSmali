.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$OnGestureListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnContextClickListener;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$GestureHandler;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MIN_TIME:I

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreNextUpEvent:Z

.field private mInContextClick:Z

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/view/GestureDetector;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/view/GestureDetector;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/view/GestureDetector;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 225
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@3
    move-result v0

    #@4
    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    #@6
    .line 226
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@9
    move-result v0

    #@a
    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    #@c
    .line 227
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@f
    move-result v0

    #@10
    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    #@12
    .line 228
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    #@15
    move-result v0

    #@16
    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    #@18
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    #@0
    .prologue
    .line 363
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    #@4
    .line 362
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 273
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 274
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    #@10
    .line 272
    :cond_0
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@12
    .line 379
    if-eqz p3, :cond_3

    #@14
    .line 380
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    #@16
    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    #@19
    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@1b
    .line 384
    :goto_0
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@1d
    .line 385
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    #@1f
    if-eqz v0, :cond_1

    #@21
    move-object v0, p2

    #@22
    .line 386
    check-cast v0, Landroid/view/GestureDetector$OnDoubleTapListener;

    #@24
    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    #@27
    .line 388
    :cond_1
    instance-of v0, p2, Landroid/view/GestureDetector$OnContextClickListener;

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 389
    check-cast p2, Landroid/view/GestureDetector$OnContextClickListener;

    #@2d
    .end local p2    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    #@30
    .line 391
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    #@33
    .line 378
    return-void

    #@34
    .line 382
    .restart local p2    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    :cond_3
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    #@36
    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    #@39
    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@3b
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "unused"    # Z

    #@0
    .prologue
    .line 409
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    #@3
    .line 408
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 348
    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    #@4
    .line 347
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 330
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    #@4
    .line 329
    return-void
.end method

.method private cancel()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 722
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 723
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@9
    const/4 v1, 0x2

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@d
    .line 724
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@f
    const/4 v1, 0x3

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@13
    .line 725
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@15
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@18
    .line 726
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    .line 727
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    #@1d
    .line 728
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mStillDown:Z

    #@1f
    .line 729
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    #@21
    .line 730
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    #@23
    .line 731
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    #@25
    .line 732
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    #@27
    .line 733
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    #@29
    .line 734
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    #@2b
    .line 721
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 738
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 739
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@9
    const/4 v1, 0x2

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@d
    .line 740
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@f
    const/4 v1, 0x3

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@13
    .line 741
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    #@15
    .line 742
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    #@17
    .line 743
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    #@19
    .line 744
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    #@1b
    .line 745
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    #@1d
    .line 746
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    #@1f
    .line 747
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    #@21
    .line 737
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    #@0
    .prologue
    .line 767
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 768
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    #@9
    .line 769
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    #@c
    .line 770
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@e
    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@10
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    #@13
    .line 766
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 413
    iget-object v4, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 414
    new-instance v4, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v5, "OnGestureListener must not be null"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 416
    :cond_0
    const/4 v4, 0x1

    #@e
    iput-boolean v4, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    #@10
    .line 420
    if-nez p1, :cond_1

    #@12
    .line 422
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    #@15
    move-result v3

    #@16
    .line 423
    .local v3, "touchSlop":I
    move v2, v3

    #@17
    .line 424
    .local v2, "doubleTapTouchSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    #@1a
    move-result v1

    #@1b
    .line 426
    .local v1, "doubleTapSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    #@1e
    move-result v4

    #@1f
    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    #@21
    .line 427
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    #@24
    move-result v4

    #@25
    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    #@27
    .line 436
    :goto_0
    mul-int v4, v3, v3

    #@29
    iput v4, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    #@2b
    .line 437
    mul-int v4, v2, v2

    #@2d
    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    #@2f
    .line 438
    mul-int v4, v1, v1

    #@31
    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    #@33
    .line 412
    return-void

    #@34
    .line 429
    .end local v1    # "doubleTapSlop":I
    .end local v2    # "doubleTapTouchSlop":I
    .end local v3    # "touchSlop":I
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@37
    move-result-object v0

    #@38
    .line 430
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@3b
    move-result v3

    #@3c
    .line 431
    .restart local v3    # "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    #@3f
    move-result v2

    #@40
    .line 432
    .restart local v2    # "doubleTapTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    #@43
    move-result v1

    #@44
    .line 433
    .restart local v1    # "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@47
    move-result v4

    #@48
    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    #@4a
    .line 434
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@4d
    move-result v4

    #@4e
    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    #@50
    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 752
    iget-boolean v5, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    #@3
    if-nez v5, :cond_0

    #@5
    .line 753
    return v4

    #@6
    .line 756
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    #@9
    move-result-wide v6

    #@a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    #@d
    move-result-wide v8

    #@e
    sub-long v0, v6, v8

    #@10
    .line 757
    .local v0, "deltaTime":J
    sget v5, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    #@12
    int-to-long v6, v5

    #@13
    cmp-long v5, v0, v6

    #@15
    if-gtz v5, :cond_1

    #@17
    sget v5, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    #@19
    int-to-long v6, v5

    #@1a
    cmp-long v5, v0, v6

    #@1c
    if-gez v5, :cond_2

    #@1e
    .line 758
    :cond_1
    return v4

    #@1f
    .line 761
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@22
    move-result v5

    #@23
    float-to-int v5, v5

    #@24
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@27
    move-result v6

    #@28
    float-to-int v6, v6

    #@29
    sub-int v2, v5, v6

    #@2b
    .line 762
    .local v2, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2e
    move-result v5

    #@2f
    float-to-int v5, v5

    #@30
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@33
    move-result v6

    #@34
    float-to-int v6, v6

    #@35
    sub-int v3, v5, v6

    #@37
    .line 763
    .local v3, "deltaY":I
    mul-int v5, v2, v2

    #@39
    mul-int v6, v3, v3

    #@3b
    add-int/2addr v5, v6

    #@3c
    iget v6, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    #@3e
    if-ge v5, v6, :cond_3

    #@40
    const/4 v4, 0x1

    #@41
    :cond_3
    return v4
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 479
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    #@2
    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/16 v5, 0x20

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 691
    iget-object v1, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 692
    iget-object v1, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@b
    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    #@e
    .line 695
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    #@11
    move-result v0

    #@12
    .line 696
    .local v0, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@15
    move-result v1

    #@16
    packed-switch v1, :pswitch_data_0

    #@19
    .line 718
    :cond_1
    :goto_0
    return v2

    #@1a
    .line 698
    :pswitch_0
    iget-object v1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    #@1c
    if-eqz v1, :cond_1

    #@1e
    iget-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    #@20
    if-nez v1, :cond_1

    #@22
    iget-boolean v1, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    #@24
    if-nez v1, :cond_1

    #@26
    .line 699
    if-eq v0, v5, :cond_2

    #@28
    .line 700
    if-ne v0, v4, :cond_1

    #@2a
    .line 701
    :cond_2
    iget-object v1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    #@2c
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 702
    iput-boolean v3, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    #@34
    .line 703
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@36
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@39
    .line 704
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@3b
    const/4 v2, 0x3

    #@3c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@3f
    .line 705
    return v3

    #@40
    .line 711
    :pswitch_1
    iget-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    #@42
    if-eqz v1, :cond_1

    #@44
    if-eq v0, v5, :cond_3

    #@46
    .line 712
    if-ne v0, v4, :cond_1

    #@48
    .line 713
    :cond_3
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    #@4a
    .line 714
    iput-boolean v3, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    #@4c
    goto :goto_0

    #@4d
    .line 696
    nop

    #@4e
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 42
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 491
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@4
    move-object/from16 v36, v0

    #@6
    if-eqz v36, :cond_0

    #@8
    .line 492
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@c
    move-object/from16 v36, v0

    #@e
    const/16 v37, 0x0

    #@10
    move-object/from16 v0, v36

    #@12
    move-object/from16 v1, p1

    #@14
    move/from16 v2, v37

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    #@19
    .line 495
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@1c
    move-result v6

    #@1d
    .line 497
    .local v6, "action":I
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@21
    move-object/from16 v36, v0

    #@23
    if-nez v36, :cond_1

    #@25
    .line 498
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@28
    move-result-object v36

    #@29
    move-object/from16 v0, v36

    #@2b
    move-object/from16 v1, p0

    #@2d
    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2f
    .line 500
    :cond_1
    move-object/from16 v0, p0

    #@31
    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@33
    move-object/from16 v36, v0

    #@35
    move-object/from16 v0, v36

    #@37
    move-object/from16 v1, p1

    #@39
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@3c
    .line 503
    and-int/lit16 v0, v6, 0xff

    #@3e
    move/from16 v36, v0

    #@40
    const/16 v37, 0x6

    #@42
    move/from16 v0, v36

    #@44
    move/from16 v1, v37

    #@46
    if-ne v0, v1, :cond_2

    #@48
    const/16 v22, 0x1

    #@4a
    .line 504
    .local v22, "pointerUp":Z
    :goto_0
    if-eqz v22, :cond_3

    #@4c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@4f
    move-result v25

    #@50
    .line 507
    .local v25, "skipIndex":I
    :goto_1
    const/16 v26, 0x0

    #@52
    .local v26, "sumX":F
    const/16 v27, 0x0

    #@54
    .line 508
    .local v27, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@57
    move-result v7

    #@58
    .line 509
    .local v7, "count":I
    const/16 v18, 0x0

    #@5a
    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    #@5c
    if-ge v0, v7, :cond_5

    #@5e
    .line 510
    move/from16 v0, v25

    #@60
    move/from16 v1, v18

    #@62
    if-ne v0, v1, :cond_4

    #@64
    .line 509
    :goto_3
    add-int/lit8 v18, v18, 0x1

    #@66
    goto :goto_2

    #@67
    .line 503
    .end local v7    # "count":I
    .end local v18    # "i":I
    .end local v22    # "pointerUp":Z
    .end local v25    # "skipIndex":I
    .end local v26    # "sumX":F
    .end local v27    # "sumY":F
    :cond_2
    const/16 v22, 0x0

    #@69
    .restart local v22    # "pointerUp":Z
    goto :goto_0

    #@6a
    .line 504
    :cond_3
    const/16 v25, -0x1

    #@6c
    .restart local v25    # "skipIndex":I
    goto :goto_1

    #@6d
    .line 511
    .restart local v7    # "count":I
    .restart local v18    # "i":I
    .restart local v26    # "sumX":F
    .restart local v27    # "sumY":F
    :cond_4
    move-object/from16 v0, p1

    #@6f
    move/from16 v1, v18

    #@71
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@74
    move-result v36

    #@75
    add-float v26, v26, v36

    #@77
    .line 512
    move-object/from16 v0, p1

    #@79
    move/from16 v1, v18

    #@7b
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@7e
    move-result v36

    #@7f
    add-float v27, v27, v36

    #@81
    goto :goto_3

    #@82
    .line 514
    :cond_5
    if-eqz v22, :cond_8

    #@84
    add-int/lit8 v12, v7, -0x1

    #@86
    .line 515
    .local v12, "div":I
    :goto_4
    int-to-float v0, v12

    #@87
    move/from16 v36, v0

    #@89
    div-float v14, v26, v36

    #@8b
    .line 516
    .local v14, "focusX":F
    int-to-float v0, v12

    #@8c
    move/from16 v36, v0

    #@8e
    div-float v15, v27, v36

    #@90
    .line 518
    .local v15, "focusY":F
    const/16 v17, 0x0

    #@92
    .line 520
    .local v17, "handled":Z
    and-int/lit16 v0, v6, 0xff

    #@94
    move/from16 v36, v0

    #@96
    packed-switch v36, :pswitch_data_0

    #@99
    .line 676
    .end local v17    # "handled":Z
    :cond_6
    :goto_5
    :pswitch_0
    if-nez v17, :cond_7

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@9f
    move-object/from16 v36, v0

    #@a1
    if-eqz v36, :cond_7

    #@a3
    .line 677
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@a7
    move-object/from16 v36, v0

    #@a9
    const/16 v37, 0x0

    #@ab
    move-object/from16 v0, v36

    #@ad
    move-object/from16 v1, p1

    #@af
    move/from16 v2, v37

    #@b1
    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    #@b4
    .line 679
    :cond_7
    return v17

    #@b5
    .line 514
    .end local v12    # "div":I
    .end local v14    # "focusX":F
    .end local v15    # "focusY":F
    :cond_8
    move v12, v7

    #@b6
    .restart local v12    # "div":I
    goto :goto_4

    #@b7
    .line 522
    .restart local v14    # "focusX":F
    .restart local v15    # "focusY":F
    .restart local v17    # "handled":Z
    :pswitch_1
    move-object/from16 v0, p0

    #@b9
    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    #@bb
    move-object/from16 v0, p0

    #@bd
    iput v14, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    #@bf
    .line 523
    move-object/from16 v0, p0

    #@c1
    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    #@c3
    move-object/from16 v0, p0

    #@c5
    iput v15, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    #@c7
    .line 525
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancelTaps()V

    #@ca
    goto :goto_5

    #@cb
    .line 529
    :pswitch_2
    move-object/from16 v0, p0

    #@cd
    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    #@cf
    move-object/from16 v0, p0

    #@d1
    iput v14, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    #@d3
    .line 530
    move-object/from16 v0, p0

    #@d5
    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    #@d7
    move-object/from16 v0, p0

    #@d9
    iput v15, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    #@db
    .line 534
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@df
    move-object/from16 v36, v0

    #@e1
    move-object/from16 v0, p0

    #@e3
    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    #@e5
    move/from16 v37, v0

    #@e7
    move/from16 v0, v37

    #@e9
    int-to-float v0, v0

    #@ea
    move/from16 v37, v0

    #@ec
    const/16 v38, 0x3e8

    #@ee
    move-object/from16 v0, v36

    #@f0
    move/from16 v1, v38

    #@f2
    move/from16 v2, v37

    #@f4
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@f7
    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@fa
    move-result v28

    #@fb
    .line 536
    .local v28, "upIndex":I
    move-object/from16 v0, p1

    #@fd
    move/from16 v1, v28

    #@ff
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@102
    move-result v19

    #@103
    .line 537
    .local v19, "id1":I
    move-object/from16 v0, p0

    #@105
    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@107
    move-object/from16 v36, v0

    #@109
    move-object/from16 v0, v36

    #@10b
    move/from16 v1, v19

    #@10d
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@110
    move-result v33

    #@111
    .line 538
    .local v33, "x1":F
    move-object/from16 v0, p0

    #@113
    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@115
    move-object/from16 v36, v0

    #@117
    move-object/from16 v0, v36

    #@119
    move/from16 v1, v19

    #@11b
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@11e
    move-result v35

    #@11f
    .line 539
    .local v35, "y1":F
    const/16 v18, 0x0

    #@121
    :goto_6
    move/from16 v0, v18

    #@123
    if-ge v0, v7, :cond_6

    #@125
    .line 540
    move/from16 v0, v18

    #@127
    move/from16 v1, v28

    #@129
    if-ne v0, v1, :cond_a

    #@12b
    .line 539
    :cond_9
    add-int/lit8 v18, v18, 0x1

    #@12d
    goto :goto_6

    #@12e
    .line 542
    :cond_a
    move-object/from16 v0, p1

    #@130
    move/from16 v1, v18

    #@132
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@135
    move-result v20

    #@136
    .line 543
    .local v20, "id2":I
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@13a
    move-object/from16 v36, v0

    #@13c
    move-object/from16 v0, v36

    #@13e
    move/from16 v1, v20

    #@140
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@143
    move-result v36

    #@144
    mul-float v32, v33, v36

    #@146
    .line 544
    .local v32, "x":F
    move-object/from16 v0, p0

    #@148
    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@14a
    move-object/from16 v36, v0

    #@14c
    move-object/from16 v0, v36

    #@14e
    move/from16 v1, v20

    #@150
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@153
    move-result v36

    #@154
    mul-float v34, v35, v36

    #@156
    .line 546
    .local v34, "y":F
    add-float v13, v32, v34

    #@158
    .line 547
    .local v13, "dot":F
    const/16 v36, 0x0

    #@15a
    cmpg-float v36, v13, v36

    #@15c
    if-gez v36, :cond_9

    #@15e
    .line 548
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@162
    move-object/from16 v36, v0

    #@164
    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->clear()V

    #@167
    goto/16 :goto_5

    #@169
    .line 555
    .end local v13    # "dot":F
    .end local v19    # "id1":I
    .end local v20    # "id2":I
    .end local v28    # "upIndex":I
    .end local v32    # "x":F
    .end local v33    # "x1":F
    .end local v34    # "y":F
    .end local v35    # "y1":F
    :pswitch_3
    move-object/from16 v0, p0

    #@16b
    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@16d
    move-object/from16 v36, v0

    #@16f
    if-eqz v36, :cond_c

    #@171
    .line 556
    move-object/from16 v0, p0

    #@173
    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@175
    move-object/from16 v36, v0

    #@177
    const/16 v37, 0x3

    #@179
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->hasMessages(I)Z

    #@17c
    move-result v16

    #@17d
    .line 557
    .local v16, "hadTapMessage":Z
    if-eqz v16, :cond_b

    #@17f
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@183
    move-object/from16 v36, v0

    #@185
    const/16 v37, 0x3

    #@187
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@18a
    .line 558
    :cond_b
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@18e
    move-object/from16 v36, v0

    #@190
    if-eqz v36, :cond_f

    #@192
    move-object/from16 v0, p0

    #@194
    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@196
    move-object/from16 v36, v0

    #@198
    if-eqz v36, :cond_f

    #@19a
    if-eqz v16, :cond_f

    #@19c
    .line 559
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@1a0
    move-object/from16 v36, v0

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@1a6
    move-object/from16 v37, v0

    #@1a8
    move-object/from16 v0, p0

    #@1aa
    move-object/from16 v1, v36

    #@1ac
    move-object/from16 v2, v37

    #@1ae
    move-object/from16 v3, p1

    #@1b0
    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    #@1b3
    move-result v36

    #@1b4
    .line 558
    if-eqz v36, :cond_f

    #@1b6
    .line 561
    const/16 v36, 0x1

    #@1b8
    move/from16 v0, v36

    #@1ba
    move-object/from16 v1, p0

    #@1bc
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    #@1be
    .line 563
    move-object/from16 v0, p0

    #@1c0
    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@1c2
    move-object/from16 v36, v0

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@1c8
    move-object/from16 v37, v0

    #@1ca
    invoke-interface/range {v36 .. v37}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    #@1cd
    move-result v17

    #@1ce
    .line 565
    .local v17, "handled":Z
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@1d2
    move-object/from16 v36, v0

    #@1d4
    move-object/from16 v0, v36

    #@1d6
    move-object/from16 v1, p1

    #@1d8
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    #@1db
    move-result v36

    #@1dc
    or-int v17, v17, v36

    #@1de
    .line 572
    .end local v16    # "hadTapMessage":Z
    .end local v17    # "handled":Z
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    #@1e0
    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    iput v14, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    #@1e6
    .line 573
    move-object/from16 v0, p0

    #@1e8
    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    iput v15, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    #@1ee
    .line 574
    move-object/from16 v0, p0

    #@1f0
    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@1f2
    move-object/from16 v36, v0

    #@1f4
    if-eqz v36, :cond_d

    #@1f6
    .line 575
    move-object/from16 v0, p0

    #@1f8
    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@1fa
    move-object/from16 v36, v0

    #@1fc
    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    #@1ff
    .line 577
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@202
    move-result-object v36

    #@203
    move-object/from16 v0, v36

    #@205
    move-object/from16 v1, p0

    #@207
    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@209
    .line 578
    const/16 v36, 0x1

    #@20b
    move/from16 v0, v36

    #@20d
    move-object/from16 v1, p0

    #@20f
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    #@211
    .line 579
    const/16 v36, 0x1

    #@213
    move/from16 v0, v36

    #@215
    move-object/from16 v1, p0

    #@217
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    #@219
    .line 580
    const/16 v36, 0x1

    #@21b
    move/from16 v0, v36

    #@21d
    move-object/from16 v1, p0

    #@21f
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    #@221
    .line 581
    const/16 v36, 0x0

    #@223
    move/from16 v0, v36

    #@225
    move-object/from16 v1, p0

    #@227
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    #@229
    .line 582
    const/16 v36, 0x0

    #@22b
    move/from16 v0, v36

    #@22d
    move-object/from16 v1, p0

    #@22f
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    #@231
    .line 584
    move-object/from16 v0, p0

    #@233
    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    #@235
    move/from16 v36, v0

    #@237
    if-eqz v36, :cond_e

    #@239
    .line 585
    move-object/from16 v0, p0

    #@23b
    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@23d
    move-object/from16 v36, v0

    #@23f
    const/16 v37, 0x2

    #@241
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@244
    .line 586
    move-object/from16 v0, p0

    #@246
    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@248
    move-object/from16 v36, v0

    #@24a
    move-object/from16 v0, p0

    #@24c
    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@24e
    move-object/from16 v37, v0

    #@250
    invoke-virtual/range {v37 .. v37}, Landroid/view/MotionEvent;->getDownTime()J

    #@253
    move-result-wide v38

    #@254
    .line 587
    sget v37, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    #@256
    move/from16 v0, v37

    #@258
    int-to-long v0, v0

    #@259
    move-wide/from16 v40, v0

    #@25b
    .line 586
    add-long v38, v38, v40

    #@25d
    .line 587
    sget v37, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    #@25f
    move/from16 v0, v37

    #@261
    int-to-long v0, v0

    #@262
    move-wide/from16 v40, v0

    #@264
    .line 586
    add-long v38, v38, v40

    #@266
    const/16 v37, 0x2

    #@268
    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    #@26b
    .line 589
    :cond_e
    move-object/from16 v0, p0

    #@26d
    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@26f
    move-object/from16 v36, v0

    #@271
    move-object/from16 v0, p0

    #@273
    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@275
    move-object/from16 v37, v0

    #@277
    invoke-virtual/range {v37 .. v37}, Landroid/view/MotionEvent;->getDownTime()J

    #@27a
    move-result-wide v38

    #@27b
    sget v37, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    #@27d
    move/from16 v0, v37

    #@27f
    int-to-long v0, v0

    #@280
    move-wide/from16 v40, v0

    #@282
    add-long v38, v38, v40

    #@284
    const/16 v37, 0x1

    #@286
    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    #@289
    .line 590
    move-object/from16 v0, p0

    #@28b
    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@28d
    move-object/from16 v36, v0

    #@28f
    move-object/from16 v0, v36

    #@291
    move-object/from16 v1, p1

    #@293
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    #@296
    move-result v36

    #@297
    or-int v17, v17, v36

    #@299
    .line 591
    .restart local v17    # "handled":Z
    goto/16 :goto_5

    #@29b
    .line 568
    .restart local v16    # "hadTapMessage":Z
    .local v17, "handled":Z
    :cond_f
    move-object/from16 v0, p0

    #@29d
    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@29f
    move-object/from16 v36, v0

    #@2a1
    sget v37, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    #@2a3
    move/from16 v0, v37

    #@2a5
    int-to-long v0, v0

    #@2a6
    move-wide/from16 v38, v0

    #@2a8
    const/16 v37, 0x3

    #@2aa
    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@2ad
    goto/16 :goto_7

    #@2af
    .line 594
    .end local v16    # "hadTapMessage":Z
    :pswitch_4
    move-object/from16 v0, p0

    #@2b1
    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    #@2b3
    move/from16 v36, v0

    #@2b5
    if-nez v36, :cond_6

    #@2b7
    move-object/from16 v0, p0

    #@2b9
    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInContextClick:Z

    #@2bb
    move/from16 v36, v0

    #@2bd
    if-nez v36, :cond_6

    #@2bf
    .line 597
    move-object/from16 v0, p0

    #@2c1
    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    #@2c3
    move/from16 v36, v0

    #@2c5
    sub-float v23, v36, v14

    #@2c7
    .line 598
    .local v23, "scrollX":F
    move-object/from16 v0, p0

    #@2c9
    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    #@2cb
    move/from16 v36, v0

    #@2cd
    sub-float v24, v36, v15

    #@2cf
    .line 599
    .local v24, "scrollY":F
    move-object/from16 v0, p0

    #@2d1
    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    #@2d3
    move/from16 v36, v0

    #@2d5
    if-eqz v36, :cond_10

    #@2d7
    .line 601
    move-object/from16 v0, p0

    #@2d9
    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@2db
    move-object/from16 v36, v0

    #@2dd
    move-object/from16 v0, v36

    #@2df
    move-object/from16 v1, p1

    #@2e1
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    #@2e4
    move-result v17

    #@2e5
    .local v17, "handled":Z
    goto/16 :goto_5

    #@2e7
    .line 602
    .local v17, "handled":Z
    :cond_10
    move-object/from16 v0, p0

    #@2e9
    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    #@2eb
    move/from16 v36, v0

    #@2ed
    if-eqz v36, :cond_12

    #@2ef
    .line 603
    move-object/from16 v0, p0

    #@2f1
    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    #@2f3
    move/from16 v36, v0

    #@2f5
    sub-float v36, v14, v36

    #@2f7
    move/from16 v0, v36

    #@2f9
    float-to-int v9, v0

    #@2fa
    .line 604
    .local v9, "deltaX":I
    move-object/from16 v0, p0

    #@2fc
    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    #@2fe
    move/from16 v36, v0

    #@300
    sub-float v36, v15, v36

    #@302
    move/from16 v0, v36

    #@304
    float-to-int v10, v0

    #@305
    .line 605
    .local v10, "deltaY":I
    mul-int v36, v9, v9

    #@307
    mul-int v37, v10, v10

    #@309
    add-int v11, v36, v37

    #@30b
    .line 606
    .local v11, "distance":I
    move-object/from16 v0, p0

    #@30d
    iget v0, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    #@30f
    move/from16 v36, v0

    #@311
    move/from16 v0, v36

    #@313
    if-le v11, v0, :cond_11

    #@315
    .line 607
    move-object/from16 v0, p0

    #@317
    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@319
    move-object/from16 v36, v0

    #@31b
    move-object/from16 v0, p0

    #@31d
    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@31f
    move-object/from16 v37, v0

    #@321
    move-object/from16 v0, v36

    #@323
    move-object/from16 v1, v37

    #@325
    move-object/from16 v2, p1

    #@327
    move/from16 v3, v23

    #@329
    move/from16 v4, v24

    #@32b
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    #@32e
    move-result v17

    #@32f
    .line 608
    .local v17, "handled":Z
    move-object/from16 v0, p0

    #@331
    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    #@333
    .line 609
    move-object/from16 v0, p0

    #@335
    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    #@337
    .line 610
    const/16 v36, 0x0

    #@339
    move/from16 v0, v36

    #@33b
    move-object/from16 v1, p0

    #@33d
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    #@33f
    .line 611
    move-object/from16 v0, p0

    #@341
    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@343
    move-object/from16 v36, v0

    #@345
    const/16 v37, 0x3

    #@347
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@34a
    .line 612
    move-object/from16 v0, p0

    #@34c
    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@34e
    move-object/from16 v36, v0

    #@350
    const/16 v37, 0x1

    #@352
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@355
    .line 613
    move-object/from16 v0, p0

    #@357
    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@359
    move-object/from16 v36, v0

    #@35b
    const/16 v37, 0x2

    #@35d
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@360
    .line 615
    .end local v17    # "handled":Z
    :cond_11
    move-object/from16 v0, p0

    #@362
    iget v0, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    #@364
    move/from16 v36, v0

    #@366
    move/from16 v0, v36

    #@368
    if-le v11, v0, :cond_6

    #@36a
    .line 616
    const/16 v36, 0x0

    #@36c
    move/from16 v0, v36

    #@36e
    move-object/from16 v1, p0

    #@370
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    #@372
    goto/16 :goto_5

    #@374
    .line 618
    .end local v9    # "deltaX":I
    .end local v10    # "deltaY":I
    .end local v11    # "distance":I
    .local v17, "handled":Z
    :cond_12
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    #@377
    move-result v36

    #@378
    const/high16 v37, 0x3f800000    # 1.0f

    #@37a
    cmpl-float v36, v36, v37

    #@37c
    if-gez v36, :cond_13

    #@37e
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    #@381
    move-result v36

    #@382
    const/high16 v37, 0x3f800000    # 1.0f

    #@384
    cmpl-float v36, v36, v37

    #@386
    if-ltz v36, :cond_6

    #@388
    .line 619
    :cond_13
    move-object/from16 v0, p0

    #@38a
    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@38c
    move-object/from16 v36, v0

    #@38e
    move-object/from16 v0, p0

    #@390
    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@392
    move-object/from16 v37, v0

    #@394
    move-object/from16 v0, v36

    #@396
    move-object/from16 v1, v37

    #@398
    move-object/from16 v2, p1

    #@39a
    move/from16 v3, v23

    #@39c
    move/from16 v4, v24

    #@39e
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    #@3a1
    move-result v17

    #@3a2
    .line 620
    .local v17, "handled":Z
    move-object/from16 v0, p0

    #@3a4
    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    #@3a6
    .line 621
    move-object/from16 v0, p0

    #@3a8
    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    #@3aa
    goto/16 :goto_5

    #@3ac
    .line 626
    .end local v23    # "scrollX":F
    .end local v24    # "scrollY":F
    .local v17, "handled":Z
    :pswitch_5
    const/16 v36, 0x0

    #@3ae
    move/from16 v0, v36

    #@3b0
    move-object/from16 v1, p0

    #@3b2
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    #@3b4
    .line 627
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@3b7
    move-result-object v8

    #@3b8
    .line 628
    .local v8, "currentUpEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    #@3ba
    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    #@3bc
    move/from16 v36, v0

    #@3be
    if-eqz v36, :cond_17

    #@3c0
    .line 630
    move-object/from16 v0, p0

    #@3c2
    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@3c4
    move-object/from16 v36, v0

    #@3c6
    move-object/from16 v0, v36

    #@3c8
    move-object/from16 v1, p1

    #@3ca
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    #@3cd
    move-result v17

    #@3ce
    .line 653
    .end local v17    # "handled":Z
    :cond_14
    :goto_8
    move-object/from16 v0, p0

    #@3d0
    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@3d2
    move-object/from16 v36, v0

    #@3d4
    if-eqz v36, :cond_15

    #@3d6
    .line 654
    move-object/from16 v0, p0

    #@3d8
    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@3da
    move-object/from16 v36, v0

    #@3dc
    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    #@3df
    .line 657
    :cond_15
    move-object/from16 v0, p0

    #@3e1
    iput-object v8, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@3e3
    .line 658
    move-object/from16 v0, p0

    #@3e5
    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3e7
    move-object/from16 v36, v0

    #@3e9
    if-eqz v36, :cond_16

    #@3eb
    .line 661
    move-object/from16 v0, p0

    #@3ed
    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3ef
    move-object/from16 v36, v0

    #@3f1
    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->recycle()V

    #@3f4
    .line 662
    const/16 v36, 0x0

    #@3f6
    move-object/from16 v0, v36

    #@3f8
    move-object/from16 v1, p0

    #@3fa
    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3fc
    .line 664
    :cond_16
    const/16 v36, 0x0

    #@3fe
    move/from16 v0, v36

    #@400
    move-object/from16 v1, p0

    #@402
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    #@404
    .line 665
    const/16 v36, 0x0

    #@406
    move/from16 v0, v36

    #@408
    move-object/from16 v1, p0

    #@40a
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    #@40c
    .line 666
    const/16 v36, 0x0

    #@40e
    move/from16 v0, v36

    #@410
    move-object/from16 v1, p0

    #@412
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    #@414
    .line 667
    move-object/from16 v0, p0

    #@416
    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@418
    move-object/from16 v36, v0

    #@41a
    const/16 v37, 0x1

    #@41c
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@41f
    .line 668
    move-object/from16 v0, p0

    #@421
    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@423
    move-object/from16 v36, v0

    #@425
    const/16 v37, 0x2

    #@427
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@42a
    goto/16 :goto_5

    #@42c
    .line 631
    .restart local v17    # "handled":Z
    :cond_17
    move-object/from16 v0, p0

    #@42e
    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    #@430
    move/from16 v36, v0

    #@432
    if-eqz v36, :cond_18

    #@434
    .line 632
    move-object/from16 v0, p0

    #@436
    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    #@438
    move-object/from16 v36, v0

    #@43a
    const/16 v37, 0x3

    #@43c
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@43f
    .line 633
    const/16 v36, 0x0

    #@441
    move/from16 v0, v36

    #@443
    move-object/from16 v1, p0

    #@445
    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    #@447
    goto :goto_8

    #@448
    .line 634
    :cond_18
    move-object/from16 v0, p0

    #@44a
    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    #@44c
    move/from16 v36, v0

    #@44e
    if-eqz v36, :cond_19

    #@450
    move-object/from16 v0, p0

    #@452
    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    #@454
    move/from16 v36, v0

    #@456
    if-eqz v36, :cond_1b

    #@458
    .line 639
    :cond_19
    move-object/from16 v0, p0

    #@45a
    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    #@45c
    move/from16 v36, v0

    #@45e
    if-nez v36, :cond_14

    #@460
    .line 642
    move-object/from16 v0, p0

    #@462
    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@464
    move-object/from16 v29, v0

    #@466
    .line 643
    .local v29, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v36, 0x0

    #@468
    move-object/from16 v0, p1

    #@46a
    move/from16 v1, v36

    #@46c
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@46f
    move-result v21

    #@470
    .line 644
    .local v21, "pointerId":I
    move-object/from16 v0, p0

    #@472
    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    #@474
    move/from16 v36, v0

    #@476
    move/from16 v0, v36

    #@478
    int-to-float v0, v0

    #@479
    move/from16 v36, v0

    #@47b
    const/16 v37, 0x3e8

    #@47d
    move-object/from16 v0, v29

    #@47f
    move/from16 v1, v37

    #@481
    move/from16 v2, v36

    #@483
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@486
    .line 645
    move-object/from16 v0, v29

    #@488
    move/from16 v1, v21

    #@48a
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@48d
    move-result v31

    #@48e
    .line 646
    .local v31, "velocityY":F
    move-object/from16 v0, v29

    #@490
    move/from16 v1, v21

    #@492
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@495
    move-result v30

    #@496
    .line 648
    .local v30, "velocityX":F
    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    #@499
    move-result v36

    #@49a
    move-object/from16 v0, p0

    #@49c
    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    #@49e
    move/from16 v37, v0

    #@4a0
    move/from16 v0, v37

    #@4a2
    int-to-float v0, v0

    #@4a3
    move/from16 v37, v0

    #@4a5
    cmpl-float v36, v36, v37

    #@4a7
    if-gtz v36, :cond_1a

    #@4a9
    .line 649
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    #@4ac
    move-result v36

    #@4ad
    move-object/from16 v0, p0

    #@4af
    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    #@4b1
    move/from16 v37, v0

    #@4b3
    move/from16 v0, v37

    #@4b5
    int-to-float v0, v0

    #@4b6
    move/from16 v37, v0

    #@4b8
    cmpl-float v36, v36, v37

    #@4ba
    if-lez v36, :cond_14

    #@4bc
    .line 650
    :cond_1a
    move-object/from16 v0, p0

    #@4be
    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@4c0
    move-object/from16 v36, v0

    #@4c2
    move-object/from16 v0, p0

    #@4c4
    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@4c6
    move-object/from16 v37, v0

    #@4c8
    move-object/from16 v0, v36

    #@4ca
    move-object/from16 v1, v37

    #@4cc
    move-object/from16 v2, p1

    #@4ce
    move/from16 v3, v30

    #@4d0
    move/from16 v4, v31

    #@4d2
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    #@4d5
    move-result v17

    #@4d6
    .local v17, "handled":Z
    goto/16 :goto_8

    #@4d8
    .line 635
    .end local v21    # "pointerId":I
    .end local v29    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v30    # "velocityX":F
    .end local v31    # "velocityY":F
    .local v17, "handled":Z
    :cond_1b
    move-object/from16 v0, p0

    #@4da
    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@4dc
    move-object/from16 v36, v0

    #@4de
    move-object/from16 v0, v36

    #@4e0
    move-object/from16 v1, p1

    #@4e2
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    #@4e5
    move-result v17

    #@4e6
    .line 636
    .local v17, "handled":Z
    move-object/from16 v0, p0

    #@4e8
    iget-boolean v0, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    #@4ea
    move/from16 v36, v0

    #@4ec
    if-eqz v36, :cond_14

    #@4ee
    move-object/from16 v0, p0

    #@4f0
    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@4f2
    move-object/from16 v36, v0

    #@4f4
    if-eqz v36, :cond_14

    #@4f6
    .line 637
    move-object/from16 v0, p0

    #@4f8
    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@4fa
    move-object/from16 v36, v0

    #@4fc
    move-object/from16 v0, v36

    #@4fe
    move-object/from16 v1, p1

    #@500
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    #@503
    goto/16 :goto_8

    #@505
    .line 672
    .end local v8    # "currentUpEvent":Landroid/view/MotionEvent;
    .local v17, "handled":Z
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    #@508
    goto/16 :goto_5

    #@50a
    .line 520
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

.method public setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V
    .locals 0
    .param p1, "onContextClickListener"    # Landroid/view/GestureDetector$OnContextClickListener;

    #@0
    .prologue
    .line 459
    iput-object p1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    #@2
    .line 458
    return-void
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .param p1, "isLongpressEnabled"    # Z

    #@0
    .prologue
    .line 472
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    #@2
    .line 471
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    #@0
    .prologue
    .line 449
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@2
    .line 448
    return-void
.end method
