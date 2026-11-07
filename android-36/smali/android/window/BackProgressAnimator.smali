.class public Landroid/window/BackProgressAnimator;
.super Ljava/lang/Object;
.source "BackProgressAnimator.java"

# interfaces
.implements Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackProgressAnimator$ProgressCallback;
    }
.end annotation


# static fields
.field private static final blacklist BUTTON_SPRING_STIFFNESS:F = 100.0f

.field private static final blacklist FLING_FRICTION:F = 8.0f

.field private static final blacklist PROGRESS_PROP:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/window/BackProgressAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SCALE_FACTOR:F = 100.0f


# instance fields
.field private blacklist mBackAnimationInProgress:Z

.field private blacklist mBackCancelledFinishRunnable:Ljava/lang/Runnable;

.field private blacklist mBackInvokedFinishRunnable:Ljava/lang/Runnable;

.field private blacklist mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

.field private final blacklist mButtonSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

.field private blacklist mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

.field private final blacklist mGestureSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

.field private blacklist mLastBackEvent:Landroid/window/BackMotionEvent;

.field private final blacklist mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private final blacklist mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

.field private blacklist mProgress:F

.field private final blacklist mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field private blacklist mVelocity:F


# direct methods
.method public static synthetic blacklist $r8$lambda$AI1VajbXHN_9ecXtRjpdejyS_AM(Landroid/window/BackProgressAnimator;Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/window/BackProgressAnimator;->lambda$new$0(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MHTUtloOIRCL6kWKAy6Hn09BL7s(Landroid/window/BackProgressAnimator;Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/window/BackProgressAnimator;->lambda$new$1(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProgress(Landroid/window/BackProgressAnimator;)F
    .registers 1

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->getProgress()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetProgress(Landroid/window/BackProgressAnimator;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/BackProgressAnimator;->setProgress(F)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 91
    new-instance v0, Landroid/window/BackProgressAnimator$1;

    const-string v1, "progress"

    invoke-direct {v0, v1}, Landroid/window/BackProgressAnimator$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/window/BackProgressAnimator;->PROGRESS_PROP:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    .line 59
    iput v0, p0, Landroid/window/BackProgressAnimator;->mVelocity:F

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    .line 67
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    .line 68
    const v1, 0x44bb8000    # 1500.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 69
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mGestureSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 70
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mButtonSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 72
    new-instance v0, Landroid/window/BackProgressAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/window/BackProgressAnimator$$ExternalSyntheticLambda0;-><init>(Landroid/window/BackProgressAnimator;)V

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 78
    new-instance v0, Landroid/window/BackProgressAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/window/BackProgressAnimator$$ExternalSyntheticLambda1;-><init>(Landroid/window/BackProgressAnimator;)V

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 119
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroid/window/BackProgressAnimator;->PROGRESS_PROP:Landroid/util/FloatProperty;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 120
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    .line 121
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mGestureSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 122
    return-void
.end method

.method private blacklist getProgress()F
    .registers 2

    .line 88
    iget v0, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    return v0
.end method

.method private blacklist invokeBackCancelledRunnable()V
    .registers 3

    .line 287
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 288
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    .line 290
    return-void
.end method

.method private blacklist invokeBackInvokedRunnable()V
    .registers 3

    .line 293
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->removeUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 294
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 295
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    .line 297
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 6
    .param p1, "animation"    # Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .param p2, "canceled"    # Z
    .param p3, "value"    # F
    .param p4, "velocity"    # F

    .line 74
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->invokeBackCancelledRunnable()V

    .line 75
    :cond_7
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->invokeBackInvokedRunnable()V

    .line 76
    :cond_e
    invoke-virtual {p0}, Landroid/window/BackProgressAnimator;->reset()V

    .line 77
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 6
    .param p1, "animation"    # Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .param p2, "progress"    # F
    .param p3, "velocity"    # F

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->getLastFrameTime()J

    move-result-wide v0

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/window/BackProgressAnimator;->updateProgressValue(FFJ)V

    return-void
.end method

.method private blacklist setProgress(F)V
    .registers 2
    .param p1, "progress"    # F

    .line 84
    iput p1, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    .line 85
    return-void
.end method

.method private blacklist updateProgressValue(FFJ)V
    .registers 14
    .param p1, "progress"    # F
    .param p2, "velocity"    # F
    .param p3, "frameTime"    # J

    .line 271
    iput p2, p0, Landroid/window/BackProgressAnimator;->mVelocity:F

    .line 272
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    if-eqz v0, :cond_54

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    if-nez v0, :cond_10

    move-wide v7, p3

    goto :goto_55

    .line 276
    :cond_10
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackTimestampApi()Z

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_33

    .line 277
    new-instance v2, Landroid/window/BackEvent;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {v0}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v3

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {v0}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v4

    div-float v5, p1, v1

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    .line 278
    invoke-virtual {v0}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v6

    move-wide v7, p3

    .end local p3    # "frameTime":J
    .local v7, "frameTime":J
    invoke-direct/range {v2 .. v8}, Landroid/window/BackEvent;-><init>(FFFIJ)V

    .local v2, "backEvent":Landroid/window/BackEvent;
    goto :goto_4e

    .line 280
    .end local v2    # "backEvent":Landroid/window/BackEvent;
    .end local v7    # "frameTime":J
    .restart local p3    # "frameTime":J
    :cond_33
    move-wide v7, p3

    .end local p3    # "frameTime":J
    .restart local v7    # "frameTime":J
    new-instance p3, Landroid/window/BackEvent;

    iget-object p4, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {p4}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result p4

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {v0}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v0

    div-float v1, p1, v1

    iget-object v2, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    .line 281
    invoke-virtual {v2}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v2

    invoke-direct {p3, p4, v0, v1, v2}, Landroid/window/BackEvent;-><init>(FFFI)V

    move-object v2, p3

    .line 283
    .restart local v2    # "backEvent":Landroid/window/BackEvent;
    :goto_4e
    iget-object p3, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    invoke-interface {p3, v2}, Landroid/window/BackProgressAnimator$ProgressCallback;->onProgressUpdate(Landroid/window/BackEvent;)V

    .line 284
    return-void

    .line 272
    .end local v2    # "backEvent":Landroid/window/BackEvent;
    .end local v7    # "frameTime":J
    .restart local p3    # "frameTime":J
    :cond_54
    move-wide v7, p3

    .line 273
    .end local p3    # "frameTime":J
    .restart local v7    # "frameTime":J
    :goto_55
    return-void
.end method


# virtual methods
.method public blacklist getVelocity()F
    .registers 3

    .line 267
    iget v0, p0, Landroid/window/BackProgressAnimator;->mVelocity:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public blacklist isBackAnimationInProgress()Z
    .registers 2

    .line 260
    iget-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    return v0
.end method

.method public blacklist onAnimationUpdate(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 6
    .param p1, "animation"    # Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .param p2, "value"    # F
    .param p3, "velocity"    # F

    .line 106
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 107
    invoke-virtual {p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->getLastFrameTime()J

    move-result-wide v0

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/window/BackProgressAnimator;->updateProgressValue(FFJ)V

    .line 109
    :cond_b
    return-void
.end method

.method public blacklist onBackCancelled(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "finishCallback"    # Ljava/lang/Runnable;

    .line 232
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mButtonSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    const v1, 0x44bb8000    # 1500.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 233
    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    .line 234
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    .line 235
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 236
    return-void
.end method

.method public blacklist onBackInvoked(Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "finishCallback"    # Ljava/lang/Runnable;

    .line 208
    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    .line 209
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 211
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    new-instance v2, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v2}, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {v0, v2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V

    iget v2, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    .line 212
    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setStartValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    .line 213
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setFriction(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    iget v2, p0, Landroid/window/BackProgressAnimator;->mVelocity:F

    .line 214
    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    .line 216
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    .line 217
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->addUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    .line 218
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    .line 219
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->start()V

    .line 221
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    .line 222
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getLastFrameTimeNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    .line 221
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->doAnimationFrame(J)Z

    .line 223
    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackMotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/window/BackMotionEvent;

    .line 130
    iget-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    if-nez v0, :cond_5

    .line 131
    return-void

    .line 133
    :cond_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackSwipeEdgeNoneApi()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 134
    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 135
    return-void

    .line 138
    :cond_13
    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    .line 139
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_1a

    .line 140
    return-void

    .line 142
    :cond_1a
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getProgress()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 143
    return-void
.end method

.method public blacklist onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V
    .registers 7
    .param p1, "event"    # Landroid/window/BackMotionEvent;
    .param p2, "callback"    # Landroid/window/BackProgressAnimator$ProgressCallback;

    .line 153
    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    .line 154
    iput-object p2, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    .line 156
    nop

    .line 157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 156
    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/window/BackProgressAnimator;->updateProgressValue(FFJ)V

    .line 158
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackSwipeEdgeNoneApi()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 159
    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    .line 160
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mButtonSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 161
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Landroid/window/BackProgressAnimator;->mButtonSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 162
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_43

    .line 164
    :cond_35
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mGestureSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 165
    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    goto :goto_43

    .line 168
    :cond_40
    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    .line 170
    :goto_43
    return-void
.end method

.method public blacklist removeOnBackCancelledFinishCallback()V
    .registers 3

    .line 242
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    .line 244
    return-void
.end method

.method public blacklist removeOnBackInvokedFinishCallback()V
    .registers 3

    .line 250
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    if-eqz v0, :cond_12

    .line 251
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->removeUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 252
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 254
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    .line 255
    return-void
.end method

.method public blacklist reset()V
    .registers 7

    .line 176
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 178
    nop

    .line 179
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 178
    invoke-direct {p0, v1, v1, v2, v3}, Landroid/window/BackProgressAnimator;->updateProgressValue(FFJ)V

    .line 180
    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->invokeBackCancelledRunnable()V

    goto :goto_1c

    .line 181
    :cond_15
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    .line 182
    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->invokeBackInvokedRunnable()V

    .line 184
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 185
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->cancel()V

    .line 186
    iput-object v2, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    .line 188
    :cond_28
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 189
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 190
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    goto :goto_40

    .line 193
    :cond_3b
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 195
    :goto_40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    .line 196
    iput-object v2, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    .line 197
    iput-object v2, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    .line 198
    iput v1, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    .line 199
    return-void
.end method
