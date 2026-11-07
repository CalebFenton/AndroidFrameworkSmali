.class public final Lcom/android/internal/graphics/cam/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/graphics/cam/Frame;


# instance fields
.field private final blacklist mAw:F

.field private final blacklist mC:F

.field private final blacklist mFl:F

.field private final blacklist mFlRoot:F

.field private final blacklist mN:F

.field private final blacklist mNbb:F

.field private final blacklist mNc:F

.field private final blacklist mNcb:F

.field private final blacklist mRgbD:[F

.field private final blacklist mZ:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 58
    sget-object v0, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    .line 61
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    invoke-static {v1, v2}, Lcom/android/internal/graphics/cam/CamUtils;->yFromLstar(D)D

    move-result-wide v1

    const-wide v3, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 59
    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/graphics/cam/Frame;->make([FFFFZ)Lcom/android/internal/graphics/cam/Frame;

    move-result-object v0

    sput-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(FFFFFF[FFFF)V
    .registers 11
    .param p1, "n"    # F
    .param p2, "aw"    # F
    .param p3, "nbb"    # F
    .param p4, "ncb"    # F
    .param p5, "c"    # F
    .param p6, "nc"    # F
    .param p7, "rgbD"    # [F
    .param p8, "fl"    # F
    .param p9, "fLRoot"    # F
    .param p10, "z"    # F

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/android/internal/graphics/cam/Frame;->mN:F

    .line 125
    iput p2, p0, Lcom/android/internal/graphics/cam/Frame;->mAw:F

    .line 126
    iput p3, p0, Lcom/android/internal/graphics/cam/Frame;->mNbb:F

    .line 127
    iput p4, p0, Lcom/android/internal/graphics/cam/Frame;->mNcb:F

    .line 128
    iput p5, p0, Lcom/android/internal/graphics/cam/Frame;->mC:F

    .line 129
    iput p6, p0, Lcom/android/internal/graphics/cam/Frame;->mNc:F

    .line 130
    iput-object p7, p0, Lcom/android/internal/graphics/cam/Frame;->mRgbD:[F

    .line 131
    iput p8, p0, Lcom/android/internal/graphics/cam/Frame;->mFl:F

    .line 132
    iput p9, p0, Lcom/android/internal/graphics/cam/Frame;->mFlRoot:F

    .line 133
    iput p10, p0, Lcom/android/internal/graphics/cam/Frame;->mZ:F

    .line 134
    return-void
.end method

.method public static blacklist make([FFFFZ)Lcom/android/internal/graphics/cam/Frame;
    .registers 38
    .param p0, "whitepoint"    # [F
    .param p1, "adaptingLuminance"    # F
    .param p2, "backgroundLstar"    # F
    .param p3, "surround"    # F
    .param p4, "discountingIlluminant"    # Z

    .line 141
    move/from16 v0, p1

    sget-object v1, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 142
    .local v1, "matrix":[[F
    move-object/from16 v2, p0

    .line 143
    .local v2, "xyz":[F
    const/4 v3, 0x0

    aget v4, v2, v3

    aget-object v5, v1, v3

    aget v5, v5, v3

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v6, v2, v5

    aget-object v7, v1, v3

    aget v7, v7, v5

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    const/4 v6, 0x2

    aget v7, v2, v6

    aget-object v8, v1, v3

    aget v8, v8, v6

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    .line 144
    .local v4, "rW":F
    aget v7, v2, v3

    aget-object v8, v1, v5

    aget v8, v8, v3

    mul-float/2addr v7, v8

    aget v8, v2, v5

    aget-object v9, v1, v5

    aget v9, v9, v5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aget v8, v2, v6

    aget-object v9, v1, v5

    aget v9, v9, v6

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 145
    .local v7, "gW":F
    aget v8, v2, v3

    aget-object v9, v1, v6

    aget v9, v9, v3

    mul-float/2addr v8, v9

    aget v9, v2, v5

    aget-object v10, v1, v6

    aget v10, v10, v5

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aget v9, v2, v6

    aget-object v10, v1, v6

    aget v10, v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 148
    .local v8, "bW":F
    const/high16 v9, 0x41200000    # 10.0f

    div-float v10, p3, v9

    const v11, 0x3f4ccccd    # 0.8f

    add-float/2addr v10, v11

    .line 150
    .local v10, "f":F
    float-to-double v12, v10

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    cmpl-double v12, v12, v14

    const v13, 0x3f170a3d    # 0.59f

    if-ltz v12, :cond_71

    const v11, 0x3f666666    # 0.9f

    sub-float v11, v10, v11

    mul-float/2addr v11, v9

    const v9, 0x3f30a3d7    # 0.69f

    invoke-static {v13, v9, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    goto :goto_7b

    :cond_71
    sub-float v11, v10, v11

    mul-float/2addr v11, v9

    const v9, 0x3f066666    # 0.525f

    invoke-static {v9, v13, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    :goto_7b
    move/from16 v16, v9

    .line 153
    .local v16, "c":F
    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz p4, :cond_83

    move v11, v9

    goto :goto_97

    :cond_83
    neg-float v11, v0

    const/high16 v12, 0x42280000    # 42.0f

    sub-float/2addr v11, v12

    const/high16 v12, 0x42b80000    # 92.0f

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    double-to-float v11, v11

    const v12, 0x3e8e38e4

    mul-float/2addr v11, v12

    sub-float v11, v9, v11

    mul-float/2addr v11, v10

    .line 156
    .local v11, "d":F
    :goto_97
    float-to-double v12, v11

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_a0

    move v12, v9

    goto :goto_aa

    :cond_a0
    float-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_a9

    const/4 v12, 0x0

    goto :goto_aa

    :cond_a9
    move v12, v11

    :goto_aa
    move/from16 v22, v12

    .line 158
    .end local v11    # "d":F
    .local v22, "d":F
    move/from16 v17, v10

    .line 170
    .local v17, "nc":F
    const/high16 v11, 0x42c80000    # 100.0f

    div-float v12, v11, v4

    mul-float v12, v12, v22

    add-float/2addr v12, v9

    sub-float v12, v12, v22

    div-float v13, v11, v7

    mul-float v13, v13, v22

    add-float/2addr v13, v9

    sub-float v13, v13, v22

    div-float/2addr v11, v8

    mul-float v11, v11, v22

    add-float/2addr v11, v9

    sub-float v11, v11, v22

    const/4 v14, 0x3

    new-array v15, v14, [F

    aput v12, v15, v3

    aput v13, v15, v5

    aput v11, v15, v6

    move-object/from16 v18, v15

    .line 173
    .local v18, "rgbD":[F
    const/high16 v11, 0x40a00000    # 5.0f

    mul-float/2addr v11, v0

    add-float/2addr v11, v9

    div-float v23, v9, v11

    .line 174
    .local v23, "k":F
    mul-float v11, v23, v23

    mul-float v11, v11, v23

    mul-float v24, v11, v23

    .line 175
    .local v24, "k4":F
    sub-float v9, v9, v24

    .line 176
    .local v9, "k4F":F
    mul-float v11, v24, v0

    const v12, 0x3dcccccd    # 0.1f

    mul-float/2addr v12, v9

    mul-float/2addr v12, v9

    const-wide/high16 v19, 0x4014000000000000L    # 5.0

    move v13, v3

    move/from16 v25, v4

    .end local v4    # "rW":F
    .local v25, "rW":F
    float-to-double v3, v0

    mul-double v3, v3, v19

    invoke-static {v3, v4}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v12, v3

    add-float/2addr v11, v12

    .line 180
    .local v11, "fl":F
    move/from16 v3, p2

    move v4, v5

    move v12, v6

    float-to-double v5, v3

    invoke-static {v5, v6}, Lcom/android/internal/graphics/cam/CamUtils;->yFromLstar(D)D

    move-result-wide v5

    double-to-float v5, v5

    aget v6, p0, v4

    div-float/2addr v5, v6

    .line 184
    .local v5, "n":F
    move v15, v12

    move v6, v13

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    const v13, 0x3fbd70a4    # 1.48f

    add-float v21, v12, v13

    .line 187
    .local v21, "z":F
    float-to-double v12, v5

    move/from16 v19, v4

    move/from16 v20, v5

    .end local v5    # "n":F
    .local v20, "n":F
    const-wide v4, 0x3fc999999999999aL    # 0.2

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3f39999a    # 0.725f

    div-float/2addr v5, v4

    .line 188
    .local v5, "nbb":F
    move v12, v15

    move v15, v5

    .line 192
    .local v15, "ncb":F
    aget v4, v18, v6

    mul-float/2addr v4, v11

    mul-float v4, v4, v25

    move v13, v6

    move/from16 v26, v7

    .end local v7    # "gW":F
    .local v26, "gW":F
    float-to-double v6, v4

    const-wide/high16 v27, 0x4059000000000000L    # 100.0

    div-double v6, v6, v27

    move v4, v12

    move/from16 v29, v13

    const-wide v12, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    aget v7, v18, v19

    mul-float/2addr v7, v11

    mul-float v7, v7, v26

    move/from16 v31, v4

    move/from16 v30, v5

    .end local v5    # "nbb":F
    .local v30, "nbb":F
    float-to-double v4, v7

    div-double v4, v4, v27

    .line 193
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    aget v5, v18, v31

    mul-float/2addr v5, v11

    mul-float/2addr v5, v8

    move/from16 v32, v15

    .end local v15    # "ncb":F
    .local v32, "ncb":F
    float-to-double v14, v5

    div-double v14, v14, v27

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v5, v12

    const/4 v7, 0x3

    new-array v12, v7, [F

    aput v6, v12, v29

    aput v4, v12, v19

    aput v5, v12, v31

    move-object v4, v12

    .line 196
    .local v4, "rgbAFactors":[F
    aget v5, v4, v29

    const/high16 v6, 0x43c80000    # 400.0f

    mul-float/2addr v5, v6

    aget v12, v4, v29

    const v13, 0x41d90a3d    # 27.13f

    add-float/2addr v12, v13

    div-float/2addr v5, v12

    aget v12, v4, v19

    mul-float/2addr v12, v6

    aget v14, v4, v19

    add-float/2addr v14, v13

    div-float/2addr v12, v14

    aget v14, v4, v31

    mul-float/2addr v14, v6

    aget v6, v4, v31

    add-float/2addr v6, v13

    div-float/2addr v14, v6

    const/4 v7, 0x3

    new-array v6, v7, [F

    aput v5, v6, v29

    aput v12, v6, v19

    aput v14, v6, v31

    .line 200
    .local v6, "rgbA":[F
    const/high16 v5, 0x40000000    # 2.0f

    aget v7, v6, v29

    mul-float/2addr v7, v5

    aget v5, v6, v19

    add-float/2addr v7, v5

    const v5, 0x3d4ccccd    # 0.05f

    aget v12, v6, v31

    mul-float/2addr v12, v5

    add-float/2addr v7, v12

    mul-float v13, v7, v30

    .line 202
    .local v13, "aw":F
    new-instance v5, Lcom/android/internal/graphics/cam/Frame;

    float-to-double v14, v11

    move-object v7, v1

    .end local v1    # "matrix":[[F
    .local v7, "matrix":[[F
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    move/from16 v19, v11

    move/from16 v12, v20

    move/from16 v14, v30

    move/from16 v15, v32

    move/from16 v20, v0

    move-object v11, v5

    .end local v11    # "fl":F
    .end local v20    # "n":F
    .end local v30    # "nbb":F
    .end local v32    # "ncb":F
    .local v12, "n":F
    .local v14, "nbb":F
    .restart local v15    # "ncb":F
    .local v19, "fl":F
    invoke-direct/range {v11 .. v21}, Lcom/android/internal/graphics/cam/Frame;-><init>(FFFFFF[FFFF)V

    return-object v11
.end method


# virtual methods
.method public blacklist getAw()F
    .registers 2

    .line 77
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mAw:F

    return v0
.end method

.method blacklist getC()F
    .registers 2

    .line 95
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mC:F

    return v0
.end method

.method blacklist getFl()F
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mFl:F

    return v0
.end method

.method public blacklist getFlRoot()F
    .registers 2

    .line 115
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mFlRoot:F

    return v0
.end method

.method public blacklist getN()F
    .registers 2

    .line 82
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mN:F

    return v0
.end method

.method public blacklist getNbb()F
    .registers 2

    .line 87
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mNbb:F

    return v0
.end method

.method blacklist getNc()F
    .registers 2

    .line 99
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mNc:F

    return v0
.end method

.method blacklist getNcb()F
    .registers 2

    .line 91
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mNcb:F

    return v0
.end method

.method public blacklist getRgbD()[F
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/internal/graphics/cam/Frame;->mRgbD:[F

    return-object v0
.end method

.method blacklist getZ()F
    .registers 2

    .line 119
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mZ:F

    return v0
.end method
