.class public final Lcom/android/internal/dynamicanimation/animation/FlingAnimation;
.super Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation<",
        "Lcom/android/internal/dynamicanimation/animation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4
    .param p1, "floatValueHolder"    # Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V

    .line 40
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;-><init>(Lcom/android/internal/dynamicanimation/animation/FlingAnimation-IA;)V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 55
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->getValueThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 56
    return-void
.end method


# virtual methods
.method blacklist getAcceleration(FF)F
    .registers 4
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 153
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->getAcceleration(FF)F

    move-result v0

    return v0
.end method

.method public blacklist getFriction()F
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->getFrictionScalar()F

    move-result v0

    return v0
.end method

.method blacklist isAtEquilibrium(FF)Z
    .registers 4
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 157
    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_17

    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 159
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 157
    :goto_18
    return v0
.end method

.method public blacklist setFriction(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;
    .registers 4
    .param p1, "friction"    # F

    .line 67
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_b

    .line 70
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setFrictionScalar(F)V

    .line 71
    return-object p0

    .line 68
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Friction must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist setMaxValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMaxValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2
    .param p1, "maxValue"    # F

    .line 103
    invoke-super {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    .line 104
    return-object p0
.end method

.method public bridge synthetic blacklist setMinValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMinValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2
    .param p1, "minValue"    # F

    .line 91
    invoke-super {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    .line 92
    return-object p0
.end method

.method public bridge synthetic blacklist setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2
    .param p1, "startVelocity"    # F

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    .line 130
    return-object p0
.end method

.method blacklist setValueThreshold(F)V
    .registers 3
    .param p1, "threshold"    # F

    .line 163
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 164
    return-void
.end method

.method blacklist updateValueAndVelocity(J)Z
    .registers 7
    .param p1, "deltaT"    # J

    .line 134
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v2, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v0

    .line 135
    .local v0, "state":Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    .line 136
    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    .line 138
    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v2, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_20

    .line 139
    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    iput v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    .line 140
    return v2

    .line 142
    :cond_20
    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v3, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2d

    .line 143
    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    iput v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    .line 144
    return v2

    .line 146
    :cond_2d
    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v3, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 147
    return v2

    .line 149
    :cond_38
    const/4 v1, 0x0

    return v1
.end method
