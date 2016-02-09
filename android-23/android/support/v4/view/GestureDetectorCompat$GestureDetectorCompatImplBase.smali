.class Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"

# interfaces
.implements Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/GestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GestureDetectorCompatImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

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
.method static synthetic -get0(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/MotionEvent;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->dispatchLongPress()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@3
    move-result v0

    #@4
    sput v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->LONGPRESS_TIMEOUT:I

    #@6
    .line 63
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@9
    move-result v0

    #@a
    sput v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    #@c
    .line 64
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@f
    move-result v0

    #@10
    sput v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    #@12
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 153
    if-eqz p3, :cond_1

    #@5
    .line 154
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;

    #@7
    invoke-direct {v0, p0, p3}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;-><init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V

    #@a
    iput-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@c
    .line 158
    :goto_0
    iput-object p2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@e
    .line 159
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 160
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    #@14
    .end local p2    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    invoke-virtual {p0, p2}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    #@17
    .line 162
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->init(Landroid/content/Context;)V

    #@1a
    .line 152
    return-void

    #@1b
    .line 156
    .restart local p2    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    :cond_1
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;

    #@1d
    invoke-direct {v0, p0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;-><init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V

    #@20
    iput-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@22
    goto :goto_0
.end method

.method private cancel()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 409
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 410
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@9
    const/4 v1, 0x2

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@d
    .line 411
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@f
    const/4 v1, 0x3

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@13
    .line 412
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@15
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@18
    .line 413
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    .line 414
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    #@1d
    .line 415
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    #@1f
    .line 416
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    #@21
    .line 417
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    #@23
    .line 418
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@25
    .line 419
    iget-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 420
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@2b
    .line 408
    :cond_0
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 425
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 426
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@9
    const/4 v1, 0x2

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@d
    .line 427
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@f
    const/4 v1, 0x3

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@13
    .line 428
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    #@15
    .line 429
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    #@17
    .line 430
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    #@19
    .line 431
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@1b
    .line 432
    iget-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 433
    iput-boolean v2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@21
    .line 424
    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 454
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@9
    .line 455
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@c
    .line 456
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@e
    iget-object v1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@10
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    #@13
    .line 452
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 166
    if-nez p1, :cond_0

    #@2
    .line 167
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Context must not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 169
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@d
    if-nez v3, :cond_1

    #@f
    .line 170
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v4, "OnGestureListener must not be null"

    #@14
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3

    #@18
    .line 172
    :cond_1
    const/4 v3, 0x1

    #@19
    iput-boolean v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    #@1b
    .line 174
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1e
    move-result-object v0

    #@1f
    .line 175
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@22
    move-result v2

    #@23
    .line 176
    .local v2, "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    #@26
    move-result v1

    #@27
    .line 177
    .local v1, "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@2a
    move-result v3

    #@2b
    iput v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    #@2d
    .line 178
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@30
    move-result v3

    #@31
    iput v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    #@33
    .line 180
    mul-int v3, v2, v2

    #@35
    iput v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    #@37
    .line 181
    mul-int v3, v1, v1

    #@39
    iput v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    #@3b
    .line 165
    return-void
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
    .line 439
    iget-boolean v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 440
    return v2

    #@6
    .line 443
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
    sget v3, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    #@11
    int-to-long v6, v3

    #@12
    cmp-long v3, v4, v6

    #@14
    if-lez v3, :cond_1

    #@16
    .line 444
    return v2

    #@17
    .line 447
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
    .line 448
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
    .line 449
    .local v1, "deltaY":I
    mul-int v3, v0, v0

    #@31
    mul-int v4, v1, v1

    #@33
    add-int/2addr v3, v4

    #@34
    iget v4, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    #@36
    if-ge v3, v4, :cond_2

    #@38
    const/4 v2, 0x1

    #@39
    :cond_2
    return v2
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 212
    iget-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    #@2
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 42
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v6

    #@4
    .line 226
    .local v6, "action":I
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@8
    move-object/from16 v36, v0

    #@a
    if-nez v36, :cond_0

    #@c
    .line 227
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@f
    move-result-object v36

    #@10
    move-object/from16 v0, v36

    #@12
    move-object/from16 v1, p0

    #@14
    iput-object v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@16
    .line 229
    :cond_0
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1a
    move-object/from16 v36, v0

    #@1c
    move-object/from16 v0, v36

    #@1e
    move-object/from16 v1, p1

    #@20
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@23
    .line 232
    and-int/lit16 v0, v6, 0xff

    #@25
    move/from16 v36, v0

    #@27
    const/16 v37, 0x6

    #@29
    move/from16 v0, v36

    #@2b
    move/from16 v1, v37

    #@2d
    if-ne v0, v1, :cond_1

    #@2f
    const/16 v22, 0x1

    #@31
    .line 233
    .local v22, "pointerUp":Z
    :goto_0
    if-eqz v22, :cond_2

    #@33
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@36
    move-result v25

    #@37
    .line 236
    .local v25, "skipIndex":I
    :goto_1
    const/16 v26, 0x0

    #@39
    .local v26, "sumX":F
    const/16 v27, 0x0

    #@3b
    .line 237
    .local v27, "sumY":F
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    #@3e
    move-result v7

    #@3f
    .line 238
    .local v7, "count":I
    const/16 v18, 0x0

    #@41
    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    #@43
    if-ge v0, v7, :cond_4

    #@45
    .line 239
    move/from16 v0, v25

    #@47
    move/from16 v1, v18

    #@49
    if-ne v0, v1, :cond_3

    #@4b
    .line 238
    :goto_3
    add-int/lit8 v18, v18, 0x1

    #@4d
    goto :goto_2

    #@4e
    .line 232
    .end local v7    # "count":I
    .end local v18    # "i":I
    .end local v22    # "pointerUp":Z
    .end local v25    # "skipIndex":I
    .end local v26    # "sumX":F
    .end local v27    # "sumY":F
    :cond_1
    const/16 v22, 0x0

    #@50
    .restart local v22    # "pointerUp":Z
    goto :goto_0

    #@51
    .line 233
    :cond_2
    const/16 v25, -0x1

    #@53
    .restart local v25    # "skipIndex":I
    goto :goto_1

    #@54
    .line 240
    .restart local v7    # "count":I
    .restart local v18    # "i":I
    .restart local v26    # "sumX":F
    .restart local v27    # "sumY":F
    :cond_3
    move-object/from16 v0, p1

    #@56
    move/from16 v1, v18

    #@58
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@5b
    move-result v36

    #@5c
    add-float v26, v26, v36

    #@5e
    .line 241
    move-object/from16 v0, p1

    #@60
    move/from16 v1, v18

    #@62
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@65
    move-result v36

    #@66
    add-float v27, v27, v36

    #@68
    goto :goto_3

    #@69
    .line 243
    :cond_4
    if-eqz v22, :cond_6

    #@6b
    add-int/lit8 v12, v7, -0x1

    #@6d
    .line 244
    .local v12, "div":I
    :goto_4
    int-to-float v0, v12

    #@6e
    move/from16 v36, v0

    #@70
    div-float v14, v26, v36

    #@72
    .line 245
    .local v14, "focusX":F
    int-to-float v0, v12

    #@73
    move/from16 v36, v0

    #@75
    div-float v15, v27, v36

    #@77
    .line 247
    .local v15, "focusY":F
    const/16 v17, 0x0

    #@79
    .line 249
    .local v17, "handled":Z
    and-int/lit16 v0, v6, 0xff

    #@7b
    move/from16 v36, v0

    #@7d
    packed-switch v36, :pswitch_data_0

    #@80
    .line 405
    .end local v17    # "handled":Z
    :cond_5
    :goto_5
    :pswitch_0
    return v17

    #@81
    .line 243
    .end local v12    # "div":I
    .end local v14    # "focusX":F
    .end local v15    # "focusY":F
    :cond_6
    move v12, v7

    #@82
    .restart local v12    # "div":I
    goto :goto_4

    #@83
    .line 251
    .restart local v14    # "focusX":F
    .restart local v15    # "focusY":F
    .restart local v17    # "handled":Z
    :pswitch_1
    move-object/from16 v0, p0

    #@85
    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    #@87
    move-object/from16 v0, p0

    #@89
    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    #@8b
    .line 252
    move-object/from16 v0, p0

    #@8d
    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    #@8f
    move-object/from16 v0, p0

    #@91
    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    #@93
    .line 254
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->cancelTaps()V

    #@96
    goto :goto_5

    #@97
    .line 258
    :pswitch_2
    move-object/from16 v0, p0

    #@99
    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    #@9b
    move-object/from16 v0, p0

    #@9d
    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    #@9f
    .line 259
    move-object/from16 v0, p0

    #@a1
    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    #@a3
    move-object/from16 v0, p0

    #@a5
    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    #@a7
    .line 263
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@ab
    move-object/from16 v36, v0

    #@ad
    move-object/from16 v0, p0

    #@af
    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    #@b1
    move/from16 v37, v0

    #@b3
    move/from16 v0, v37

    #@b5
    int-to-float v0, v0

    #@b6
    move/from16 v37, v0

    #@b8
    const/16 v38, 0x3e8

    #@ba
    move-object/from16 v0, v36

    #@bc
    move/from16 v1, v38

    #@be
    move/from16 v2, v37

    #@c0
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@c3
    .line 264
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@c6
    move-result v28

    #@c7
    .line 265
    .local v28, "upIndex":I
    move-object/from16 v0, p1

    #@c9
    move/from16 v1, v28

    #@cb
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@ce
    move-result v19

    #@cf
    .line 266
    .local v19, "id1":I
    move-object/from16 v0, p0

    #@d1
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@d3
    move-object/from16 v36, v0

    #@d5
    move-object/from16 v0, v36

    #@d7
    move/from16 v1, v19

    #@d9
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@dc
    move-result v33

    #@dd
    .line 267
    .local v33, "x1":F
    move-object/from16 v0, p0

    #@df
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@e1
    move-object/from16 v36, v0

    #@e3
    move-object/from16 v0, v36

    #@e5
    move/from16 v1, v19

    #@e7
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    #@ea
    move-result v35

    #@eb
    .line 268
    .local v35, "y1":F
    const/16 v18, 0x0

    #@ed
    :goto_6
    move/from16 v0, v18

    #@ef
    if-ge v0, v7, :cond_5

    #@f1
    .line 269
    move/from16 v0, v18

    #@f3
    move/from16 v1, v28

    #@f5
    if-ne v0, v1, :cond_8

    #@f7
    .line 268
    :cond_7
    add-int/lit8 v18, v18, 0x1

    #@f9
    goto :goto_6

    #@fa
    .line 271
    :cond_8
    move-object/from16 v0, p1

    #@fc
    move/from16 v1, v18

    #@fe
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@101
    move-result v20

    #@102
    .line 272
    .local v20, "id2":I
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@106
    move-object/from16 v36, v0

    #@108
    move-object/from16 v0, v36

    #@10a
    move/from16 v1, v20

    #@10c
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@10f
    move-result v36

    #@110
    mul-float v32, v33, v36

    #@112
    .line 273
    .local v32, "x":F
    move-object/from16 v0, p0

    #@114
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@116
    move-object/from16 v36, v0

    #@118
    move-object/from16 v0, v36

    #@11a
    move/from16 v1, v20

    #@11c
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    #@11f
    move-result v36

    #@120
    mul-float v34, v35, v36

    #@122
    .line 275
    .local v34, "y":F
    add-float v13, v32, v34

    #@124
    .line 276
    .local v13, "dot":F
    const/16 v36, 0x0

    #@126
    cmpg-float v36, v13, v36

    #@128
    if-gez v36, :cond_7

    #@12a
    .line 277
    move-object/from16 v0, p0

    #@12c
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@12e
    move-object/from16 v36, v0

    #@130
    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->clear()V

    #@133
    goto/16 :goto_5

    #@135
    .line 284
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

    #@137
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@139
    move-object/from16 v36, v0

    #@13b
    if-eqz v36, :cond_a

    #@13d
    .line 285
    move-object/from16 v0, p0

    #@13f
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@141
    move-object/from16 v36, v0

    #@143
    const/16 v37, 0x3

    #@145
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->hasMessages(I)Z

    #@148
    move-result v16

    #@149
    .line 286
    .local v16, "hadTapMessage":Z
    if-eqz v16, :cond_9

    #@14b
    move-object/from16 v0, p0

    #@14d
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@14f
    move-object/from16 v36, v0

    #@151
    const/16 v37, 0x3

    #@153
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@156
    .line 287
    :cond_9
    move-object/from16 v0, p0

    #@158
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@15a
    move-object/from16 v36, v0

    #@15c
    if-eqz v36, :cond_d

    #@15e
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@162
    move-object/from16 v36, v0

    #@164
    if-eqz v36, :cond_d

    #@166
    if-eqz v16, :cond_d

    #@168
    .line 288
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@16c
    move-object/from16 v36, v0

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@172
    move-object/from16 v37, v0

    #@174
    move-object/from16 v0, p0

    #@176
    move-object/from16 v1, v36

    #@178
    move-object/from16 v2, v37

    #@17a
    move-object/from16 v3, p1

    #@17c
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    #@17f
    move-result v36

    #@180
    .line 287
    if-eqz v36, :cond_d

    #@182
    .line 290
    const/16 v36, 0x1

    #@184
    move/from16 v0, v36

    #@186
    move-object/from16 v1, p0

    #@188
    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    #@18a
    .line 292
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@18e
    move-object/from16 v36, v0

    #@190
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@194
    move-object/from16 v37, v0

    #@196
    invoke-interface/range {v36 .. v37}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    #@199
    move-result v17

    #@19a
    .line 294
    .local v17, "handled":Z
    move-object/from16 v0, p0

    #@19c
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@19e
    move-object/from16 v36, v0

    #@1a0
    move-object/from16 v0, v36

    #@1a2
    move-object/from16 v1, p1

    #@1a4
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    #@1a7
    move-result v36

    #@1a8
    or-int v17, v17, v36

    #@1aa
    .line 301
    .end local v16    # "hadTapMessage":Z
    .end local v17    # "handled":Z
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    #@1ac
    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    #@1b2
    .line 302
    move-object/from16 v0, p0

    #@1b4
    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    #@1ba
    .line 303
    move-object/from16 v0, p0

    #@1bc
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@1be
    move-object/from16 v36, v0

    #@1c0
    if-eqz v36, :cond_b

    #@1c2
    .line 304
    move-object/from16 v0, p0

    #@1c4
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@1c6
    move-object/from16 v36, v0

    #@1c8
    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    #@1cb
    .line 306
    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@1ce
    move-result-object v36

    #@1cf
    move-object/from16 v0, v36

    #@1d1
    move-object/from16 v1, p0

    #@1d3
    iput-object v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@1d5
    .line 307
    const/16 v36, 0x1

    #@1d7
    move/from16 v0, v36

    #@1d9
    move-object/from16 v1, p0

    #@1db
    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    #@1dd
    .line 308
    const/16 v36, 0x1

    #@1df
    move/from16 v0, v36

    #@1e1
    move-object/from16 v1, p0

    #@1e3
    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    #@1e5
    .line 309
    const/16 v36, 0x1

    #@1e7
    move/from16 v0, v36

    #@1e9
    move-object/from16 v1, p0

    #@1eb
    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    #@1ed
    .line 310
    const/16 v36, 0x0

    #@1ef
    move/from16 v0, v36

    #@1f1
    move-object/from16 v1, p0

    #@1f3
    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@1f5
    .line 311
    const/16 v36, 0x0

    #@1f7
    move/from16 v0, v36

    #@1f9
    move-object/from16 v1, p0

    #@1fb
    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@1fd
    .line 313
    move-object/from16 v0, p0

    #@1ff
    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    #@201
    move/from16 v36, v0

    #@203
    if-eqz v36, :cond_c

    #@205
    .line 314
    move-object/from16 v0, p0

    #@207
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@209
    move-object/from16 v36, v0

    #@20b
    const/16 v37, 0x2

    #@20d
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@210
    .line 315
    move-object/from16 v0, p0

    #@212
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@214
    move-object/from16 v36, v0

    #@216
    move-object/from16 v0, p0

    #@218
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@21a
    move-object/from16 v37, v0

    #@21c
    invoke-virtual/range {v37 .. v37}, Landroid/view/MotionEvent;->getDownTime()J

    #@21f
    move-result-wide v38

    #@220
    .line 316
    sget v37, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    #@222
    move/from16 v0, v37

    #@224
    int-to-long v0, v0

    #@225
    move-wide/from16 v40, v0

    #@227
    .line 315
    add-long v38, v38, v40

    #@229
    .line 316
    sget v37, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->LONGPRESS_TIMEOUT:I

    #@22b
    move/from16 v0, v37

    #@22d
    int-to-long v0, v0

    #@22e
    move-wide/from16 v40, v0

    #@230
    .line 315
    add-long v38, v38, v40

    #@232
    const/16 v37, 0x2

    #@234
    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    #@237
    .line 318
    :cond_c
    move-object/from16 v0, p0

    #@239
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@23b
    move-object/from16 v36, v0

    #@23d
    move-object/from16 v0, p0

    #@23f
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@241
    move-object/from16 v37, v0

    #@243
    invoke-virtual/range {v37 .. v37}, Landroid/view/MotionEvent;->getDownTime()J

    #@246
    move-result-wide v38

    #@247
    sget v37, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    #@249
    move/from16 v0, v37

    #@24b
    int-to-long v0, v0

    #@24c
    move-wide/from16 v40, v0

    #@24e
    add-long v38, v38, v40

    #@250
    const/16 v37, 0x1

    #@252
    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    #@255
    .line 319
    move-object/from16 v0, p0

    #@257
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@259
    move-object/from16 v36, v0

    #@25b
    move-object/from16 v0, v36

    #@25d
    move-object/from16 v1, p1

    #@25f
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    #@262
    move-result v36

    #@263
    or-int v17, v17, v36

    #@265
    .line 320
    .restart local v17    # "handled":Z
    goto/16 :goto_5

    #@267
    .line 297
    .restart local v16    # "hadTapMessage":Z
    .local v17, "handled":Z
    :cond_d
    move-object/from16 v0, p0

    #@269
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@26b
    move-object/from16 v36, v0

    #@26d
    sget v37, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    #@26f
    move/from16 v0, v37

    #@271
    int-to-long v0, v0

    #@272
    move-wide/from16 v38, v0

    #@274
    const/16 v37, 0x3

    #@276
    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@279
    goto/16 :goto_7

    #@27b
    .line 323
    .end local v16    # "hadTapMessage":Z
    :pswitch_4
    move-object/from16 v0, p0

    #@27d
    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@27f
    move/from16 v36, v0

    #@281
    if-nez v36, :cond_5

    #@283
    .line 326
    move-object/from16 v0, p0

    #@285
    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    #@287
    move/from16 v36, v0

    #@289
    sub-float v23, v36, v14

    #@28b
    .line 327
    .local v23, "scrollX":F
    move-object/from16 v0, p0

    #@28d
    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    #@28f
    move/from16 v36, v0

    #@291
    sub-float v24, v36, v15

    #@293
    .line 328
    .local v24, "scrollY":F
    move-object/from16 v0, p0

    #@295
    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    #@297
    move/from16 v36, v0

    #@299
    if-eqz v36, :cond_e

    #@29b
    .line 330
    move-object/from16 v0, p0

    #@29d
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@29f
    move-object/from16 v36, v0

    #@2a1
    move-object/from16 v0, v36

    #@2a3
    move-object/from16 v1, p1

    #@2a5
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    #@2a8
    move-result v17

    #@2a9
    .local v17, "handled":Z
    goto/16 :goto_5

    #@2ab
    .line 331
    .local v17, "handled":Z
    :cond_e
    move-object/from16 v0, p0

    #@2ad
    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    #@2af
    move/from16 v36, v0

    #@2b1
    if-eqz v36, :cond_10

    #@2b3
    .line 332
    move-object/from16 v0, p0

    #@2b5
    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    #@2b7
    move/from16 v36, v0

    #@2b9
    sub-float v36, v14, v36

    #@2bb
    move/from16 v0, v36

    #@2bd
    float-to-int v9, v0

    #@2be
    .line 333
    .local v9, "deltaX":I
    move-object/from16 v0, p0

    #@2c0
    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    #@2c2
    move/from16 v36, v0

    #@2c4
    sub-float v36, v15, v36

    #@2c6
    move/from16 v0, v36

    #@2c8
    float-to-int v10, v0

    #@2c9
    .line 334
    .local v10, "deltaY":I
    mul-int v36, v9, v9

    #@2cb
    mul-int v37, v10, v10

    #@2cd
    add-int v11, v36, v37

    #@2cf
    .line 335
    .local v11, "distance":I
    move-object/from16 v0, p0

    #@2d1
    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    #@2d3
    move/from16 v36, v0

    #@2d5
    move/from16 v0, v36

    #@2d7
    if-le v11, v0, :cond_f

    #@2d9
    .line 336
    move-object/from16 v0, p0

    #@2db
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@2dd
    move-object/from16 v36, v0

    #@2df
    move-object/from16 v0, p0

    #@2e1
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@2e3
    move-object/from16 v37, v0

    #@2e5
    move-object/from16 v0, v36

    #@2e7
    move-object/from16 v1, v37

    #@2e9
    move-object/from16 v2, p1

    #@2eb
    move/from16 v3, v23

    #@2ed
    move/from16 v4, v24

    #@2ef
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    #@2f2
    move-result v17

    #@2f3
    .line 337
    .local v17, "handled":Z
    move-object/from16 v0, p0

    #@2f5
    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    #@2f7
    .line 338
    move-object/from16 v0, p0

    #@2f9
    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    #@2fb
    .line 339
    const/16 v36, 0x0

    #@2fd
    move/from16 v0, v36

    #@2ff
    move-object/from16 v1, p0

    #@301
    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    #@303
    .line 340
    move-object/from16 v0, p0

    #@305
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@307
    move-object/from16 v36, v0

    #@309
    const/16 v37, 0x3

    #@30b
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@30e
    .line 341
    move-object/from16 v0, p0

    #@310
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@312
    move-object/from16 v36, v0

    #@314
    const/16 v37, 0x1

    #@316
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@319
    .line 342
    move-object/from16 v0, p0

    #@31b
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@31d
    move-object/from16 v36, v0

    #@31f
    const/16 v37, 0x2

    #@321
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@324
    .line 344
    .end local v17    # "handled":Z
    :cond_f
    move-object/from16 v0, p0

    #@326
    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    #@328
    move/from16 v36, v0

    #@32a
    move/from16 v0, v36

    #@32c
    if-le v11, v0, :cond_5

    #@32e
    .line 345
    const/16 v36, 0x0

    #@330
    move/from16 v0, v36

    #@332
    move-object/from16 v1, p0

    #@334
    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    #@336
    goto/16 :goto_5

    #@338
    .line 347
    .end local v9    # "deltaX":I
    .end local v10    # "deltaY":I
    .end local v11    # "distance":I
    .local v17, "handled":Z
    :cond_10
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    #@33b
    move-result v36

    #@33c
    const/high16 v37, 0x3f800000    # 1.0f

    #@33e
    cmpl-float v36, v36, v37

    #@340
    if-gez v36, :cond_11

    #@342
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    #@345
    move-result v36

    #@346
    const/high16 v37, 0x3f800000    # 1.0f

    #@348
    cmpl-float v36, v36, v37

    #@34a
    if-ltz v36, :cond_5

    #@34c
    .line 348
    :cond_11
    move-object/from16 v0, p0

    #@34e
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@350
    move-object/from16 v36, v0

    #@352
    move-object/from16 v0, p0

    #@354
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@356
    move-object/from16 v37, v0

    #@358
    move-object/from16 v0, v36

    #@35a
    move-object/from16 v1, v37

    #@35c
    move-object/from16 v2, p1

    #@35e
    move/from16 v3, v23

    #@360
    move/from16 v4, v24

    #@362
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    #@365
    move-result v17

    #@366
    .line 349
    .local v17, "handled":Z
    move-object/from16 v0, p0

    #@368
    iput v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    #@36a
    .line 350
    move-object/from16 v0, p0

    #@36c
    iput v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    #@36e
    goto/16 :goto_5

    #@370
    .line 355
    .end local v23    # "scrollX":F
    .end local v24    # "scrollY":F
    .local v17, "handled":Z
    :pswitch_5
    const/16 v36, 0x0

    #@372
    move/from16 v0, v36

    #@374
    move-object/from16 v1, p0

    #@376
    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    #@378
    .line 356
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@37b
    move-result-object v8

    #@37c
    .line 357
    .local v8, "currentUpEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    #@37e
    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    #@380
    move/from16 v36, v0

    #@382
    if-eqz v36, :cond_15

    #@384
    .line 359
    move-object/from16 v0, p0

    #@386
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@388
    move-object/from16 v36, v0

    #@38a
    move-object/from16 v0, v36

    #@38c
    move-object/from16 v1, p1

    #@38e
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    #@391
    move-result v17

    #@392
    .line 383
    .end local v17    # "handled":Z
    :cond_12
    :goto_8
    move-object/from16 v0, p0

    #@394
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@396
    move-object/from16 v36, v0

    #@398
    if-eqz v36, :cond_13

    #@39a
    .line 384
    move-object/from16 v0, p0

    #@39c
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@39e
    move-object/from16 v36, v0

    #@3a0
    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    #@3a3
    .line 387
    :cond_13
    move-object/from16 v0, p0

    #@3a5
    iput-object v8, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    #@3a7
    .line 388
    move-object/from16 v0, p0

    #@3a9
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3ab
    move-object/from16 v36, v0

    #@3ad
    if-eqz v36, :cond_14

    #@3af
    .line 391
    move-object/from16 v0, p0

    #@3b1
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3b3
    move-object/from16 v36, v0

    #@3b5
    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->recycle()V

    #@3b8
    .line 392
    const/16 v36, 0x0

    #@3ba
    move-object/from16 v0, v36

    #@3bc
    move-object/from16 v1, p0

    #@3be
    iput-object v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3c0
    .line 394
    :cond_14
    const/16 v36, 0x0

    #@3c2
    move/from16 v0, v36

    #@3c4
    move-object/from16 v1, p0

    #@3c6
    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    #@3c8
    .line 395
    const/16 v36, 0x0

    #@3ca
    move/from16 v0, v36

    #@3cc
    move-object/from16 v1, p0

    #@3ce
    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@3d0
    .line 396
    move-object/from16 v0, p0

    #@3d2
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@3d4
    move-object/from16 v36, v0

    #@3d6
    const/16 v37, 0x1

    #@3d8
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@3db
    .line 397
    move-object/from16 v0, p0

    #@3dd
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@3df
    move-object/from16 v36, v0

    #@3e1
    const/16 v37, 0x2

    #@3e3
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@3e6
    goto/16 :goto_5

    #@3e8
    .line 360
    .restart local v17    # "handled":Z
    :cond_15
    move-object/from16 v0, p0

    #@3ea
    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@3ec
    move/from16 v36, v0

    #@3ee
    if-eqz v36, :cond_16

    #@3f0
    .line 361
    move-object/from16 v0, p0

    #@3f2
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    #@3f4
    move-object/from16 v36, v0

    #@3f6
    const/16 v37, 0x3

    #@3f8
    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    #@3fb
    .line 362
    const/16 v36, 0x0

    #@3fd
    move/from16 v0, v36

    #@3ff
    move-object/from16 v1, p0

    #@401
    iput-boolean v0, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    #@403
    goto :goto_8

    #@404
    .line 363
    :cond_16
    move-object/from16 v0, p0

    #@406
    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    #@408
    move/from16 v36, v0

    #@40a
    if-eqz v36, :cond_17

    #@40c
    .line 364
    move-object/from16 v0, p0

    #@40e
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@410
    move-object/from16 v36, v0

    #@412
    move-object/from16 v0, v36

    #@414
    move-object/from16 v1, p1

    #@416
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    #@419
    move-result v17

    #@41a
    .line 365
    .local v17, "handled":Z
    move-object/from16 v0, p0

    #@41c
    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    #@41e
    move/from16 v36, v0

    #@420
    if-eqz v36, :cond_12

    #@422
    move-object/from16 v0, p0

    #@424
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@426
    move-object/from16 v36, v0

    #@428
    if-eqz v36, :cond_12

    #@42a
    .line 366
    move-object/from16 v0, p0

    #@42c
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@42e
    move-object/from16 v36, v0

    #@430
    move-object/from16 v0, v36

    #@432
    move-object/from16 v1, p1

    #@434
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    #@437
    goto/16 :goto_8

    #@439
    .line 370
    .local v17, "handled":Z
    :cond_17
    move-object/from16 v0, p0

    #@43b
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@43d
    move-object/from16 v29, v0

    #@43f
    .line 371
    .local v29, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v36, 0x0

    #@441
    move-object/from16 v0, p1

    #@443
    move/from16 v1, v36

    #@445
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@448
    move-result v21

    #@449
    .line 372
    .local v21, "pointerId":I
    move-object/from16 v0, p0

    #@44b
    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    #@44d
    move/from16 v36, v0

    #@44f
    move/from16 v0, v36

    #@451
    int-to-float v0, v0

    #@452
    move/from16 v36, v0

    #@454
    const/16 v37, 0x3e8

    #@456
    move-object/from16 v0, v29

    #@458
    move/from16 v1, v37

    #@45a
    move/from16 v2, v36

    #@45c
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@45f
    .line 373
    move-object/from16 v0, v29

    #@461
    move/from16 v1, v21

    #@463
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    #@466
    move-result v31

    #@467
    .line 375
    .local v31, "velocityY":F
    move-object/from16 v0, v29

    #@469
    move/from16 v1, v21

    #@46b
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@46e
    move-result v30

    #@46f
    .line 378
    .local v30, "velocityX":F
    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    #@472
    move-result v36

    #@473
    move-object/from16 v0, p0

    #@475
    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    #@477
    move/from16 v37, v0

    #@479
    move/from16 v0, v37

    #@47b
    int-to-float v0, v0

    #@47c
    move/from16 v37, v0

    #@47e
    cmpl-float v36, v36, v37

    #@480
    if-gtz v36, :cond_18

    #@482
    .line 379
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    #@485
    move-result v36

    #@486
    move-object/from16 v0, p0

    #@488
    iget v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    #@48a
    move/from16 v37, v0

    #@48c
    move/from16 v0, v37

    #@48e
    int-to-float v0, v0

    #@48f
    move/from16 v37, v0

    #@491
    cmpl-float v36, v36, v37

    #@493
    if-lez v36, :cond_12

    #@495
    .line 380
    :cond_18
    move-object/from16 v0, p0

    #@497
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    #@499
    move-object/from16 v36, v0

    #@49b
    move-object/from16 v0, p0

    #@49d
    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    #@49f
    move-object/from16 v37, v0

    #@4a1
    move-object/from16 v0, v36

    #@4a3
    move-object/from16 v1, v37

    #@4a5
    move-object/from16 v2, p1

    #@4a7
    move/from16 v3, v30

    #@4a9
    move/from16 v4, v31

    #@4ab
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    #@4ae
    move-result v17

    #@4af
    .local v17, "handled":Z
    goto/16 :goto_8

    #@4b1
    .line 401
    .end local v8    # "currentUpEvent":Landroid/view/MotionEvent;
    .end local v21    # "pointerId":I
    .end local v29    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v30    # "velocityX":F
    .end local v31    # "velocityY":F
    .local v17, "handled":Z
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->cancel()V

    #@4b4
    goto/16 :goto_5

    #@4b6
    .line 249
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
    .line 205
    iput-boolean p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    #@2
    .line 204
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    #@0
    .prologue
    .line 192
    iput-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    #@2
    .line 191
    return-void
.end method
