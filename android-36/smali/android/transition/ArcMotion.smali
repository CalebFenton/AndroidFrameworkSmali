.class public Landroid/transition/ArcMotion;
.super Landroid/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final greylist-max-o DEFAULT_MAX_ANGLE_DEGREES:F = 70.0f

.field private static final greylist-max-o DEFAULT_MAX_TANGENT:F

.field private static final greylist-max-o DEFAULT_MIN_ANGLE_DEGREES:F


# instance fields
.field private greylist-max-o mMaximumAngle:F

.field private greylist-max-o mMaximumTangent:F

.field private greylist-max-o mMinimumHorizontalAngle:F

.field private greylist-max-o mMinimumHorizontalTangent:F

.field private greylist-max-o mMinimumVerticalAngle:F

.field private greylist-max-o mMinimumVerticalTangent:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 51
    nop

    .line 52
    const-wide v0, 0x4041800000000000L    # 35.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    .line 51
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 55
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 56
    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    .line 57
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 58
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 59
    sget v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    .line 61
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 55
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 56
    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    .line 57
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 58
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 59
    sget v2, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v2, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    .line 65
    sget-object v2, Lcom/android/internal/R$styleable;->ArcMotion:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 66
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 68
    .local v3, "minimumVerticalAngle":F
    invoke-virtual {p0, v3}, Landroid/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    .line 69
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 71
    .local v0, "minimumHorizontalAngle":F
    invoke-virtual {p0, v0}, Landroid/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    .line 72
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 74
    .local v1, "maximumAngle":F
    invoke-virtual {p0, v1}, Landroid/transition/ArcMotion;->setMaximumAngle(F)V

    .line 75
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method private static greylist-max-o toTangent(F)F
    .registers 3
    .param p0, "arcInDegrees"    # F

    .line 173
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_1a

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_1a

    .line 176
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 174
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arc must be between 0 and 90 degrees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getMaximumAngle()F
    .registers 2

    .line 169
    iget v0, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    return v0
.end method

.method public whitelist getMinimumHorizontalAngle()F
    .registers 2

    .line 107
    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    return v0
.end method

.method public whitelist getMinimumVerticalAngle()F
    .registers 2

    .line 140
    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    return v0
.end method

.method public whitelist getPath(FFFF)Landroid/graphics/Path;
    .registers 31
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .line 197
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move-object v4, v3

    .line 198
    .local v4, "path":Landroid/graphics/Path;
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 202
    sub-float v3, p3, v1

    .line 203
    .local v3, "deltaX":F
    sub-float v11, p4, v2

    .line 206
    .local v11, "deltaY":F
    mul-float v5, v3, v3

    mul-float v6, v11, v11

    add-float v12, v5, v6

    .line 209
    .local v12, "h2":F
    add-float v5, v1, p3

    const/high16 v6, 0x40000000    # 2.0f

    div-float v13, v5, v6

    .line 210
    .local v13, "dx":F
    add-float v5, v2, p4

    div-float v14, v5, v6

    .line 213
    .local v14, "dy":F
    const/high16 v5, 0x3e800000    # 0.25f

    mul-float v15, v12, v5

    .line 215
    .local v15, "midDist2":F
    const/4 v5, 0x0

    .line 217
    .local v5, "minimumArcDist2":F
    cmpl-float v7, v2, p4

    if-lez v7, :cond_2e

    const/4 v7, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v7, 0x0

    :goto_2f
    move/from16 v16, v7

    .line 219
    .local v16, "isMovingUpwards":Z
    const/4 v7, 0x0

    cmpl-float v8, v11, v7

    const/high16 v9, 0x3f000000    # 0.5f

    if-nez v8, :cond_4a

    .line 220
    move v8, v13

    .line 221
    .local v8, "ex":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v9

    iget v9, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v10, v9

    add-float/2addr v10, v14

    move/from16 v19, v5

    move/from16 v17, v6

    move/from16 v18, v7

    .local v10, "ey":F
    goto/16 :goto_ae

    .line 222
    .end local v8    # "ex":F
    .end local v10    # "ey":F
    :cond_4a
    cmpl-float v8, v3, v7

    if-nez v8, :cond_5f

    .line 223
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v8, v9

    iget v9, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v13

    .line 224
    .restart local v8    # "ex":F
    move v10, v14

    move/from16 v19, v5

    move/from16 v17, v6

    move/from16 v18, v7

    .restart local v10    # "ey":F
    goto :goto_ae

    .line 225
    .end local v8    # "ex":F
    .end local v10    # "ey":F
    :cond_5f
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8e

    .line 231
    mul-float v8, v11, v6

    div-float v8, v12, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 232
    .local v8, "eDistY":F
    if-eqz v16, :cond_7a

    .line 233
    add-float v9, p4, v8

    .line 234
    .local v9, "ey":F
    move/from16 v10, p3

    .local v10, "ex":F
    goto :goto_7e

    .line 236
    .end local v9    # "ey":F
    .end local v10    # "ex":F
    :cond_7a
    add-float v9, v2, v8

    .line 237
    .restart local v9    # "ey":F
    move/from16 v10, p1

    .line 240
    .restart local v10    # "ex":F
    :goto_7e
    move/from16 v17, v6

    iget v6, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v6, v15

    move/from16 v18, v7

    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float v5, v6, v7

    .line 242
    .end local v8    # "eDistY":F
    move/from16 v19, v5

    move v8, v10

    move v10, v9

    goto :goto_ae

    .line 244
    .end local v9    # "ey":F
    .end local v10    # "ex":F
    :cond_8e
    move/from16 v17, v6

    move/from16 v18, v7

    mul-float v6, v3, v17

    div-float v6, v12, v6

    .line 245
    .local v6, "eDistX":F
    if-eqz v16, :cond_9f

    .line 246
    add-float v7, v1, v6

    .line 247
    .local v7, "ex":F
    move/from16 v8, p2

    move v10, v8

    move v8, v7

    .local v8, "ey":F
    goto :goto_a5

    .line 249
    .end local v7    # "ex":F
    .end local v8    # "ey":F
    :cond_9f
    sub-float v7, p3, v6

    .line 250
    .restart local v7    # "ex":F
    move/from16 v8, p4

    move v10, v8

    move v8, v7

    .line 253
    .end local v7    # "ex":F
    .local v8, "ex":F
    .local v10, "ey":F
    :goto_a5
    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v7, v15

    iget v9, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float v5, v7, v9

    move/from16 v19, v5

    .line 256
    .end local v5    # "minimumArcDist2":F
    .end local v6    # "eDistX":F
    .local v19, "minimumArcDist2":F
    :goto_ae
    sub-float v20, v13, v8

    .line 257
    .local v20, "arcDistX":F
    sub-float v21, v14, v10

    .line 258
    .local v21, "arcDistY":F
    mul-float v5, v20, v20

    mul-float v6, v21, v21

    add-float v22, v5, v6

    .line 260
    .local v22, "arcDist2":F
    iget v5, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    mul-float/2addr v5, v15

    iget v6, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    mul-float v23, v5, v6

    .line 262
    .local v23, "maximumArcDist2":F
    const/4 v5, 0x0

    .line 263
    .local v5, "newArcDistance2":F
    cmpl-float v6, v22, v18

    if-eqz v6, :cond_cd

    cmpg-float v6, v22, v19

    if-gez v6, :cond_cd

    .line 264
    move/from16 v5, v19

    move/from16 v24, v5

    goto :goto_d8

    .line 265
    :cond_cd
    cmpl-float v6, v22, v23

    if-lez v6, :cond_d6

    .line 266
    move/from16 v5, v23

    move/from16 v24, v5

    goto :goto_d8

    .line 265
    :cond_d6
    move/from16 v24, v5

    .line 268
    .end local v5    # "newArcDistance2":F
    .local v24, "newArcDistance2":F
    :goto_d8
    cmpl-float v5, v24, v18

    if-eqz v5, :cond_f3

    .line 269
    div-float v5, v24, v22

    .line 270
    .local v5, "ratio2":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 271
    .local v6, "ratio":F
    sub-float v7, v8, v13

    mul-float/2addr v7, v6

    add-float v8, v13, v7

    .line 272
    sub-float v7, v10, v14

    mul-float/2addr v7, v6

    add-float v10, v14, v7

    move/from16 v18, v8

    move/from16 v25, v10

    goto :goto_f7

    .line 268
    .end local v5    # "ratio2":F
    .end local v6    # "ratio":F
    :cond_f3
    move/from16 v18, v8

    move/from16 v25, v10

    .line 274
    .end local v8    # "ex":F
    .end local v10    # "ey":F
    .local v18, "ex":F
    .local v25, "ey":F
    :goto_f7
    add-float v5, v1, v18

    div-float v5, v5, v17

    .line 275
    .local v5, "control1X":F
    add-float v6, v2, v25

    div-float v6, v6, v17

    .line 276
    .local v6, "control1Y":F
    add-float v7, v18, p3

    div-float v7, v7, v17

    .line 277
    .local v7, "control2X":F
    add-float v8, v25, p4

    div-float v8, v8, v17

    .line 278
    .local v8, "control2Y":F
    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 279
    return-object v4
.end method

.method public whitelist setMaximumAngle(F)V
    .registers 3
    .param p1, "angleInDegrees"    # F

    .line 154
    iput p1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    .line 155
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    .line 156
    return-void
.end method

.method public whitelist setMinimumHorizontalAngle(F)V
    .registers 3
    .param p1, "angleInDegrees"    # F

    .line 91
    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 92
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 93
    return-void
.end method

.method public whitelist setMinimumVerticalAngle(F)V
    .registers 3
    .param p1, "angleInDegrees"    # F

    .line 123
    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 124
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 125
    return-void
.end method
