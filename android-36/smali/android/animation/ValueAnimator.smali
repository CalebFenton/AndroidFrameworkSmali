.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$DurationScaleChangeListener;,
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$RepeatMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist INFINITE:I = -0x1

.field public static final whitelist RESTART:I = 0x1

.field public static final whitelist REVERSE:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ValueAnimator"

.field private static final blacklist TRACE_ANIMATION_FRACTION:Z

.field private static final greylist-max-o sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static greylist-max-p sDurationScale:F

.field private static final blacklist sDurationScaleChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ValueAnimator$DurationScaleChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAnimationEndRequested:Z

.field private blacklist mAnimationHandler:Landroid/animation/AnimationHandler;

.field private greylist-max-o mCurrentFraction:F

.field private greylist mDuration:J

.field private greylist-max-o mDurationScale:F

.field private greylist-max-o mFirstFrameTime:J

.field greylist-max-o mInitialized:Z

.field private greylist-max-o mInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mLastFrameTime:J

.field private greylist-max-o mOverallFraction:F

.field private greylist-max-o mPauseTime:J

.field private greylist-max-o mRepeatCount:I

.field private greylist-max-o mRepeatMode:I

.field private greylist-max-o mResumed:Z

.field private greylist-max-o mReversing:Z

.field private greylist-max-o mRunning:Z

.field greylist-max-o mSeekFraction:F

.field private greylist-max-o mSelfPulse:Z

.field private greylist-max-o mStartDelay:J

.field greylist-max-o mStartTime:J

.field greylist-max-o mStartTimeCommitted:Z

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mSuppressSelfPulseRequested:Z

.field greylist-max-o mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mValues:[Landroid/animation/PropertyValuesHolder;

.field greylist-max-o mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 83
    const-string/jumbo v0, "persist.debug.animator.trace_fraction"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/animation/ValueAnimator;->TRACE_ANIMATION_FRACTION:Z

    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 6

    .line 419
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 135
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 148
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 166
    const/4 v4, 0x0

    iput v4, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 172
    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 177
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 183
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 193
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 199
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 205
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 210
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 217
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 227
    iput v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 240
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 246
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 253
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 274
    iput v2, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    .line 420
    return-void
.end method

.method private greylist-max-o addAnimationCallback(J)V
    .registers 4
    .param p1, "delay"    # J

    .line 1621
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1622
    return-void

    .line 1624
    :cond_5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 1625
    return-void
.end method

.method private greylist-max-o addOneShotCommitCallback()V
    .registers 2

    .line 1607
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1608
    return-void

    .line 1610
    :cond_5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1611
    return-void
.end method

.method public static whitelist areAnimatorsEnabled()Z
    .registers 2

    .line 411
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private greylist-max-o clampFraction(F)F
    .registers 4
    .param p1, "fraction"    # F

    .line 811
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    .line 812
    const/4 p1, 0x0

    goto :goto_15

    .line 813
    :cond_7
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 814
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 816
    :cond_15
    :goto_15
    return p1
.end method

.method private greylist-max-o endAnimation()V
    .registers 2

    .line 1290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Z)V

    .line 1291
    return-void
.end method

.method private blacklist endAnimation(Z)V
    .registers 9
    .param p1, "fromLastFrame"    # Z

    .line 1298
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_5

    .line 1299
    return-void

    .line 1301
    :cond_5
    sget-boolean v0, Landroid/animation/ValueAnimator;->sPostNotifyEndListenerEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    .line 1302
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    .line 1303
    .local v0, "postNotifyEndListener":Z
    :goto_1e
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    .line 1305
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1306
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1307
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v3, :cond_2d

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_32

    :cond_2d
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    .line 1308
    .local v1, "notify":Z
    :goto_33
    if-eqz v1, :cond_3e

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v2, :cond_3e

    .line 1310
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    .line 1312
    :cond_3e
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1313
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1314
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1317
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v2, v0}, Landroid/animation/ValueAnimator;->notifyEndListenersFromEndAnimation(ZZ)V

    .line 1318
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1319
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v4

    .line 1320
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1319
    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1322
    :cond_5e
    return-void
.end method

.method public static greylist-max-o getCurrentAnimationsCount()I
    .registers 1

    .line 1733
    invoke-static {}, Landroid/animation/AnimationHandler;->getAnimationCount()I

    move-result v0

    return v0
.end method

.method private greylist-max-o getCurrentIteration(F)I
    .registers 6
    .param p1, "fraction"    # F

    .line 780
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 784
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 785
    .local v0, "iteration":D
    float-to-double v2, p1

    cmpl-double v2, v2, v0

    if-nez v2, :cond_16

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_16

    .line 786
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    .line 788
    :cond_16
    double-to-int v2, v0

    return v2
.end method

.method private greylist-max-o getCurrentIterationFraction(FZ)F
    .registers 6
    .param p1, "fraction"    # F
    .param p2, "inReverse"    # Z

    .line 797
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 798
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIteration(F)I

    move-result v0

    .line 799
    .local v0, "iteration":I
    int-to-float v1, v0

    sub-float v1, p1, v1

    .line 800
    .local v1, "currentFraction":F
    invoke-direct {p0, v0, p2}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    return v2
.end method

.method public static whitelist getDurationScale()F
    .registers 1

    .line 339
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static whitelist getFrameDelay()J
    .registers 2

    .line 907
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {}, Landroid/animation/AnimationHandler;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getScaledDuration()J
    .registers 3

    .line 700
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private greylist-max-o isPulsingInternal()Z
    .registers 5

    .line 1364
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static varargs whitelist ofArgb([I)Landroid/animation/ValueAnimator;
    .registers 3
    .param p0, "values"    # [I

    .line 451
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 452
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 453
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 454
    return-object v0
.end method

.method public static varargs whitelist ofFloat([F)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "values"    # [F

    .line 469
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 470
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 471
    return-object v0
.end method

.method public static varargs whitelist ofInt([I)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "values"    # [I

    .line 434
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 435
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 436
    return-object v0
.end method

.method public static varargs whitelist ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .registers 3
    .param p0, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    .line 511
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 512
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 513
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 514
    return-object v0
.end method

.method public static varargs whitelist ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "values"    # [Landroid/animation/PropertyValuesHolder;

    .line 483
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 484
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 485
    return-object v0
.end method

.method public static whitelist registerDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z
    .registers 7
    .param p0, "listener"    # Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    .line 353
    const/4 v0, -0x1

    .line 354
    .local v0, "posToReplace":I
    sget-object v1, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 355
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    :try_start_5
    sget-object v3, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2c

    .line 356
    sget-object v3, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    .line 357
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 358
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_20

    .line 359
    if-ne v0, v4, :cond_29

    .line 360
    move v0, v2

    goto :goto_29

    .line 362
    :cond_20
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_29

    .line 363
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 355
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 366
    .end local v2    # "i":I
    :cond_2c
    if-eq v0, v4, :cond_3b

    .line 367
    sget-object v2, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 368
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 370
    :cond_3b
    sget-object v2, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 372
    :catchall_48
    move-exception v2

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method private greylist-max-o removeAnimationCallback()V
    .registers 2

    .line 1614
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1615
    return-void

    .line 1617
    :cond_5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1618
    return-void
.end method

.method private greylist-max-o resolveDurationScale()F
    .registers 3

    .line 696
    iget v0, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    goto :goto_c

    :cond_a
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    :goto_c
    return v0
.end method

.method public static greylist setDurationScale(F)V
    .registers 5
    .param p0, "durationScale"    # F

    .line 313
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 316
    sget-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 317
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 318
    .local v1, "listenerCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;>;"
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_29

    .line 320
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 321
    .local v0, "listenersSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_28

    .line 322
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    .line 323
    .local v3, "listener":Landroid/animation/ValueAnimator$DurationScaleChangeListener;
    if-eqz v3, :cond_25

    .line 324
    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$DurationScaleChangeListener;->onChanged(F)V

    .line 321
    .end local v3    # "listener":Landroid/animation/ValueAnimator$DurationScaleChangeListener;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 327
    .end local v2    # "i":I
    :cond_28
    return-void

    .line 318
    .end local v0    # "listenersSize":I
    .end local v1    # "listenerCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;>;"
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public static whitelist setFrameDelay(J)V
    .registers 2
    .param p0, "frameDelay"    # J

    .line 927
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {p0, p1}, Landroid/animation/AnimationHandler;->setFrameDelay(J)V

    .line 928
    return-void
.end method

.method private greylist-max-o shouldPlayBackward(IZ)Z
    .registers 6
    .param p1, "iteration"    # I
    .param p2, "inReverse"    # Z

    .line 825
    if-lez p1, :cond_23

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_12

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_23

    .line 829
    :cond_12
    const/4 v0, 0x0

    if-eqz p2, :cond_1c

    .line 830
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v0

    :goto_1b
    return v1

    .line 832
    :cond_1c
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_21

    goto :goto_22

    :cond_21
    move v1, v0

    :goto_22
    return v1

    .line 835
    :cond_23
    return p2
.end method

.method private greylist-max-o start(Z)V
    .registers 9
    .param p1, "playBackwards"    # Z

    .line 1118
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 1121
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1122
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 1124
    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_3f

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_3f

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_3f

    .line 1125
    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_36

    .line 1127
    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v3, v3

    iget v5, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    .line 1128
    .local v3, "fraction":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1129
    .end local v3    # "fraction":F
    goto :goto_3f

    .line 1130
    :cond_36
    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1133
    :cond_3f
    :goto_3f
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1134
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1135
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1136
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1140
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1141
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1142
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1143
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    .line 1145
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_65

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v1, v0

    if-gez v0, :cond_65

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v0, :cond_77

    .line 1149
    :cond_65
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1150
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_72

    .line 1154
    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_77

    .line 1156
    :cond_72
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 1159
    :cond_77
    :goto_77
    return-void

    .line 1119
    :cond_78
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o startAnimation()V
    .registers 5

    .line 1341
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1342
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v2

    .line 1343
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1342
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1346
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1347
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1348
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1349
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_28

    .line 1350
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput v0, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    goto :goto_2a

    .line 1352
    :cond_28
    iput v1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1355
    :goto_2a
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    .line 1356
    return-void
.end method

.method public static whitelist unregisterDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z
    .registers 6
    .param p0, "listener"    # Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    .line 384
    sget-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 385
    const/4 v1, 0x0

    .line 387
    .local v1, "listenerRefToRemove":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    :try_start_4
    sget-object v2, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 388
    .local v3, "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_1e

    .line 389
    move-object v1, v3

    .line 390
    goto :goto_1f

    .line 392
    .end local v3    # "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    :cond_1e
    goto :goto_a

    .line 393
    :cond_1f
    :goto_1f
    sget-object v2, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 394
    .end local v1    # "listenerRefToRemove":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v1
.end method


# virtual methods
.method public whitelist addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1020
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1023
    :cond_b
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    return-void
.end method

.method greylist-max-o animateBasedOnTime(J)Z
    .registers 15
    .param p1, "currentTime"    # J

    .line 1405
    const/4 v0, 0x0

    .line 1406
    .local v0, "done":Z
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_57

    .line 1407
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v1

    .line 1408
    .local v1, "scaledDuration":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_17

    .line 1409
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v5, p1, v5

    long-to-float v5, v5

    long-to-float v6, v1

    div-float/2addr v5, v6

    goto :goto_19

    :cond_17
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1410
    .local v5, "fraction":F
    :goto_19
    iget v6, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1411
    .local v6, "lastFraction":F
    float-to-int v7, v5

    float-to-int v8, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-le v7, v8, :cond_23

    move v7, v9

    goto :goto_24

    :cond_23
    move v7, v10

    .line 1412
    .local v7, "newIteration":Z
    :goto_24
    iget v8, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_32

    iget v8, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v11, -0x1

    if-eq v8, v11, :cond_32

    goto :goto_33

    :cond_32
    move v9, v10

    .line 1414
    .local v9, "lastIterationFinished":Z
    :goto_33
    cmp-long v3, v1, v3

    if-nez v3, :cond_39

    .line 1416
    const/4 v0, 0x1

    goto :goto_46

    .line 1417
    :cond_39
    if-eqz v7, :cond_43

    if-nez v9, :cond_43

    .line 1419
    sget-object v3, Landroid/animation/Animator$AnimatorCaller;->ON_REPEAT:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, v3, v10}, Landroid/animation/ValueAnimator;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    goto :goto_46

    .line 1420
    :cond_43
    if-eqz v9, :cond_46

    .line 1421
    const/4 v0, 0x1

    .line 1423
    :cond_46
    :goto_46
    invoke-direct {p0, v5}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result v3

    iput v3, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1424
    iget v3, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v3, v4}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v3

    .line 1426
    .local v3, "currentIterationFraction":F
    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1428
    .end local v1    # "scaledDuration":J
    .end local v3    # "currentIterationFraction":F
    .end local v5    # "fraction":F
    .end local v6    # "lastFraction":F
    .end local v7    # "newIteration":Z
    .end local v9    # "lastIterationFinished":Z
    :cond_57
    return v0
.end method

.method blacklist animateSkipToEnds(JJ)V
    .registers 12
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J

    .line 1487
    cmp-long v0, p1, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 1489
    .local v0, "inReverse":Z
    :goto_9
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gtz v5, :cond_15

    cmp-long v5, p3, v3

    if-lez v5, :cond_15

    .line 1490
    const/4 v1, 0x1

    .local v1, "doSkip":Z
    goto :goto_27

    .line 1492
    .end local v1    # "doSkip":Z
    :cond_15
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getTotalDuration()J

    move-result-wide v5

    .line 1493
    .local v5, "duration":J
    cmp-long v3, v5, v3

    if-ltz v3, :cond_26

    cmp-long v3, p1, v5

    if-ltz v3, :cond_26

    cmp-long v3, p3, v5

    if-gez v3, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    .line 1495
    .end local v5    # "duration":J
    .restart local v1    # "doSkip":Z
    :goto_27
    if-eqz v1, :cond_32

    .line 1496
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    .line 1497
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->skipToEndValue(Z)V

    .line 1498
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyEndListeners(Z)V

    .line 1500
    :cond_32
    return-void
.end method

.method greylist animateValue(F)V
    .registers 6
    .param p1, "fraction"    # F

    .line 1652
    sget-boolean v0, Landroid/animation/ValueAnimator;->TRACE_ANIMATION_FRACTION:Z

    if-eqz v0, :cond_26

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1656
    :cond_26
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-nez v0, :cond_2b

    .line 1657
    return-void

    .line 1659
    :cond_2b
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1660
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1661
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    .line 1662
    .local v0, "numValues":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_37
    if-ge v1, v0, :cond_43

    .line 1663
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1662
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1665
    .end local v1    # "i":I
    :cond_43
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gez v1, :cond_4e

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-eqz v1, :cond_56

    .line 1666
    :cond_4e
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    sget-object v2, Landroid/animation/Animator$AnimatorCaller;->ON_UPDATE:Landroid/animation/Animator$AnimatorCaller;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p0, v3}, Landroid/animation/ValueAnimator;->callOnList(Ljava/util/ArrayList;Landroid/animation/Animator$AnimatorCaller;Ljava/lang/Object;Z)V

    .line 1668
    :cond_56
    return-void
.end method

.method blacklist animateValuesInRange(JJ)V
    .registers 14
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J

    .line 1442
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_96

    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-ltz v2, :cond_96

    .line 1446
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1447
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getTotalDuration()J

    move-result-wide v2

    .line 1448
    .local v2, "duration":J
    cmp-long v4, p3, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz v4, :cond_32

    cmp-long v4, p3, v0

    if-nez v4, :cond_22

    cmp-long v4, p1, v0

    if-lez v4, :cond_22

    goto :goto_32

    .line 1450
    :cond_22
    cmp-long v4, p3, v2

    if-gtz v4, :cond_2e

    cmp-long v4, p3, v2

    if-nez v4, :cond_35

    cmp-long v4, p1, v2

    if-gez v4, :cond_35

    .line 1453
    :cond_2e
    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    goto :goto_35

    .line 1449
    :cond_32
    :goto_32
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    .line 1455
    :cond_35
    :goto_35
    cmp-long v4, v2, v0

    if-ltz v4, :cond_3d

    .line 1456
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 1458
    :cond_3d
    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    sub-long/2addr p3, v7

    .line 1459
    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    sub-long/2addr p1, v7

    .line 1462
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lez v4, :cond_6c

    .line 1463
    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v7, p1, v7

    long-to-int v4, v7

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1464
    .local v4, "iteration":I
    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v7, p3, v7

    long-to-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1467
    .local v7, "lastIteration":I
    iget v8, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1468
    iget v8, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1470
    if-eq v4, v7, :cond_6c

    .line 1471
    sget-object v8, Landroid/animation/Animator$AnimatorCaller;->ON_REPEAT:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, v8, v6}, Landroid/animation/ValueAnimator;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    .line 1475
    .end local v4    # "iteration":I
    .end local v7    # "lastIteration":I
    :cond_6c
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_85

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    mul-long/2addr v4, v7

    cmp-long v4, p1, v4

    if-gtz v4, :cond_7d

    goto :goto_85

    .line 1476
    :cond_7d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t animate a value outside of the duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1479
    :cond_85
    :goto_85
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v1, v4

    div-float/2addr v0, v1

    .line 1480
    .local v0, "fraction":F
    invoke-direct {p0, v0, v6}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    .line 1481
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1483
    .end local v0    # "fraction":F
    return-void

    .line 1443
    .end local v2    # "duration":J
    :cond_96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Play time should never be negative."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o canReverse()Z
    .registers 2

    .line 1286
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist cancel()V
    .registers 3

    .line 1178
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1184
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_f

    .line 1185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->consumePendingEndListeners(Z)Z

    .line 1186
    return-void

    .line 1192
    :cond_f
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-eqz v0, :cond_2e

    :cond_1b
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    .line 1193
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_28

    .line 1195
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    .line 1197
    :cond_28
    sget-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_CANCEL:Landroid/animation/Animator$AnimatorCaller;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    .line 1199
    :cond_2e
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1200
    return-void

    .line 1179
    :cond_32
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/Animator;
    .registers 2

    .line 79
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clone()Landroid/animation/ValueAnimator;
    .registers 8

    .line 1672
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1673
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    .line 1674
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1676
    :cond_13
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1677
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1678
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 1679
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1680
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1681
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1682
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1683
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1684
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1685
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1686
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1687
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1688
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1689
    const/4 v2, 0x0

    iput v2, v0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1690
    iput v2, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1691
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 1692
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1694
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1695
    .local v1, "oldValues":[Landroid/animation/PropertyValuesHolder;
    if-eqz v1, :cond_65

    .line 1696
    array-length v2, v1

    .line 1697
    .local v2, "numValues":I
    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    iput-object v3, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1698
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1699
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4d
    if-ge v3, v2, :cond_65

    .line 1700
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1701
    .local v4, "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v3

    .line 1702
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    .end local v4    # "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 1705
    .end local v2    # "numValues":I
    .end local v3    # "i":I
    :cond_65
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o commitAnimationFrame(J)V
    .registers 7
    .param p1, "frameTime"    # J

    .line 1380
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    if-nez v0, :cond_16

    .line 1381
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1382
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    sub-long v0, p1, v0

    .line 1383
    .local v0, "adjustment":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_16

    .line 1384
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1390
    .end local v0    # "adjustment":J
    :cond_16
    return-void
.end method

.method blacklist completeEndAnimation(ZLjava/lang/String;)V
    .registers 4
    .param p1, "isReversing"    # Z
    .param p2, "notifyListenerTraceName"    # Ljava/lang/String;

    .line 1329
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1330
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1331
    invoke-super {p0, p1, p2}, Landroid/animation/Animator;->completeEndAnimation(ZLjava/lang/String;)V

    .line 1333
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1334
    return-void
.end method

.method public final greylist-max-o doAnimationFrame(J)Z
    .registers 11
    .param p1, "frameTime"    # J

    .line 1533
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    .line 1536
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v0, :cond_e

    .line 1537
    move-wide v0, p1

    goto :goto_18

    .line 1538
    :cond_e
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    long-to-float v0, v0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v0, p1

    :goto_18
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1542
    :cond_1a
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 1543
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1544
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    .line 1545
    return v1

    .line 1546
    :cond_25
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v0, :cond_3a

    .line 1547
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1548
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_3a

    .line 1550
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1554
    :cond_3a
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    if-nez v0, :cond_53

    .line 1557
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    cmp-long v0, v6, p1

    if-lez v0, :cond_4e

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4e

    .line 1561
    return v1

    .line 1565
    :cond_4e
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1566
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1570
    :cond_53
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    cmp-long v0, v6, v2

    if-gez v0, :cond_71

    .line 1571
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6f

    .line 1572
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v2

    long-to-float v0, v2

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v0, v2

    float-to-long v2, v0

    .line 1573
    .local v2, "seekTime":J
    sub-long v6, p1, v2

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1574
    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1576
    .end local v2    # "seekTime":J
    :cond_6f
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1578
    :cond_71
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1583
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1584
    .local v0, "currentTime":J
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animateBasedOnTime(J)Z

    move-result v2

    .line 1586
    .local v2, "finished":Z
    if-eqz v2, :cond_82

    .line 1587
    invoke-direct {p0, v5}, Landroid/animation/ValueAnimator;->endAnimation(Z)V

    .line 1589
    :cond_82
    return v2
.end method

.method public whitelist end()V
    .registers 4

    .line 1204
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1207
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1209
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1210
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    goto :goto_18

    .line 1211
    :cond_11
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_18

    .line 1212
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1214
    :cond_18
    :goto_18
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v0, v2}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    goto :goto_26

    :cond_24
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_26
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1215
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_31

    .line 1216
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->consumePendingEndListeners(Z)Z

    .line 1217
    return-void

    .line 1219
    :cond_31
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1220
    return-void

    .line 1205
    :cond_35
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAnimatedFraction()F
    .registers 2

    .line 1634
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public whitelist getAnimatedValue()Ljava/lang/Object;
    .registers 3

    .line 943
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 944
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 947
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 961
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    .line 962
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_f

    .line 963
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 966
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getAnimationHandler()Landroid/animation/AnimationHandler;
    .registers 2

    .line 1791
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mAnimationHandler:Landroid/animation/AnimationHandler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mAnimationHandler:Landroid/animation/AnimationHandler;

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public whitelist getCurrentPlayTime()J
    .registers 6

    .line 849
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    goto :goto_33

    .line 852
    :cond_10
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1e

    .line 853
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    .line 855
    :cond_1e
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v0

    .line 856
    .local v0, "durationScale":F
    cmpl-float v1, v0, v1

    if-nez v1, :cond_28

    .line 857
    const/high16 v0, 0x3f800000    # 1.0f

    .line 859
    :cond_28
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v1, v1

    return-wide v1

    .line 850
    .end local v0    # "durationScale":F
    :cond_33
    :goto_33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 710
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 1079
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method greylist-max-o getNameForTrace()Ljava/lang/String;
    .registers 2

    .line 1371
    const-string v0, "animator"

    return-object v0
.end method

.method public whitelist getRepeatCount()I
    .registers 2

    .line 988
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public whitelist getRepeatMode()I
    .registers 2

    .line 1009
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public whitelist getStartDelay()J
    .registers 3

    .line 870
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public whitelist getTotalDuration()J
    .registers 7

    .line 715
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 716
    const-wide/16 v0, -0x1

    return-wide v0

    .line 718
    :cond_8
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getValues()[Landroid/animation/PropertyValuesHolder;
    .registers 2

    .line 639
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method greylist-max-o initAnimation()V
    .registers 4

    .line 654
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1b

    .line 655
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_18

    .line 656
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    .line 657
    .local v0, "numValues":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_18

    .line 658
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 661
    .end local v0    # "numValues":I
    .end local v1    # "i":I
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 663
    :cond_1b
    return-void
.end method

.method greylist-max-o isInitialized()Z
    .registers 2

    .line 1522
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return v0
.end method

.method public whitelist isRunning()Z
    .registers 2

    .line 1249
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return v0
.end method

.method public whitelist isStarted()Z
    .registers 2

    .line 1254
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public greylist-max-o overrideDurationScale(F)V
    .registers 2
    .param p1, "durationScale"    # F

    .line 692
    iput p1, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    .line 693
    return-void
.end method

.method public whitelist pause()V
    .registers 4

    .line 1239
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1240
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 1241
    if-nez v0, :cond_12

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_12

    .line 1242
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1243
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1245
    :cond_12
    return-void
.end method

.method greylist-max-o pulseAnimationFrame(J)Z
    .registers 4
    .param p1, "frameTime"    # J

    .line 1594
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-eqz v0, :cond_6

    .line 1601
    const/4 v0, 0x0

    return v0

    .line 1603
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public whitelist removeAllUpdateListeners()V
    .registers 2

    .line 1030
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1031
    return-void

    .line 1033
    :cond_5
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1035
    return-void
.end method

.method public whitelist removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1044
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1045
    return-void

    .line 1047
    :cond_5
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1048
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 1049
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1051
    :cond_15
    return-void
.end method

.method public whitelist resume()V
    .registers 5

    .line 1224
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1228
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-nez v0, :cond_1c

    .line 1229
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1230
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 1231
    invoke-direct {p0, v2, v3}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    .line 1234
    :cond_1c
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 1235
    return-void

    .line 1225
    :cond_20
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be resumed from the same thread that the animator was started on"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reverse()V
    .registers 11

    .line 1266
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 1267
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1268
    .local v2, "currentTime":J
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v4, v2, v4

    .line 1269
    .local v4, "currentPlayTime":J
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 1270
    .local v6, "timeLeft":J
    sub-long v8, v2, v6

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1271
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1272
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1273
    .end local v2    # "currentTime":J
    .end local v4    # "currentPlayTime":J
    .end local v6    # "timeLeft":J
    goto :goto_30

    :cond_20
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v0, :cond_2d

    .line 1274
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1275
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_30

    .line 1277
    :cond_2d
    invoke-direct {p0, v1}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 1279
    :goto_30
    return-void
.end method

.method public greylist-max-o setAllowRunningAsynchronously(Z)V
    .registers 2
    .param p1, "mayRunAsync"    # Z

    .line 1784
    return-void
.end method

.method public blacklist setAnimationHandler(Landroid/animation/AnimationHandler;)V
    .registers 2
    .param p1, "animationHandler"    # Landroid/animation/AnimationHandler;

    .line 1800
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 1801
    return-void
.end method

.method public whitelist setCurrentFraction(F)V
    .registers 8
    .param p1, "fraction"    # F

    .line 755
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 756
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 757
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 758
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 759
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    .line 760
    .local v0, "seekTime":J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 763
    .local v2, "currentTime":J
    sub-long v4, v2, v0

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 764
    .end local v0    # "seekTime":J
    .end local v2    # "currentTime":J
    goto :goto_22

    .line 767
    :cond_20
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 769
    :goto_22
    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 770
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, p1, v0}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    .line 771
    .local v0, "currentIterationFraction":F
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 772
    return-void
.end method

.method public whitelist setCurrentPlayTime(J)V
    .registers 7
    .param p1, "playTime"    # J

    .line 733
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    long-to-float v0, p1

    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_10

    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    .line 734
    .local v0, "fraction":F
    :goto_10
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 735
    return-void
.end method

.method public bridge synthetic whitelist setDuration(J)Landroid/animation/Animator;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setDuration(J)Landroid/animation/ValueAnimator;
    .registers 6
    .param p1, "duration"    # J

    .line 676
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 680
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 681
    return-object p0

    .line 677
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 4
    .param p1, "value"    # Landroid/animation/TypeEvaluator;

    .line 1099
    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 1100
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1102
    :cond_13
    return-void
.end method

.method public varargs whitelist setFloatValues([F)V
    .registers 5
    .param p1, "values"    # [F

    .line 560
    if-eqz p1, :cond_2a

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2a

    .line 563
    :cond_6
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 566
    :cond_11
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 567
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_27

    .line 564
    .end local v0    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_19
    :goto_19
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 570
    :goto_27
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 571
    return-void

    .line 561
    :cond_2a
    :goto_2a
    return-void
.end method

.method public varargs whitelist setIntValues([I)V
    .registers 5
    .param p1, "values"    # [I

    .line 532
    if-eqz p1, :cond_2a

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2a

    .line 535
    :cond_6
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 538
    :cond_11
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 539
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_27

    .line 536
    .end local v0    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_19
    :goto_19
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 542
    :goto_27
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 543
    return-void

    .line 533
    :cond_2a
    :goto_2a
    return-void
.end method

.method public whitelist setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 3
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .line 1065
    if-eqz p1, :cond_5

    .line 1066
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_c

    .line 1068
    :cond_5
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 1070
    :goto_c
    return-void
.end method

.method public varargs whitelist setObjectValues([Ljava/lang/Object;)V
    .registers 6
    .param p1, "values"    # [Ljava/lang/Object;

    .line 597
    if-eqz p1, :cond_2b

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2b

    .line 600
    :cond_6
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 603
    :cond_11
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 604
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_28

    .line 601
    .end local v0    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_19
    :goto_19
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 607
    :goto_28
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 608
    return-void

    .line 598
    :cond_2b
    :goto_2b
    return-void
.end method

.method public whitelist setRepeatCount(I)V
    .registers 2
    .param p1, "value"    # I

    .line 979
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 980
    return-void
.end method

.method public whitelist setRepeatMode(I)V
    .registers 2
    .param p1, "value"    # I

    .line 999
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 1000
    return-void
.end method

.method public whitelist setStartDelay(J)V
    .registers 5
    .param p1, "startDelay"    # J

    .line 883
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    .line 884
    const-string v0, "ValueAnimator"

    const-string v1, "Start delay should always be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-wide/16 p1, 0x0

    .line 887
    :cond_f
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 888
    return-void
.end method

.method public varargs whitelist setValues([Landroid/animation/PropertyValuesHolder;)V
    .registers 7
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .line 619
    array-length v0, p1

    .line 620
    .local v0, "numValues":I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 621
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 622
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1b

    .line 623
    aget-object v2, p1, v1

    .line 624
    .local v2, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .end local v2    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 627
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 628
    return-void
.end method

.method greylist-max-o skipToEndValue(Z)V
    .registers 6
    .param p1, "inReverse"    # Z

    .line 1511
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1512
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1513
    .local v0, "endFraction":F
    :goto_9
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_15

    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    if-ne v1, v2, :cond_15

    .line 1515
    const/4 v0, 0x0

    .line 1517
    :cond_15
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1518
    return-void
.end method

.method public whitelist start()V
    .registers 2

    .line 1173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 1174
    return-void
.end method

.method greylist-max-o startWithoutPulsing(Z)V
    .registers 3
    .param p1, "inReverse"    # Z

    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1163
    if-eqz p1, :cond_9

    .line 1164
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_c

    .line 1166
    :cond_9
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 1168
    :goto_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1169
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1739
    .local v0, "returnVal":Ljava/lang/String;
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_47

    .line 1740
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_47

    .line 1741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1740
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1744
    .end local v1    # "i":I
    :cond_47
    return-object v0
.end method
