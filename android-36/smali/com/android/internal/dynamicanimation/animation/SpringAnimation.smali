.class public final Lcom/android/internal/dynamicanimation/animation/SpringAnimation;
.super Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation<",
        "Lcom/android/internal/dynamicanimation/animation/SpringAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist UNSET:F = 3.4028235E38f


# instance fields
.field private blacklist mEndRequested:Z

.field private blacklist mPendingPosition:F

.field private blacklist mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 3
    .param p1, "floatValueHolder"    # Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 61
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;F)V
    .registers 4
    .param p1, "floatValueHolder"    # Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;
    .param p2, "finalPosition"    # F

    .line 98
    invoke-direct {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 61
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 99
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 100
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroid/util/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    .line 112
    .local p1, "object":Ljava/lang/Object;, "TK;"
    .local p2, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TK;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 61
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 113
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Landroid/util/FloatProperty;F)V
    .registers 5
    .param p3, "finalPosition"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroid/util/FloatProperty<",
            "TK;>;F)V"
        }
    .end annotation

    .line 127
    .local p1, "object":Ljava/lang/Object;, "TK;"
    .local p2, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TK;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 61
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 128
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p3}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 129
    return-void
.end method

.method private blacklist sanityCheck()V
    .registers 5

    .line 244
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    if-eqz v0, :cond_2a

    .line 248
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    float-to-double v0, v0

    .line 249
    .local v0, "finalPosition":D
    iget v2, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_22

    .line 252
    iget v2, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    float-to-double v2, v2

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_1a

    .line 256
    return-void

    .line 253
    :cond_1a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Final position of the spring cannot be less than the min value."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_22
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    .end local v0    # "finalPosition":D
    :cond_2a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist animateToFinalPosition(F)V
    .registers 3
    .param p1, "finalPosition"    # F

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    goto :goto_1c

    .line 176
    :cond_9
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_14

    .line 177
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 179
    :cond_14
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->start()V

    .line 182
    :goto_1c
    return-void
.end method

.method public blacklist canSkipToEnd()Z
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget-wide v0, v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist cancel()V
    .registers 4

    .line 192
    invoke-super {p0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 193
    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23

    .line 194
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_1a

    .line 195
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget v2, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-direct {v0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    goto :goto_21

    .line 197
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget v2, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 199
    :goto_21
    iput v1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 201
    :cond_23
    return-void
.end method

.method blacklist getAcceleration(FF)F
    .registers 4
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 303
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->getAcceleration(FF)F

    move-result v0

    return v0
.end method

.method public blacklist getSpring()Lcom/android/internal/dynamicanimation/animation/SpringForce;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method blacklist isAtEquilibrium(FF)Z
    .registers 4
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 308
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->isAtEquilibrium(FF)Z

    move-result v0

    return v0
.end method

.method public blacklist setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;
    .registers 2
    .param p1, "force"    # Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 149
    iput-object p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 150
    return-object p0
.end method

.method blacklist setValueThreshold(F)V
    .registers 2
    .param p1, "threshold"    # F

    .line 313
    return-void
.end method

.method public blacklist skipToEnd()V
    .registers 3

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 227
    iget-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_13

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 230
    :cond_13
    return-void

    .line 224
    :cond_14
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Spring animations can only come to an end when there is damping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist start()V
    .registers 4

    .line 155
    invoke-direct {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->sanityCheck()V

    .line 156
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->getValueThreshold()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setValueThreshold(D)V

    .line 157
    invoke-super {p0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->start()V

    .line 158
    return-void
.end method

.method blacklist updateValueAndVelocity(J)Z
    .registers 25
    .param p1, "deltaT"    # J

    .line 262
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_28

    .line 263
    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_1b

    .line 264
    iget-object v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget v6, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v1, v6}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 265
    iput v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 267
    :cond_1b
    iget-object v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 268
    iput v4, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 269
    iput-boolean v3, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 270
    return v2

    .line 273
    :cond_28
    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_62

    .line 276
    iget-object v6, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v7, v1

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v9, v1

    const-wide/16 v13, 0x2

    div-long v11, p1, v13

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 277
    .local v1, "massState":Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    iget-object v6, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget v7, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v6, v7}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    .line 278
    iput v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 280
    iget-object v15, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget v5, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v5, v5

    iget v7, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v7, v7

    div-long v20, p1, v13

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    invoke-virtual/range {v15 .. v21}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 281
    iget v5, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 282
    iget v5, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 284
    .end local v1    # "massState":Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    goto :goto_78

    .line 285
    :cond_62
    iget-object v6, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v7, v1

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v9, v1

    move-wide/from16 v11, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 286
    .restart local v1    # "massState":Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    iget v5, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 287
    iget v5, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 290
    .end local v1    # "massState":Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    :goto_78
    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 291
    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 293
    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 294
    iget-object v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 295
    iput v4, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 296
    return v2

    .line 298
    :cond_a1
    return v3
.end method
