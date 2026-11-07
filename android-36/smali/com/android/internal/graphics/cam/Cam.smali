.class public Lcom/android/internal/graphics/cam/Cam;
.super Ljava/lang/Object;
.source "Cam.java"


# static fields
.field private static final blacklist CHROMA_SEARCH_ENDPOINT:F = 0.4f

.field private static final blacklist DE_MAX:F = 1.0f

.field private static final blacklist DL_MAX:F = 0.2f

.field private static final blacklist LIGHTNESS_SEARCH_ENDPOINT:F = 0.01f


# instance fields
.field private final blacklist mAstar:F

.field private final blacklist mBstar:F

.field private final blacklist mChroma:F

.field private final blacklist mHue:F

.field private final blacklist mJ:F

.field private final blacklist mJstar:F

.field private final blacklist mM:F

.field private final blacklist mQ:F

.field private final blacklist mS:F


# direct methods
.method constructor blacklist <init>(FFFFFFFFF)V
    .registers 10
    .param p1, "hue"    # F
    .param p2, "chroma"    # F
    .param p3, "j"    # F
    .param p4, "q"    # F
    .param p5, "m"    # F
    .param p6, "s"    # F
    .param p7, "jstar"    # F
    .param p8, "astar"    # F
    .param p9, "bstar"    # F

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/android/internal/graphics/cam/Cam;->mHue:F

    .line 120
    iput p2, p0, Lcom/android/internal/graphics/cam/Cam;->mChroma:F

    .line 121
    iput p3, p0, Lcom/android/internal/graphics/cam/Cam;->mJ:F

    .line 122
    iput p4, p0, Lcom/android/internal/graphics/cam/Cam;->mQ:F

    .line 123
    iput p5, p0, Lcom/android/internal/graphics/cam/Cam;->mM:F

    .line 124
    iput p6, p0, Lcom/android/internal/graphics/cam/Cam;->mS:F

    .line 125
    iput p7, p0, Lcom/android/internal/graphics/cam/Cam;->mJstar:F

    .line 126
    iput p8, p0, Lcom/android/internal/graphics/cam/Cam;->mAstar:F

    .line 127
    iput p9, p0, Lcom/android/internal/graphics/cam/Cam;->mBstar:F

    .line 128
    return-void
.end method

.method private static blacklist findCamByJ(FFF)Lcom/android/internal/graphics/cam/Cam;
    .registers 16
    .param p0, "hue"    # F
    .param p1, "chroma"    # F
    .param p2, "lstar"    # F

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "low":F
    const/high16 v1, 0x42c80000    # 100.0f

    .line 466
    .local v1, "high":F
    const/4 v2, 0x0

    .line 467
    .local v2, "mid":F
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 468
    .local v3, "bestdL":F
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 470
    .local v4, "bestdE":F
    const/4 v5, 0x0

    .line 471
    .local v5, "bestCam":Lcom/android/internal/graphics/cam/Cam;
    :goto_9
    sub-float v6, v0, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_66

    .line 472
    sub-float v6, v1, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v2, v0, v6

    .line 474
    invoke-static {v2, p1, p0}, Lcom/android/internal/graphics/cam/Cam;->fromJch(FFF)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v6

    .line 478
    .local v6, "camBeforeClip":Lcom/android/internal/graphics/cam/Cam;
    invoke-virtual {v6}, Lcom/android/internal/graphics/cam/Cam;->viewedInSrgb()I

    move-result v7

    .line 479
    .local v7, "clipped":I
    invoke-static {v7}, Lcom/android/internal/graphics/cam/CamUtils;->lstarFromInt(I)F

    move-result v8

    .line 480
    .local v8, "clippedLstar":F
    sub-float v9, p2, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 483
    .local v9, "dL":F
    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_54

    .line 488
    invoke-static {v7}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v10

    .line 489
    .local v10, "camClipped":Lcom/android/internal/graphics/cam/Cam;
    nop

    .line 490
    invoke-virtual {v10}, Lcom/android/internal/graphics/cam/Cam;->getJ()F

    move-result v11

    invoke-virtual {v10}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v12

    invoke-static {v11, v12, p0}, Lcom/android/internal/graphics/cam/Cam;->fromJch(FFF)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v11

    .line 489
    invoke-virtual {v10, v11}, Lcom/android/internal/graphics/cam/Cam;->distance(Lcom/android/internal/graphics/cam/Cam;)F

    move-result v11

    .line 491
    .local v11, "dE":F
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_54

    .line 492
    move v3, v9

    .line 493
    move v4, v11

    .line 494
    move-object v5, v10

    .line 504
    .end local v10    # "camClipped":Lcom/android/internal/graphics/cam/Cam;
    .end local v11    # "dE":F
    :cond_54
    const/4 v10, 0x0

    cmpl-float v11, v3, v10

    if-nez v11, :cond_5e

    cmpl-float v10, v4, v10

    if-nez v10, :cond_5e

    .line 505
    goto :goto_66

    .line 508
    :cond_5e
    cmpg-float v10, v8, p2

    if-gez v10, :cond_64

    .line 509
    move v0, v2

    goto :goto_65

    .line 511
    :cond_64
    move v1, v2

    .line 513
    .end local v6    # "camBeforeClip":Lcom/android/internal/graphics/cam/Cam;
    .end local v7    # "clipped":I
    .end local v8    # "clippedLstar":F
    .end local v9    # "dL":F
    :goto_65
    goto :goto_9

    .line 515
    :cond_66
    :goto_66
    return-object v5
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/graphics/cam/Cam;
    .registers 2
    .param p0, "argb"    # I

    .line 146
    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    invoke-static {p0, v0}, Lcom/android/internal/graphics/cam/Cam;->fromIntInFrame(ILcom/android/internal/graphics/cam/Frame;)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromIntInFrame(ILcom/android/internal/graphics/cam/Frame;)Lcom/android/internal/graphics/cam/Cam;
    .registers 45
    .param p0, "argb"    # I
    .param p1, "frame"    # Lcom/android/internal/graphics/cam/Frame;

    .line 156
    invoke-static/range {p0 .. p0}, Lcom/android/internal/graphics/cam/CamUtils;->xyzFromInt(I)[F

    move-result-object v0

    .line 159
    .local v0, "xyz":[F
    sget-object v1, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 160
    .local v1, "matrix":[[F
    const/4 v2, 0x0

    aget v3, v0, v2

    aget-object v4, v1, v2

    aget v4, v4, v2

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget v5, v0, v4

    aget-object v6, v1, v2

    aget v6, v6, v4

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    const/4 v5, 0x2

    aget v6, v0, v5

    aget-object v7, v1, v2

    aget v7, v7, v5

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 161
    .local v3, "rT":F
    aget v6, v0, v2

    aget-object v7, v1, v4

    aget v7, v7, v2

    mul-float/2addr v6, v7

    aget v7, v0, v4

    aget-object v8, v1, v4

    aget v8, v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aget v7, v0, v5

    aget-object v8, v1, v4

    aget v8, v8, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 162
    .local v6, "gT":F
    aget v7, v0, v2

    aget-object v8, v1, v5

    aget v8, v8, v2

    mul-float/2addr v7, v8

    aget v8, v0, v4

    aget-object v9, v1, v5

    aget v9, v9, v4

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aget v8, v0, v5

    aget-object v9, v1, v5

    aget v9, v9, v5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 165
    .local v7, "bT":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v8

    aget v2, v8, v2

    mul-float/2addr v2, v3

    .line 166
    .local v2, "rD":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v8

    aget v4, v8, v4

    mul-float/2addr v4, v6

    .line 167
    .local v4, "gD":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v8

    aget v5, v8, v5

    mul-float/2addr v5, v7

    .line 170
    .local v5, "bD":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    const-wide v12, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 171
    .local v8, "rAF":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float/2addr v9, v14

    float-to-double v14, v9

    div-double/2addr v14, v10

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v9, v14

    .line 172
    .local v9, "gAF":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v14

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v15

    mul-float/2addr v14, v15

    float-to-double v14, v14

    div-double/2addr v14, v10

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    .line 173
    .local v12, "bAF":F
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v13

    const/high16 v14, 0x43c80000    # 400.0f

    mul-float/2addr v13, v14

    mul-float/2addr v13, v8

    const v15, 0x41d90a3d    # 27.13f

    add-float v16, v8, v15

    div-float v13, v13, v16

    .line 174
    .local v13, "rA":F
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v16

    mul-float v16, v16, v14

    mul-float v16, v16, v9

    add-float v17, v9, v15

    move-wide/from16 v18, v10

    div-float v10, v16, v17

    .line 175
    .local v10, "gA":F
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v11

    mul-float/2addr v11, v14

    mul-float/2addr v11, v12

    add-float/2addr v15, v12

    div-float/2addr v11, v15

    .line 178
    .local v11, "bA":F
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    float-to-double v14, v13

    mul-double v14, v14, v16

    const-wide/high16 v16, -0x3fd8000000000000L    # -12.0

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    .end local v0    # "xyz":[F
    .end local v1    # "matrix":[[F
    .local v20, "xyz":[F
    .local v21, "matrix":[[F
    float-to-double v0, v10

    mul-double v0, v0, v16

    add-double/2addr v14, v0

    float-to-double v0, v11

    add-double/2addr v14, v0

    double-to-float v0, v14

    const/high16 v1, 0x41300000    # 11.0f

    div-float/2addr v0, v1

    .line 180
    .local v0, "a":F
    add-float v1, v13, v10

    float-to-double v14, v1

    move/from16 v16, v2

    .end local v2    # "rD":F
    .local v16, "rD":F
    float-to-double v1, v11

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v22

    sub-double/2addr v14, v1

    double-to-float v1, v14

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    .line 183
    .local v1, "b":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v14, v13, v2

    mul-float v15, v10, v2

    add-float/2addr v14, v15

    const/high16 v15, 0x41a80000    # 21.0f

    mul-float/2addr v15, v11

    add-float/2addr v14, v15

    div-float/2addr v14, v2

    .line 184
    .local v14, "u":F
    const/high16 v15, 0x42200000    # 40.0f

    mul-float/2addr v15, v13

    mul-float v17, v10, v2

    add-float v15, v15, v17

    add-float/2addr v15, v11

    div-float/2addr v15, v2

    .line 187
    .local v15, "p2":F
    move/from16 v17, v3

    .end local v3    # "rT":F
    .local v17, "rT":F
    float-to-double v2, v1

    move/from16 v24, v4

    move/from16 v25, v5

    .end local v4    # "gD":F
    .end local v5    # "bD":F
    .local v24, "gD":F
    .local v25, "bD":F
    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 188
    .local v2, "atan2":F
    const/high16 v3, 0x43340000    # 180.0f

    mul-float v4, v2, v3

    const v5, 0x40490fdb    # (float)Math.PI

    div-float/2addr v4, v5

    .line 190
    .local v4, "atanDegrees":F
    const/16 v26, 0x0

    cmpg-float v26, v4, v26

    const/high16 v27, 0x43b40000    # 360.0f

    if-gez v26, :cond_118

    .line 191
    add-float v26, v4, v27

    goto :goto_121

    .line 192
    :cond_118
    cmpl-float v26, v4, v27

    if-ltz v26, :cond_11f

    sub-float v26, v4, v27

    goto :goto_121

    :cond_11f
    move/from16 v26, v4

    :goto_121
    move/from16 v29, v26

    .line 193
    .local v29, "hue":F
    mul-float v5, v5, v29

    div-float/2addr v5, v3

    .line 196
    .local v5, "hueRadians":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNbb()F

    move-result v3

    mul-float/2addr v3, v15

    .line 199
    .local v3, "ac":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v26

    move/from16 v38, v0

    .end local v0    # "a":F
    .local v38, "a":F
    div-float v0, v3, v26

    move/from16 v26, v1

    .end local v1    # "b":F
    .local v26, "b":F
    float-to-double v0, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v28

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getZ()F

    move-result v30

    move/from16 v39, v2

    .end local v2    # "atan2":F
    .local v39, "atan2":F
    mul-float v2, v28, v30

    move/from16 v40, v3

    .end local v3    # "ac":F
    .local v40, "ac":F
    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 200
    .local v0, "j":F
    nop

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float v2, v3, v2

    div-float v1, v0, v1

    move/from16 v28, v3

    move/from16 v41, v4

    .end local v4    # "atanDegrees":F
    .local v41, "atanDegrees":F
    float-to-double v3, v1

    .line 203
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v2, v1

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v1

    add-float v1, v1, v28

    mul-float/2addr v2, v1

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFlRoot()F

    move-result v1

    mul-float v32, v2, v1

    .line 208
    .local v32, "q":F
    move/from16 v1, v29

    .end local v29    # "hue":F
    .local v1, "hue":F
    float-to-double v2, v1

    const-wide v29, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v2, v2, v29

    if-gez v2, :cond_17f

    add-float v29, v1, v27

    goto :goto_181

    :cond_17f
    move/from16 v29, v1

    :goto_181
    move/from16 v2, v29

    .line 209
    .local v2, "huePrime":F
    float-to-double v3, v2

    const-wide v29, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v29

    const-wide v29, 0x4066800000000000L    # 180.0

    div-double v3, v3, v29

    add-double v3, v3, v22

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide v22, 0x400e666666666666L    # 3.8

    add-double v3, v3, v22

    double-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    .line 210
    .local v3, "eHue":F
    const v4, 0x45706276

    mul-float/2addr v4, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNc()F

    move-result v22

    mul-float v4, v4, v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNcb()F

    move-result v22

    mul-float v4, v4, v22

    .line 211
    .local v4, "p1":F
    mul-float v22, v38, v38

    mul-float v23, v26, v26

    move/from16 v29, v1

    .end local v1    # "hue":F
    .restart local v29    # "hue":F
    add-float v1, v22, v23

    move/from16 v22, v2

    .end local v2    # "huePrime":F
    .local v22, "huePrime":F
    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v4

    const v2, 0x3e9c28f6    # 0.305f

    add-float/2addr v2, v14

    div-float/2addr v1, v2

    .line 212
    .local v1, "t":F
    move/from16 v23, v3

    .end local v3    # "eHue":F
    .local v23, "eHue":F
    float-to-double v2, v1

    .line 213
    move/from16 v27, v6

    move/from16 v42, v7

    .end local v6    # "gT":F
    .end local v7    # "bT":F
    .local v27, "gT":F
    .local v42, "bT":F
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getN()F

    move-result v3

    float-to-double v6, v3

    move v3, v1

    move/from16 v30, v2

    .end local v1    # "t":F
    .local v3, "t":F
    const-wide v1, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide v6, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v6, v1

    const-wide v1, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v2, v30, v1

    .line 216
    .local v2, "alpha":F
    float-to-double v6, v0

    div-double v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float v30, v2, v1

    .line 217
    .local v30, "c":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFlRoot()F

    move-result v1

    mul-float v33, v30, v1

    .line 218
    .local v33, "m":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v1

    mul-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v6

    add-float v6, v6, v28

    div-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    const/high16 v6, 0x42480000    # 50.0f

    mul-float v34, v1, v6

    .line 221
    .local v34, "s":F
    const v1, 0x3fd9999a    # 1.7f

    mul-float/2addr v1, v0

    const v6, 0x3be56042    # 0.007f

    mul-float/2addr v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    div-float v35, v1, v6

    .line 222
    .local v35, "jstar":F
    const v1, 0x3cbac711    # 0.0228f

    mul-float v1, v1, v33

    add-float/2addr v1, v7

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    double-to-float v1, v6

    const v6, 0x422f7048

    mul-float/2addr v1, v6

    .line 223
    .local v1, "mstar":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v36, v1, v6

    .line 224
    .local v36, "astar":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v37, v1, v6

    .line 226
    .local v37, "bstar":F
    new-instance v28, Lcom/android/internal/graphics/cam/Cam;

    move/from16 v31, v0

    .end local v0    # "j":F
    .local v31, "j":F
    invoke-direct/range {v28 .. v37}, Lcom/android/internal/graphics/cam/Cam;-><init>(FFFFFFFFF)V

    return-object v28
.end method

.method private static blacklist fromJch(FFF)Lcom/android/internal/graphics/cam/Cam;
    .registers 4
    .param p0, "j"    # F
    .param p1, "c"    # F
    .param p2, "h"    # F

    .line 235
    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/graphics/cam/Cam;->fromJchInFrame(FFFLcom/android/internal/graphics/cam/Frame;)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist fromJchInFrame(FFFLcom/android/internal/graphics/cam/Frame;)Lcom/android/internal/graphics/cam/Cam;
    .registers 17
    .param p0, "j"    # F
    .param p1, "c"    # F
    .param p2, "h"    # F
    .param p3, "frame"    # Lcom/android/internal/graphics/cam/Frame;

    .line 244
    nop

    .line 246
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float v0, v1, v0

    float-to-double v4, p0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 247
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float/2addr v0, v2

    .line 248
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 249
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/graphics/cam/Frame;->getFlRoot()F

    move-result v2

    mul-float v4, v0, v2

    .line 250
    .local v4, "q":F
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/graphics/cam/Frame;->getFlRoot()F

    move-result v0

    mul-float v5, p1, v0

    .line 251
    .local v5, "m":F
    float-to-double v8, p0

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    div-float v10, p1, v0

    .line 252
    .local v10, "alpha":F
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v0

    mul-float/2addr v0, v10

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v6, v0, v1

    .line 254
    .local v6, "s":F
    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p2

    const/high16 v1, 0x43340000    # 180.0f

    div-float v11, v0, v1

    .line 255
    .local v11, "hueRadians":F
    const v0, 0x3fd9999a    # 1.7f

    mul-float/2addr v0, p0

    const v1, 0x3be56042    # 0.007f

    mul-float/2addr v1, p0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    div-float v7, v0, v1

    .line 256
    .local v7, "jstar":F
    const-wide v0, 0x3f9758e219652bd4L    # 0.0228

    float-to-double v8, v5

    mul-double/2addr v8, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x422f7048

    mul-float v12, v0, v1

    .line 257
    .local v12, "mstar":F
    float-to-double v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v8, v12, v0

    .line 258
    .local v8, "astar":F
    float-to-double v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v9, v12, v0

    .line 259
    .local v9, "bstar":F
    new-instance v0, Lcom/android/internal/graphics/cam/Cam;

    move v3, p0

    move v2, p1

    move v1, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/graphics/cam/Cam;-><init>(FFFFFFFFF)V

    return-object v0
.end method

.method public static blacklist getInt(FFF)I
    .registers 4
    .param p0, "hue"    # F
    .param p1, "chroma"    # F
    .param p2, "lstar"    # F

    .line 137
    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/graphics/cam/Cam;->getInt(FFFLcom/android/internal/graphics/cam/Frame;)I

    move-result v0

    return v0
.end method

.method public static blacklist getInt(FFFLcom/android/internal/graphics/cam/Frame;)I
    .registers 12
    .param p0, "hue"    # F
    .param p1, "chroma"    # F
    .param p2, "lstar"    # F
    .param p3, "frame"    # Lcom/android/internal/graphics/cam/Frame;

    .line 391
    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    if-ne p3, v0, :cond_c

    .line 395
    float-to-double v1, p0

    float-to-double v3, p1

    float-to-double v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/internal/graphics/cam/HctSolver;->solveToInt(DDD)I

    move-result v0

    return v0

    .line 398
    :cond_c
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_76

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_76

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2a

    goto :goto_76

    .line 402
    :cond_2a
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_30

    goto :goto_36

    :cond_30
    const/high16 v0, 0x43b40000    # 360.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 405
    .end local p0    # "hue":F
    .local v0, "hue":F
    :goto_36
    move p0, p1

    .line 409
    .local p0, "high":F
    move v1, p1

    .line 410
    .local v1, "mid":F
    const/4 v2, 0x0

    .line 411
    .local v2, "low":F
    const/4 v3, 0x1

    .line 413
    .local v3, "isFirstLoop":Z
    const/4 v4, 0x0

    .line 415
    .local v4, "answer":Lcom/android/internal/graphics/cam/Cam;
    :goto_3b
    sub-float v5, v2, p0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_6a

    .line 418
    invoke-static {v0, v1, p2}, Lcom/android/internal/graphics/cam/Cam;->findCamByJ(FFF)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v5

    .line 420
    .local v5, "possibleAnswer":Lcom/android/internal/graphics/cam/Cam;
    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_5e

    .line 421
    if-eqz v5, :cond_57

    .line 422
    invoke-virtual {v5, p3}, Lcom/android/internal/graphics/cam/Cam;->viewed(Lcom/android/internal/graphics/cam/Frame;)I

    move-result v6

    return v6

    .line 429
    :cond_57
    const/4 v3, 0x0

    .line 430
    sub-float v7, p0, v2

    div-float/2addr v7, v6

    add-float v1, v2, v7

    .line 431
    goto :goto_3b

    .line 435
    :cond_5e
    if-nez v5, :cond_62

    .line 437
    move p0, v1

    goto :goto_64

    .line 439
    :cond_62
    move-object v4, v5

    .line 441
    move v2, v1

    .line 444
    :goto_64
    sub-float v7, p0, v2

    div-float/2addr v7, v6

    add-float v1, v2, v7

    .line 445
    .end local v5    # "possibleAnswer":Lcom/android/internal/graphics/cam/Cam;
    goto :goto_3b

    .line 451
    :cond_6a
    if-nez v4, :cond_71

    .line 452
    invoke-static {p2}, Lcom/android/internal/graphics/cam/CamUtils;->intFromLstar(F)I

    move-result v5

    return v5

    .line 455
    :cond_71
    invoke-virtual {v4, p3}, Lcom/android/internal/graphics/cam/Cam;->viewed(Lcom/android/internal/graphics/cam/Frame;)I

    move-result v5

    return v5

    .line 399
    .end local v0    # "hue":F
    .end local v1    # "mid":F
    .end local v2    # "low":F
    .end local v3    # "isFirstLoop":Z
    .end local v4    # "answer":Lcom/android/internal/graphics/cam/Cam;
    .local p0, "hue":F
    :cond_76
    :goto_76
    invoke-static {p2}, Lcom/android/internal/graphics/cam/CamUtils;->intFromLstar(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist distance(Lcom/android/internal/graphics/cam/Cam;)F
    .registers 11
    .param p1, "other"    # Lcom/android/internal/graphics/cam/Cam;

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getJstar()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getJstar()F

    move-result v1

    sub-float/2addr v0, v1

    .line 270
    .local v0, "dJ":F
    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getAstar()F

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getAstar()F

    move-result v2

    sub-float/2addr v1, v2

    .line 271
    .local v1, "dA":F
    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getBstar()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getBstar()F

    move-result v3

    sub-float/2addr v2, v3

    .line 272
    .local v2, "dB":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 273
    .local v3, "dEPrime":D
    const-wide v5, 0x3fe428f5c28f5c29L    # 0.63

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double/2addr v5, v7

    .line 274
    .local v5, "dE":D
    double-to-float v7, v5

    return v7
.end method

.method public blacklist getAstar()F
    .registers 2

    .line 108
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mAstar:F

    return v0
.end method

.method public blacklist getBstar()F
    .registers 2

    .line 113
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mBstar:F

    return v0
.end method

.method public blacklist getChroma()F
    .registers 2

    .line 62
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mChroma:F

    return v0
.end method

.method public blacklist getHue()F
    .registers 2

    .line 57
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mHue:F

    return v0
.end method

.method public blacklist getJ()F
    .registers 2

    .line 67
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mJ:F

    return v0
.end method

.method public blacklist getJstar()F
    .registers 2

    .line 103
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mJstar:F

    return v0
.end method

.method public blacklist getM()F
    .registers 2

    .line 88
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mM:F

    return v0
.end method

.method public blacklist getQ()F
    .registers 2

    .line 78
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mQ:F

    return v0
.end method

.method public blacklist getS()F
    .registers 2

    .line 98
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mS:F

    return v0
.end method

.method public blacklist viewed(Lcom/android/internal/graphics/cam/Frame;)I
    .registers 40
    .param p1, "frame"    # Lcom/android/internal/graphics/cam/Frame;

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getJ()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_17

    goto :goto_28

    .line 287
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getJ()F

    move-result v1

    float-to-double v6, v1

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    div-float/2addr v0, v1

    goto :goto_29

    .line 286
    :cond_28
    :goto_28
    const/4 v0, 0x0

    .line 287
    :goto_29
    nop

    .line 289
    .local v0, "alpha":F
    float-to-double v6, v0

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getN()F

    move-result v1

    float-to-double v8, v1

    const-wide v10, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide v10, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v10, v8

    const-wide v8, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide v8, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 292
    .local v1, "t":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v6

    const v7, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v6, v7

    const/high16 v7, 0x43340000    # 180.0f

    div-float/2addr v6, v7

    .line 294
    .local v6, "hRad":F
    float-to-double v7, v6

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide v9, 0x400e666666666666L    # 3.8

    add-double/2addr v7, v9

    double-to-float v7, v7

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v7, v8

    .line 295
    .local v7, "eHue":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getJ()F

    move-result v9

    float-to-double v9, v9

    div-double/2addr v9, v4

    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double/2addr v11, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getZ()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v11, v4

    .line 295
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v8, v4

    .line 297
    .local v8, "ac":F
    const v4, 0x45706276

    mul-float/2addr v4, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNc()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNcb()F

    move-result v5

    mul-float/2addr v4, v5

    .line 298
    .local v4, "p1":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNbb()F

    move-result v5

    div-float v5, v8, v5

    .line 300
    .local v5, "p2":F
    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 301
    .local v9, "hSin":F
    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 303
    .local v10, "hCos":F
    const v11, 0x3e9c28f6    # 0.305f

    add-float/2addr v11, v5

    const/high16 v12, 0x41b80000    # 23.0f

    mul-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float/2addr v12, v4

    const/high16 v13, 0x41300000    # 11.0f

    mul-float/2addr v13, v1

    mul-float/2addr v13, v10

    add-float/2addr v12, v13

    const/high16 v13, 0x42d80000    # 108.0f

    mul-float/2addr v13, v1

    mul-float/2addr v13, v9

    add-float/2addr v12, v13

    div-float/2addr v11, v12

    .line 305
    .local v11, "gamma":F
    mul-float v12, v11, v10

    .line 306
    .local v12, "a":F
    mul-float v13, v11, v9

    .line 307
    .local v13, "b":F
    const/high16 v14, 0x43e60000    # 460.0f

    mul-float v15, v5, v14

    const v16, 0x43e18000    # 451.0f

    mul-float v16, v16, v12

    add-float v15, v15, v16

    const/high16 v16, 0x43900000    # 288.0f

    mul-float v16, v16, v13

    add-float v15, v15, v16

    const v16, 0x44af6000    # 1403.0f

    div-float v15, v15, v16

    .line 308
    .local v15, "rA":F
    mul-float v17, v5, v14

    const v18, 0x445ec000    # 891.0f

    mul-float v18, v18, v12

    sub-float v17, v17, v18

    const v18, 0x43828000    # 261.0f

    mul-float v18, v18, v13

    sub-float v17, v17, v18

    div-float v17, v17, v16

    .line 309
    .local v17, "gA":F
    mul-float/2addr v14, v5

    const/high16 v18, 0x435c0000    # 220.0f

    mul-float v18, v18, v12

    sub-float v14, v14, v18

    const v18, 0x45c4e000    # 6300.0f

    mul-float v18, v18, v13

    sub-float v14, v14, v18

    div-float v14, v14, v16

    .line 311
    .local v14, "bA":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v20, 0x403b2147ae147ae1L    # 27.13

    mul-double v2, v2, v20

    move/from16 v16, v0

    .end local v0    # "alpha":F
    .local v16, "alpha":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move/from16 v22, v1

    .end local v1    # "t":F
    .local v22, "t":F
    float-to-double v0, v0

    const-wide/high16 v23, 0x4079000000000000L    # 400.0

    sub-double v0, v23, v0

    div-double/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 312
    .local v0, "rCBase":F
    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    move/from16 v25, v3

    move v2, v4

    .end local v4    # "p1":F
    .local v2, "p1":F
    float-to-double v3, v0

    move/from16 v26, v0

    move/from16 v27, v1

    .end local v0    # "rCBase":F
    .local v26, "rCBase":F
    const-wide v0, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v27

    .line 314
    .local v3, "rC":F
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    mul-double v0, v0, v20

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-wide/from16 v29, v0

    float-to-double v0, v4

    sub-double v0, v23, v0

    div-double v0, v29, v0

    move v4, v2

    move/from16 v29, v3

    const-wide/16 v2, 0x0

    .end local v2    # "p1":F
    .end local v3    # "rC":F
    .restart local v4    # "p1":F
    .local v29, "rC":F
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 315
    .local v0, "gCBase":F
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v2

    div-float v3, v25, v2

    mul-float/2addr v1, v3

    float-to-double v2, v0

    move/from16 v30, v0

    move/from16 v31, v1

    const-wide v0, 0x40030c30c30c30c3L    # 2.380952380952381

    .end local v0    # "gCBase":F
    .local v30, "gCBase":F
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float v1, v31, v0

    .line 317
    .local v1, "gC":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    mul-double v2, v2, v20

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move/from16 v20, v1

    .end local v1    # "gC":F
    .local v20, "gC":F
    float-to-double v0, v0

    sub-double v23, v23, v0

    div-double v2, v2, v23

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 318
    .local v0, "bCBase":F
    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v2

    div-float v3, v25, v2

    mul-float/2addr v1, v3

    float-to-double v2, v0

    move/from16 v18, v0

    move/from16 v19, v1

    const-wide v0, 0x40030c30c30c30c3L    # 2.380952380952381

    .end local v0    # "bCBase":F
    .local v18, "bCBase":F
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, v19, v0

    .line 320
    .local v1, "bC":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    div-float v3, v29, v0

    .line 321
    .local v3, "rF":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v0

    const/16 v19, 0x1

    aget v0, v0, v19

    div-float v0, v20, v0

    .line 322
    .local v0, "gF":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v21

    const/16 v23, 0x2

    aget v21, v21, v23

    div-float v21, v1, v21

    .line 325
    .local v21, "bF":F
    sget-object v24, Lcom/android/internal/graphics/cam/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 326
    .local v24, "matrix":[[F
    aget-object v25, v24, v2

    aget v25, v25, v2

    mul-float v25, v25, v3

    aget-object v27, v24, v2

    aget v27, v27, v19

    mul-float v27, v27, v0

    add-float v25, v25, v27

    aget-object v27, v24, v2

    aget v27, v27, v23

    mul-float v27, v27, v21

    move/from16 v28, v2

    add-float v2, v25, v27

    .line 327
    .local v2, "x":F
    aget-object v25, v24, v19

    aget v25, v25, v28

    mul-float v25, v25, v3

    aget-object v27, v24, v19

    aget v27, v27, v19

    mul-float v27, v27, v0

    add-float v25, v25, v27

    aget-object v27, v24, v19

    aget v27, v27, v23

    mul-float v27, v27, v21

    move/from16 v31, v0

    .end local v0    # "gF":F
    .local v31, "gF":F
    add-float v0, v25, v27

    .line 328
    .local v0, "y":F
    aget-object v25, v24, v23

    aget v25, v25, v28

    mul-float v25, v25, v3

    aget-object v27, v24, v23

    aget v19, v27, v19

    mul-float v19, v19, v31

    add-float v25, v25, v19

    aget-object v19, v24, v23

    aget v19, v19, v23

    mul-float v19, v19, v21

    move/from16 v23, v1

    .end local v1    # "bC":F
    .local v23, "bC":F
    add-float v1, v25, v19

    .line 330
    .local v1, "z":F
    move/from16 v25, v3

    move/from16 v19, v4

    .end local v3    # "rF":F
    .end local v4    # "p1":F
    .local v19, "p1":F
    .local v25, "rF":F
    float-to-double v3, v2

    move/from16 v27, v2

    move-wide/from16 v32, v3

    .end local v2    # "x":F
    .local v27, "x":F
    float-to-double v2, v0

    move-wide/from16 v34, v2

    float-to-double v2, v1

    move-wide/from16 v36, v2

    invoke-static/range {v32 .. v37}, Lcom/android/internal/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v2

    .line 331
    .local v2, "argb":I
    return v2
.end method

.method public blacklist viewedInSrgb()I
    .registers 2

    .line 279
    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/cam/Cam;->viewed(Lcom/android/internal/graphics/cam/Frame;)I

    move-result v0

    return v0
.end method
