.class final Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTouchNavigationHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT_MILLIMETERS:F = 48.0f

.field private static final DEFAULT_WIDTH_MILLIMETERS:F = 48.0f

.field private static final FLING_TICK_DECAY:F = 0.8f

.field private static final LOCAL_DEBUG:Z = false

.field private static final LOCAL_TAG:Ljava/lang/String; = "SyntheticTouchNavigationHandler"

.field private static final MAX_FLING_VELOCITY_TICKS_PER_SECOND:F = 20.0f

.field private static final MIN_FLING_VELOCITY_TICKS_PER_SECOND:F = 6.0f

.field private static final TICK_DISTANCE_MILLIMETERS:I = 0xc


# instance fields
.field private mAccumulatedX:F

.field private mAccumulatedY:F

.field private mActivePointerId:I

.field private mConfigMaxFlingVelocity:F

.field private mConfigMinFlingVelocity:F

.field private mConfigTickDistance:F

.field private mConsumedMovement:Z

.field private mCurrentDeviceId:I

.field private mCurrentDeviceSupported:Z

.field private mCurrentSource:I

.field private final mFlingRunnable:Ljava/lang/Runnable;

.field private mFlingVelocity:F

.field private mFlinging:Z

.field private mLastX:F

.field private mLastY:F

.field private mPendingKeyCode:I

.field private mPendingKeyDownTime:J

.field private mPendingKeyMetaState:I

.field private mPendingKeyRepeatCount:I

.field private mStartX:F

.field private mStartY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method static synthetic -get0(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "keyCode"    # I
    .param p4, "metaState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 4828
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    #@3
    .line 4829
    const/4 v0, 0x1

    #@4
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    #@7
    .line 4778
    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    #@9
    .line 4798
    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    #@b
    .line 4820
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    #@e
    .line 5118
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;

    #@10
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;-><init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V

    #@13
    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    #@15
    .line 4828
    return-void
.end method

.method private cancelFling()V
    .locals 1

    #@0
    .prologue
    .line 5112
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5113
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    #@6
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@9
    .line 5114
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    #@c
    .line 5111
    :cond_0
    return-void
.end method

.method private consumeAccumulatedMovement(JIFII)F
    .locals 1
    .param p1, "time"    # J
    .param p3, "metaState"    # I
    .param p4, "accumulator"    # F
    .param p5, "negativeKeyCode"    # I
    .param p6, "positiveKeyCode"    # I

    #@0
    .prologue
    .line 4999
    :goto_0
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    #@2
    neg-float v0, v0

    #@3
    cmpg-float v0, p4, v0

    #@5
    if-gtz v0, :cond_0

    #@7
    .line 5000
    invoke-direct {p0, p1, p2, p5, p3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    #@a
    .line 5001
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    #@c
    add-float/2addr p4, v0

    #@d
    goto :goto_0

    #@e
    .line 5003
    :cond_0
    :goto_1
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    #@10
    cmpl-float v0, p4, v0

    #@12
    if-ltz v0, :cond_1

    #@14
    .line 5004
    invoke-direct {p0, p1, p2, p6, p3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    #@17
    .line 5005
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    #@19
    sub-float/2addr p4, v0

    #@1a
    goto :goto_1

    #@1b
    .line 5007
    :cond_1
    return p4
.end method

.method private consumeAccumulatedMovement(JI)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "metaState"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 4978
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    #@4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@7
    move-result v0

    #@8
    .line 4979
    .local v0, "absX":F
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    #@a
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@d
    move-result v8

    #@e
    .line 4980
    .local v8, "absY":F
    cmpl-float v1, v0, v8

    #@10
    if-ltz v1, :cond_1

    #@12
    .line 4981
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    #@14
    cmpl-float v1, v0, v1

    #@16
    if-ltz v1, :cond_0

    #@18
    .line 4982
    iget v5, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    #@1a
    .line 4983
    const/16 v6, 0x15

    #@1c
    const/16 v7, 0x16

    #@1e
    move-object v1, p0

    #@1f
    move-wide v2, p1

    #@20
    move v4, p3

    #@21
    .line 4982
    invoke-direct/range {v1 .. v7}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JIFII)F

    #@24
    move-result v1

    #@25
    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    #@27
    .line 4984
    iput v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    #@29
    .line 4985
    iput-boolean v10, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    #@2b
    .line 4977
    :cond_0
    :goto_0
    return-void

    #@2c
    .line 4988
    :cond_1
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    #@2e
    cmpl-float v1, v8, v1

    #@30
    if-ltz v1, :cond_0

    #@32
    .line 4989
    iget v5, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    #@34
    .line 4990
    const/16 v6, 0x13

    #@36
    const/16 v7, 0x14

    #@38
    move-object v1, p0

    #@39
    move-wide v2, p1

    #@3a
    move v4, p3

    #@3b
    .line 4989
    invoke-direct/range {v1 .. v7}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JIFII)F

    #@3e
    move-result v1

    #@3f
    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    #@41
    .line 4991
    iput v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    #@43
    .line 4992
    iput-boolean v10, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    #@45
    goto :goto_0
.end method

.method private finishKeys(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 4965
    invoke-direct {p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->cancelFling()V

    #@3
    .line 4966
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyUp(J)V

    #@6
    .line 4964
    return-void
.end method

.method private finishTracking(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 4970
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 4971
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    #@7
    .line 4972
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@9
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@c
    .line 4973
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@f
    .line 4969
    :cond_0
    return-void
.end method

.method private postFling(J)Z
    .locals 7
    .param p1, "time"    # J

    #@0
    .prologue
    .line 5098
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    #@2
    iget v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    #@4
    cmpl-float v2, v2, v3

    #@6
    if-ltz v2, :cond_0

    #@8
    .line 5099
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    #@a
    iget v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    #@c
    div-float/2addr v2, v3

    #@d
    const/high16 v3, 0x447a0000    # 1000.0f

    #@f
    mul-float/2addr v2, v3

    #@10
    float-to-long v0, v2

    #@11
    .line 5100
    .local v0, "delay":J
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    #@13
    add-long v4, p1, v0

    #@15
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    #@18
    .line 5106
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 5108
    .end local v0    # "delay":J
    :cond_0
    const/4 v2, 0x0

    #@1b
    return v2
.end method

.method private sendKeyDownOrRepeat(JII)V
    .locals 15
    .param p1, "time"    # J
    .param p3, "keyCode"    # I
    .param p4, "metaState"    # I

    #@0
    .prologue
    .line 5011
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    #@2
    move/from16 v0, p3

    #@4
    if-eq v2, v0, :cond_0

    #@6
    .line 5012
    invoke-direct/range {p0 .. p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyUp(J)V

    #@9
    .line 5013
    move-wide/from16 v0, p1

    #@b
    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    #@d
    .line 5014
    move/from16 v0, p3

    #@f
    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    #@11
    .line 5015
    const/4 v2, 0x0

    #@12
    iput v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    #@14
    .line 5019
    :goto_0
    move/from16 v0, p4

    #@16
    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    #@18
    .line 5028
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1a
    new-instance v3, Landroid/view/KeyEvent;

    #@1c
    iget-wide v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    #@1e
    .line 5029
    iget v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    #@20
    iget v10, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    #@22
    .line 5030
    iget v11, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    #@24
    iget v12, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    #@26
    .line 5031
    iget v14, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    #@28
    .line 5029
    const/4 v8, 0x0

    #@29
    .line 5031
    const/16 v13, 0x400

    #@2b
    move-wide/from16 v6, p1

    #@2d
    .line 5028
    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@30
    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@33
    .line 5010
    return-void

    #@34
    .line 5017
    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    #@36
    add-int/lit8 v2, v2, 0x1

    #@38
    iput v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    #@3a
    goto :goto_0
.end method

.method private sendKeyUp(J)V
    .locals 15
    .param p1, "time"    # J

    #@0
    .prologue
    .line 5035
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5040
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    #@6
    new-instance v1, Landroid/view/KeyEvent;

    #@8
    iget-wide v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    #@a
    .line 5041
    iget v7, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    #@c
    iget v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    #@e
    .line 5042
    iget v10, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    #@10
    .line 5043
    iget v13, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    #@12
    .line 5041
    const/4 v6, 0x1

    #@13
    const/4 v8, 0x0

    #@14
    .line 5042
    const/4 v11, 0x0

    #@15
    const/16 v12, 0x400

    #@17
    move-wide/from16 v4, p1

    #@19
    .line 5040
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@1c
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@1f
    .line 5044
    const/4 v0, 0x0

    #@20
    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    #@22
    .line 5034
    :cond_0
    return-void
.end method

.method private startFling(JFF)Z
    .locals 3
    .param p1, "time"    # J
    .param p3, "vx"    # F
    .param p4, "vy"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5055
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 5090
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z

    #@9
    move-result v0

    #@a
    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    #@c
    .line 5091
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    #@e
    return v0

    #@f
    .line 5057
    :pswitch_0
    neg-float v0, p3

    #@10
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    #@12
    cmpl-float v0, v0, v1

    #@14
    if-ltz v0, :cond_0

    #@16
    .line 5058
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    #@19
    move-result v0

    #@1a
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    #@1c
    cmpg-float v0, v0, v1

    #@1e
    if-gez v0, :cond_0

    #@20
    .line 5059
    neg-float v0, p3

    #@21
    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    #@23
    goto :goto_0

    #@24
    .line 5062
    :cond_0
    return v2

    #@25
    .line 5065
    :pswitch_1
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    #@27
    cmpl-float v0, p3, v0

    #@29
    if-ltz v0, :cond_1

    #@2b
    .line 5066
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    #@2e
    move-result v0

    #@2f
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    #@31
    cmpg-float v0, v0, v1

    #@33
    if-gez v0, :cond_1

    #@35
    .line 5067
    iput p3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    #@37
    goto :goto_0

    #@38
    .line 5070
    :cond_1
    return v2

    #@39
    .line 5073
    :pswitch_2
    neg-float v0, p4

    #@3a
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    #@3c
    cmpl-float v0, v0, v1

    #@3e
    if-ltz v0, :cond_2

    #@40
    .line 5074
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@43
    move-result v0

    #@44
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    #@46
    cmpg-float v0, v0, v1

    #@48
    if-gez v0, :cond_2

    #@4a
    .line 5075
    neg-float v0, p4

    #@4b
    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    #@4d
    goto :goto_0

    #@4e
    .line 5078
    :cond_2
    return v2

    #@4f
    .line 5081
    :pswitch_3
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    #@51
    cmpl-float v0, p4, v0

    #@53
    if-ltz v0, :cond_3

    #@55
    .line 5082
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@58
    move-result v0

    #@59
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    #@5b
    cmpg-float v0, v0, v1

    #@5d
    if-gez v0, :cond_3

    #@5f
    .line 5083
    iput p4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    #@61
    goto :goto_0

    #@62
    .line 5086
    :cond_3
    return v2

    #@63
    .line 5055
    nop

    #@64
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4956
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    #@2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@5
    move-result v3

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 4957
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    #@a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@d
    move-result v3

    #@e
    if-ne v2, v3, :cond_0

    #@10
    .line 4958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@13
    move-result-wide v0

    #@14
    .line 4959
    .local v0, "time":J
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    #@17
    .line 4960
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    #@1a
    .line 4955
    .end local v0    # "time":J
    :cond_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4834
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@3
    move-result-wide v12

    #@4
    .line 4835
    .local v12, "time":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@7
    move-result v7

    #@8
    .line 4836
    .local v7, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    #@b
    move-result v11

    #@c
    .line 4837
    .local v11, "source":I
    move-object/from16 v0, p0

    #@e
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    #@10
    move/from16 v22, v0

    #@12
    move/from16 v0, v22

    #@14
    if-ne v0, v7, :cond_0

    #@16
    move-object/from16 v0, p0

    #@18
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    #@1a
    move/from16 v22, v0

    #@1c
    move/from16 v0, v22

    #@1e
    if-eq v0, v11, :cond_3

    #@20
    .line 4838
    :cond_0
    move-object/from16 v0, p0

    #@22
    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    #@25
    .line 4839
    move-object/from16 v0, p0

    #@27
    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    #@2a
    .line 4840
    move-object/from16 v0, p0

    #@2c
    iput v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    #@2e
    .line 4841
    move-object/from16 v0, p0

    #@30
    iput v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    #@32
    .line 4842
    const/16 v22, 0x0

    #@34
    move/from16 v0, v22

    #@36
    move-object/from16 v1, p0

    #@38
    iput-boolean v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    #@3a
    .line 4843
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    #@3d
    move-result-object v6

    #@3e
    .line 4844
    .local v6, "device":Landroid/view/InputDevice;
    if-eqz v6, :cond_3

    #@40
    .line 4847
    const/16 v22, 0x0

    #@42
    move/from16 v0, v22

    #@44
    invoke-virtual {v6, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    #@47
    move-result-object v17

    #@48
    .line 4848
    .local v17, "xRange":Landroid/view/InputDevice$MotionRange;
    const/16 v22, 0x1

    #@4a
    move/from16 v0, v22

    #@4c
    invoke-virtual {v6, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    #@4f
    move-result-object v20

    #@50
    .line 4849
    .local v20, "yRange":Landroid/view/InputDevice$MotionRange;
    if-eqz v17, :cond_3

    #@52
    if-eqz v20, :cond_3

    #@54
    .line 4850
    const/16 v22, 0x1

    #@56
    move/from16 v0, v22

    #@58
    move-object/from16 v1, p0

    #@5a
    iput-boolean v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    #@5c
    .line 4853
    invoke-virtual/range {v17 .. v17}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    #@5f
    move-result v18

    #@60
    .line 4854
    .local v18, "xRes":F
    const/16 v22, 0x0

    #@62
    cmpg-float v22, v18, v22

    #@64
    if-gtz v22, :cond_1

    #@66
    .line 4855
    invoke-virtual/range {v17 .. v17}, Landroid/view/InputDevice$MotionRange;->getRange()F

    #@69
    move-result v22

    #@6a
    const/high16 v23, 0x42400000    # 48.0f

    #@6c
    div-float v18, v22, v23

    #@6e
    .line 4857
    :cond_1
    invoke-virtual/range {v20 .. v20}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    #@71
    move-result v21

    #@72
    .line 4858
    .local v21, "yRes":F
    const/16 v22, 0x0

    #@74
    cmpg-float v22, v21, v22

    #@76
    if-gtz v22, :cond_2

    #@78
    .line 4859
    invoke-virtual/range {v20 .. v20}, Landroid/view/InputDevice$MotionRange;->getRange()F

    #@7b
    move-result v22

    #@7c
    const/high16 v23, 0x42400000    # 48.0f

    #@7e
    div-float v21, v22, v23

    #@80
    .line 4861
    :cond_2
    add-float v22, v18, v21

    #@82
    const/high16 v23, 0x3f000000    # 0.5f

    #@84
    mul-float v10, v22, v23

    #@86
    .line 4864
    .local v10, "nominalRes":F
    const/high16 v22, 0x41400000    # 12.0f

    #@88
    mul-float v22, v22, v10

    #@8a
    move/from16 v0, v22

    #@8c
    move-object/from16 v1, p0

    #@8e
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    #@90
    .line 4866
    move-object/from16 v0, p0

    #@92
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    #@94
    move/from16 v22, v0

    #@96
    const/high16 v23, 0x40c00000    # 6.0f

    #@98
    mul-float v22, v22, v23

    #@9a
    .line 4865
    move/from16 v0, v22

    #@9c
    move-object/from16 v1, p0

    #@9e
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    #@a0
    .line 4868
    move-object/from16 v0, p0

    #@a2
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    #@a4
    move/from16 v22, v0

    #@a6
    const/high16 v23, 0x41a00000    # 20.0f

    #@a8
    mul-float v22, v22, v23

    #@aa
    .line 4867
    move/from16 v0, v22

    #@ac
    move-object/from16 v1, p0

    #@ae
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMaxFlingVelocity:F

    #@b0
    .line 4880
    .end local v6    # "device":Landroid/view/InputDevice;
    .end local v10    # "nominalRes":F
    .end local v17    # "xRange":Landroid/view/InputDevice$MotionRange;
    .end local v18    # "xRes":F
    .end local v20    # "yRange":Landroid/view/InputDevice$MotionRange;
    .end local v21    # "yRes":F
    :cond_3
    move-object/from16 v0, p0

    #@b2
    iget-boolean v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    #@b4
    move/from16 v22, v0

    #@b6
    if-nez v22, :cond_4

    #@b8
    .line 4881
    return-void

    #@b9
    .line 4885
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@bc
    move-result v4

    #@bd
    .line 4886
    .local v4, "action":I
    packed-switch v4, :pswitch_data_0

    #@c0
    .line 4832
    :cond_5
    :goto_0
    return-void

    #@c1
    .line 4888
    :pswitch_0
    move-object/from16 v0, p0

    #@c3
    iget-boolean v5, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    #@c5
    .line 4889
    .local v5, "caughtFling":Z
    move-object/from16 v0, p0

    #@c7
    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    #@ca
    .line 4890
    move-object/from16 v0, p0

    #@cc
    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    #@cf
    .line 4891
    const/16 v22, 0x0

    #@d1
    move-object/from16 v0, p1

    #@d3
    move/from16 v1, v22

    #@d5
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@d8
    move-result v22

    #@d9
    move/from16 v0, v22

    #@db
    move-object/from16 v1, p0

    #@dd
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    #@df
    .line 4892
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@e2
    move-result-object v22

    #@e3
    move-object/from16 v0, v22

    #@e5
    move-object/from16 v1, p0

    #@e7
    iput-object v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@e9
    .line 4893
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@ed
    move-object/from16 v22, v0

    #@ef
    move-object/from16 v0, v22

    #@f1
    move-object/from16 v1, p1

    #@f3
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@f6
    .line 4894
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@f9
    move-result v22

    #@fa
    move/from16 v0, v22

    #@fc
    move-object/from16 v1, p0

    #@fe
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartX:F

    #@100
    .line 4895
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@103
    move-result v22

    #@104
    move/from16 v0, v22

    #@106
    move-object/from16 v1, p0

    #@108
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartY:F

    #@10a
    .line 4896
    move-object/from16 v0, p0

    #@10c
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartX:F

    #@10e
    move/from16 v22, v0

    #@110
    move/from16 v0, v22

    #@112
    move-object/from16 v1, p0

    #@114
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    #@116
    .line 4897
    move-object/from16 v0, p0

    #@118
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartY:F

    #@11a
    move/from16 v22, v0

    #@11c
    move/from16 v0, v22

    #@11e
    move-object/from16 v1, p0

    #@120
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    #@122
    .line 4898
    const/16 v22, 0x0

    #@124
    move/from16 v0, v22

    #@126
    move-object/from16 v1, p0

    #@128
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    #@12a
    .line 4899
    const/16 v22, 0x0

    #@12c
    move/from16 v0, v22

    #@12e
    move-object/from16 v1, p0

    #@130
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    #@132
    .line 4903
    move-object/from16 v0, p0

    #@134
    iput-boolean v5, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    #@136
    goto :goto_0

    #@137
    .line 4909
    .end local v5    # "caughtFling":Z
    :pswitch_1
    move-object/from16 v0, p0

    #@139
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    #@13b
    move/from16 v22, v0

    #@13d
    if-ltz v22, :cond_5

    #@13f
    .line 4912
    move-object/from16 v0, p0

    #@141
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    #@143
    move/from16 v22, v0

    #@145
    move-object/from16 v0, p1

    #@147
    move/from16 v1, v22

    #@149
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@14c
    move-result v8

    #@14d
    .line 4913
    .local v8, "index":I
    if-gez v8, :cond_6

    #@14f
    .line 4914
    move-object/from16 v0, p0

    #@151
    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    #@154
    .line 4915
    move-object/from16 v0, p0

    #@156
    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    #@159
    goto/16 :goto_0

    #@15b
    .line 4919
    :cond_6
    move-object/from16 v0, p0

    #@15d
    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@15f
    move-object/from16 v22, v0

    #@161
    move-object/from16 v0, v22

    #@163
    move-object/from16 v1, p1

    #@165
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@168
    .line 4920
    move-object/from16 v0, p1

    #@16a
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    #@16d
    move-result v16

    #@16e
    .line 4921
    .local v16, "x":F
    move-object/from16 v0, p1

    #@170
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    #@173
    move-result v19

    #@174
    .line 4922
    .local v19, "y":F
    move-object/from16 v0, p0

    #@176
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    #@178
    move/from16 v22, v0

    #@17a
    move-object/from16 v0, p0

    #@17c
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    #@17e
    move/from16 v23, v0

    #@180
    sub-float v23, v16, v23

    #@182
    add-float v22, v22, v23

    #@184
    move/from16 v0, v22

    #@186
    move-object/from16 v1, p0

    #@188
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    #@18a
    .line 4923
    move-object/from16 v0, p0

    #@18c
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    #@18e
    move/from16 v22, v0

    #@190
    move-object/from16 v0, p0

    #@192
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    #@194
    move/from16 v23, v0

    #@196
    sub-float v23, v19, v23

    #@198
    add-float v22, v22, v23

    #@19a
    move/from16 v0, v22

    #@19c
    move-object/from16 v1, p0

    #@19e
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    #@1a0
    .line 4924
    move/from16 v0, v16

    #@1a2
    move-object/from16 v1, p0

    #@1a4
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    #@1a6
    .line 4925
    move/from16 v0, v19

    #@1a8
    move-object/from16 v1, p0

    #@1aa
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    #@1ac
    .line 4928
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@1af
    move-result v9

    #@1b0
    .line 4929
    .local v9, "metaState":I
    move-object/from16 v0, p0

    #@1b2
    invoke-direct {v0, v12, v13, v9}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JI)V

    #@1b5
    .line 4932
    const/16 v22, 0x1

    #@1b7
    move/from16 v0, v22

    #@1b9
    if-ne v4, v0, :cond_5

    #@1bb
    .line 4933
    move-object/from16 v0, p0

    #@1bd
    iget-boolean v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    #@1bf
    move/from16 v22, v0

    #@1c1
    if-eqz v22, :cond_7

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    #@1c7
    move/from16 v22, v0

    #@1c9
    if-eqz v22, :cond_7

    #@1cb
    .line 4935
    move-object/from16 v0, p0

    #@1cd
    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1cf
    move-object/from16 v22, v0

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMaxFlingVelocity:F

    #@1d5
    move/from16 v23, v0

    #@1d7
    const/16 v24, 0x3e8

    #@1d9
    move-object/from16 v0, v22

    #@1db
    move/from16 v1, v24

    #@1dd
    move/from16 v2, v23

    #@1df
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@1e2
    .line 4936
    move-object/from16 v0, p0

    #@1e4
    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1e6
    move-object/from16 v22, v0

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    #@1ec
    move/from16 v23, v0

    #@1ee
    invoke-virtual/range {v22 .. v23}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@1f1
    move-result v14

    #@1f2
    .line 4937
    .local v14, "vx":F
    move-object/from16 v0, p0

    #@1f4
    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1f6
    move-object/from16 v22, v0

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    #@1fc
    move/from16 v23, v0

    #@1fe
    invoke-virtual/range {v22 .. v23}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@201
    move-result v15

    #@202
    .line 4938
    .local v15, "vy":F
    move-object/from16 v0, p0

    #@204
    invoke-direct {v0, v12, v13, v14, v15}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->startFling(JFF)Z

    #@207
    move-result v22

    #@208
    if-nez v22, :cond_7

    #@20a
    .line 4939
    move-object/from16 v0, p0

    #@20c
    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    #@20f
    .line 4942
    .end local v14    # "vx":F
    .end local v15    # "vy":F
    :cond_7
    move-object/from16 v0, p0

    #@211
    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    #@214
    goto/16 :goto_0

    #@216
    .line 4948
    .end local v8    # "index":I
    .end local v9    # "metaState":I
    .end local v16    # "x":F
    .end local v19    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    #@218
    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    #@21b
    .line 4949
    move-object/from16 v0, p0

    #@21d
    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    #@220
    goto/16 :goto_0

    #@222
    .line 4886
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
