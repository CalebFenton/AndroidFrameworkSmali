.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$OnGestureListener;,
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnContextClickListener;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DOUBLE_TAP_MIN_TIME:I

.field private static final greylist-max-o DOUBLE_TAP_TIMEOUT:I

.field private static final greylist-max-p LONGPRESS_TIMEOUT:I

.field private static final greylist-max-o LONG_PRESS:I = 0x2

.field private static final greylist-max-o SHOW_PRESS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final greylist-max-o TAP:I = 0x3

.field private static final greylist-max-o TAP_TIMEOUT:I


# instance fields
.field private greylist-max-o mAlwaysInBiggerTapRegion:Z

.field private greylist mAlwaysInTapRegion:Z

.field private blacklist mAmbiguousGestureMultiplier:F

.field private greylist-max-o mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

.field private greylist-max-o mCurrentDownEvent:Landroid/view/MotionEvent;

.field private blacklist mCurrentMotionEvent:Landroid/view/MotionEvent;

.field private greylist-max-o mDeferConfirmSingleTap:Z

.field private greylist-max-o mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private greylist-max-o mDoubleTapSlopSquare:I

.field private greylist-max-o mDoubleTapTouchSlopSquare:I

.field private greylist-max-o mDownFocusX:F

.field private greylist-max-o mDownFocusY:F

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mHasRecordedClassification:Z

.field private greylist-max-o mIgnoreNextUpEvent:Z

.field private greylist-max-o mInContextClick:Z

.field private greylist-max-o mInLongPress:Z

.field private final greylist-max-o mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private greylist-max-o mIsDoubleTapping:Z

.field private greylist-max-o mIsLongpressEnabled:Z

.field private greylist-max-o mLastFocusX:F

.field private greylist-max-o mLastFocusY:F

.field private final greylist mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private greylist-max-o mMaximumFlingVelocity:I

.field private greylist mMinimumFlingVelocity:I

.field private greylist-max-o mPreviousUpEvent:Landroid/view/MotionEvent;

.field private greylist-max-o mStillDown:Z

.field private greylist mTouchSlopSquare:I

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;

.field private blacklist mVelocityTrackerStrategy:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentDownEvent(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .registers 1

    iget-object p0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDoubleTapListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .registers 1

    iget-object p0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .registers 1

    iget-object p0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStillDown(Landroid/view/GestureDetector;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeferConfirmSingleTap(Landroid/view/GestureDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchLongPress(Landroid/view/GestureDetector;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrecordGestureClassification(Landroid/view/GestureDetector;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 242
    const-class v0, Landroid/view/GestureDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    .line 253
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 254
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 255
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 256
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 409
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 428
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;I)V

    .line 429
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "velocityTrackerStrategy"    # I

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    nop

    .line 312
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 313
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 453
    if-eqz p3, :cond_1e

    .line 454
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_25

    .line 456
    :cond_1e
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 458
    :goto_25
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 459
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_31

    .line 460
    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 462
    :cond_31
    instance-of v0, p2, Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v0, :cond_3b

    .line 463
    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnContextClickListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    .line 465
    :cond_3b
    iput p4, p0, Landroid/view/GestureDetector;->mVelocityTrackerStrategy:I

    .line 466
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    .line 467
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "unused"    # Z

    .line 485
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 486
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 389
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 372
    return-void
.end method

.method private greylist-max-o cancel()V
    .registers 3

    .line 873
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 874
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 875
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 876
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1e

    .line 877
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 878
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 880
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 881
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 882
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 883
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 884
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 885
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 886
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 887
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 888
    return-void
.end method

.method private greylist-max-o cancelTaps()V
    .registers 3

    .line 891
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 892
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 893
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 895
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 896
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 897
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 898
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 899
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 900
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 901
    return-void
.end method

.method private greylist-max-o dispatchLongPress()V
    .registers 3

    .line 923
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 924
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 925
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 926
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 927
    return-void
.end method

.method private greylist-max-o init(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 489
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_5c

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 496
    if-nez p1, :cond_25

    .line 498
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    .line 499
    .local v0, "touchSlop":I
    move v1, v0

    .line 500
    .local v1, "doubleTapTouchSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v2

    .line 502
    .local v2, "doubleTapSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 503
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 504
    invoke-static {}, Landroid/view/ViewConfiguration;->getAmbiguousGestureMultiplier()F

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    goto :goto_4f

    .line 506
    .end local v0    # "touchSlop":I
    .end local v1    # "doubleTapTouchSlop":I
    .end local v2    # "doubleTapSlop":I
    :cond_25
    const-string v0, "GestureDetector#init"

    invoke-static {p1, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 508
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 509
    .local v1, "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    .line 510
    .local v2, "doubleTapTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 511
    .local v3, "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 512
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 513
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    move v0, v1

    move v1, v2

    move v2, v3

    .line 515
    .end local v3    # "doubleTapSlop":I
    .local v0, "touchSlop":I
    .local v1, "doubleTapTouchSlop":I
    .local v2, "doubleTapSlop":I
    :goto_4f
    mul-int v3, v0, v0

    iput v3, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 516
    mul-int v3, v1, v1

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 517
    mul-int v3, v2, v2

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 518
    return-void

    .line 490
    .end local v0    # "touchSlop":I
    .end local v1    # "doubleTapTouchSlop":I
    .end local v2    # "doubleTapSlop":I
    :cond_5c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .line 905
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 906
    return v1

    .line 909
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 910
    .local v2, "deltaTime":J
    sget v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_50

    sget v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1e

    goto :goto_50

    .line 914
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v0, v4

    .line 915
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    .line 916
    .local v4, "deltaY":I
    nop

    .line 917
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-eqz v5, :cond_40

    move v5, v6

    goto :goto_41

    :cond_40
    move v5, v1

    .line 918
    .local v5, "isGeneratedGesture":Z
    :goto_41
    if-eqz v5, :cond_45

    move v7, v1

    goto :goto_47

    :cond_45
    iget v7, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 919
    .local v7, "slopSquare":I
    :goto_47
    mul-int v8, v0, v0

    mul-int v9, v4, v4

    add-int/2addr v8, v9

    if-ge v8, v7, :cond_4f

    move v1, v6

    :cond_4f
    return v1

    .line 911
    .end local v0    # "deltaX":I
    .end local v4    # "deltaY":I
    .end local v5    # "isGeneratedGesture":Z
    .end local v7    # "slopSquare":I
    :cond_50
    :goto_50
    return v1
.end method

.method private blacklist recordGestureClassification(I)V
    .registers 9
    .param p1, "classification"    # I

    .line 930
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    if-nez v0, :cond_52

    if-nez p1, :cond_7

    goto :goto_52

    .line 936
    :cond_7
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_11

    goto :goto_4f

    .line 941
    :cond_11
    nop

    .line 943
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 946
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v4, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    iget-object v5, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 947
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 946
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 941
    const/16 v4, 0xb1

    invoke-static {v4, v0, p1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIF)V

    .line 948
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 949
    return-void

    .line 938
    :cond_4f
    :goto_4f
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 939
    return-void

    .line 934
    :cond_52
    :goto_52
    return-void
.end method


# virtual methods
.method public whitelist isLongpressEnabled()Z
    .registers 2

    .line 558
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 842
    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 843
    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 846
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 847
    .local v0, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_4e

    goto :goto_4d

    .line 862
    :pswitch_1a
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_4d

    if-eq v0, v3, :cond_22

    if-ne v0, v4, :cond_4d

    .line 864
    :cond_22
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 865
    iput-boolean v5, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    goto :goto_4d

    .line 849
    :pswitch_27
    iget-object v2, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v2, :cond_4d

    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-nez v2, :cond_4d

    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v2, :cond_4d

    if-eq v0, v3, :cond_37

    if-ne v0, v4, :cond_4d

    .line 852
    :cond_37
    iget-object v2, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 853
    iput-boolean v5, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 854
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 856
    return v5

    .line 869
    :cond_4d
    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0xb
        :pswitch_27
        :pswitch_1a
    .end packed-switch
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 38
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    .line 571
    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 574
    :cond_e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 576
    .local v2, "action":I
    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_1b

    .line 577
    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 579
    :cond_1b
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 581
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2d

    .line 582
    iget v4, v0, Landroid/view/GestureDetector;->mVelocityTrackerStrategy:I

    invoke-static {v4}, Landroid/view/VelocityTracker;->obtain(I)Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 584
    :cond_2d
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 586
    and-int/lit16 v4, v2, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_39

    const/4 v4, 0x1

    goto :goto_3a

    :cond_39
    move v4, v3

    .line 588
    .local v4, "pointerUp":Z
    :goto_3a
    if-eqz v4, :cond_41

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_42

    :cond_41
    const/4 v5, -0x1

    .line 589
    .local v5, "skipIndex":I
    :goto_42
    nop

    .line 590
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_4d

    const/4 v7, 0x1

    goto :goto_4e

    :cond_4d
    move v7, v3

    .line 593
    .local v7, "isGeneratedGesture":Z
    :goto_4e
    const/4 v8, 0x0

    .local v8, "sumX":F
    const/4 v9, 0x0

    .line 594
    .local v9, "sumY":F
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 595
    .local v10, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_55
    if-ge v11, v10, :cond_67

    .line 596
    if-ne v5, v11, :cond_5a

    goto :goto_64

    .line 597
    :cond_5a
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v8, v12

    .line 598
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v9, v12

    .line 595
    :goto_64
    add-int/lit8 v11, v11, 0x1

    goto :goto_55

    .line 600
    .end local v11    # "i":I
    :cond_67
    if-eqz v4, :cond_6c

    add-int/lit8 v11, v10, -0x1

    goto :goto_6d

    :cond_6c
    move v11, v10

    .line 601
    .local v11, "div":I
    :goto_6d
    int-to-float v12, v11

    div-float v12, v8, v12

    .line 602
    .local v12, "focusX":F
    int-to-float v13, v11

    div-float v13, v9, v13

    .line 604
    .local v13, "focusY":F
    const/4 v14, 0x0

    .line 606
    .local v14, "handled":Z
    and-int/lit16 v15, v2, 0xff

    const/16 v3, 0x3e8

    const/4 v6, 0x2

    packed-switch v15, :pswitch_data_448

    :pswitch_7c
    move/from16 v18, v2

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v14

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v7    # "isGeneratedGesture":Z
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .local v18, "action":I
    .local v23, "pointerUp":Z
    .local v24, "skipIndex":I
    .local v28, "isGeneratedGesture":Z
    .local v29, "sumX":F
    .local v30, "sumY":F
    .local v31, "count":I
    .local v32, "div":I
    .local v33, "handled":Z
    goto/16 :goto_439

    .line 615
    .end local v18    # "action":I
    .end local v23    # "pointerUp":Z
    .end local v24    # "skipIndex":I
    .end local v28    # "isGeneratedGesture":Z
    .end local v29    # "sumX":F
    .end local v30    # "sumY":F
    .end local v31    # "count":I
    .end local v32    # "div":I
    .end local v33    # "handled":Z
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    .restart local v7    # "isGeneratedGesture":Z
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    :pswitch_90
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 616
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 620
    iget-object v6, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v15, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v15, v15

    invoke-virtual {v6, v3, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 621
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 622
    .local v3, "upIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 623
    .local v6, "id1":I
    iget-object v15, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v15

    .line 624
    .local v15, "x1":F
    move/from16 v18, v2

    .end local v2    # "action":I
    .restart local v18    # "action":I
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    .line 625
    .local v2, "y1":F
    const/16 v16, 0x0

    move/from16 v17, v2

    move/from16 v2, v16

    .local v2, "i":I
    .local v17, "y1":F
    :goto_bc
    if-ge v2, v10, :cond_f5

    .line 626
    if-ne v2, v3, :cond_c5

    move/from16 v19, v2

    move/from16 v16, v3

    goto :goto_f0

    .line 628
    :cond_c5
    move/from16 v16, v3

    .end local v3    # "upIndex":I
    .local v16, "upIndex":I
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 629
    .local v3, "id2":I
    move/from16 v19, v2

    .end local v2    # "i":I
    .local v19, "i":I
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    mul-float/2addr v2, v15

    .line 630
    .local v2, "x":F
    move/from16 v20, v2

    .end local v2    # "x":F
    .local v20, "x":F
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    mul-float v2, v2, v17

    .line 632
    .local v2, "y":F
    add-float v21, v20, v2

    .line 633
    .local v21, "dot":F
    const/16 v22, 0x0

    cmpg-float v22, v21, v22

    if-gez v22, :cond_ee

    .line 634
    move/from16 v22, v2

    .end local v2    # "y":F
    .local v22, "y":F
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 635
    goto :goto_f9

    .line 633
    .end local v22    # "y":F
    .restart local v2    # "y":F
    :cond_ee
    move/from16 v22, v2

    .line 625
    .end local v2    # "y":F
    .end local v3    # "id2":I
    .end local v20    # "x":F
    .end local v21    # "dot":F
    :goto_f0
    add-int/lit8 v2, v19, 0x1

    move/from16 v3, v16

    .end local v19    # "i":I
    .local v2, "i":I
    goto :goto_bc

    .end local v16    # "upIndex":I
    .local v3, "upIndex":I
    :cond_f5
    move/from16 v19, v2

    move/from16 v16, v3

    .line 638
    .end local v2    # "i":I
    .end local v3    # "upIndex":I
    .restart local v16    # "upIndex":I
    :goto_f9
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v14

    goto/16 :goto_439

    .line 608
    .end local v6    # "id1":I
    .end local v15    # "x1":F
    .end local v16    # "upIndex":I
    .end local v17    # "y1":F
    .end local v18    # "action":I
    .local v2, "action":I
    :pswitch_10b
    move/from16 v18, v2

    .end local v2    # "action":I
    .restart local v18    # "action":I
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 609
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 611
    invoke-direct {v0}, Landroid/view/GestureDetector;->cancelTaps()V

    .line 612
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v14

    goto/16 :goto_439

    .line 823
    .end local v18    # "action":I
    .restart local v2    # "action":I
    :pswitch_12a
    move/from16 v18, v2

    .end local v2    # "action":I
    .restart local v18    # "action":I
    invoke-direct {v0}, Landroid/view/GestureDetector;->cancel()V

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v14

    goto/16 :goto_439

    .line 690
    .end local v18    # "action":I
    .restart local v2    # "action":I
    :pswitch_141
    move/from16 v18, v2

    .end local v2    # "action":I
    .restart local v18    # "action":I
    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v2, :cond_2ad

    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_15d

    .line 691
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v14

    goto/16 :goto_439

    .line 694
    :cond_15d
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v2

    .line 695
    .local v2, "motionClassification":I
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    .line 697
    .local v3, "hasPendingLongPress":Z
    iget v15, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    sub-float/2addr v15, v12

    .line 698
    .local v15, "scrollX":F
    iget v6, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    sub-float/2addr v6, v13

    .line 699
    .local v6, "scrollY":F
    move/from16 v20, v3

    .end local v3    # "hasPendingLongPress":Z
    .local v20, "hasPendingLongPress":Z
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v3, :cond_18f

    .line 701
    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 703
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v3, v14

    move v14, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    .end local v14    # "handled":Z
    .local v3, "handled":Z
    goto/16 :goto_28c

    .line 704
    .end local v3    # "handled":Z
    .restart local v14    # "handled":Z
    :cond_18f
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v21, v3

    if-eqz v21, :cond_255

    .line 705
    iget v3, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    sub-float v3, v12, v3

    float-to-int v3, v3

    .line 706
    .local v3, "deltaX":I
    move/from16 v22, v3

    .end local v3    # "deltaX":I
    .local v22, "deltaX":I
    iget v3, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    sub-float v3, v13, v3

    float-to-int v3, v3

    .line 707
    .local v3, "deltaY":I
    mul-int v23, v22, v22

    mul-int v24, v3, v3

    move/from16 v25, v3

    .end local v3    # "deltaY":I
    .local v25, "deltaY":I
    add-int v3, v23, v24

    .line 708
    .local v3, "distance":I
    move/from16 v23, v4

    if-eqz v7, :cond_1af

    const/4 v4, 0x0

    goto :goto_1b1

    .end local v4    # "pointerUp":Z
    .restart local v23    # "pointerUp":Z
    :cond_1af
    iget v4, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 710
    .local v4, "slopSquare":I
    :goto_1b1
    move/from16 v24, v5

    const/4 v5, 0x1

    .end local v5    # "skipIndex":I
    .restart local v24    # "skipIndex":I
    if-ne v2, v5, :cond_1b8

    const/4 v5, 0x1

    goto :goto_1b9

    :cond_1b8
    const/4 v5, 0x0

    .line 712
    .local v5, "ambiguousGesture":Z
    :goto_1b9
    if-eqz v20, :cond_1c0

    if-eqz v5, :cond_1c0

    const/16 v26, 0x1

    goto :goto_1c2

    :cond_1c0
    const/16 v26, 0x0

    .line 714
    .local v26, "shouldInhibitDefaultAction":Z
    :goto_1c2
    if-eqz v26, :cond_211

    .line 716
    if-le v3, v4, :cond_1fa

    .line 722
    move/from16 v27, v5

    .end local v5    # "ambiguousGesture":Z
    .local v27, "ambiguousGesture":Z
    iget-object v5, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move/from16 v28, v7

    const/4 v7, 0x2

    .end local v7    # "isGeneratedGesture":Z
    .restart local v28    # "isGeneratedGesture":Z
    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 723
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    move/from16 v29, v8

    .end local v8    # "sumX":F
    .restart local v29    # "sumX":F
    int-to-long v7, v5

    .line 724
    .local v7, "longPressTimeout":J
    iget-object v5, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move/from16 v30, v9

    .end local v9    # "sumY":F
    .restart local v30    # "sumY":F
    iget-object v9, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 725
    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v14

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v14, 0x0

    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v31    # "count":I
    .restart local v32    # "div":I
    .restart local v33    # "handled":Z
    invoke-virtual {v9, v11, v10, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 729
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    long-to-float v14, v7

    move-wide/from16 v34, v7

    .end local v7    # "longPressTimeout":J
    .local v34, "longPressTimeout":J
    iget v7, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v14, v7

    float-to-long v7, v14

    add-long/2addr v10, v7

    .line 724
    invoke-virtual {v5, v9, v10, v11}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_208

    .line 716
    .end local v27    # "ambiguousGesture":Z
    .end local v28    # "isGeneratedGesture":Z
    .end local v29    # "sumX":F
    .end local v30    # "sumY":F
    .end local v31    # "count":I
    .end local v32    # "div":I
    .end local v33    # "handled":Z
    .end local v34    # "longPressTimeout":J
    .restart local v5    # "ambiguousGesture":Z
    .local v7, "isGeneratedGesture":Z
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    :cond_1fa
    move/from16 v27, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v14

    .line 736
    .end local v5    # "ambiguousGesture":Z
    .end local v7    # "isGeneratedGesture":Z
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v27    # "ambiguousGesture":Z
    .restart local v28    # "isGeneratedGesture":Z
    .restart local v29    # "sumX":F
    .restart local v30    # "sumY":F
    .restart local v31    # "count":I
    .restart local v32    # "div":I
    .restart local v33    # "handled":Z
    :goto_208
    int-to-float v5, v4

    iget v7, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    iget v8, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v7, v8

    mul-float/2addr v5, v7

    float-to-int v4, v5

    goto :goto_21f

    .line 714
    .end local v27    # "ambiguousGesture":Z
    .end local v28    # "isGeneratedGesture":Z
    .end local v29    # "sumX":F
    .end local v30    # "sumY":F
    .end local v31    # "count":I
    .end local v32    # "div":I
    .end local v33    # "handled":Z
    .restart local v5    # "ambiguousGesture":Z
    .restart local v7    # "isGeneratedGesture":Z
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    :cond_211
    move/from16 v27, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v14

    .line 739
    .end local v5    # "ambiguousGesture":Z
    .end local v7    # "isGeneratedGesture":Z
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v27    # "ambiguousGesture":Z
    .restart local v28    # "isGeneratedGesture":Z
    .restart local v29    # "sumX":F
    .restart local v30    # "sumY":F
    .restart local v31    # "count":I
    .restart local v32    # "div":I
    .restart local v33    # "handled":Z
    :goto_21f
    if-le v3, v4, :cond_247

    .line 740
    const/4 v5, 0x5

    invoke-direct {v0, v5}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 742
    iget-object v5, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v7, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v5, v7, v1, v15, v6}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .line 743
    .end local v33    # "handled":Z
    .restart local v14    # "handled":Z
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 744
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 745
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 746
    iget-object v5, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    iget-object v5, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    iget-object v5, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_249

    .line 739
    .end local v14    # "handled":Z
    .restart local v33    # "handled":Z
    :cond_247
    move/from16 v14, v33

    .line 750
    .end local v33    # "handled":Z
    .restart local v14    # "handled":Z
    :goto_249
    if-eqz v28, :cond_24d

    const/4 v5, 0x0

    goto :goto_24f

    :cond_24d
    iget v5, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 751
    .local v5, "doubleTapSlopSquare":I
    :goto_24f
    if-le v3, v5, :cond_254

    .line 752
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 754
    .end local v3    # "distance":I
    .end local v4    # "slopSquare":I
    .end local v5    # "doubleTapSlopSquare":I
    .end local v22    # "deltaX":I
    .end local v25    # "deltaY":I
    .end local v26    # "shouldInhibitDefaultAction":Z
    .end local v27    # "ambiguousGesture":Z
    :cond_254
    goto :goto_28c

    .end local v23    # "pointerUp":Z
    .end local v24    # "skipIndex":I
    .end local v28    # "isGeneratedGesture":Z
    .end local v29    # "sumX":F
    .end local v30    # "sumY":F
    .end local v31    # "count":I
    .end local v32    # "div":I
    .local v4, "pointerUp":Z
    .local v5, "skipIndex":I
    .restart local v7    # "isGeneratedGesture":Z
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    :cond_255
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v14

    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v7    # "isGeneratedGesture":Z
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v23    # "pointerUp":Z
    .restart local v24    # "skipIndex":I
    .restart local v28    # "isGeneratedGesture":Z
    .restart local v29    # "sumX":F
    .restart local v30    # "sumY":F
    .restart local v31    # "count":I
    .restart local v32    # "div":I
    .restart local v33    # "handled":Z
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-gez v3, :cond_27b

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_278

    goto :goto_27b

    :cond_278
    move/from16 v14, v33

    goto :goto_28c

    .line 755
    :cond_27b
    :goto_27b
    const/4 v5, 0x5

    invoke-direct {v0, v5}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 756
    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4, v1, v15, v6}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    .line 757
    .end local v33    # "handled":Z
    .local v3, "handled":Z
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 758
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move v14, v3

    .line 760
    .end local v3    # "handled":Z
    .restart local v14    # "handled":Z
    :goto_28c
    const/4 v7, 0x2

    if-ne v2, v7, :cond_292

    const/16 v16, 0x1

    goto :goto_294

    :cond_292
    const/16 v16, 0x0

    .line 762
    .local v16, "deepPress":Z
    :goto_294
    if-eqz v16, :cond_43b

    if-eqz v20, :cond_43b

    .line 763
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 764
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 765
    const/4 v5, 0x4

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v5, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 764
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_43b

    .line 690
    .end local v2    # "motionClassification":I
    .end local v6    # "scrollY":F
    .end local v15    # "scrollX":F
    .end local v16    # "deepPress":Z
    .end local v20    # "hasPendingLongPress":Z
    .end local v23    # "pointerUp":Z
    .end local v24    # "skipIndex":I
    .end local v28    # "isGeneratedGesture":Z
    .end local v29    # "sumX":F
    .end local v30    # "sumY":F
    .end local v31    # "count":I
    .end local v32    # "div":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    .restart local v7    # "isGeneratedGesture":Z
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    :cond_2ad
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v14

    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v7    # "isGeneratedGesture":Z
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v23    # "pointerUp":Z
    .restart local v24    # "skipIndex":I
    .restart local v28    # "isGeneratedGesture":Z
    .restart local v29    # "sumX":F
    .restart local v30    # "sumY":F
    .restart local v31    # "count":I
    .restart local v32    # "div":I
    .restart local v33    # "handled":Z
    goto/16 :goto_439

    .line 773
    .end local v18    # "action":I
    .end local v23    # "pointerUp":Z
    .end local v24    # "skipIndex":I
    .end local v28    # "isGeneratedGesture":Z
    .end local v29    # "sumX":F
    .end local v30    # "sumY":F
    .end local v31    # "count":I
    .end local v32    # "div":I
    .end local v33    # "handled":Z
    .local v2, "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    .restart local v7    # "isGeneratedGesture":Z
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    :pswitch_2bf
    move/from16 v18, v2

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v14

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v7    # "isGeneratedGesture":Z
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v18    # "action":I
    .restart local v23    # "pointerUp":Z
    .restart local v24    # "skipIndex":I
    .restart local v28    # "isGeneratedGesture":Z
    .restart local v29    # "sumX":F
    .restart local v30    # "sumY":F
    .restart local v31    # "count":I
    .restart local v32    # "div":I
    .restart local v33    # "handled":Z
    const/4 v14, 0x0

    iput-boolean v14, v0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 774
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 775
    .local v2, "currentUpEvent":Landroid/view/MotionEvent;
    iget-boolean v4, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v4, :cond_2e9

    .line 777
    const/4 v7, 0x2

    invoke-direct {v0, v7}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 779
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v14, v33, v3

    .end local v33    # "handled":Z
    .restart local v14    # "handled":Z
    goto :goto_351

    .line 780
    .end local v14    # "handled":Z
    .restart local v33    # "handled":Z
    :cond_2e9
    iget-boolean v4, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v4, :cond_2f7

    .line 781
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    const/4 v14, 0x0

    iput-boolean v14, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_34f

    .line 783
    :cond_2f7
    iget-boolean v4, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v4, :cond_317

    iget-boolean v4, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v4, :cond_317

    .line 784
    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 786
    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 787
    .end local v33    # "handled":Z
    .restart local v14    # "handled":Z
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    if-eqz v3, :cond_351

    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v3, :cond_351

    .line 788
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_351

    .line 790
    .end local v14    # "handled":Z
    .restart local v33    # "handled":Z
    :cond_317
    iget-boolean v4, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v4, :cond_34f

    .line 793
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 794
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 795
    .local v5, "pointerId":I
    iget v6, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v4, v3, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 796
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    .line 797
    .local v3, "velocityY":F
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    .line 799
    .local v6, "velocityX":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_346

    .line 800
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_34f

    .line 801
    :cond_346
    iget-object v7, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v8, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v7, v8, v1, v6, v3}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .end local v33    # "handled":Z
    .restart local v14    # "handled":Z
    goto :goto_351

    .line 804
    .end local v3    # "velocityY":F
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "pointerId":I
    .end local v6    # "velocityX":F
    .end local v14    # "handled":Z
    .restart local v33    # "handled":Z
    :cond_34f
    :goto_34f
    move/from16 v14, v33

    .end local v33    # "handled":Z
    .restart local v14    # "handled":Z
    :cond_351
    :goto_351
    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_35a

    .line 805
    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 808
    :cond_35a
    iput-object v2, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 809
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_368

    .line 812
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 813
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 815
    :cond_368
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 816
    iput-boolean v5, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 817
    iput-boolean v5, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 818
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 820
    goto/16 :goto_43b

    .line 641
    .end local v18    # "action":I
    .end local v23    # "pointerUp":Z
    .end local v24    # "skipIndex":I
    .end local v28    # "isGeneratedGesture":Z
    .end local v29    # "sumX":F
    .end local v30    # "sumY":F
    .end local v31    # "count":I
    .end local v32    # "div":I
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .local v5, "skipIndex":I
    .restart local v7    # "isGeneratedGesture":Z
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    :pswitch_37d
    move/from16 v18, v2

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v14

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v7    # "isGeneratedGesture":Z
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v18    # "action":I
    .restart local v23    # "pointerUp":Z
    .restart local v24    # "skipIndex":I
    .restart local v28    # "isGeneratedGesture":Z
    .restart local v29    # "sumX":F
    .restart local v30    # "sumY":F
    .restart local v31    # "count":I
    .restart local v32    # "div":I
    .restart local v33    # "handled":Z
    iget-object v2, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_3d8

    .line 642
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 643
    .local v2, "hadTapMessage":Z
    if-eqz v2, :cond_3a1

    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 644
    :cond_3a1
    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_3cf

    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_3cf

    if-eqz v2, :cond_3cf

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v4, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 646
    invoke-direct {v0, v3, v4, v1}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3cf

    .line 648
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 649
    const/4 v7, 0x2

    invoke-direct {v0, v7}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 652
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v3, v33, v3

    .line 654
    .end local v33    # "handled":Z
    .local v3, "handled":Z
    iget-object v4, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v4, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int v14, v3, v4

    .end local v3    # "handled":Z
    .restart local v14    # "handled":Z
    goto :goto_3da

    .line 657
    .end local v14    # "handled":Z
    .restart local v33    # "handled":Z
    :cond_3cf
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    sget v4, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    const/4 v10, 0x3

    invoke-virtual {v3, v10, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 661
    .end local v2    # "hadTapMessage":Z
    :cond_3d8
    move/from16 v14, v33

    .end local v33    # "handled":Z
    .restart local v14    # "handled":Z
    :goto_3da
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 662
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 663
    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_3eb

    .line 664
    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 666
    :cond_3eb
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 667
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 668
    iput-boolean v5, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 669
    iput-boolean v5, v0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 670
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 671
    iput-boolean v5, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 672
    iput-boolean v5, v0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 674
    iget-boolean v2, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    if-eqz v2, :cond_421

    .line 675
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 676
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 677
    const/4 v10, 0x3

    invoke-virtual {v3, v7, v10, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 681
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    .line 682
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 676
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 684
    :cond_421
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 685
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 684
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 686
    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v2, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v14, v2

    .line 687
    goto :goto_43b

    .line 827
    .end local v14    # "handled":Z
    .restart local v33    # "handled":Z
    :goto_439
    move/from16 v14, v33

    .end local v33    # "handled":Z
    .restart local v14    # "handled":Z
    :cond_43b
    :goto_43b
    if-nez v14, :cond_447

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_447

    .line 828
    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 830
    :cond_447
    return v14

    :pswitch_data_448
    .packed-switch 0x0
        :pswitch_37d
        :pswitch_2bf
        :pswitch_141
        :pswitch_12a
        :pswitch_7c
        :pswitch_10b
        :pswitch_90
    .end packed-switch
.end method

.method public whitelist setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V
    .registers 2
    .param p1, "onContextClickListener"    # Landroid/view/GestureDetector$OnContextClickListener;

    .line 538
    iput-object p1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    .line 539
    return-void
.end method

.method public whitelist setIsLongpressEnabled(Z)V
    .registers 2
    .param p1, "isLongpressEnabled"    # Z

    .line 551
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 552
    return-void
.end method

.method public whitelist setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2
    .param p1, "onDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 528
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 529
    return-void
.end method
