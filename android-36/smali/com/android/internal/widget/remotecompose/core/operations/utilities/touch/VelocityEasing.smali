.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;
.super Ljava/lang/Object;
.source "VelocityEasing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;,
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;
    }
.end annotation


# instance fields
.field private blacklist mDuration:F

.field private blacklist mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

.field private blacklist mEasingAdapterA:D

.field private blacklist mEasingAdapterB:D

.field private blacklist mEasingAdapterDistance:D

.field private blacklist mEndPos:F

.field private blacklist mNumberOfStages:I

.field private blacklist mOneDimension:Z

.field private blacklist mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

.field private blacklist mStartPos:F

.field private blacklist mStartV:F

.field private blacklist mTotalEasingDuration:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 8

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStartPos:F

    .line 41
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStartV:F

    .line 42
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEndPos:F

    .line 43
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 45
    const/4 v1, 0x3

    new-array v2, v1, [Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;I)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/4 v6, 0x2

    invoke-direct {v3, p0, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;I)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;I)V

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    .line 46
    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    .line 48
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterDistance:D

    .line 49
    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    .line 50
    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    .line 51
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mOneDimension:Z

    .line 52
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mTotalEasingDuration:F

    return-void
.end method

.method private blacklist cruseThenRampDown(FFFFFF)Z
    .registers 24
    .param p1, "currentPos"    # F
    .param p2, "destination"    # F
    .param p3, "currentVelocity"    # F
    .param p4, "maxTime"    # F
    .param p5, "maxA"    # F
    .param p6, "maxV"    # F

    .line 194
    move-object/from16 v0, p0

    div-float v1, p3, p5

    .line 195
    .local v1, "timeToBreak":F
    mul-float v2, p3, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 196
    .local v2, "brakeDist":F
    sub-float v3, p2, p1

    sub-float v9, v3, v2

    .line 197
    .local v9, "cruseDist":F
    div-float v10, v9, p3

    .line 198
    .local v10, "cruseTime":F
    add-float v3, v10, v1

    .line 199
    .local v3, "totalTime":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    const/4 v5, 0x0

    if-lez v4, :cond_45

    cmpg-float v4, v3, p4

    if-gez v4, :cond_45

    .line 200
    const/4 v4, 0x2

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    .line 201
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v4, v4, v5

    const/4 v7, 0x0

    move/from16 v8, p3

    move/from16 v6, p1

    move/from16 v5, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 202
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    add-float v12, p1, v9

    const/4 v14, 0x0

    add-float v16, v10, v1

    move/from16 v15, p2

    move/from16 v11, p3

    move v13, v10

    move-object v10, v4

    .end local v10    # "cruseTime":F
    .local v13, "cruseTime":F
    invoke-virtual/range {v10 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 209
    move v10, v13

    .end local v13    # "cruseTime":F
    .restart local v10    # "cruseTime":F
    add-float v4, v10, v1

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 210
    return v5

    .line 212
    :cond_45
    return v5
.end method

.method private blacklist getEasingDiff(D)D
    .registers 11
    .param p1, "t"    # D

    .line 292
    mul-double v0, p1, p1

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    .line 293
    .local v0, "gx":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_12

    .line 294
    const-wide/16 v2, 0x0

    return-wide v2

    .line 296
    :cond_12
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;->getDiff(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterDistance:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    mul-double/2addr v4, p1

    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method private blacklist rampDown(FFFF)Z
    .registers 14
    .param p1, "currentPos"    # F
    .param p2, "destination"    # F
    .param p3, "currentVelocity"    # F
    .param p4, "maxTime"    # F

    .line 177
    sub-float v0, p2, p1

    div-float/2addr v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v8, v0, v1

    .line 178
    .local v8, "timeToDestination":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    const/4 v1, 0x0

    if-lez v0, :cond_23

    cmpg-float v0, v8, p4

    if-gtz v0, :cond_23

    .line 179
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    .line 180
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v2, v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p1

    move v7, p2

    move v3, p3

    .end local p1    # "currentPos":F
    .end local p2    # "destination":F
    .end local p3    # "currentVelocity":F
    .local v3, "currentVelocity":F
    .local v4, "currentPos":F
    .local v7, "destination":F
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 181
    iput v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 182
    return v0

    .line 178
    .end local v3    # "currentVelocity":F
    .end local v4    # "currentPos":F
    .end local v7    # "destination":F
    .restart local p1    # "currentPos":F
    .restart local p2    # "destination":F
    .restart local p3    # "currentVelocity":F
    :cond_23
    move v4, p1

    move v7, p2

    move v3, p3

    .line 184
    .end local p1    # "currentPos":F
    .end local p2    # "destination":F
    .end local p3    # "currentVelocity":F
    .restart local v3    # "currentVelocity":F
    .restart local v4    # "currentPos":F
    .restart local v7    # "destination":F
    return v1
.end method

.method private blacklist rampUpCruseRampDown(FFFFFF)V
    .registers 29
    .param p1, "currentPos"    # F
    .param p2, "destination"    # F
    .param p3, "currentVelocity"    # F
    .param p4, "maxA"    # F
    .param p5, "maxV"    # F
    .param p6, "maxTime"    # F

    .line 264
    move-object/from16 v0, p0

    move/from16 v7, p6

    const/high16 v1, 0x40400000    # 3.0f

    div-float v11, v7, v1

    .line 265
    .local v11, "t1":F
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v4, v11, v1

    .line 266
    .local v4, "t2":F
    sub-float v15, p2, p1

    .line 267
    .local v15, "distance":F
    sub-float v16, v4, v11

    .line 268
    .local v16, "dt2":F
    sub-float v17, v7, v4

    .line 269
    .local v17, "dt3":F
    mul-float v2, v15, v1

    mul-float v3, p3, v11

    sub-float/2addr v2, v3

    mul-float v3, v16, v1

    add-float/2addr v3, v11

    add-float v3, v3, v17

    div-float v9, v2, v3

    .line 270
    .local v9, "v1":F
    iput v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 271
    add-float v2, p3, v9

    mul-float/2addr v2, v11

    div-float v18, v2, v1

    .line 272
    .local v18, "d1":F
    add-float v2, v9, v9

    sub-float v3, v4, v11

    mul-float/2addr v2, v3

    div-float v19, v2, v1

    .line 273
    .local v19, "d2":F
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    .line 274
    sub-float v1, v9, p3

    div-float v20, v1, v11

    .line 275
    .local v20, "acc":F
    div-float v21, v9, v17

    .line 276
    .local v21, "dec":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/4 v2, 0x0

    aget-object v8, v1, v2

    move v14, v11

    .end local v11    # "t1":F
    .local v14, "t1":F
    const/4 v11, 0x0

    add-float v13, p1, v18

    move/from16 v10, p1

    move v12, v9

    move/from16 v9, p3

    .end local v9    # "v1":F
    .local v12, "v1":F
    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 277
    move v9, v12

    .end local v12    # "v1":F
    .restart local v9    # "v1":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/4 v2, 0x1

    aget-object v8, v1, v2

    add-float v10, p1, v18

    add-float v1, p1, v18

    add-float v13, v1, v19

    move v11, v14

    move v14, v4

    .end local v4    # "t2":F
    .restart local v11    # "t1":F
    .local v14, "t2":F
    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 278
    move v14, v11

    .end local v11    # "t1":F
    .restart local v4    # "t2":F
    .local v14, "t1":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    add-float v2, p1, v18

    add-float v3, v2, v19

    const/4 v5, 0x0

    move/from16 v6, p2

    move v2, v9

    .end local v9    # "v1":F
    .local v2, "v1":F
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 279
    .end local v2    # "v1":F
    .restart local v9    # "v1":F
    iput v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 280
    return-void
.end method

.method private blacklist rampUpRampDown(FFFFFF)Z
    .registers 27
    .param p1, "currentPos"    # F
    .param p2, "destination"    # F
    .param p3, "currentVelocity"    # F
    .param p4, "maxA"    # F
    .param p5, "maxVelocity"    # F
    .param p6, "maxTime"    # F

    .line 222
    move-object/from16 v0, p0

    .line 223
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->signum(F)F

    move-result v1

    sub-float v2, p2, p1

    mul-float v2, v2, p4

    mul-float v3, p3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 225
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v9, v1, v2

    .line 228
    .local v9, "peak_v":F
    div-float v1, p5, v9

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_b3

    .line 229
    sub-float v1, v9, p3

    div-float v11, v1, p4

    .line 230
    .local v11, "t1":F
    add-float v1, v9, p3

    mul-float/2addr v1, v11

    div-float/2addr v1, v4

    add-float v10, v1, p1

    .line 231
    .local v10, "d1":F
    div-float v1, v9, p4

    .line 232
    .local v1, "t2":F
    const/4 v3, 0x2

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    .line 233
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v5, v5, v2

    const/4 v8, 0x0

    move/from16 v7, p1

    move/from16 v6, p3

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 234
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/16 v19, 0x1

    aget-object v5, v5, v19

    move v6, v9

    .end local v9    # "peak_v":F
    .local v6, "peak_v":F
    const/4 v9, 0x0

    move v8, v11

    .end local v11    # "t1":F
    .local v8, "t1":F
    add-float v11, v1, v8

    move v7, v10

    move/from16 v10, p2

    .end local v10    # "d1":F
    .local v7, "d1":F
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 235
    move v9, v6

    move v10, v7

    move v11, v8

    .end local v6    # "peak_v":F
    .end local v7    # "d1":F
    .end local v8    # "t1":F
    .restart local v9    # "peak_v":F
    .restart local v10    # "d1":F
    .restart local v11    # "t1":F
    add-float v5, v1, v11

    iput v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 236
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    cmpl-float v5, v5, p6

    if-lez v5, :cond_5b

    .line 237
    return v2

    .line 239
    :cond_5b
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    div-float v6, p6, v4

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b2

    .line 240
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    div-float v15, v5, v4

    .line 241
    .end local v11    # "t1":F
    .local v15, "t1":F
    move v1, v15

    .line 242
    sub-float v5, p2, p1

    mul-float/2addr v5, v4

    div-float/2addr v5, v15

    sub-float v5, v5, p3

    div-float v13, v5, v4

    .line 243
    .end local v9    # "peak_v":F
    .local v13, "peak_v":F
    add-float v5, v13, p3

    mul-float/2addr v5, v15

    div-float/2addr v5, v4

    add-float v14, v5, p1

    .line 244
    .end local v10    # "d1":F
    .local v14, "d1":F
    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    .line 245
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v12, v3, v2

    move/from16 v18, v15

    .end local v15    # "t1":F
    .local v18, "t1":F
    const/4 v15, 0x0

    move/from16 v16, v13

    move/from16 v17, v14

    move/from16 v14, p1

    move/from16 v13, p3

    .end local v13    # "peak_v":F
    .end local v14    # "d1":F
    .local v16, "peak_v":F
    .local v17, "d1":F
    invoke-virtual/range {v12 .. v18}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 246
    move/from16 v13, v16

    move/from16 v14, v17

    .end local v16    # "peak_v":F
    .end local v17    # "d1":F
    .restart local v13    # "peak_v":F
    .restart local v14    # "d1":F
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v12, v3, v19

    const/16 v16, 0x0

    add-float v15, v1, v18

    move/from16 v17, v18

    move/from16 v18, v15

    move/from16 v15, v17

    move/from16 v17, p2

    .end local v18    # "t1":F
    .restart local v15    # "t1":F
    invoke-virtual/range {v12 .. v18}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 247
    move/from16 v18, v15

    .end local v15    # "t1":F
    .restart local v18    # "t1":F
    add-float v15, v1, v18

    iput v15, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 248
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    cmpl-float v3, v3, p6

    if-lez v3, :cond_ae

    .line 249
    return v2

    .line 248
    :cond_ae
    move v9, v13

    move v10, v14

    move/from16 v11, v18

    .line 252
    .end local v13    # "peak_v":F
    .end local v14    # "d1":F
    .end local v18    # "t1":F
    .restart local v9    # "peak_v":F
    .restart local v10    # "d1":F
    .restart local v11    # "t1":F
    :cond_b2
    return v19

    .line 254
    .end local v1    # "t2":F
    .end local v10    # "d1":F
    .end local v11    # "t1":F
    :cond_b3
    return v2
.end method


# virtual methods
.method public blacklist config(FFFFFFLcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;)V
    .registers 18
    .param p1, "currentPos"    # F
    .param p2, "destination"    # F
    .param p3, "currentVelocity"    # F
    .param p4, "maxTime"    # F
    .param p5, "maxAcceleration"    # F
    .param p6, "maxVelocity"    # F
    .param p7, "easing"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    .line 145
    move v0, p1

    .line 146
    .local v0, "pos":F
    move v1, p3

    .line 147
    .local v1, "velocity":F
    cmpl-float v2, v0, p2

    if-nez v2, :cond_b

    .line 148
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    move v3, v0

    goto :goto_c

    .line 147
    :cond_b
    move v3, v0

    .line 150
    .end local v0    # "pos":F
    .local v3, "pos":F
    :goto_c
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStartPos:F

    .line 151
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEndPos:F

    .line 152
    if-eqz p7, :cond_18

    .line 153
    invoke-interface/range {p7 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;->clone()Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    .line 155
    :cond_18
    sub-float v0, p2, v3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 156
    .local v0, "dir":F
    mul-float v7, p6, v0

    .line 157
    .local v7, "maxV":F
    mul-float v6, p5, v0

    .line 158
    .local v6, "maxA":F
    float-to-double v4, v1

    const-wide/16 v8, 0x0

    cmpl-double v2, v4, v8

    if-nez v2, :cond_30

    .line 159
    const v2, 0x38d1b717    # 1.0E-4f

    mul-float v1, v0, v2

    move v5, v1

    goto :goto_31

    .line 158
    :cond_30
    move v5, v1

    .line 161
    .end local v1    # "velocity":F
    .local v5, "velocity":F
    :goto_31
    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStartV:F

    .line 162
    invoke-direct {p0, v3, p2, v5, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->rampDown(FFFF)Z

    move-result v1

    if-nez v1, :cond_59

    .line 163
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mOneDimension:Z

    if-eqz v1, :cond_4a

    .line 164
    move-object v2, p0

    move v4, p2

    move v8, v7

    move v7, v6

    move v6, p4

    .end local v6    # "maxA":F
    .local v7, "maxA":F
    .local v8, "maxV":F
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->cruseThenRampDown(FFFFFF)Z

    move-result v1

    move v6, v7

    move v7, v8

    .end local v8    # "maxV":F
    .restart local v6    # "maxA":F
    .local v7, "maxV":F
    if-nez v1, :cond_59

    .line 165
    :cond_4a
    move-object v2, p0

    move v4, p2

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->rampUpRampDown(FFFFFF)Z

    move-result v1

    if-nez v1, :cond_59

    .line 166
    move-object v2, p0

    move v4, p2

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->rampUpCruseRampDown(FFFFFF)V

    .line 170
    :cond_59
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mOneDimension:Z

    if-eqz v1, :cond_60

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->configureEasingAdapter()V

    .line 173
    :cond_60
    return-void
.end method

.method protected blacklist configureEasingAdapter()V
    .registers 13

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    if-nez v0, :cond_5

    .line 304
    return-void

    .line 306
    :cond_5
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    add-int/lit8 v0, v0, -0x1

    .line 307
    .local v0, "last":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartV(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v1

    .line 308
    .local v1, "initialVelocity":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmEndPos(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartPos(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 309
    .local v2, "distance":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmEndTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 310
    .local v3, "duration":F
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;->getDiff(D)D

    move-result-wide v4

    .line 311
    .local v4, "baseVel":D
    float-to-double v6, v1

    float-to-double v8, v2

    mul-double/2addr v8, v4

    div-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    .line 312
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-wide v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    sub-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    .line 313
    float-to-double v6, v2

    iput-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterDistance:D

    .line 314
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    iget-wide v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    mul-double/2addr v8, v6

    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    iget-wide v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    mul-double/2addr v6, v10

    add-double/2addr v8, v6

    .line 315
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    iget-wide v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    mul-double/2addr v10, v8

    div-double/2addr v6, v10

    .line 318
    .local v6, "easingDuration":D
    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v8, v8, v0

    invoke-static {v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v8

    float-to-double v8, v8

    add-double/2addr v8, v6

    double-to-float v8, v8

    iput v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mTotalEasingDuration:F

    .line 319
    return-void
.end method

.method public blacklist getDuration()F
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    if-eqz v0, :cond_7

    .line 61
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mTotalEasingDuration:F

    return v0

    .line 63
    :cond_7
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    return v0
.end method

.method blacklist getEasing(D)D
    .registers 9
    .param p1, "t"    # D

    .line 283
    mul-double v0, p1, p1

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    .line 284
    .local v0, "gx":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_12

    .line 285
    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterDistance:D

    return-wide v2

    .line 287
    :cond_12
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;->get(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterDistance:D

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public blacklist getPos(F)F
    .registers 5
    .param p1, "t"    # F

    .line 97
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    if-nez v0, :cond_24

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    if-ge v0, v1, :cond_21

    .line 99
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmEndTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_1e

    .line 100
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->getPos(F)F

    move-result v1

    return v1

    .line 98
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 103
    .end local v0    # "i":I
    :cond_21
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEndPos:F

    return v0

    .line 105
    :cond_24
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    add-int/lit8 v0, v0, -0x1

    .line 106
    .local v0, "lastStages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    if-ge v1, v0, :cond_43

    .line 107
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmEndTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_40

    .line 108
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->getPos(F)F

    move-result v2

    return v2

    .line 106
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 111
    .end local v1    # "i":I
    :cond_43
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v1

    sub-float v1, p1, v1

    float-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->getEasing(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 112
    .local v1, "ret":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartPos(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v2

    add-float/2addr v1, v2

    .line 113
    return v1
.end method

.method public blacklist getV(F)F
    .registers 5
    .param p1, "t"    # F

    .line 73
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    if-nez v0, :cond_23

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    if-ge v0, v1, :cond_21

    .line 75
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmEndTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_1e

    .line 76
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->getVel(F)F

    move-result v1

    return v1

    .line 74
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 79
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_23
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    add-int/lit8 v0, v0, -0x1

    .line 82
    .local v0, "lastStages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_28
    if-ge v1, v0, :cond_42

    .line 83
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmEndTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_3f

    .line 84
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->getVel(F)F

    move-result v2

    return v2

    .line 82
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 87
    .end local v1    # "i":I
    :cond_42
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v1

    sub-float v1, p1, v1

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->getEasingDiff(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 118
    const-string v0, " "

    .line 119
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    if-ge v1, v2, :cond_21

    .line 120
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v2, v2, v1

    .line 121
    .local v2, "stage":Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " $i $stage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .end local v2    # "stage":Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 123
    .end local v1    # "i":I
    :cond_21
    return-object v0
.end method
