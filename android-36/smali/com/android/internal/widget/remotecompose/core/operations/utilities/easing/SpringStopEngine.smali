.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;
.super Ljava/lang/Object;
.source "SpringStopEngine.java"


# static fields
.field private static final blacklist UNSET:D = 1.7976931348623157E308


# instance fields
.field private blacklist mBoundaryMode:I

.field blacklist mDamping:D

.field private blacklist mInitialized:Z

.field private blacklist mLastTime:F

.field private blacklist mLastVelocity:D

.field private blacklist mMass:F

.field private blacklist mPos:F

.field private blacklist mStiffness:D

.field private blacklist mStopThreshold:F

.field private blacklist mTargetPos:D

.field private blacklist mV:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mInitialized:Z

    .line 43
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    .line 57
    return-void
.end method

.method public constructor blacklist <init>([F)V
    .registers 9
    .param p1, "parameters"    # [F

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mInitialized:Z

    .line 43
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    .line 92
    aget v0, p1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    .line 96
    const/4 v0, 0x1

    aget v3, p1, v0

    const/4 v0, 0x2

    aget v4, p1, v0

    const/4 v0, 0x3

    aget v5, p1, v0

    const/4 v0, 0x4

    aget v0, p1, v0

    .line 101
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 96
    const/high16 v2, 0x3f800000    # 1.0f

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->springParameters(FFFFI)V

    .line 102
    return-void

    .line 93
    :cond_2a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, " parameter[0] should be 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist compute(D)V
    .registers 26
    .param p1, "dt"    # D

    .line 206
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_9

    .line 208
    return-void

    .line 211
    :cond_9
    iget-wide v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    .line 212
    .local v1, "k":D
    iget-wide v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    .line 214
    .local v3, "c":D
    iget-wide v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    iget v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    float-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v5, v5, p1

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4022000000000000L    # 9.0

    div-double/2addr v7, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v5

    double-to-int v5, v7

    .line 215
    .local v5, "overSample":I
    int-to-double v6, v5

    div-double v6, p1, v6

    .line 217
    .end local p1    # "dt":D
    .local v6, "dt":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_27
    if-ge v8, v5, :cond_b7

    .line 218
    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    float-to-double v9, v9

    iget-wide v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    sub-double/2addr v9, v11

    .line 219
    .local v9, "x":D
    neg-double v11, v1

    mul-double/2addr v11, v9

    iget v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    float-to-double v13, v13

    mul-double/2addr v13, v3

    sub-double/2addr v11, v13

    iget v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    float-to-double v13, v13

    div-double/2addr v11, v13

    .line 221
    .local v11, "a":D
    iget v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    float-to-double v13, v13

    mul-double v15, v11, v6

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v15, v15, v17

    add-double/2addr v13, v15

    .line 222
    .local v13, "avgV":D
    iget v15, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    move-wide/from16 v19, v1

    .end local v1    # "k":D
    .local v19, "k":D
    float-to-double v1, v15

    mul-double v15, v6, v13

    div-double v15, v15, v17

    add-double/2addr v1, v15

    move-wide/from16 p1, v1

    iget-wide v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    sub-double v1, p1, v1

    .line 223
    .local v1, "avgX":D
    move-wide v15, v3

    .end local v3    # "c":D
    .local v15, "c":D
    neg-double v3, v1

    mul-double v3, v3, v19

    mul-double v21, v13, v15

    sub-double v3, v3, v21

    move-wide/from16 p1, v1

    .end local v1    # "avgX":D
    .local p1, "avgX":D
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    float-to-double v1, v1

    div-double/2addr v3, v1

    .line 225
    .end local v11    # "a":D
    .local v3, "a":D
    mul-double v1, v3, v6

    .line 226
    .local v1, "dv":D
    iget v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    float-to-double v11, v11

    div-double v17, v1, v17

    add-double v11, v11, v17

    .line 227
    .end local v13    # "avgV":D
    .local v11, "avgV":D
    iget v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    double-to-float v14, v1

    add-float/2addr v13, v14

    iput v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    .line 228
    iget v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    move-wide/from16 v17, v1

    .end local v1    # "dv":D
    .local v17, "dv":D
    mul-double v1, v11, v6

    double-to-float v1, v1

    add-float/2addr v13, v1

    iput v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    .line 229
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    if-lez v1, :cond_b0

    .line 230
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_96

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_96

    .line 231
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    neg-float v1, v1

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    .line 232
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    neg-float v1, v1

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    .line 234
    :cond_96
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b0

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b0

    .line 235
    const/high16 v1, 0x40000000    # 2.0f

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    .line 236
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    neg-float v1, v1

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    .line 217
    .end local v3    # "a":D
    .end local v9    # "x":D
    .end local v11    # "avgV":D
    .end local v17    # "dv":D
    .end local p1    # "avgX":D
    :cond_b0
    add-int/lit8 v8, v8, 0x1

    move-wide v3, v15

    move-wide/from16 v1, v19

    goto/16 :goto_27

    .line 240
    .end local v8    # "i":I
    .end local v15    # "c":D
    .end local v19    # "k":D
    .local v1, "k":D
    .local v3, "c":D
    :cond_b7
    return-void
.end method


# virtual methods
.method public blacklist get(F)F
    .registers 4
    .param p1, "time"    # F

    .line 156
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastTime:F

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->compute(D)V

    .line 157
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastTime:F

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 159
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    double-to-float v0, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    .line 161
    :cond_15
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    return v0
.end method

.method public blacklist getAcceleration()F
    .registers 11

    .line 170
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    .line 171
    .local v0, "k":D
    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    .line 172
    .local v2, "c":D
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    sub-double/2addr v4, v6

    .line 173
    .local v4, "x":D
    neg-double v6, v0

    mul-double/2addr v6, v4

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    float-to-double v8, v8

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    double-to-float v6, v6

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    div-float/2addr v6, v7

    return v6
.end method

.method public blacklist getTargetValue()F
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getVelocity()F
    .registers 2

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVelocity(F)F
    .registers 3
    .param p1, "time"    # F

    .line 146
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    return v0
.end method

.method public blacklist isStopped()Z
    .registers 15

    .line 191
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    sub-double/2addr v0, v2

    .line 192
    .local v0, "x":D
    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    .line 193
    .local v2, "k":D
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    float-to-double v4, v4

    .line 194
    .local v4, "v":D
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    float-to-double v6, v6

    .line 195
    .local v6, "m":D
    mul-double v8, v4, v4

    mul-double/2addr v8, v6

    mul-double v10, v2, v0

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    .line 196
    .local v8, "energy":D
    div-double v10, v8, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 197
    .local v10, "max_def":D
    iget v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStopThreshold:F

    float-to-double v12, v12

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_24

    const/4 v12, 0x1

    goto :goto_25

    :cond_24
    const/4 v12, 0x0

    :goto_25
    return v12
.end method

.method blacklist log(Ljava/lang/String;)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 51
    .local v0, "s":Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "line":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public blacklist setInitialValue(F)V
    .registers 2
    .param p1, "v"    # F

    .line 74
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    .line 75
    return-void
.end method

.method public blacklist setTargetValue(F)V
    .registers 4
    .param p1, "v"    # F

    .line 83
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    .line 84
    return-void
.end method

.method public blacklist springParameters(FFFFI)V
    .registers 8
    .param p1, "mass"    # F
    .param p2, "stiffness"    # F
    .param p3, "damping"    # F
    .param p4, "stopThreshold"    # F
    .param p5, "boundaryMode"    # I

    .line 130
    float-to-double v0, p3

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mInitialized:Z

    .line 132
    float-to-double v0, p2

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    .line 133
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    .line 134
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStopThreshold:F

    .line 135
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastTime:F

    .line 137
    return-void
.end method

.method public blacklist springStart(FFF)V
    .registers 6
    .param p1, "currentPos"    # F
    .param p2, "target"    # F
    .param p3, "currentVelocity"    # F

    .line 112
    float-to-double v0, p2

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mInitialized:Z

    .line 114
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    .line 115
    float-to-double v0, p3

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastVelocity:D

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastTime:F

    .line 117
    return-void
.end method
