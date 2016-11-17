.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ValueAnimator"

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDurationScale:F


# instance fields
.field private mAnimationEndRequested:Z

.field private mCurrentFraction:F

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLastFrameTime:J

.field private mOverallFraction:F

.field private mPauseTime:J

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
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 76
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@4
    .line 129
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@6
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@9
    .line 128
    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    #@b
    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 280
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    #@7
    .line 112
    const/high16 v0, -0x40800000    # -1.0f

    #@9
    iput v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@b
    .line 125
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@d
    .line 143
    iput v1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    #@f
    .line 149
    iput v1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    #@11
    .line 154
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    #@13
    .line 164
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@15
    .line 170
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@17
    .line 177
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    #@19
    .line 183
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@1b
    .line 188
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    #@1d
    .line 195
    const-wide/16 v0, 0x12c

    #@1f
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@21
    .line 200
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@23
    .line 204
    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@25
    .line 211
    const/4 v0, 0x1

    #@26
    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    #@28
    .line 218
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    #@2a
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2c
    .line 223
    const/4 v0, 0x0

    #@2d
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@2f
    .line 280
    return-void
.end method

.method private clampFraction(F)F
    .locals 2
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 652
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-gez v0, :cond_1

    #@5
    .line 653
    const/4 p1, 0x0

    #@6
    .line 657
    :cond_0
    :goto_0
    return p1

    #@7
    .line 654
    :cond_1
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@9
    const/4 v1, -0x1

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 655
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    int-to-float v0, v0

    #@11
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    #@14
    move-result p1

    #@15
    goto :goto_0
.end method

.method private endAnimation()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x8

    #@2
    const/4 v5, 0x0

    #@3
    .line 1132
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 1133
    return-void

    #@8
    .line 1135
    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    #@b
    move-result-object v0

    #@c
    .line 1136
    .local v0, "handler":Landroid/animation/AnimationHandler;
    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    #@f
    .line 1138
    const/4 v4, 0x1

    #@10
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    #@12
    .line 1139
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@14
    .line 1140
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@16
    if-nez v4, :cond_1

    #@18
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@1a
    if-eqz v4, :cond_3

    #@1c
    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@1e
    if-eqz v4, :cond_3

    #@20
    .line 1141
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@22
    if-nez v4, :cond_2

    #@24
    .line 1143
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    #@27
    .line 1146
    :cond_2
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Ljava/util/ArrayList;

    #@2f
    .line 1147
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v2

    #@33
    .line 1148
    .local v2, "numListeners":I
    const/4 v1, 0x0

    #@34
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@36
    .line 1149
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v4

    #@3a
    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    #@3c
    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@3f
    .line 1148
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 1152
    .end local v1    # "i":I
    .end local v2    # "numListeners":I
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_3
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@44
    .line 1153
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@46
    .line 1154
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    #@48
    .line 1155
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@4a
    .line 1156
    const-wide/16 v4, 0x0

    #@4c
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    #@4e
    .line 1157
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_4

    #@54
    .line 1158
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    .line 1159
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@5b
    move-result v5

    #@5c
    .line 1158
    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@5f
    .line 1131
    :cond_4
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    #@0
    .prologue
    .line 1412
    invoke-static {}, Landroid/animation/AnimationHandler;->getAnimationCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getCurrentIteration(F)I
    .locals 4
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 621
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    #@3
    move-result p1

    #@4
    .line 625
    float-to-double v2, p1

    #@5
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    #@8
    move-result-wide v0

    #@9
    .line 626
    .local v0, "iteration":D
    float-to-double v2, p1

    #@a
    cmpl-double v2, v2, v0

    #@c
    if-nez v2, :cond_0

    #@e
    const/4 v2, 0x0

    #@f
    cmpl-float v2, p1, v2

    #@11
    if-lez v2, :cond_0

    #@13
    .line 627
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@15
    sub-double/2addr v0, v2

    #@16
    .line 629
    :cond_0
    double-to-int v2, v0

    #@17
    return v2
.end method

.method private getCurrentIterationFraction(F)F
    .locals 3
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 638
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    #@3
    move-result p1

    #@4
    .line 639
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIteration(F)I

    #@7
    move-result v1

    #@8
    .line 640
    .local v1, "iteration":I
    int-to-float v2, v1

    #@9
    sub-float v0, p1, v2

    #@b
    .line 641
    .local v0, "currentFraction":F
    invoke-direct {p0, v1}, Landroid/animation/ValueAnimator;->shouldPlayBackward(I)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    const/high16 v2, 0x3f800000    # 1.0f

    #@13
    sub-float v0, v2, v0

    #@15
    .end local v0    # "currentFraction":F
    :cond_0
    return v0
.end method

.method public static getDurationScale()F
    .locals 1

    #@0
    .prologue
    .line 272
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@2
    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    #@0
    .prologue
    .line 745
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    #@3
    invoke-static {}, Landroid/animation/AnimationHandler;->getFrameDelay()J

    #@6
    move-result-wide v0

    #@7
    return-wide v0
.end method

.method private getScaledDuration()J
    .locals 2

    #@0
    .prologue
    .line 544
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@2
    long-to-float v0, v0

    #@3
    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@5
    mul-float/2addr v0, v1

    #@6
    float-to-long v0, v0

    #@7
    return-wide v0
.end method

.method private isPulsingInternal()Z
    .locals 4

    #@0
    .prologue
    .line 1192
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private notifyStartListeners()V
    .locals 4

    #@0
    .prologue
    .line 943
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 951
    :cond_0
    const/4 v3, 0x1

    #@9
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    #@b
    .line 942
    return-void

    #@c
    .line 945
    :cond_1
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/util/ArrayList;

    #@14
    .line 946
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v1

    #@18
    .line 947
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@1b
    .line 948
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    #@21
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    #@24
    .line 947
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0
.end method

.method public static varargs ofArgb([I)Landroid/animation/ValueAnimator;
    .locals 2
    .param p0, "values"    # [I

    #@0
    .prologue
    .line 312
    new-instance v0, Landroid/animation/ValueAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@5
    .line 313
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    #@8
    .line 314
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@f
    .line 315
    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [F

    #@0
    .prologue
    .line 330
    new-instance v0, Landroid/animation/ValueAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@5
    .line 331
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    #@8
    .line 332
    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [I

    #@0
    .prologue
    .line 295
    new-instance v0, Landroid/animation/ValueAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@5
    .line 296
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    #@8
    .line 297
    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 372
    new-instance v0, Landroid/animation/ValueAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@5
    .line 373
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@8
    .line 374
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@b
    .line 375
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [Landroid/animation/PropertyValuesHolder;

    #@0
    .prologue
    .line 344
    new-instance v0, Landroid/animation/ValueAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@5
    .line 345
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@8
    .line 346
    return-object v0
.end method

.method public static setDurationScale(F)V
    .locals 0
    .param p0, "durationScale"    # F

    #@0
    .prologue
    .line 265
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@2
    .line 264
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    #@0
    .prologue
    .line 765
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    #@3
    invoke-static {p0, p1}, Landroid/animation/AnimationHandler;->setFrameDelay(J)V

    #@6
    .line 764
    return-void
.end method

.method private shouldPlayBackward(I)Z
    .locals 4
    .param p1, "iteration"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 666
    if-lez p1, :cond_4

    #@4
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    #@6
    const/4 v3, 0x2

    #@7
    if-ne v2, v3, :cond_4

    #@9
    .line 667
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@b
    add-int/lit8 v2, v2, 0x1

    #@d
    if-lt p1, v2, :cond_0

    #@f
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@11
    const/4 v3, -0x1

    #@12
    if-ne v2, v3, :cond_4

    #@14
    .line 670
    :cond_0
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@16
    if-eqz v2, :cond_2

    #@18
    .line 671
    rem-int/lit8 v2, p1, 0x2

    #@1a
    if-nez v2, :cond_1

    #@1c
    :goto_0
    return v0

    #@1d
    :cond_1
    move v0, v1

    #@1e
    goto :goto_0

    #@1f
    .line 673
    :cond_2
    rem-int/lit8 v2, p1, 0x2

    #@21
    if-eqz v2, :cond_3

    #@23
    :goto_1
    return v0

    #@24
    :cond_3
    move v0, v1

    #@25
    goto :goto_1

    #@26
    .line 676
    :cond_4
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@28
    return v0
.end method

.method private start(Z)V
    .locals 12
    .param p1, "playBackwards"    # Z

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v9, 0x0

    #@3
    const/high16 v8, -0x40800000    # -1.0f

    #@5
    const-wide/16 v6, 0x0

    #@7
    .line 968
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@a
    move-result-object v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 969
    new-instance v2, Landroid/util/AndroidRuntimeException;

    #@f
    const-string/jumbo v3, "Animators may only be run on Looper threads"

    #@12
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 971
    :cond_0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@18
    .line 973
    if-eqz p1, :cond_1

    #@1a
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@1c
    cmpl-float v2, v2, v8

    #@1e
    if-eqz v2, :cond_1

    #@20
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@22
    cmpl-float v2, v2, v9

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 974
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@28
    const/4 v3, -0x1

    #@29
    if-ne v2, v3, :cond_4

    #@2b
    .line 976
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@2d
    float-to-double v2, v2

    #@2e
    iget v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@30
    float-to-double v4, v4

    #@31
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@34
    move-result-wide v4

    #@35
    sub-double/2addr v2, v4

    #@36
    double-to-float v1, v2

    #@37
    .line 977
    .local v1, "fraction":F
    const/high16 v2, 0x3f800000    # 1.0f

    #@39
    sub-float/2addr v2, v1

    #@3a
    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@3c
    .line 982
    .end local v1    # "fraction":F
    :cond_1
    :goto_0
    iput-boolean v11, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@3e
    .line 983
    iput-boolean v10, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@40
    .line 984
    iput-boolean v10, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@42
    .line 988
    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    #@44
    .line 989
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    #@47
    move-result-object v0

    #@48
    .line 990
    .local v0, "animationHandler":Landroid/animation/AnimationHandler;
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@4a
    long-to-float v2, v2

    #@4b
    sget v3, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@4d
    mul-float/2addr v2, v3

    #@4e
    float-to-long v2, v2

    #@4f
    invoke-virtual {v0, p0, v2, v3}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    #@52
    .line 992
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@54
    cmp-long v2, v2, v6

    #@56
    if-eqz v2, :cond_2

    #@58
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@5a
    cmpl-float v2, v2, v9

    #@5c
    if-ltz v2, :cond_3

    #@5e
    .line 996
    :cond_2
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    #@61
    .line 997
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@63
    cmpl-float v2, v2, v8

    #@65
    if-nez v2, :cond_5

    #@67
    .line 1001
    invoke-virtual {p0, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    #@6a
    .line 967
    :cond_3
    :goto_1
    return-void

    #@6b
    .line 979
    .end local v0    # "animationHandler":Landroid/animation/AnimationHandler;
    :cond_4
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@6d
    add-int/lit8 v2, v2, 0x1

    #@6f
    int-to-float v2, v2

    #@70
    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@72
    sub-float/2addr v2, v3

    #@73
    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@75
    goto :goto_0

    #@76
    .line 1003
    .restart local v0    # "animationHandler":Landroid/animation/AnimationHandler;
    :cond_5
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@78
    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    #@7b
    goto :goto_1
.end method

.method private startAnimation()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x8

    #@2
    const/4 v2, 0x0

    #@3
    .line 1168
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1169
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 1170
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@10
    move-result v1

    #@11
    .line 1169
    invoke-static {v4, v5, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@14
    .line 1173
    :cond_0
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    #@17
    .line 1174
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    #@1a
    .line 1175
    const/4 v0, 0x1

    #@1b
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@1d
    .line 1176
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@1f
    cmpl-float v0, v0, v2

    #@21
    if-ltz v0, :cond_2

    #@23
    .line 1177
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@25
    iput v0, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    #@27
    .line 1181
    :goto_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 1182
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    #@2e
    .line 1167
    :cond_1
    return-void

    #@2f
    .line 1179
    :cond_2
    iput v2, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    #@31
    goto :goto_0
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@0
    .prologue
    .line 858
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 859
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@b
    .line 861
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 857
    return-void
.end method

.method animateBasedOnTime(J)Z
    .locals 13
    .param p1, "currentTime"    # J

    #@0
    .prologue
    .line 1233
    const/4 v1, 0x0

    #@1
    .line 1234
    .local v1, "done":Z
    iget-boolean v10, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@3
    if-eqz v10, :cond_1

    #@5
    .line 1235
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    #@8
    move-result-wide v8

    #@9
    .line 1236
    .local v8, "scaledDuration":J
    const-wide/16 v10, 0x0

    #@b
    cmp-long v10, v8, v10

    #@d
    if-lez v10, :cond_2

    #@f
    .line 1237
    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@11
    sub-long v10, p1, v10

    #@13
    long-to-float v10, v10

    #@14
    long-to-float v11, v8

    #@15
    div-float v2, v10, v11

    #@17
    .line 1238
    .local v2, "fraction":F
    :goto_0
    iget v4, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    #@19
    .line 1239
    .local v4, "lastFraction":F
    float-to-int v10, v2

    #@1a
    float-to-int v11, v4

    #@1b
    if-le v10, v11, :cond_3

    #@1d
    const/4 v6, 0x1

    #@1e
    .line 1240
    .local v6, "newIteration":Z
    :goto_1
    iget v10, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@20
    add-int/lit8 v10, v10, 0x1

    #@22
    int-to-float v10, v10

    #@23
    cmpl-float v10, v2, v10

    #@25
    if-ltz v10, :cond_5

    #@27
    .line 1241
    iget v10, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@29
    const/4 v11, -0x1

    #@2a
    if-eq v10, v11, :cond_4

    #@2c
    const/4 v5, 0x1

    #@2d
    .line 1242
    .local v5, "lastIterationFinished":Z
    :goto_2
    const-wide/16 v10, 0x0

    #@2f
    cmp-long v10, v8, v10

    #@31
    if-nez v10, :cond_6

    #@33
    .line 1244
    const/4 v1, 0x1

    #@34
    .line 1256
    :cond_0
    :goto_3
    invoke-direct {p0, v2}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    #@37
    move-result v10

    #@38
    iput v10, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    #@3a
    .line 1257
    iget v10, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    #@3c
    invoke-direct {p0, v10}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(F)F

    #@3f
    move-result v0

    #@40
    .line 1258
    .local v0, "currentIterationFraction":F
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    #@43
    .line 1260
    .end local v0    # "currentIterationFraction":F
    .end local v2    # "fraction":F
    .end local v4    # "lastFraction":F
    .end local v5    # "lastIterationFinished":Z
    .end local v6    # "newIteration":Z
    .end local v8    # "scaledDuration":J
    :cond_1
    return v1

    #@44
    .line 1237
    .restart local v8    # "scaledDuration":J
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    #@46
    .restart local v2    # "fraction":F
    goto :goto_0

    #@47
    .line 1239
    .restart local v4    # "lastFraction":F
    :cond_3
    const/4 v6, 0x0

    #@48
    .restart local v6    # "newIteration":Z
    goto :goto_1

    #@49
    .line 1241
    :cond_4
    const/4 v5, 0x0

    #@4a
    .restart local v5    # "lastIterationFinished":Z
    goto :goto_2

    #@4b
    .line 1240
    .end local v5    # "lastIterationFinished":Z
    :cond_5
    const/4 v5, 0x0

    #@4c
    .restart local v5    # "lastIterationFinished":Z
    goto :goto_2

    #@4d
    .line 1245
    :cond_6
    if-eqz v6, :cond_7

    #@4f
    if-eqz v5, :cond_8

    #@51
    .line 1253
    :cond_7
    if-eqz v5, :cond_0

    #@53
    .line 1254
    const/4 v1, 0x1

    #@54
    goto :goto_3

    #@55
    .line 1247
    :cond_8
    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@57
    if-eqz v10, :cond_0

    #@59
    .line 1248
    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@5e
    move-result v7

    #@5f
    .line 1249
    .local v7, "numListeners":I
    const/4 v3, 0x0

    #@60
    .local v3, "i":I
    :goto_4
    if-ge v3, v7, :cond_0

    #@62
    .line 1250
    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v10

    #@68
    check-cast v10, Landroid/animation/Animator$AnimatorListener;

    #@6a
    invoke-interface {v10, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    #@6d
    .line 1249
    add-int/lit8 v3, v3, 0x1

    #@6f
    goto :goto_4
.end method

.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 1337
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@5
    move-result p1

    #@6
    .line 1338
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    #@8
    .line 1339
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@a
    array-length v2, v3

    #@b
    .line 1340
    .local v2, "numValues":I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@e
    .line 1341
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@10
    aget-object v3, v3, v0

    #@12
    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    #@15
    .line 1340
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1343
    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 1344
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v1

    #@22
    .line 1345
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@23
    :goto_1
    if-ge v0, v1, :cond_1

    #@25
    .line 1346
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
    .line 1345
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1

    #@33
    .line 1336
    .end local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method public canReverse()Z
    .locals 1

    #@0
    .prologue
    .line 1124
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public cancel()V
    .locals 5

    #@0
    .prologue
    .line 1015
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 1016
    new-instance v3, Landroid/util/AndroidRuntimeException;

    #@8
    const-string/jumbo v4, "Animators may only be run on Looper threads"

    #@b
    invoke-direct {v3, v4}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 1021
    :cond_0
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 1022
    return-void

    #@14
    .line 1028
    :cond_1
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@16
    if-nez v3, :cond_2

    #@18
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@1a
    if-eqz v3, :cond_4

    #@1c
    :cond_2
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@1e
    if-eqz v3, :cond_4

    #@20
    .line 1029
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@22
    if-nez v3, :cond_3

    #@24
    .line 1031
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    #@27
    .line 1034
    :cond_3
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Ljava/util/ArrayList;

    #@2f
    .line 1035
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v1

    #@33
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_4

    #@39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    #@3f
    .line 1036
    .local v0, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    #@42
    goto :goto_0

    #@43
    .line 1039
    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    #@46
    .line 1014
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    #@0
    .prologue
    .line 1352
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const-wide/16 v8, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    .line 1353
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/animation/ValueAnimator;

    #@a
    .line 1354
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 1355
    new-instance v5, Ljava/util/ArrayList;

    #@10
    iget-object v6, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@12
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@15
    iput-object v5, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@17
    .line 1357
    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    #@19
    iput v5, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@1b
    .line 1358
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@1d
    .line 1359
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@1f
    .line 1360
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@21
    .line 1361
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@23
    .line 1362
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@25
    .line 1363
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@27
    .line 1364
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    #@29
    .line 1365
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@2b
    .line 1366
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@2d
    .line 1367
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    #@2f
    .line 1368
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@31
    .line 1369
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    #@33
    .line 1370
    iput v10, v0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    #@35
    .line 1371
    iput v10, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    #@37
    .line 1373
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@39
    .line 1374
    .local v4, "oldValues":[Landroid/animation/PropertyValuesHolder;
    if-eqz v4, :cond_1

    #@3b
    .line 1375
    array-length v3, v4

    #@3c
    .line 1376
    .local v3, "numValues":I
    new-array v5, v3, [Landroid/animation/PropertyValuesHolder;

    #@3e
    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@40
    .line 1377
    new-instance v5, Ljava/util/HashMap;

    #@42
    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    #@45
    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    #@47
    .line 1378
    const/4 v1, 0x0

    #@48
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@4a
    .line 1379
    aget-object v5, v4, v1

    #@4c
    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    #@4f
    move-result-object v2

    #@50
    .line 1380
    .local v2, "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@52
    aput-object v2, v5, v1

    #@54
    .line 1381
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    #@56
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 1378
    add-int/lit8 v1, v1, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 1384
    .end local v1    # "i":I
    .end local v2    # "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "numValues":I
    :cond_1
    return-object v0
.end method

.method public commitAnimationFrame(J)V
    .locals 5
    .param p1, "frameTime"    # J

    #@0
    .prologue
    .line 1208
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1209
    const/4 v2, 0x1

    #@5
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@7
    .line 1210
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    #@9
    sub-long v0, p1, v2

    #@b
    .line 1211
    .local v0, "adjustment":J
    const-wide/16 v2, 0x0

    #@d
    cmp-long v2, v0, v2

    #@f
    if-lez v2, :cond_0

    #@11
    .line 1212
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@13
    add-long/2addr v2, v0

    #@14
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@16
    .line 1207
    .end local v0    # "adjustment":J
    :cond_0
    return-void
.end method

.method public final doAnimationFrame(J)V
    .locals 11
    .param p1, "frameTime"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    .line 1271
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    #@6
    move-result-object v3

    #@7
    .line 1272
    .local v3, "handler":Landroid/animation/AnimationHandler;
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    #@9
    cmp-long v6, v6, v8

    #@b
    if-nez v6, :cond_1

    #@d
    .line 1274
    invoke-virtual {v3, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    #@10
    .line 1275
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@12
    cmp-long v6, v6, v8

    #@14
    if-lez v6, :cond_0

    #@16
    .line 1276
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    #@19
    .line 1278
    :cond_0
    iget v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@1b
    const/4 v7, 0x0

    #@1c
    cmpg-float v6, v6, v7

    #@1e
    if-gez v6, :cond_2

    #@20
    .line 1279
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@22
    .line 1285
    :goto_0
    iput-boolean v10, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@24
    .line 1287
    :cond_1
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    #@26
    .line 1288
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@28
    if-eqz v6, :cond_3

    #@2a
    .line 1289
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@2c
    .line 1290
    invoke-virtual {v3, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    #@2f
    .line 1291
    return-void

    #@30
    .line 1281
    :cond_2
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    #@33
    move-result-wide v6

    #@34
    long-to-float v6, v6

    #@35
    iget v7, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@37
    mul-float/2addr v6, v7

    #@38
    float-to-long v4, v6

    #@39
    .line 1282
    .local v4, "seekTime":J
    sub-long v6, p1, v4

    #@3b
    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@3d
    .line 1283
    const/high16 v6, -0x40800000    # -1.0f

    #@3f
    iput v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@41
    goto :goto_0

    #@42
    .line 1292
    .end local v4    # "seekTime":J
    :cond_3
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@44
    if-eqz v6, :cond_5

    #@46
    .line 1293
    iput-boolean v10, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@48
    .line 1294
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@4a
    cmp-long v6, v6, v8

    #@4c
    if-lez v6, :cond_4

    #@4e
    .line 1296
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@50
    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@52
    sub-long v8, p1, v8

    #@54
    add-long/2addr v6, v8

    #@55
    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@57
    .line 1297
    iput-boolean v10, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@59
    .line 1299
    :cond_4
    invoke-virtual {v3, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    #@5c
    .line 1305
    :cond_5
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@5e
    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@61
    move-result-wide v0

    #@62
    .line 1306
    .local v0, "currentTime":J
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animateBasedOnTime(J)Z

    #@65
    move-result v2

    #@66
    .line 1308
    .local v2, "finished":Z
    if-eqz v2, :cond_6

    #@68
    .line 1309
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    #@6b
    .line 1270
    :cond_6
    return-void
.end method

.method public end()V
    .locals 2

    #@0
    .prologue
    .line 1045
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1046
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@8
    const-string/jumbo v1, "Animators may only be run on Looper threads"

    #@b
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1048
    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@11
    if-nez v0, :cond_2

    #@13
    .line 1050
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    #@16
    .line 1051
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@19
    .line 1055
    :cond_1
    :goto_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@1b
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->shouldPlayBackward(I)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    const/4 v0, 0x0

    #@22
    :goto_1
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    #@25
    .line 1056
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    #@28
    .line 1044
    return-void

    #@29
    .line 1052
    :cond_2
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@2b
    if-nez v0, :cond_1

    #@2d
    .line 1053
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    #@30
    goto :goto_0

    #@31
    .line 1055
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    #@33
    goto :goto_1
.end method

.method public getAnimatedFraction()F
    .locals 1

    #@0
    .prologue
    .line 1320
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
    .line 781
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
    .line 782
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
    .line 785
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
    .line 799
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/animation/PropertyValuesHolder;

    #@9
    .line 800
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    #@b
    .line 801
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 804
    :cond_0
    return-object v2
.end method

.method public getCurrentPlayTime()J
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 690
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@7
    if-nez v1, :cond_1

    #@9
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@b
    cmpg-float v1, v1, v2

    #@d
    if-gez v1, :cond_1

    #@f
    .line 691
    :cond_0
    const-wide/16 v2, 0x0

    #@11
    return-wide v2

    #@12
    .line 693
    :cond_1
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@14
    cmpl-float v1, v1, v2

    #@16
    if-ltz v1, :cond_2

    #@18
    .line 694
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@1a
    long-to-float v1, v2

    #@1b
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@1d
    mul-float/2addr v1, v2

    #@1e
    float-to-long v2, v1

    #@1f
    return-wide v2

    #@20
    .line 696
    :cond_2
    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@22
    cmpl-float v1, v1, v2

    #@24
    if-nez v1, :cond_3

    #@26
    const/high16 v0, 0x3f800000    # 1.0f

    #@28
    .line 697
    .local v0, "durationScale":F
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@2b
    move-result-wide v2

    #@2c
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@2e
    sub-long/2addr v2, v4

    #@2f
    long-to-float v1, v2

    #@30
    div-float/2addr v1, v0

    #@31
    float-to-long v2, v1

    #@32
    return-wide v2

    #@33
    .line 696
    .end local v0    # "durationScale":F
    :cond_3
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    #@35
    .restart local v0    # "durationScale":F
    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    #@0
    .prologue
    .line 554
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@2
    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    .prologue
    .line 917
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1199
    const-string/jumbo v0, "animator"

    #@3
    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    #@0
    .prologue
    .line 826
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@2
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    #@0
    .prologue
    .line 847
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    #@2
    return v0
.end method

.method public getStartDelay()J
    .locals 2

    #@0
    .prologue
    .line 708
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@2
    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 6

    #@0
    .prologue
    .line 559
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 560
    const-wide/16 v0, -0x1

    #@7
    return-wide v0

    #@8
    .line 562
    :cond_0
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@a
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@c
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@e
    add-int/lit8 v4, v4, 0x1

    #@10
    int-to-long v4, v4

    #@11
    mul-long/2addr v2, v4

    #@12
    add-long/2addr v0, v2

    #@13
    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@2
    return-object v0
.end method

.method initAnimation()V
    .locals 3

    #@0
    .prologue
    .line 515
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@2
    if-nez v2, :cond_1

    #@4
    .line 516
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@6
    array-length v1, v2

    #@7
    .line 517
    .local v1, "numValues":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 518
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@c
    aget-object v2, v2, v0

    #@e
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    #@11
    .line 517
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 520
    :cond_0
    const/4 v2, 0x1

    #@15
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@17
    .line 514
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 1087
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    #@2
    return v0
.end method

.method public isStarted()Z
    .locals 1

    #@0
    .prologue
    .line 1092
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@2
    return v0
.end method

.method public pause()V
    .locals 4

    #@0
    .prologue
    .line 1077
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@2
    .line 1078
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    #@5
    .line 1079
    if-nez v0, :cond_0

    #@7
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1080
    const-wide/16 v2, -0x1

    #@d
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@f
    .line 1081
    const/4 v1, 0x0

    #@10
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@12
    .line 1076
    :cond_0
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 868
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 869
    return-void

    #@6
    .line 871
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@b
    .line 872
    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@d
    .line 867
    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 882
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 883
    return-void

    #@6
    .line 885
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b
    .line 886
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 887
    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    #@15
    .line 881
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 1061
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1062
    new-instance v1, Landroid/util/AndroidRuntimeException;

    #@a
    const-string/jumbo v2, "Animators may only be resumed from the same thread that the animator was started on"

    #@d
    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 1065
    :cond_0
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    #@13
    if-eqz v1, :cond_1

    #@15
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 1072
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    #@1c
    .line 1060
    return-void

    #@1d
    .line 1066
    :cond_2
    const/4 v1, 0x1

    #@1e
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    #@20
    .line 1067
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    #@22
    cmp-long v1, v2, v4

    #@24
    if-lez v1, :cond_1

    #@26
    .line 1068
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    #@29
    move-result-object v0

    #@2a
    .line 1069
    .local v0, "handler":Landroid/animation/AnimationHandler;
    invoke-virtual {v0, p0, v4, v5}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    #@2d
    goto :goto_0
.end method

.method public reverse()V
    .locals 10

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 1104
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    #@5
    move-result v8

    #@6
    if-eqz v8, :cond_1

    #@8
    .line 1105
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 1106
    .local v2, "currentTime":J
    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@e
    sub-long v0, v2, v8

    #@10
    .line 1107
    .local v0, "currentPlayTime":J
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    #@13
    move-result-wide v8

    #@14
    sub-long v4, v8, v0

    #@16
    .line 1108
    .local v4, "timeLeft":J
    sub-long v8, v2, v4

    #@18
    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@1a
    .line 1109
    iput-boolean v7, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@1c
    .line 1110
    iget-boolean v8, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@1e
    if-eqz v8, :cond_0

    #@20
    :goto_0
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@22
    .line 1103
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :goto_1
    return-void

    #@23
    .restart local v0    # "currentPlayTime":J
    .restart local v2    # "currentTime":J
    .restart local v4    # "timeLeft":J
    :cond_0
    move v6, v7

    #@24
    .line 1110
    goto :goto_0

    #@25
    .line 1111
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :cond_1
    iget-boolean v8, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    #@27
    if-eqz v8, :cond_3

    #@29
    .line 1112
    iget-boolean v8, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@2b
    if-eqz v8, :cond_2

    #@2d
    :goto_2
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    #@2f
    .line 1113
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    #@32
    goto :goto_1

    #@33
    :cond_2
    move v6, v7

    #@34
    .line 1112
    goto :goto_2

    #@35
    .line 1115
    :cond_3
    invoke-direct {p0, v7}, Landroid/animation/ValueAnimator;->start(Z)V

    #@38
    goto :goto_1
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0
    .param p1, "mayRunAsync"    # Z

    #@0
    .prologue
    .line 1461
    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 8
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 599
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    #@3
    .line 600
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    #@6
    move-result p1

    #@7
    .line 601
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    #@a
    move-result-wide v6

    #@b
    long-to-float v1, v6

    #@c
    mul-float/2addr v1, p1

    #@d
    float-to-long v4, v1

    #@e
    .line 602
    .local v4, "seekTime":J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@11
    move-result-wide v2

    #@12
    .line 603
    .local v2, "currentTime":J
    sub-long v6, v2, v4

    #@14
    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    #@16
    .line 604
    const/4 v1, 0x1

    #@17
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    #@19
    .line 605
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 608
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    #@21
    .line 610
    :cond_0
    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    #@23
    .line 611
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(F)F

    #@26
    move-result v0

    #@27
    .line 612
    .local v0, "currentIterationFraction":F
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    #@2a
    .line 598
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 7
    .param p1, "playTime"    # J

    #@0
    .prologue
    .line 577
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@2
    const-wide/16 v4, 0x0

    #@4
    cmp-long v1, v2, v4

    #@6
    if-lez v1, :cond_0

    #@8
    long-to-float v1, p1

    #@9
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@b
    long-to-float v2, v2

    #@c
    div-float v0, v1, v2

    #@e
    .line 578
    .local v0, "fraction":F
    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    #@11
    .line 576
    return-void

    #@12
    .line 577
    .end local v0    # "fraction":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    #@14
    goto :goto_0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 534
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
    .line 535
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 536
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
    .line 539
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    #@22
    .line 540
    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TypeEvaluator;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 937
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
    .line 938
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@e
    aget-object v0, v0, v1

    #@10
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@13
    .line 936
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
    .line 421
    if-eqz p1, :cond_0

    #@3
    array-length v1, p1

    #@4
    if-nez v1, :cond_1

    #@6
    .line 422
    :cond_0
    return-void

    #@7
    .line 424
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
    .line 425
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
    .line 431
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@21
    .line 420
    return-void

    #@22
    .line 427
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@24
    aget-object v0, v1, v3

    #@26
    .line 428
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
    .line 393
    if-eqz p1, :cond_0

    #@3
    array-length v1, p1

    #@4
    if-nez v1, :cond_1

    #@6
    .line 394
    :cond_0
    return-void

    #@7
    .line 396
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
    .line 397
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
    .line 403
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@21
    .line 392
    return-void

    #@22
    .line 399
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@24
    aget-object v0, v1, v3

    #@26
    .line 400
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
    .line 903
    if-eqz p1, :cond_0

    #@2
    .line 904
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@4
    .line 902
    :goto_0
    return-void

    #@5
    .line 906
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
    .line 458
    if-eqz p1, :cond_0

    #@4
    array-length v1, p1

    #@5
    if-nez v1, :cond_1

    #@7
    .line 459
    :cond_0
    return-void

    #@8
    .line 461
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
    .line 462
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
    .line 468
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@22
    .line 457
    return-void

    #@23
    .line 464
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@25
    aget-object v0, v1, v3

    #@27
    .line 465
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
    .line 817
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    #@2
    .line 816
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 837
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    #@2
    .line 836
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    #@0
    .prologue
    .line 721
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 722
    const-string/jumbo v0, "ValueAnimator"

    #@9
    const-string/jumbo v1, "Start delay should always be non-negative"

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 723
    const-wide/16 p1, 0x0

    #@11
    .line 725
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    #@13
    .line 719
    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    #@0
    .prologue
    .line 480
    array-length v1, p1

    #@1
    .line 481
    .local v1, "numValues":I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@3
    .line 482
    new-instance v3, Ljava/util/HashMap;

    #@5
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    #@8
    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    #@a
    .line 483
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@d
    .line 484
    aget-object v2, p1, v0

    #@f
    .line 485
    .local v2, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    #@11
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 483
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 488
    .end local v2    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    #@1c
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    #@1e
    .line 479
    return-void
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 1010
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    #@4
    .line 1009
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1417
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
    .line 1418
    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 1419
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
    .line 1420
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
    .line 1419
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_0

    #@49
    .line 1423
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
