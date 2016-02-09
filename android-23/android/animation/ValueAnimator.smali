.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$AnimationHandler;,
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ValueAnimator"

.field protected static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDurationScale:F


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mPauseTime:J

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mResumed:Z

.field private mReversing:Z

.field private mRunning:Z

.field mSeekFraction:F

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field mStartTime:J

.field mStartTimeCommitted:Z

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/animation/ValueAnimator;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Landroid/animation/ValueAnimator;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/animation/ValueAnimator;J)Z
    .locals 1
    .param p1, "currentTime"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 0
    .param p1, "handler"    # Landroid/animation/ValueAnimator$AnimationHandler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@4
    .line 140
    new-instance v0, Ljava/lang/ThreadLocal;

    #@6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@9
    .line 139
    sput-object v0, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    #@b
    .line 144
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@d
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@10
    .line 143
    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    #@12
    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 308
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    #@6
    .line 118
    const/high16 v0, -0x40800000    # -1.0f

    #@8
    iput v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@a
    .line 131
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@c
    .line 150
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@e
    .line 165
    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@10
    .line 170
    const/4 v0, 0x0

    #@11
    iput v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    #@13
    .line 175
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    #@15
    .line 191
    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@17
    .line 201
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@19
    .line 207
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@1b
    .line 214
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    #@1d
    .line 220
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@1f
    .line 227
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@21
    const/high16 v1, 0x43960000    # 300.0f

    #@23
    mul-float/2addr v0, v1

    #@24
    float-to-long v0, v0

    #@25
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@27
    .line 228
    const-wide/16 v0, 0x12c

    #@29
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    #@2b
    .line 231
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@2d
    .line 232
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    #@2f
    .line 236
    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@31
    .line 243
    const/4 v0, 0x1

    #@32
    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    #@34
    .line 250
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    #@36
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@38
    .line 255
    const/4 v0, 0x0

    #@39
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@3b
    .line 308
    return-void
.end method

.method public static clearAllAnimations()V
    .locals 2

    #@0
    .prologue
    .line 1542
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    #@8
    .line 1543
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v0, :cond_0

    #@a
    .line 1544
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@f
    .line 1545
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@14
    .line 1546
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@19
    .line 1541
    :cond_0
    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 9
    .param p1, "currentTime"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v6, 0x1

    #@4
    .line 1291
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1292
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    #@a
    .line 1293
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    #@c
    .line 1295
    :cond_0
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@e
    if-eqz v2, :cond_2

    #@10
    .line 1296
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@12
    cmp-long v2, v2, v4

    #@14
    if-gez v2, :cond_1

    #@16
    .line 1297
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@18
    .line 1299
    :cond_1
    return v7

    #@19
    .line 1300
    :cond_2
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@1b
    if-eqz v2, :cond_3

    #@1d
    .line 1301
    iput-boolean v7, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@1f
    .line 1302
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@21
    cmp-long v2, v2, v4

    #@23
    if-lez v2, :cond_3

    #@25
    .line 1304
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    #@27
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@29
    sub-long v4, p1, v4

    #@2b
    add-long/2addr v2, v4

    #@2c
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    #@2e
    .line 1307
    :cond_3
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    #@30
    sub-long v0, p1, v2

    #@32
    .line 1308
    .local v0, "deltaTime":J
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@34
    cmp-long v2, v0, v2

    #@36
    if-lez v2, :cond_4

    #@38
    .line 1310
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    #@3a
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@3c
    add-long/2addr v2, v4

    #@3d
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@3f
    .line 1311
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@41
    .line 1312
    iput v6, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@43
    .line 1313
    return v6

    #@44
    .line 1315
    :cond_4
    return v7
.end method

.method public static getCurrentAnimationsCount()I
    .locals 2

    #@0
    .prologue
    .line 1531
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    #@8
    .line 1532
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v0, :cond_0

    #@a
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0
.end method

.method public static getDurationScale()F
    .locals 1

    #@0
    .prologue
    .line 300
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@2
    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    #@0
    .prologue
    .line 850
    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method private static getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1551
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    #@3
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    #@9
    .line 1552
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-nez v0, :cond_0

    #@b
    .line 1553
    new-instance v0, Landroid/animation/ValueAnimator$AnimationHandler;

    #@d
    .end local v0    # "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    invoke-direct {v0, v2}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>(Landroid/animation/ValueAnimator$AnimationHandler;)V

    #@10
    .line 1554
    .restart local v0    # "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@15
    .line 1556
    :cond_0
    return-object v0
.end method

.method private notifyStartListeners()V
    .locals 4

    #@0
    .prologue
    .line 1043
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 1051
    :cond_0
    const/4 v3, 0x1

    #@9
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    #@b
    .line 1042
    return-void

    #@c
    .line 1045
    :cond_1
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/util/ArrayList;

    #@14
    .line 1046
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v1

    #@18
    .line 1047
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@1b
    .line 1048
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    #@21
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    #@24
    .line 1047
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0
.end method

.method public static varargs ofArgb([I)Landroid/animation/ValueAnimator;
    .locals 2
    .param p0, "values"    # [I

    #@0
    .prologue
    .line 340
    new-instance v0, Landroid/animation/ValueAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@5
    .line 341
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    #@8
    .line 342
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@f
    .line 343
    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [F

    #@0
    .prologue
    .line 358
    new-instance v0, Landroid/animation/ValueAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@5
    .line 359
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    #@8
    .line 360
    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [I

    #@0
    .prologue
    .line 323
    new-instance v0, Landroid/animation/ValueAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@5
    .line 324
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    #@8
    .line 325
    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 395
    new-instance v0, Landroid/animation/ValueAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@5
    .line 396
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@8
    .line 397
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@b
    .line 398
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [Landroid/animation/PropertyValuesHolder;

    #@0
    .prologue
    .line 372
    new-instance v0, Landroid/animation/ValueAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@5
    .line 373
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@8
    .line 374
    return-object v0
.end method

.method public static setDurationScale(F)V
    .locals 0
    .param p0, "durationScale"    # F

    #@0
    .prologue
    .line 293
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@2
    .line 292
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    #@0
    .prologue
    .line 866
    invoke-static {p0, p1}, Landroid/view/Choreographer;->setFrameDelay(J)V

    #@3
    .line 865
    return-void
.end method

.method private start(Z)V
    .locals 10
    .param p1, "playBackwards"    # Z

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/high16 v7, 0x3f800000    # 1.0f

    #@4
    const/4 v3, 0x1

    #@5
    const/4 v4, 0x0

    #@6
    .line 1068
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@9
    move-result-object v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 1069
    new-instance v2, Landroid/util/AndroidRuntimeException;

    #@e
    const-string/jumbo v3, "Animators may only be run on Looper threads"

    #@11
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 1071
    :cond_0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@17
    .line 1072
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@19
    .line 1073
    if-eqz p1, :cond_1

    #@1b
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@1d
    const/high16 v5, -0x40800000    # -1.0f

    #@1f
    cmpl-float v2, v2, v5

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 1074
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@25
    cmpl-float v2, v2, v6

    #@27
    if-nez v2, :cond_6

    #@29
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@2b
    if-nez v2, :cond_6

    #@2d
    .line 1076
    iput v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@2f
    .line 1082
    :goto_0
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@31
    float-to-int v2, v2

    #@32
    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@34
    .line 1083
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@36
    rem-float/2addr v2, v7

    #@37
    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@39
    .line 1085
    :cond_1
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@3b
    if-lez v2, :cond_3

    #@3d
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    #@3f
    const/4 v5, 0x2

    #@40
    if-ne v2, v5, :cond_3

    #@42
    .line 1086
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@44
    iget v5, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@46
    add-int/lit8 v5, v5, 0x1

    #@48
    if-lt v2, v5, :cond_2

    #@4a
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@4c
    if-ne v2, v8, :cond_3

    #@4e
    .line 1089
    :cond_2
    if-eqz p1, :cond_9

    #@50
    .line 1090
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@52
    rem-int/lit8 v2, v2, 0x2

    #@54
    if-nez v2, :cond_8

    #@56
    move v2, v3

    #@57
    :goto_1
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@59
    .line 1095
    :cond_3
    :goto_2
    iget v1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@5b
    .line 1096
    .local v1, "prevPlayingState":I
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@5d
    .line 1097
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@5f
    .line 1098
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    #@61
    .line 1099
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@63
    .line 1100
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->updateScaledDuration()V

    #@66
    .line 1101
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    #@69
    move-result-object v0

    #@6a
    .line 1102
    .local v0, "animationHandler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget-object v2, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    #@6c
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6f
    .line 1103
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@71
    const-wide/16 v8, 0x0

    #@73
    cmp-long v2, v6, v8

    #@75
    if-nez v2, :cond_5

    #@77
    .line 1105
    const/4 v2, 0x2

    #@78
    if-eq v1, v2, :cond_4

    #@7a
    .line 1106
    const-wide/16 v6, 0x0

    #@7c
    invoke-virtual {p0, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    #@7f
    .line 1108
    :cond_4
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@81
    .line 1109
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@83
    .line 1110
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    #@86
    .line 1112
    :cond_5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator$AnimationHandler;->start()V

    #@89
    .line 1067
    return-void

    #@8a
    .line 1077
    .end local v0    # "animationHandler":Landroid/animation/ValueAnimator$AnimationHandler;
    .end local v1    # "prevPlayingState":I
    :cond_6
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@8c
    if-ne v2, v8, :cond_7

    #@8e
    .line 1078
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@90
    rem-float/2addr v2, v7

    #@91
    sub-float v2, v7, v2

    #@93
    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@95
    goto :goto_0

    #@96
    .line 1080
    :cond_7
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@98
    add-int/lit8 v2, v2, 0x1

    #@9a
    int-to-float v2, v2

    #@9b
    iget v5, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@9d
    int-to-float v5, v5

    #@9e
    iget v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@a0
    add-float/2addr v5, v6

    #@a1
    sub-float/2addr v2, v5

    #@a2
    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@a4
    goto :goto_0

    #@a5
    :cond_8
    move v2, v4

    #@a6
    .line 1090
    goto :goto_1

    #@a7
    .line 1092
    :cond_9
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@a9
    rem-int/lit8 v2, v2, 0x2

    #@ab
    if-eqz v2, :cond_a

    #@ad
    move v2, v3

    #@ae
    :goto_3
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@b0
    goto :goto_2

    #@b1
    :cond_a
    move v2, v4

    #@b2
    goto :goto_3
.end method

.method private startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 4
    .param p1, "handler"    # Landroid/animation/ValueAnimator$AnimationHandler;

    #@0
    .prologue
    const-wide/16 v2, 0x8

    #@2
    .line 1259
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1260
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 1261
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    .line 1260
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@13
    .line 1263
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    #@16
    .line 1264
    iget-object v0, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 1265
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@1d
    const-wide/16 v2, 0x0

    #@1f
    cmp-long v0, v0, v2

    #@21
    if-lez v0, :cond_1

    #@23
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 1268
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    #@2a
    .line 1258
    :cond_1
    return-void
.end method

.method private updateScaledDuration()V
    .locals 2

    #@0
    .prologue
    .line 564
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    #@2
    long-to-float v0, v0

    #@3
    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@5
    mul-float/2addr v0, v1

    #@6
    float-to-long v0, v0

    #@7
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@9
    .line 563
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@0
    .prologue
    .line 958
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 959
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@b
    .line 961
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 957
    return-void
.end method

.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 1454
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@5
    move-result p1

    #@6
    .line 1455
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    #@8
    .line 1456
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@a
    array-length v2, v3

    #@b
    .line 1457
    .local v2, "numValues":I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@e
    .line 1458
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@10
    aget-object v3, v3, v0

    #@12
    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    #@15
    .line 1457
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1460
    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 1461
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v1

    #@22
    .line 1462
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@23
    :goto_1
    if-ge v0, v1, :cond_1

    #@25
    .line 1463
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@2d
    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    #@30
    .line 1462
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1

    #@33
    .line 1453
    .end local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method animationFrame(J)Z
    .locals 13
    .param p1, "currentTime"    # J

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v9, -0x1

    #@4
    const/high16 v8, 0x3f800000    # 1.0f

    #@6
    .line 1347
    const/4 v0, 0x0

    #@7
    .line 1348
    .local v0, "done":Z
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@9
    packed-switch v4, :pswitch_data_0

    #@c
    .line 1388
    :goto_0
    return v0

    #@d
    .line 1351
    :pswitch_0
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@f
    cmp-long v4, v6, v10

    #@11
    if-lez v4, :cond_2

    #@13
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@15
    sub-long v6, p1, v6

    #@17
    long-to-float v4, v6

    #@18
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@1a
    long-to-float v6, v6

    #@1b
    div-float v1, v4, v6

    #@1d
    .line 1352
    .local v1, "fraction":F
    :goto_1
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@1f
    cmp-long v4, v6, v10

    #@21
    if-nez v4, :cond_0

    #@23
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@25
    if-eq v4, v9, :cond_0

    #@27
    .line 1354
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@29
    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@2b
    .line 1355
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@2d
    if-nez v4, :cond_0

    #@2f
    .line 1356
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@31
    .line 1359
    :cond_0
    cmpl-float v4, v1, v8

    #@33
    if-ltz v4, :cond_5

    #@35
    .line 1360
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@37
    iget v6, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@39
    if-lt v4, v6, :cond_1

    #@3b
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@3d
    if-ne v4, v9, :cond_8

    #@3f
    .line 1362
    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@41
    if-eqz v4, :cond_3

    #@43
    .line 1363
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v3

    #@49
    .line 1364
    .local v3, "numListeners":I
    const/4 v2, 0x0

    #@4a
    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_3

    #@4c
    .line 1365
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v4

    #@52
    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    #@54
    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    #@57
    .line 1364
    add-int/lit8 v2, v2, 0x1

    #@59
    goto :goto_2

    #@5a
    .line 1351
    .end local v1    # "fraction":F
    .end local v2    # "i":I
    .end local v3    # "numListeners":I
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    #@5c
    .restart local v1    # "fraction":F
    goto :goto_1

    #@5d
    .line 1368
    :cond_3
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    #@5f
    const/4 v6, 0x2

    #@60
    if-ne v4, v6, :cond_4

    #@62
    .line 1369
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@64
    if-eqz v4, :cond_7

    #@66
    move v4, v5

    #@67
    :goto_3
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@69
    .line 1371
    :cond_4
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@6b
    float-to-int v5, v1

    #@6c
    add-int/2addr v4, v5

    #@6d
    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@6f
    .line 1372
    rem-float/2addr v1, v8

    #@70
    .line 1373
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@72
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@74
    add-long/2addr v4, v6

    #@75
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@77
    .line 1381
    :cond_5
    :goto_4
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@79
    if-eqz v4, :cond_6

    #@7b
    .line 1382
    sub-float v1, v8, v1

    #@7d
    .line 1384
    :cond_6
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    #@80
    goto :goto_0

    #@81
    .line 1369
    :cond_7
    const/4 v4, 0x1

    #@82
    goto :goto_3

    #@83
    .line 1377
    :cond_8
    const/4 v0, 0x1

    #@84
    .line 1378
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    #@87
    move-result v1

    #@88
    goto :goto_4

    #@89
    .line 1348
    nop

    #@8a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public canReverse()Z
    .locals 1

    #@0
    .prologue
    .line 1216
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public cancel()V
    .locals 5

    #@0
    .prologue
    .line 1124
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    #@3
    move-result-object v0

    #@4
    .line 1125
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@6
    if-nez v4, :cond_0

    #@8
    .line 1126
    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v4

    #@e
    .line 1125
    if-nez v4, :cond_0

    #@10
    .line 1127
    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v4

    #@16
    .line 1125
    if-eqz v4, :cond_4

    #@18
    .line 1129
    :cond_0
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@1a
    if-nez v4, :cond_1

    #@1c
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@1e
    if-eqz v4, :cond_3

    #@20
    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@22
    if-eqz v4, :cond_3

    #@24
    .line 1130
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@26
    if-nez v4, :cond_2

    #@28
    .line 1132
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    #@2b
    .line 1135
    :cond_2
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Ljava/util/ArrayList;

    #@33
    .line 1136
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v2

    #@37
    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_3

    #@3d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    #@43
    .line 1137
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    #@46
    goto :goto_0

    #@47
    .line 1140
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_3
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    #@4a
    .line 1121
    :cond_4
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    #@0
    .prologue
    .line 1469
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 1470
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/animation/ValueAnimator;

    #@9
    .line 1471
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 1472
    new-instance v5, Ljava/util/ArrayList;

    #@f
    iget-object v6, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@11
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@14
    iput-object v5, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@16
    .line 1474
    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    #@18
    iput v5, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@1a
    .line 1475
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@1c
    .line 1476
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@1e
    .line 1477
    iput v7, v0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@20
    .line 1478
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@22
    .line 1479
    iput v7, v0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@24
    .line 1480
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    #@26
    .line 1481
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@28
    .line 1482
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@2a
    .line 1483
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@2c
    .line 1484
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@2e
    .line 1485
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    #@30
    .line 1486
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@32
    .line 1487
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@34
    .line 1488
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@36
    .line 1489
    const/4 v5, 0x0

    #@37
    iput v5, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    #@39
    .line 1490
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    #@3b
    .line 1492
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@3d
    .line 1493
    .local v4, "oldValues":[Landroid/animation/PropertyValuesHolder;
    if-eqz v4, :cond_1

    #@3f
    .line 1494
    array-length v3, v4

    #@40
    .line 1495
    .local v3, "numValues":I
    new-array v5, v3, [Landroid/animation/PropertyValuesHolder;

    #@42
    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@44
    .line 1496
    new-instance v5, Ljava/util/HashMap;

    #@46
    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    #@49
    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    #@4b
    .line 1497
    const/4 v1, 0x0

    #@4c
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@4e
    .line 1498
    aget-object v5, v4, v1

    #@50
    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    #@53
    move-result-object v2

    #@54
    .line 1499
    .local v2, "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@56
    aput-object v2, v5, v1

    #@58
    .line 1500
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    #@5a
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 1497
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_0

    #@64
    .line 1503
    .end local v1    # "i":I
    .end local v2    # "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "numValues":I
    :cond_1
    return-object v0
.end method

.method commitAnimationFrame(J)V
    .locals 3
    .param p1, "adjustment"    # J

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1323
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1324
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@7
    .line 1325
    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const-wide/16 v0, 0x0

    #@d
    cmp-long v0, p1, v0

    #@f
    if-lez v0, :cond_0

    #@11
    .line 1326
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@13
    add-long/2addr v0, p1

    #@14
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@16
    .line 1322
    :cond_0
    return-void
.end method

.method final doAnimationFrame(J)Z
    .locals 9
    .param p1, "frameTime"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 1398
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@5
    if-nez v4, :cond_0

    #@7
    .line 1399
    const/4 v4, 0x1

    #@8
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@a
    .line 1400
    iget v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@c
    const/4 v5, 0x0

    #@d
    cmpg-float v4, v4, v5

    #@f
    if-gez v4, :cond_2

    #@11
    .line 1401
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@13
    .line 1407
    :goto_0
    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@15
    .line 1409
    :cond_0
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@17
    if-eqz v4, :cond_3

    #@19
    .line 1410
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@1b
    cmp-long v4, v4, v6

    #@1d
    if-gez v4, :cond_1

    #@1f
    .line 1411
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@21
    .line 1413
    :cond_1
    return v8

    #@22
    .line 1403
    :cond_2
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@24
    long-to-float v4, v4

    #@25
    iget v5, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@27
    mul-float/2addr v4, v5

    #@28
    float-to-long v2, v4

    #@29
    .line 1404
    .local v2, "seekTime":J
    sub-long v4, p1, v2

    #@2b
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@2d
    .line 1405
    const/high16 v4, -0x40800000    # -1.0f

    #@2f
    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@31
    goto :goto_0

    #@32
    .line 1414
    .end local v2    # "seekTime":J
    :cond_3
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@34
    if-eqz v4, :cond_4

    #@36
    .line 1415
    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@38
    .line 1416
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@3a
    cmp-long v4, v4, v6

    #@3c
    if-lez v4, :cond_4

    #@3e
    .line 1418
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@40
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@42
    sub-long v6, p1, v6

    #@44
    add-long/2addr v4, v6

    #@45
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@47
    .line 1419
    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@49
    .line 1426
    :cond_4
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@4b
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@4e
    move-result-wide v0

    #@4f
    .line 1427
    .local v0, "currentTime":J
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    #@52
    move-result v4

    #@53
    return v4
.end method

.method public end()V
    .locals 2

    #@0
    .prologue
    .line 1146
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    #@3
    move-result-object v0

    #@4
    .line 1147
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 1152
    :cond_0
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@16
    if-nez v1, :cond_1

    #@18
    .line 1153
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    #@1b
    .line 1155
    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@1d
    if-eqz v1, :cond_3

    #@1f
    const/4 v1, 0x0

    #@20
    :goto_1
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    #@23
    .line 1156
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    #@26
    .line 1145
    return-void

    #@27
    .line 1149
    :cond_2
    const/4 v1, 0x0

    #@28
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    #@2a
    .line 1150
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    #@2d
    .line 1151
    const/4 v1, 0x1

    #@2e
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@30
    goto :goto_0

    #@31
    .line 1155
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    #@33
    goto :goto_1
.end method

.method protected endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 8
    .param p1, "handler"    # Landroid/animation/ValueAnimator$AnimationHandler;

    #@0
    .prologue
    const-wide/16 v6, 0x8

    #@2
    const/4 v4, 0x0

    #@3
    .line 1225
    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8
    .line 1226
    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    .line 1227
    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@12
    .line 1228
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@14
    .line 1229
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@16
    .line 1230
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@18
    if-nez v3, :cond_0

    #@1a
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@1c
    if-eqz v3, :cond_2

    #@1e
    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@20
    if-eqz v3, :cond_2

    #@22
    .line 1231
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@24
    if-nez v3, :cond_1

    #@26
    .line 1233
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    #@29
    .line 1236
    :cond_1
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Ljava/util/ArrayList;

    #@31
    .line 1237
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v1

    #@35
    .line 1238
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@36
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@38
    .line 1239
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    #@3e
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@41
    .line 1238
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1242
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_2
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@46
    .line 1243
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@48
    .line 1244
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    #@4a
    .line 1245
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@4c
    .line 1246
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@4e
    .line 1247
    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@50
    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@53
    move-result v3

    #@54
    if-eqz v3, :cond_3

    #@56
    .line 1249
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    .line 1250
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@5d
    move-result v4

    #@5e
    .line 1249
    invoke-static {v6, v7, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@61
    .line 1224
    :cond_3
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 1

    #@0
    .prologue
    .line 1437
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    #@2
    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 882
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@8
    array-length v0, v0

    #@9
    if-lez v0, :cond_0

    #@b
    .line 883
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@d
    aget-object v0, v0, v1

    #@f
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 886
    :cond_0
    return-object v2
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 900
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/animation/PropertyValuesHolder;

    #@9
    .line 901
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    #@b
    .line 902
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 905
    :cond_0
    return-object v2
.end method

.method public getCurrentPlayTime()J
    .locals 4

    #@0
    .prologue
    .line 653
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@6
    if-nez v0, :cond_1

    #@8
    .line 654
    :cond_0
    const-wide/16 v0, 0x0

    #@a
    return-wide v0

    #@b
    .line 656
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@e
    move-result-wide v0

    #@f
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@11
    sub-long/2addr v0, v2

    #@12
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    #@0
    .prologue
    .line 574
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    #@2
    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    .prologue
    .line 1017
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1276
    const-string/jumbo v0, "animator"

    #@3
    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    #@0
    .prologue
    .line 927
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@2
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    #@0
    .prologue
    .line 947
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    #@2
    return v0
.end method

.method public getStartDelay()J
    .locals 2

    #@0
    .prologue
    .line 822
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    #@2
    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    #@0
    .prologue
    .line 518
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@2
    return-object v0
.end method

.method initAnimation()V
    .locals 3

    #@0
    .prologue
    .line 533
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@2
    if-nez v2, :cond_1

    #@4
    .line 534
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@6
    array-length v1, v2

    #@7
    .line 535
    .local v1, "numValues":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 536
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@c
    aget-object v2, v2, v0

    #@e
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    #@11
    .line 535
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 538
    :cond_0
    const/4 v2, 0x1

    #@15
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@17
    .line 532
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1179
    iget v1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@3
    if-eq v1, v0, :cond_0

    #@5
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@7
    :cond_0
    return v0
.end method

.method public isStarted()Z
    .locals 1

    #@0
    .prologue
    .line 1184
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@2
    return v0
.end method

.method public pause()V
    .locals 4

    #@0
    .prologue
    .line 1169
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@2
    .line 1170
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    #@5
    .line 1171
    if-nez v0, :cond_0

    #@7
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1172
    const-wide/16 v2, -0x1

    #@d
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@f
    .line 1173
    const/4 v1, 0x0

    #@10
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@12
    .line 1168
    :cond_0
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 968
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 969
    return-void

    #@6
    .line 971
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@b
    .line 972
    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@d
    .line 967
    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 982
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 983
    return-void

    #@6
    .line 985
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b
    .line 986
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 987
    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@15
    .line 981
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    #@0
    .prologue
    .line 1161
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1162
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@7
    .line 1164
    :cond_0
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    #@a
    .line 1160
    return-void
.end method

.method public reverse()V
    .locals 12

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 1196
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@4
    if-eqz v6, :cond_0

    #@6
    move v6, v7

    #@7
    :goto_0
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@9
    .line 1197
    iget v6, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@b
    if-ne v6, v8, :cond_2

    #@d
    .line 1198
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@10
    move-result-wide v2

    #@11
    .line 1199
    .local v2, "currentTime":J
    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@13
    sub-long v0, v2, v10

    #@15
    .line 1200
    .local v0, "currentPlayTime":J
    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@17
    sub-long v4, v10, v0

    #@19
    .line 1201
    .local v4, "timeLeft":J
    sub-long v10, v2, v4

    #@1b
    iput-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@1d
    .line 1202
    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@1f
    .line 1203
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@21
    if-eqz v6, :cond_1

    #@23
    :goto_1
    iput-boolean v7, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@25
    .line 1195
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :goto_2
    return-void

    #@26
    :cond_0
    move v6, v8

    #@27
    .line 1196
    goto :goto_0

    #@28
    .restart local v0    # "currentPlayTime":J
    .restart local v2    # "currentTime":J
    .restart local v4    # "timeLeft":J
    :cond_1
    move v7, v8

    #@29
    .line 1203
    goto :goto_1

    #@2a
    .line 1204
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :cond_2
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@2c
    if-eqz v6, :cond_3

    #@2e
    .line 1205
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    #@31
    goto :goto_2

    #@32
    .line 1207
    :cond_3
    invoke-direct {p0, v8}, Landroid/animation/ValueAnimator;->start(Z)V

    #@35
    goto :goto_2
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0
    .param p1, "mayRunAsync"    # Z

    #@0
    .prologue
    .line 1605
    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 12
    .param p1, "fraction"    # F

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v6, 0x1

    #@3
    const/high16 v10, 0x3f800000    # 1.0f

    #@5
    .line 610
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    #@8
    .line 611
    const/4 v7, 0x0

    #@9
    cmpg-float v7, p1, v7

    #@b
    if-gez v7, :cond_0

    #@d
    .line 612
    const/4 p1, 0x0

    #@e
    .line 614
    :cond_0
    float-to-int v2, p1

    #@f
    .line 615
    .local v2, "iteration":I
    cmpl-float v7, p1, v10

    #@11
    if-nez v7, :cond_3

    #@13
    .line 616
    add-int/lit8 v2, v2, -0x1

    #@15
    .line 630
    :goto_0
    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    #@17
    .line 631
    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@19
    long-to-float v3, v8

    #@1a
    mul-float/2addr v3, p1

    #@1b
    float-to-long v4, v3

    #@1c
    .line 632
    .local v4, "seekTime":J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@1f
    move-result-wide v0

    #@20
    .line 633
    .local v0, "currentTime":J
    sub-long v8, v0, v4

    #@22
    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@24
    .line 634
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@26
    .line 635
    iget v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@28
    if-eq v3, v6, :cond_1

    #@2a
    .line 636
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@2c
    .line 637
    iput v11, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    #@2e
    .line 639
    :cond_1
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 640
    sub-float p1, v10, p1

    #@34
    .line 642
    :cond_2
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    #@37
    .line 609
    return-void

    #@38
    .line 617
    .end local v0    # "currentTime":J
    .end local v4    # "seekTime":J
    :cond_3
    cmpl-float v7, p1, v10

    #@3a
    if-lez v7, :cond_8

    #@3c
    .line 618
    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@3e
    add-int/lit8 v7, v7, 0x1

    #@40
    if-lt v2, v7, :cond_4

    #@42
    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@44
    const/4 v8, -0x1

    #@45
    if-ne v7, v8, :cond_7

    #@47
    .line 619
    :cond_4
    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    #@49
    if-ne v7, v11, :cond_6

    #@4b
    .line 620
    rem-int/lit8 v7, v2, 0x2

    #@4d
    if-eqz v7, :cond_5

    #@4f
    move v3, v6

    #@50
    :cond_5
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@52
    .line 622
    :cond_6
    rem-float/2addr p1, v10

    #@53
    .line 618
    goto :goto_0

    #@54
    .line 624
    :cond_7
    const/high16 p1, 0x3f800000    # 1.0f

    #@56
    .line 625
    add-int/lit8 v2, v2, -0x1

    #@58
    goto :goto_0

    #@59
    .line 628
    :cond_8
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@5b
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    #@5d
    goto :goto_0
.end method

.method public setCurrentPlayTime(J)V
    .locals 7
    .param p1, "playTime"    # J

    #@0
    .prologue
    .line 588
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    #@2
    const-wide/16 v4, 0x0

    #@4
    cmp-long v1, v2, v4

    #@6
    if-lez v1, :cond_0

    #@8
    long-to-float v1, p1

    #@9
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    #@b
    long-to-float v2, v2

    #@c
    div-float v0, v1, v2

    #@e
    .line 589
    .local v0, "fraction":F
    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    #@11
    .line 587
    return-void

    #@12
    .line 588
    .end local v0    # "fraction":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    #@14
    .restart local v0    # "fraction":F
    goto :goto_0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 553
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 554
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Animators cannot have negative duration: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 558
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    #@22
    .line 559
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->updateScaledDuration()V

    #@25
    .line 560
    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TypeEvaluator;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1037
    if-eqz p1, :cond_0

    #@3
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@9
    array-length v0, v0

    #@a
    if-lez v0, :cond_0

    #@c
    .line 1038
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@e
    aget-object v0, v0, v1

    #@10
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@13
    .line 1036
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .param p1, "values"    # [F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 444
    if-eqz p1, :cond_0

    #@3
    array-length v1, p1

    #@4
    if-nez v1, :cond_1

    #@6
    .line 445
    :cond_0
    return-void

    #@7
    .line 447
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@9
    if-eqz v1, :cond_2

    #@b
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@d
    array-length v1, v1

    #@e
    if-nez v1, :cond_3

    #@10
    .line 448
    :cond_2
    const/4 v1, 0x1

    #@11
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    #@13
    const-string/jumbo v2, ""

    #@16
    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@19
    move-result-object v2

    #@1a
    aput-object v2, v1, v3

    #@1c
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@1f
    .line 454
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@21
    .line 443
    return-void

    #@22
    .line 450
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@24
    aget-object v0, v1, v3

    #@26
    .line 451
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    #@29
    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .param p1, "values"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 416
    if-eqz p1, :cond_0

    #@3
    array-length v1, p1

    #@4
    if-nez v1, :cond_1

    #@6
    .line 417
    :cond_0
    return-void

    #@7
    .line 419
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@9
    if-eqz v1, :cond_2

    #@b
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@d
    array-length v1, v1

    #@e
    if-nez v1, :cond_3

    #@10
    .line 420
    :cond_2
    const/4 v1, 0x1

    #@11
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    #@13
    const-string/jumbo v2, ""

    #@16
    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@19
    move-result-object v2

    #@1a
    aput-object v2, v1, v3

    #@1c
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@1f
    .line 426
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@21
    .line 415
    return-void

    #@22
    .line 422
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@24
    aget-object v0, v1, v3

    #@26
    .line 423
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    #@29
    goto :goto_0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    #@0
    .prologue
    .line 1003
    if-eqz p1, :cond_0

    #@2
    .line 1004
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@4
    .line 1002
    :goto_0
    return-void

    #@5
    .line 1006
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #@7
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@a
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@c
    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5
    .param p1, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 476
    if-eqz p1, :cond_0

    #@4
    array-length v1, p1

    #@5
    if-nez v1, :cond_1

    #@7
    .line 477
    :cond_0
    return-void

    #@8
    .line 479
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@a
    if-eqz v1, :cond_2

    #@c
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@e
    array-length v1, v1

    #@f
    if-nez v1, :cond_3

    #@11
    .line 480
    :cond_2
    const/4 v1, 0x1

    #@12
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    #@14
    const-string/jumbo v2, ""

    #@17
    invoke-static {v2, v4, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@1a
    move-result-object v2

    #@1b
    aput-object v2, v1, v3

    #@1d
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@20
    .line 486
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@22
    .line 475
    return-void

    #@23
    .line 482
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@25
    aget-object v0, v1, v3

    #@27
    .line 483
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    #@2a
    goto :goto_0
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 918
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@2
    .line 917
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 938
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    #@2
    .line 937
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    #@0
    .prologue
    .line 833
    long-to-float v0, p1

    #@1
    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@3
    mul-float/2addr v0, v1

    #@4
    float-to-long v0, v0

    #@5
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@7
    .line 834
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    #@9
    .line 832
    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    #@0
    .prologue
    .line 498
    array-length v1, p1

    #@1
    .line 499
    .local v1, "numValues":I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@3
    .line 500
    new-instance v3, Ljava/util/HashMap;

    #@5
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    #@8
    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    #@a
    .line 501
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@d
    .line 502
    aget-object v2, p1, v0

    #@f
    .line 503
    .local v2, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    #@11
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 501
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 506
    .end local v2    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    #@1c
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@1e
    .line 497
    return-void
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 1117
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    #@4
    .line 1116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1561
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "ValueAnimator@"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->hashCode()I

    #@f
    move-result v3

    #@10
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 1562
    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 1563
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@23
    array-length v2, v2

    #@24
    if-ge v0, v2, :cond_0

    #@26
    .line 1564
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v3, "\n    "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@38
    aget-object v3, v3, v0

    #@3a
    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 1563
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_0

    #@49
    .line 1567
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
