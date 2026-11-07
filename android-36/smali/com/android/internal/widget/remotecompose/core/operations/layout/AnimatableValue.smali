.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;
.super Ljava/lang/Object;
.source "AnimatableValue.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# instance fields
.field blacklist mAnimate:Z

.field blacklist mAnimateDuration:F

.field blacklist mAnimateTargetTime:J

.field blacklist mAnimateValueChanges:Z

.field blacklist mId:I

.field blacklist mIsVariable:Z

.field blacklist mLastUpdate:J

.field blacklist mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

.field blacklist mMotionEasingType:I

.field blacklist mStartRotationX:F

.field blacklist mTargetRotationX:F

.field blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(F)V
    .registers 3
    .param p1, "value"    # F

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(FZ)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(FZ)V
    .registers 7
    .param p1, "value"    # F
    .param p2, "animateValueChanges"    # Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mIsVariable:Z

    .line 28
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    .line 33
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateTargetTime:J

    .line 34
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateDuration:F

    .line 37
    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mLastUpdate:J

    .line 39
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasingType:I

    .line 49
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    .line 50
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 51
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mIsVariable:Z

    goto :goto_2f

    .line 54
    :cond_2d
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    .line 56
    :goto_2f
    return-void
.end method


# virtual methods
.method public blacklist evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F
    .registers 14
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 83
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mIsVariable:Z

    if-nez v0, :cond_7

    .line 84
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    return v0

    .line 86
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result v0

    .line 87
    .local v0, "value":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_39

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 89
    .local v4, "lastUpdate":J
    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mLastUpdate:J

    sub-long v6, v4, v6

    .line 90
    .local v6, "interval":J
    long-to-float v1, v6

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateDuration:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_35

    iget-wide v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mLastUpdate:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_35

    .line 91
    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    goto :goto_37

    .line 93
    :cond_35
    iput-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    .line 95
    :goto_37
    iput-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mLastUpdate:J

    .line 97
    .end local v4    # "lastUpdate":J
    .end local v6    # "interval":J
    :cond_39
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    if-nez v1, :cond_40

    .line 98
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    goto :goto_9e

    .line 100
    :cond_40
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    cmpl-float v1, v0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_72

    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    if-nez v1, :cond_72

    .line 102
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mStartRotationX:F

    .line 103
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mTargetRotationX:F

    .line 104
    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateTargetTime:J

    .line 106
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasingType:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateDuration:F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v7, v1, v2

    const/4 v9, 0x0

    const/high16 v10, 0x7fc00000    # Float.NaN

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    iput-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 109
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 111
    :cond_72
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    if-eqz v1, :cond_9a

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateTargetTime:J

    sub-long/2addr v1, v5

    long-to-float v1, v1

    .line 113
    .local v1, "elapsed":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateDuration:F

    div-float v5, v1, v5

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v2

    .line 114
    .local v2, "p":F
    sub-float v5, v4, v2

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mStartRotationX:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mTargetRotationX:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    .line 115
    cmpl-float v4, v2, v4

    if-ltz v4, :cond_99

    .line 116
    iput-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    .line 118
    .end local v1    # "elapsed":F
    .end local v2    # "p":F
    :cond_99
    goto :goto_9e

    .line 119
    :cond_9a
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mTargetRotationX:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    .line 122
    :goto_9e
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    return v1
.end method

.method public blacklist getValue()F
    .registers 2

    .line 73
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 132
    const-string v0, "AnimatableValue"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 133
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableValue{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
