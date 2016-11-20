.class public Landroid/transition/ArcMotion;
.super Landroid/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final DEFAULT_MAX_ANGLE_DEGREES:F = 70.0f

.field private static final DEFAULT_MAX_TANGENT:F

.field private static final DEFAULT_MIN_ANGLE_DEGREES:F


# instance fields
.field private mMaximumAngle:F

.field private mMaximumTangent:F

.field private mMinimumHorizontalAngle:F

.field private mMinimumHorizontalTangent:F

.field private mMinimumVerticalAngle:F

.field private mMinimumVerticalTangent:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 52
    const-wide v0, 0x4041800000000000L    # 35.0

    #@5
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@8
    move-result-wide v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    #@c
    move-result-wide v0

    #@d
    .line 51
    double-to-float v0, v0

    #@e
    sput v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    #@10
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 61
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    #@4
    .line 54
    iput v1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    #@6
    .line 55
    iput v1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    #@8
    .line 56
    const/high16 v0, 0x428c0000    # 70.0f

    #@a
    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    #@c
    .line 57
    iput v1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@e
    .line 58
    iput v1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@10
    .line 59
    sget v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    #@12
    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    #@14
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/high16 v6, 0x428c0000    # 70.0f

    #@2
    const/4 v5, 0x0

    #@3
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@6
    .line 54
    iput v5, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    #@8
    .line 55
    iput v5, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    #@a
    .line 56
    iput v6, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    #@c
    .line 57
    iput v5, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@e
    .line 58
    iput v5, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@10
    .line 59
    sget v4, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    #@12
    iput v4, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    #@14
    .line 65
    sget-object v4, Lcom/android/internal/R$styleable;->ArcMotion:[I

    #@16
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@19
    move-result-object v0

    #@1a
    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    #@1b
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1e
    move-result v3

    #@1f
    .line 68
    .local v3, "minimumVerticalAngle":F
    invoke-virtual {p0, v3}, Landroid/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    #@22
    .line 69
    const/4 v4, 0x0

    #@23
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@26
    move-result v2

    #@27
    .line 71
    .local v2, "minimumHorizontalAngle":F
    invoke-virtual {p0, v2}, Landroid/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    #@2a
    .line 72
    const/4 v4, 0x2

    #@2b
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@2e
    move-result v1

    #@2f
    .line 74
    .local v1, "maximumAngle":F
    invoke-virtual {p0, v1}, Landroid/transition/ArcMotion;->setMaximumAngle(F)V

    #@32
    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@35
    .line 63
    return-void
.end method

.method private static toTangent(F)F
    .locals 2
    .param p0, "arcInDegrees"    # F

    #@0
    .prologue
    .line 173
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p0, v0

    #@3
    if-ltz v0, :cond_0

    #@5
    const/high16 v0, 0x42b40000    # 90.0f

    #@7
    cmpl-float v0, p0, v0

    #@9
    if-lez v0, :cond_1

    #@b
    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Arc must be between 0 and 90 degrees"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 176
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    #@16
    div-float v0, p0, v0

    #@18
    float-to-double v0, v0

    #@19
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@1c
    move-result-wide v0

    #@1d
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    #@20
    move-result-wide v0

    #@21
    double-to-float v0, v0

    #@22
    return v0
.end method


# virtual methods
.method public getMaximumAngle()F
    .locals 1

    #@0
    .prologue
    .line 169
    iget v0, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    #@2
    return v0
.end method

.method public getMinimumHorizontalAngle()F
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    #@2
    return v0
.end method

.method public getMinimumVerticalAngle()F
    .locals 1

    #@0
    .prologue
    .line 140
    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    #@2
    return v0
.end method

.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 30
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    #@0
    .prologue
    .line 197
    new-instance v2, Landroid/graphics/Path;

    #@2
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    #@5
    .line 198
    .local v2, "path":Landroid/graphics/Path;
    move/from16 v0, p1

    #@7
    move/from16 v1, p2

    #@9
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    #@c
    .line 202
    cmpl-float v7, p2, p4

    #@e
    if-nez v7, :cond_1

    #@10
    .line 203
    add-float v7, p1, p3

    #@12
    const/high16 v8, 0x40000000    # 2.0f

    #@14
    div-float v18, v7, v8

    #@16
    .line 204
    .local v18, "ex":F
    move-object/from16 v0, p0

    #@18
    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@1a
    sub-float v8, p3, p1

    #@1c
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    #@1f
    move-result v8

    #@20
    mul-float/2addr v7, v8

    #@21
    const/high16 v8, 0x40000000    # 2.0f

    #@23
    div-float/2addr v7, v8

    #@24
    add-float v19, p2, v7

    #@26
    .line 274
    .local v19, "ey":F
    :cond_0
    :goto_0
    add-float v7, p1, v18

    #@28
    const/high16 v8, 0x40000000    # 2.0f

    #@2a
    div-float v3, v7, v8

    #@2c
    .line 275
    .local v3, "controlX1":F
    add-float v7, p2, v19

    #@2e
    const/high16 v8, 0x40000000    # 2.0f

    #@30
    div-float v4, v7, v8

    #@32
    .line 276
    .local v4, "controlY1":F
    add-float v7, v18, p3

    #@34
    const/high16 v8, 0x40000000    # 2.0f

    #@36
    div-float v5, v7, v8

    #@38
    .line 277
    .local v5, "controlX2":F
    add-float v7, v19, p4

    #@3a
    const/high16 v8, 0x40000000    # 2.0f

    #@3c
    div-float v6, v7, v8

    #@3e
    .local v6, "controlY2":F
    move/from16 v7, p3

    #@40
    move/from16 v8, p4

    #@42
    .line 278
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@45
    .line 279
    return-object v2

    #@46
    .line 205
    .end local v3    # "controlX1":F
    .end local v4    # "controlY1":F
    .end local v5    # "controlX2":F
    .end local v6    # "controlY2":F
    .end local v18    # "ex":F
    .end local v19    # "ey":F
    :cond_1
    cmpl-float v7, p1, p3

    #@48
    if-nez v7, :cond_2

    #@4a
    .line 206
    move-object/from16 v0, p0

    #@4c
    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@4e
    sub-float v8, p4, p2

    #@50
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    #@53
    move-result v8

    #@54
    mul-float/2addr v7, v8

    #@55
    const/high16 v8, 0x40000000    # 2.0f

    #@57
    div-float/2addr v7, v8

    #@58
    add-float v18, p1, v7

    #@5a
    .line 207
    .restart local v18    # "ex":F
    add-float v7, p2, p4

    #@5c
    const/high16 v8, 0x40000000    # 2.0f

    #@5e
    div-float v19, v7, v8

    #@60
    .restart local v19    # "ey":F
    goto :goto_0

    #@61
    .line 209
    .end local v18    # "ex":F
    .end local v19    # "ey":F
    :cond_2
    sub-float v12, p3, p1

    #@63
    .line 210
    .local v12, "deltaX":F
    sub-float v13, p4, p2

    #@65
    .line 212
    .local v13, "deltaY":F
    mul-float v7, v12, v12

    #@67
    mul-float v8, v13, v13

    #@69
    add-float v20, v7, v8

    #@6b
    .line 215
    .local v20, "h2":F
    add-float v7, p1, p3

    #@6d
    const/high16 v8, 0x40000000    # 2.0f

    #@6f
    div-float v14, v7, v8

    #@71
    .line 216
    .local v14, "dx":F
    add-float v7, p2, p4

    #@73
    const/high16 v8, 0x40000000    # 2.0f

    #@75
    div-float v15, v7, v8

    #@77
    .line 219
    .local v15, "dy":F
    const/high16 v7, 0x3e800000    # 0.25f

    #@79
    mul-float v23, v20, v7

    #@7b
    .line 221
    .local v23, "midDist2":F
    const/16 v24, 0x0

    #@7d
    .line 222
    .local v24, "minimumArcDist2":F
    mul-float v7, v12, v13

    #@7f
    const/4 v8, 0x0

    #@80
    cmpl-float v7, v7, v8

    #@82
    if-lez v7, :cond_4

    #@84
    const/16 v21, 0x1

    #@86
    .line 224
    .local v21, "isQuadrant1Or3":Z
    :goto_1
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    #@89
    move-result v7

    #@8a
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    #@8d
    move-result v8

    #@8e
    cmpg-float v7, v7, v8

    #@90
    if-gez v7, :cond_6

    #@92
    .line 230
    const/high16 v7, 0x40000000    # 2.0f

    #@94
    mul-float/2addr v7, v13

    #@95
    div-float v17, v20, v7

    #@97
    .line 231
    .local v17, "eDistY":F
    if-eqz v21, :cond_5

    #@99
    .line 232
    add-float v19, p2, v17

    #@9b
    .line 233
    .restart local v19    # "ey":F
    move/from16 v18, p1

    #@9d
    .line 239
    .restart local v18    # "ex":F
    :goto_2
    move-object/from16 v0, p0

    #@9f
    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@a1
    mul-float v7, v7, v23

    #@a3
    .line 240
    move-object/from16 v0, p0

    #@a5
    iget v8, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@a7
    .line 239
    mul-float v24, v7, v8

    #@a9
    .line 255
    .end local v17    # "eDistY":F
    :goto_3
    sub-float v10, v14, v18

    #@ab
    .line 256
    .local v10, "arcDistX":F
    sub-float v11, v15, v19

    #@ad
    .line 257
    .local v11, "arcDistY":F
    mul-float v7, v10, v10

    #@af
    mul-float v8, v11, v11

    #@b1
    add-float v9, v7, v8

    #@b3
    .line 259
    .local v9, "arcDist2":F
    move-object/from16 v0, p0

    #@b5
    iget v7, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    #@b7
    mul-float v7, v7, v23

    #@b9
    move-object/from16 v0, p0

    #@bb
    iget v8, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    #@bd
    mul-float v22, v7, v8

    #@bf
    .line 261
    .local v22, "maximumArcDist2":F
    const/16 v25, 0x0

    #@c1
    .line 262
    .local v25, "newArcDistance2":F
    cmpg-float v7, v9, v24

    #@c3
    if-gez v7, :cond_8

    #@c5
    .line 263
    move/from16 v25, v24

    #@c7
    .line 267
    :cond_3
    :goto_4
    const/4 v7, 0x0

    #@c8
    cmpl-float v7, v25, v7

    #@ca
    if-eqz v7, :cond_0

    #@cc
    .line 268
    div-float v27, v25, v9

    #@ce
    .line 269
    .local v27, "ratio2":F
    move/from16 v0, v27

    #@d0
    float-to-double v0, v0

    #@d1
    move-wide/from16 v28, v0

    #@d3
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    #@d6
    move-result-wide v28

    #@d7
    move-wide/from16 v0, v28

    #@d9
    double-to-float v0, v0

    #@da
    move/from16 v26, v0

    #@dc
    .line 270
    .local v26, "ratio":F
    sub-float v7, v18, v14

    #@de
    mul-float v7, v7, v26

    #@e0
    add-float v18, v14, v7

    #@e2
    .line 271
    sub-float v7, v19, v15

    #@e4
    mul-float v7, v7, v26

    #@e6
    add-float v19, v15, v7

    #@e8
    goto/16 :goto_0

    #@ea
    .line 222
    .end local v9    # "arcDist2":F
    .end local v10    # "arcDistX":F
    .end local v11    # "arcDistY":F
    .end local v18    # "ex":F
    .end local v19    # "ey":F
    .end local v21    # "isQuadrant1Or3":Z
    .end local v22    # "maximumArcDist2":F
    .end local v25    # "newArcDistance2":F
    .end local v26    # "ratio":F
    .end local v27    # "ratio2":F
    :cond_4
    const/16 v21, 0x0

    #@ec
    .restart local v21    # "isQuadrant1Or3":Z
    goto :goto_1

    #@ed
    .line 235
    .restart local v17    # "eDistY":F
    :cond_5
    sub-float v19, p4, v17

    #@ef
    .line 236
    .restart local v19    # "ey":F
    move/from16 v18, p3

    #@f1
    .restart local v18    # "ex":F
    goto :goto_2

    #@f2
    .line 243
    .end local v17    # "eDistY":F
    .end local v18    # "ex":F
    .end local v19    # "ey":F
    :cond_6
    const/high16 v7, 0x40000000    # 2.0f

    #@f4
    mul-float/2addr v7, v12

    #@f5
    div-float v16, v20, v7

    #@f7
    .line 244
    .local v16, "eDistX":F
    if-eqz v21, :cond_7

    #@f9
    .line 245
    sub-float v18, p3, v16

    #@fb
    .line 246
    .restart local v18    # "ex":F
    move/from16 v19, p4

    #@fd
    .line 252
    .restart local v19    # "ey":F
    :goto_5
    move-object/from16 v0, p0

    #@ff
    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@101
    mul-float v7, v7, v23

    #@103
    .line 253
    move-object/from16 v0, p0

    #@105
    iget v8, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@107
    .line 252
    mul-float v24, v7, v8

    #@109
    goto :goto_3

    #@10a
    .line 248
    .end local v18    # "ex":F
    .end local v19    # "ey":F
    :cond_7
    add-float v18, p1, v16

    #@10c
    .line 249
    .restart local v18    # "ex":F
    move/from16 v19, p2

    #@10e
    .restart local v19    # "ey":F
    goto :goto_5

    #@10f
    .line 264
    .end local v16    # "eDistX":F
    .restart local v9    # "arcDist2":F
    .restart local v10    # "arcDistX":F
    .restart local v11    # "arcDistY":F
    .restart local v22    # "maximumArcDist2":F
    .restart local v25    # "newArcDistance2":F
    :cond_8
    cmpl-float v7, v9, v22

    #@111
    if-lez v7, :cond_3

    #@113
    .line 265
    move/from16 v25, v22

    #@115
    goto :goto_4
.end method

.method public setMaximumAngle(F)V
    .locals 1
    .param p1, "angleInDegrees"    # F

    #@0
    .prologue
    .line 154
    iput p1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    #@2
    .line 155
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    #@8
    .line 153
    return-void
.end method

.method public setMinimumHorizontalAngle(F)V
    .locals 1
    .param p1, "angleInDegrees"    # F

    #@0
    .prologue
    .line 91
    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    #@2
    .line 92
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@8
    .line 90
    return-void
.end method

.method public setMinimumVerticalAngle(F)V
    .locals 1
    .param p1, "angleInDegrees"    # F

    #@0
    .prologue
    .line 123
    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    #@2
    .line 124
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@8
    .line 122
    return-void
.end method
