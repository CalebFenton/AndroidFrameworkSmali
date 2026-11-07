.class public Landroid/window/BackTouchTracker;
.super Ljava/lang/Object;
.source "BackTouchTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackTouchTracker$TouchTrackerState;
    }
.end annotation


# static fields
.field private static final blacklist LINEAR_DISTANCE:I

.field private static final blacklist PREDICTIVE_BACK_LINEAR_DISTANCE_PROP:Ljava/lang/String; = "persist.wm.debug.predictive_back_linear_distance"


# instance fields
.field private blacklist mInitTouchX:F

.field private blacklist mInitTouchY:F

.field private blacklist mLatestTouchX:F

.field private blacklist mLatestTouchY:F

.field private blacklist mLinearDistance:F

.field private blacklist mMaxDistance:F

.field private blacklist mNonLinearFactor:F

.field private blacklist mShouldUpdateStartLocation:Z

.field private blacklist mStartThresholdX:F

.field private blacklist mState:Landroid/window/BackTouchTracker$TouchTrackerState;

.field private blacklist mSwipeEdge:I

.field private blacklist mTriggerBack:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    nop

    .line 35
    const-string v0, "persist.wm.debug.predictive_back_linear_distance"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/window/BackTouchTracker;->LINEAR_DISTANCE:I

    .line 34
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget v0, Landroid/window/BackTouchTracker;->LINEAR_DISTANCE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    .line 54
    sget-object v0, Landroid/window/BackTouchTracker$TouchTrackerState;->INITIAL:Landroid/window/BackTouchTracker$TouchTrackerState;

    iput-object v0, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    return-void
.end method


# virtual methods
.method public blacklist createProgressEvent()Landroid/window/BackMotionEvent;
    .registers 3

    .line 163
    iget v0, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    invoke-virtual {p0, v0}, Landroid/window/BackTouchTracker;->getProgress(F)F

    move-result v0

    .line 164
    .local v0, "progress":F
    invoke-virtual {p0, v0}, Landroid/window/BackTouchTracker;->createProgressEvent(F)Landroid/window/BackMotionEvent;

    move-result-object v1

    return-object v1
.end method

.method public blacklist createProgressEvent(F)Landroid/window/BackMotionEvent;
    .registers 11
    .param p1, "progress"    # F

    .line 236
    new-instance v0, Landroid/window/BackMotionEvent;

    iget v1, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    iget v2, p0, Landroid/window/BackTouchTracker;->mLatestTouchY:F

    iget-boolean v6, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    iget v7, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    move v5, p1

    .end local p1    # "progress":F
    .local v5, "progress":F
    invoke-direct/range {v0 .. v8}, Landroid/window/BackMotionEvent;-><init>(FFJFZILandroid/view/RemoteAnimationTarget;)V

    return-object v0
.end method

.method public blacklist createStartEvent(Landroid/view/RemoteAnimationTarget;)Landroid/window/BackMotionEvent;
    .registers 11
    .param p1, "target"    # Landroid/view/RemoteAnimationTarget;

    .line 151
    new-instance v0, Landroid/window/BackMotionEvent;

    iget v1, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    iget v2, p0, Landroid/window/BackTouchTracker;->mInitTouchY:F

    iget-boolean v6, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    iget v7, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v8, p1

    .end local p1    # "target":Landroid/view/RemoteAnimationTarget;
    .local v8, "target":Landroid/view/RemoteAnimationTarget;
    invoke-direct/range {v0 .. v8}, Landroid/window/BackMotionEvent;-><init>(FFJFZILandroid/view/RemoteAnimationTarget;)V

    return-object v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BackTouchTracker state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mTriggerBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public blacklist getLinearDistance()F
    .registers 2

    .line 227
    iget v0, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    return v0
.end method

.method public blacklist getMaxDistance()F
    .registers 2

    .line 223
    iget v0, p0, Landroid/window/BackTouchTracker;->mMaxDistance:F

    return v0
.end method

.method public blacklist getNonLinearFactor()F
    .registers 2

    .line 231
    iget v0, p0, Landroid/window/BackTouchTracker;->mNonLinearFactor:F

    return v0
.end method

.method public blacklist getProgress(F)F
    .registers 16
    .param p1, "touchX"    # F

    .line 180
    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    .line 182
    .local v0, "startX":F
    :goto_9
    iget v1, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-nez v1, :cond_10

    .line 183
    sub-float v1, p1, v0

    .local v1, "distance":F
    goto :goto_12

    .line 185
    .end local v1    # "distance":F
    :cond_10
    sub-float v1, v0, p1

    .line 187
    .restart local v1    # "distance":F
    :goto_12
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 188
    .local v3, "deltaX":F
    iget v4, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    .line 189
    .local v4, "linearDistance":F
    invoke-virtual {p0}, Landroid/window/BackTouchTracker;->getMaxDistance()F

    move-result v5

    .line 190
    .local v5, "maxDistance":F
    cmpl-float v6, v5, v2

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_25

    move v6, v7

    goto :goto_26

    :cond_25
    move v6, v5

    .line 192
    .end local v5    # "maxDistance":F
    .local v6, "maxDistance":F
    :goto_26
    cmpg-float v5, v4, v6

    if-gez v5, :cond_48

    .line 196
    sub-float v5, v6, v4

    .line 197
    .local v5, "nonLinearDistance":F
    iget v8, p0, Landroid/window/BackTouchTracker;->mNonLinearFactor:F

    mul-float/2addr v8, v5

    add-float/2addr v8, v4

    .line 199
    .local v8, "initialTarget":F
    cmpg-float v9, v3, v4

    if-gtz v9, :cond_36

    const/4 v9, 0x1

    goto :goto_37

    :cond_36
    const/4 v9, 0x0

    .line 200
    .local v9, "isLinear":Z
    :goto_37
    if-eqz v9, :cond_3c

    .line 201
    div-float v10, v3, v8

    .local v10, "progress":F
    goto :goto_47

    .line 203
    .end local v10    # "progress":F
    :cond_3c
    sub-float v10, v3, v4

    .line 204
    .local v10, "nonLinearDeltaX":F
    div-float v11, v10, v5

    .line 205
    .local v11, "nonLinearProgress":F
    invoke-static {v8, v6, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v12

    .line 209
    .local v12, "currentTarget":F
    div-float v13, v3, v12

    move v10, v13

    .line 211
    .end local v5    # "nonLinearDistance":F
    .end local v8    # "initialTarget":F
    .end local v9    # "isLinear":Z
    .end local v11    # "nonLinearProgress":F
    .end local v12    # "currentTarget":F
    .local v10, "progress":F
    :goto_47
    goto :goto_4a

    .line 213
    .end local v10    # "progress":F
    :cond_48
    div-float v10, v3, v6

    .line 215
    .restart local v10    # "progress":F
    :goto_4a
    invoke-static {v10, v2, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    return v2
.end method

.method public blacklist getTriggerBack()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    return v0
.end method

.method public blacklist isActive()Z
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->ACTIVE:Landroid/window/BackTouchTracker$TouchTrackerState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isFinished()Z
    .registers 3

    .line 117
    iget-object v0, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->FINISHED:Landroid/window/BackTouchTracker$TouchTrackerState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isInInitialState()Z
    .registers 3

    .line 107
    iget-object v0, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->INITIAL:Landroid/window/BackTouchTracker$TouchTrackerState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist reset()V
    .registers 3

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    .line 141
    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchY:F

    .line 142
    iput v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    .line 144
    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->INITIAL:Landroid/window/BackTouchTracker$TouchTrackerState;

    iput-object v1, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    .line 145
    iput v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    .line 146
    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    .line 147
    return-void
.end method

.method public blacklist setGestureStartLocation(FFI)V
    .registers 5
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "swipeEdge"    # I

    .line 122
    iput p1, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    .line 123
    iput p2, p0, Landroid/window/BackTouchTracker;->mInitTouchY:F

    .line 124
    iput p1, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    .line 125
    iput p2, p0, Landroid/window/BackTouchTracker;->mLatestTouchY:F

    .line 126
    iput p3, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    .line 127
    iget v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    .line 128
    return-void
.end method

.method public blacklist setProgressThresholds(FFF)V
    .registers 5
    .param p1, "linearDistance"    # F
    .param p2, "maxDistance"    # F
    .param p3, "nonLinearFactor"    # F

    .line 249
    sget v0, Landroid/window/BackTouchTracker;->LINEAR_DISTANCE:I

    if-ltz v0, :cond_a

    .line 250
    sget v0, Landroid/window/BackTouchTracker;->LINEAR_DISTANCE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    goto :goto_c

    .line 252
    :cond_a
    iput p1, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    .line 254
    :goto_c
    iput p2, p0, Landroid/window/BackTouchTracker;->mMaxDistance:F

    .line 255
    iput p3, p0, Landroid/window/BackTouchTracker;->mNonLinearFactor:F

    .line 256
    return-void
.end method

.method public blacklist setShouldUpdateStartLocation(Z)V
    .registers 2
    .param p1, "shouldUpdate"    # Z

    .line 97
    iput-boolean p1, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    .line 98
    return-void
.end method

.method public blacklist setState(Landroid/window/BackTouchTracker$TouchTrackerState;)V
    .registers 2
    .param p1, "state"    # Landroid/window/BackTouchTracker$TouchTrackerState;

    .line 102
    iput-object p1, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    .line 103
    return-void
.end method

.method public blacklist setTriggerBack(Z)V
    .registers 3
    .param p1, "triggerBack"    # Z

    .line 78
    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    if-eq v0, p1, :cond_a

    if-nez p1, :cond_a

    .line 79
    iget v0, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    .line 81
    :cond_a
    iput-boolean p1, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    .line 82
    return-void
.end method

.method public blacklist shouldUpdateStartLocation()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    return v0
.end method

.method public blacklist update(FF)V
    .registers 6
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 64
    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_b

    iget v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-eqz v0, :cond_15

    :cond_b
    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_33

    iget v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-ne v0, v1, :cond_33

    .line 66
    :cond_15
    iput p1, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    .line 67
    iget v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-nez v0, :cond_23

    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    iget v2, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2f

    :cond_23
    iget v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-ne v0, v1, :cond_33

    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    iget v1, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_33

    .line 69
    :cond_2f
    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    .line 72
    :cond_33
    iput p1, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    .line 73
    iput p2, p0, Landroid/window/BackTouchTracker;->mLatestTouchY:F

    .line 74
    return-void
.end method

.method public blacklist updateStartLocation()V
    .registers 2

    .line 132
    iget v0, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    .line 133
    iget v0, p0, Landroid/window/BackTouchTracker;->mLatestTouchY:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchY:F

    .line 134
    iget v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    .line 136
    return-void
.end method
