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
    .line 53
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
    .line 52
    double-to-float v0, v0

    #@e
    sput v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    #@10
    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    #@4
    .line 55
    iput v1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    #@6
    .line 56
    iput v1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    #@8
    .line 57
    const/high16 v0, 0x428c0000    # 70.0f

    #@a
    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    #@c
    .line 58
    iput v1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@e
    .line 59
    iput v1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@10
    .line 60
    sget v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    #@12
    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    #@14
    .line 62
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
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@6
    .line 55
    iput v5, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    #@8
    .line 56
    iput v5, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    #@a
    .line 57
    iput v6, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    #@c
    .line 58
    iput v5, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@e
    .line 59
    iput v5, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@10
    .line 60
    sget v4, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    #@12
    iput v4, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    #@14
    .line 66
    sget-object v4, Lcom/android/internal/R$styleable;->ArcMotion:[I

    #@16
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@19
    move-result-object v0

    #@1a
    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    #@1b
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1e
    move-result v3

    #@1f
    .line 69
    .local v3, "minimumVerticalAngle":F
    invoke-virtual {p0, v3}, Landroid/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    #@22
    .line 70
    const/4 v4, 0x0

    #@23
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@26
    move-result v2

    #@27
    .line 72
    .local v2, "minimumHorizontalAngle":F
    invoke-virtual {p0, v2}, Landroid/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    #@2a
    .line 73
    const/4 v4, 0x2

    #@2b
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@2e
    move-result v1

    #@2f
    .line 75
    .local v1, "maximumAngle":F
    invoke-virtual {p0, v1}, Landroid/transition/ArcMotion;->setMaximumAngle(F)V

    #@32
    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@35
    .line 64
    return-void
.end method

.method private static toTangent(F)F
    .locals 2
    .param p0, "arcInDegrees"    # F

    #@0
    .prologue
    .line 174
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
    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Arc must be between 0 and 90 degrees"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 177
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
    .line 170
    iget v0, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    #@2
    return v0
.end method

.method public getMinimumHorizontalAngle()F
    .locals 1

    #@0
    .prologue
    .line 108
    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    #@2
    return v0
.end method

.method public getMinimumVerticalAngle()F
    .locals 1

    #@0
    .prologue
    .line 141
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
    .line 198
    new-instance v2, Landroid/graphics/Path;

    #@2
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    #@5
    .line 199
    .local v2, "path":Landroid/graphics/Path;
    move/from16 v0, p1

    #@7
    move/from16 v1, p2

    #@9
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    #@c
    .line 203
    cmpl-float v7, p2, p4

    #@e
    if-nez v7, :cond_1

    #@10
    .line 204
    add-float v7, p1, p3

    #@12
    const/high16 v8, 0x40000000    # 2.0f

    #@14
    div-float v18, v7, v8

    #@16
    .line 205
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
    .line 264
    .local v19, "ey":F
    :cond_0
    :goto_0
    add-float v7, p1, v18

    #@28
    const/high16 v8, 0x40000000    # 2.0f

    #@2a
    div-float v3, v7, v8

    #@2c
    .line 265
    .local v3, "controlX1":F
    add-float v7, p2, v19

    #@2e
    const/high16 v8, 0x40000000    # 2.0f

    #@30
    div-float v4, v7, v8

    #@32
    .line 266
    .local v4, "controlY1":F
    add-float v7, v18, p3

    #@34
    const/high16 v8, 0x40000000    # 2.0f

    #@36
    div-float v5, v7, v8

    #@38
    .line 267
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
    .line 268
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@45
    .line 269
    return-object v2

    #@46
    .line 206
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
    .line 207
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
    .line 208
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
    .line 210
    .end local v18    # "ex":F
    .end local v19    # "ey":F
    :cond_2
    sub-float v12, p3, p1

    #@63
    .line 211
    .local v12, "deltaX":F
    sub-float v13, p2, p4

    #@65
    .line 213
    .local v13, "deltaY":F
    mul-float v7, v12, v12

    #@67
    mul-float v8, v13, v13

    #@69
    add-float v20, v7, v8

    #@6b
    .line 216
    .local v20, "h2":F
    add-float v7, p1, p3

    #@6d
    const/high16 v8, 0x40000000    # 2.0f

    #@6f
    div-float v14, v7, v8

    #@71
    .line 217
    .local v14, "dx":F
    add-float v7, p2, p4

    #@73
    const/high16 v8, 0x40000000    # 2.0f

    #@75
    div-float v15, v7, v8

    #@77
    .line 220
    .local v15, "dy":F
    const/high16 v7, 0x3e800000    # 0.25f

    #@79
    mul-float v22, v20, v7

    #@7b
    .line 222
    .local v22, "midDist2":F
    const/16 v23, 0x0

    #@7d
    .line 224
    .local v23, "minimumArcDist2":F
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    #@80
    move-result v7

    #@81
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    #@84
    move-result v8

    #@85
    cmpg-float v7, v7, v8

    #@87
    if-gez v7, :cond_4

    #@89
    .line 230
    const/high16 v7, 0x40000000    # 2.0f

    #@8b
    mul-float/2addr v7, v13

    #@8c
    div-float v17, v20, v7

    #@8e
    .line 231
    .local v17, "eDistY":F
    add-float v19, p4, v17

    #@90
    .line 232
    .restart local v19    # "ey":F
    move/from16 v18, p3

    #@92
    .line 234
    .restart local v18    # "ex":F
    move-object/from16 v0, p0

    #@94
    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@96
    mul-float v7, v7, v22

    #@98
    .line 235
    move-object/from16 v0, p0

    #@9a
    iget v8, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@9c
    .line 234
    mul-float v23, v7, v8

    #@9e
    .line 245
    .end local v17    # "eDistY":F
    :goto_1
    sub-float v10, v14, v18

    #@a0
    .line 246
    .local v10, "arcDistX":F
    sub-float v11, v15, v19

    #@a2
    .line 247
    .local v11, "arcDistY":F
    mul-float v7, v10, v10

    #@a4
    mul-float v8, v11, v11

    #@a6
    add-float v9, v7, v8

    #@a8
    .line 249
    .local v9, "arcDist2":F
    move-object/from16 v0, p0

    #@aa
    iget v7, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    #@ac
    mul-float v7, v7, v22

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget v8, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    #@b2
    mul-float v21, v7, v8

    #@b4
    .line 251
    .local v21, "maximumArcDist2":F
    const/16 v24, 0x0

    #@b6
    .line 252
    .local v24, "newArcDistance2":F
    cmpg-float v7, v9, v23

    #@b8
    if-gez v7, :cond_5

    #@ba
    .line 253
    move/from16 v24, v23

    #@bc
    .line 257
    :cond_3
    :goto_2
    const/4 v7, 0x0

    #@bd
    cmpl-float v7, v24, v7

    #@bf
    if-eqz v7, :cond_0

    #@c1
    .line 258
    div-float v26, v24, v9

    #@c3
    .line 259
    .local v26, "ratio2":F
    move/from16 v0, v26

    #@c5
    float-to-double v0, v0

    #@c6
    move-wide/from16 v28, v0

    #@c8
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    #@cb
    move-result-wide v28

    #@cc
    move-wide/from16 v0, v28

    #@ce
    double-to-float v0, v0

    #@cf
    move/from16 v25, v0

    #@d1
    .line 260
    .local v25, "ratio":F
    sub-float v7, v18, v14

    #@d3
    mul-float v7, v7, v25

    #@d5
    add-float v18, v14, v7

    #@d7
    .line 261
    sub-float v7, v19, v15

    #@d9
    mul-float v7, v7, v25

    #@db
    add-float v19, v15, v7

    #@dd
    goto/16 :goto_0

    #@df
    .line 238
    .end local v9    # "arcDist2":F
    .end local v10    # "arcDistX":F
    .end local v11    # "arcDistY":F
    .end local v18    # "ex":F
    .end local v19    # "ey":F
    .end local v21    # "maximumArcDist2":F
    .end local v24    # "newArcDistance2":F
    .end local v25    # "ratio":F
    .end local v26    # "ratio2":F
    :cond_4
    const/high16 v7, 0x40000000    # 2.0f

    #@e1
    mul-float/2addr v7, v12

    #@e2
    div-float v16, v20, v7

    #@e4
    .line 239
    .local v16, "eDistX":F
    add-float v18, p3, v16

    #@e6
    .line 240
    .restart local v18    # "ex":F
    move/from16 v19, p4

    #@e8
    .line 242
    .restart local v19    # "ey":F
    move-object/from16 v0, p0

    #@ea
    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@ec
    mul-float v7, v7, v22

    #@ee
    .line 243
    move-object/from16 v0, p0

    #@f0
    iget v8, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@f2
    .line 242
    mul-float v23, v7, v8

    #@f4
    goto :goto_1

    #@f5
    .line 254
    .end local v16    # "eDistX":F
    .restart local v9    # "arcDist2":F
    .restart local v10    # "arcDistX":F
    .restart local v11    # "arcDistY":F
    .restart local v21    # "maximumArcDist2":F
    .restart local v24    # "newArcDistance2":F
    :cond_5
    cmpl-float v7, v9, v21

    #@f7
    if-lez v7, :cond_3

    #@f9
    .line 255
    move/from16 v24, v21

    #@fb
    goto :goto_2
.end method

.method public setMaximumAngle(F)V
    .locals 1
    .param p1, "angleInDegrees"    # F

    #@0
    .prologue
    .line 155
    iput p1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    #@2
    .line 156
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    #@8
    .line 154
    return-void
.end method

.method public setMinimumHorizontalAngle(F)V
    .locals 1
    .param p1, "angleInDegrees"    # F

    #@0
    .prologue
    .line 92
    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    #@2
    .line 93
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@8
    .line 91
    return-void
.end method

.method public setMinimumVerticalAngle(F)V
    .locals 1
    .param p1, "angleInDegrees"    # F

    #@0
    .prologue
    .line 124
    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    #@2
    .line 125
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@8
    .line 123
    return-void
.end method
