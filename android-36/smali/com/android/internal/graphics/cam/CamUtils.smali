.class public final Lcom/android/internal/graphics/cam/CamUtils;
.super Ljava/lang/Object;
.source "CamUtils.java"


# static fields
.field static final blacklist CAM16RGB_TO_XYZ:[[F

.field static final blacklist SRGB_TO_XYZ:[[D

.field static final blacklist WHITE_POINT_D65:[F

.field static final blacklist XYZ_TO_CAM16RGB:[[F

.field static final blacklist XYZ_TO_SRGB:[[D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 55
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_5e

    new-array v2, v0, [F

    fill-array-data v2, :array_68

    new-array v3, v0, [F

    fill-array-data v3, :array_72

    filled-new-array {v1, v2, v3}, [[F

    move-result-object v1

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 62
    new-array v1, v0, [F

    fill-array-data v1, :array_7c

    new-array v2, v0, [F

    fill-array-data v2, :array_86

    new-array v3, v0, [F

    fill-array-data v3, :array_90

    filled-new-array {v1, v2, v3}, [[F

    move-result-object v1

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 72
    new-array v1, v0, [F

    fill-array-data v1, :array_9a

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    .line 78
    new-array v1, v0, [D

    fill-array-data v1, :array_a4

    new-array v2, v0, [D

    fill-array-data v2, :array_b4

    new-array v3, v0, [D

    fill-array-data v3, :array_c4

    filled-new-array {v1, v2, v3}, [[D

    move-result-object v1

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->SRGB_TO_XYZ:[[D

    .line 85
    new-array v1, v0, [D

    fill-array-data v1, :array_d4

    new-array v2, v0, [D

    fill-array-data v2, :array_e4

    new-array v0, v0, [D

    fill-array-data v0, :array_f4

    filled-new-array {v1, v2, v0}, [[D

    move-result-object v0

    sput-object v0, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_SRGB:[[D

    return-void

    nop

    :array_5e
    .array-data 4
        0x3ecd759f
        0x3f2671bd
        -0x42ad373b    # -0.051461f
    .end array-data

    :array_68
    .array-data 4
        -0x417fdcdf
        0x3f9a2a3d
        0x3d3bd167
    .end array-data

    :array_72
    .array-data 4
        -0x44f7c02b    # -0.002079f
        0x3d4881e4
        0x3f740022
    .end array-data

    :array_7c
    .array-data 4
        0x3fee583d
        -0x407e8f35
        0x3e18c46b
    .end array-data

    :array_86
    .array-data 4
        0x3ec669e1
        0x3f1f172e
        -0x43ecf866
    .end array-data

    :array_90
    .array-data 4
        -0x437e39f7
        -0x42f43b81
        0x3f86653c
    .end array-data

    :array_9a
    .array-data 4
        0x42be1810
        0x42c80000    # 100.0f
        0x42d9c419
    .end array-data

    :array_a4
    .array-data 8
        0x3fda63c2e8477c96L    # 0.41233895
        0x3fd6e341ae4b2c79L    # 0.35762064
        0x3fc71af7273e5d5eL    # 0.18051042
    .end array-data

    :array_b4
    .array-data 8
        0x3fcb367a0f9096bcL    # 0.2126
        0x3fe6e2eb1c432ca5L    # 0.7152
        0x3fb27bb2fec56d5dL    # 0.0722
    .end array-data

    :array_c4
    .array-data 8
        0x3f93c8fde0401c25L    # 0.01932141
        0x3fbe818525c434ceL    # 0.11916382
        0x3fee693974c0c730L    # 0.95034478
    .end array-data

    :array_d4
    .array-data 8
        0x4009ee5750da932bL    # 3.2413774792388685
        -0x400765b9220c7764L    # -1.5376652402851851
        -0x402012c8101da46cL    # -0.49885366846268053
    .end array-data

    :array_e4
    .array-data 8
        -0x4010fcc31912e57cL    # -0.9691452513005321
        0x3ffe03a05a04781dL    # 1.8758853451067872
        0x3fa5481eb1c0d367L    # 0.04156585616912061
    .end array-data

    :array_f4
    .array-data 8
        0x3fac7a58f1e3e6efL    # 0.05562093689691305
        -0x4035e4cb650c5ffeL    # -0.20395524564742123
        0x3ff0ea357b841dfcL    # 1.0571799111220335
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static blacklist argbFromLinrgb([D)I
    .registers 5
    .param p0, "linrgb"    # [D

    .line 148
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v0

    .line 149
    .local v0, "r":I
    const/4 v1, 0x1

    aget-wide v1, p0, v1

    invoke-static {v1, v2}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v1

    .line 150
    .local v1, "g":I
    const/4 v2, 0x2

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v2

    .line 151
    .local v2, "b":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromRgb(III)I

    move-result v3

    return v3
.end method

.method public static blacklist argbFromLinrgbComponents(DDD)I
    .registers 9
    .param p0, "r"    # D
    .param p2, "g"    # D
    .param p4, "b"    # D

    .line 156
    invoke-static {p0, p1}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v0

    invoke-static {p2, p3}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v1

    invoke-static {p4, p5}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromRgb(III)I

    move-result v0

    return v0
.end method

.method public static blacklist argbFromLstar(D)I
    .registers 30
    .param p0, "lstar"    # D

    .line 120
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v0, p0, v0

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    .line 121
    .local v0, "fy":D
    move-wide v2, v0

    .line 122
    .local v2, "fz":D
    move-wide v4, v0

    .line 123
    .local v4, "fx":D
    const-wide v6, 0x408c3a5ed097b426L    # 903.2962962962963

    .line 124
    .local v6, "kappa":D
    const-wide v8, 0x3f822354d28f7cd6L    # 0.008856451679035631

    .line 125
    .local v8, "epsilon":D
    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    cmpl-double v10, p0, v10

    const/4 v12, 0x0

    if-lez v10, :cond_1c

    const/4 v10, 0x1

    goto :goto_1d

    :cond_1c
    move v10, v12

    .line 126
    .local v10, "lExceedsEpsilonKappa":Z
    :goto_1d
    if-eqz v10, :cond_23

    mul-double v13, v0, v0

    mul-double/2addr v13, v0

    goto :goto_25

    :cond_23
    div-double v13, p0, v6

    .line 127
    .local v13, "y":D
    :goto_25
    mul-double v15, v0, v0

    mul-double/2addr v15, v0

    cmpl-double v15, v15, v8

    if-lez v15, :cond_2e

    const/4 v15, 0x1

    goto :goto_2f

    :cond_2e
    move v15, v12

    .line 128
    .local v15, "cubeExceedEpsilon":Z
    :goto_2f
    if-eqz v15, :cond_36

    mul-double v16, v4, v4

    mul-double v16, v16, v4

    goto :goto_38

    :cond_36
    div-double v16, p0, v6

    .line 129
    .local v16, "x":D
    :goto_38
    if-eqz v15, :cond_3f

    mul-double v18, v2, v2

    mul-double v18, v18, v2

    goto :goto_41

    :cond_3f
    div-double v18, p0, v6

    .line 130
    .local v18, "z":D
    :goto_41
    sget-object v20, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    .line 131
    .local v20, "whitePoint":[F
    aget v12, v20, v12

    const/16 v21, 0x1

    float-to-double v11, v12

    mul-double v22, v16, v11

    aget v11, v20, v21

    float-to-double v11, v11

    mul-double v24, v13, v11

    const/4 v11, 0x2

    aget v11, v20, v11

    float-to-double v11, v11

    mul-double v26, v18, v11

    invoke-static/range {v22 .. v27}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromXyz(DDD)I

    move-result v11

    return v11
.end method

.method public static blacklist argbFromRgb(III)I
    .registers 5
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I

    .line 193
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static blacklist argbFromXyz(DDD)I
    .registers 17
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D

    .line 136
    sget-object v0, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_SRGB:[[D

    .line 137
    .local v0, "matrix":[[D
    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget-wide v2, v2, v1

    mul-double/2addr v2, p0

    aget-object v4, v0, v1

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    mul-double/2addr v6, p2

    add-double/2addr v2, v6

    aget-object v4, v0, v1

    const/4 v6, 0x2

    aget-wide v7, v4, v6

    mul-double/2addr v7, p4

    add-double/2addr v2, v7

    .line 138
    .local v2, "linearR":D
    aget-object v4, v0, v5

    aget-wide v7, v4, v1

    mul-double/2addr v7, p0

    aget-object v4, v0, v5

    aget-wide v9, v4, v5

    mul-double/2addr v9, p2

    add-double/2addr v7, v9

    aget-object v4, v0, v5

    aget-wide v9, v4, v6

    mul-double/2addr v9, p4

    add-double/2addr v7, v9

    .line 139
    .local v7, "linearG":D
    aget-object v4, v0, v6

    aget-wide v9, v4, v1

    mul-double/2addr v9, p0

    aget-object v1, v0, v6

    aget-wide v4, v1, v5

    mul-double/2addr v4, p2

    add-double/2addr v9, v4

    aget-object v1, v0, v6

    aget-wide v4, v1, v6

    mul-double/2addr v4, p4

    add-double/2addr v9, v4

    .line 140
    .local v9, "linearB":D
    invoke-static {v2, v3}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v1

    .line 141
    .local v1, "r":I
    invoke-static {v7, v8}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v4

    .line 142
    .local v4, "g":I
    invoke-static {v9, v10}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v5

    .line 143
    .local v5, "b":I
    invoke-static {v1, v4, v5}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromRgb(III)I

    move-result v6

    return v6
.end method

.method public static blacklist clampInt(III)I
    .registers 3
    .param p0, "min"    # I
    .param p1, "max"    # I
    .param p2, "input"    # I

    .line 182
    if-ge p2, p0, :cond_3

    .line 183
    return p0

    .line 184
    :cond_3
    if-le p2, p1, :cond_6

    .line 185
    return p1

    .line 188
    :cond_6
    return p2
.end method

.method public static blacklist delinearized(D)I
    .registers 10
    .param p0, "rgbComponent"    # D

    .line 166
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p0, v0

    .line 167
    .local v0, "normalized":D
    const-wide/16 v2, 0x0

    .line 168
    .local v2, "delinearized":D
    const-wide v4, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_16

    .line 169
    const-wide v4, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v4, v0

    .end local v2    # "delinearized":D
    .local v4, "delinearized":D
    goto :goto_2b

    .line 171
    .end local v4    # "delinearized":D
    .restart local v2    # "delinearized":D
    :cond_16
    const-wide v4, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr v4, v6

    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v4, v6

    .line 173
    .end local v2    # "delinearized":D
    .restart local v4    # "delinearized":D
    :goto_2b
    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    const/16 v6, 0xff

    invoke-static {v3, v6, v2}, Lcom/android/internal/graphics/cam/CamUtils;->clampInt(III)I

    move-result v2

    return v2
.end method

.method static blacklist intFromLstar(F)I
    .registers 22
    .param p0, "lstar"    # F

    .line 197
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_9

    .line 198
    const/high16 v0, -0x1000000

    return v0

    .line 199
    :cond_9
    const/high16 v0, 0x42c60000    # 99.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_11

    .line 200
    const/4 v0, -0x1

    return v0

    .line 204
    :cond_11
    const/high16 v0, 0x41800000    # 16.0f

    add-float v1, p0, v0

    const/high16 v2, 0x42e80000    # 116.0f

    div-float/2addr v1, v2

    .line 207
    .local v1, "fy":F
    move v3, v1

    .line 208
    .local v3, "fz":F
    move v4, v1

    .line 210
    .local v4, "fx":F
    const v5, 0x4461d2f7

    .line 211
    .local v5, "kappa":F
    const v6, 0x3c111aa7

    .line 212
    .local v6, "epsilon":F
    const/high16 v7, 0x41000000    # 8.0f

    cmpl-float v7, p0, v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v7, :cond_2a

    move v7, v8

    goto :goto_2b

    :cond_2a
    move v7, v9

    .line 213
    .local v7, "lExceedsEpsilonKappa":Z
    :goto_2b
    if-eqz v7, :cond_31

    mul-float v10, v1, v1

    mul-float/2addr v10, v1

    goto :goto_33

    :cond_31
    div-float v10, p0, v5

    .line 214
    .local v10, "yT":F
    :goto_33
    mul-float v11, v1, v1

    mul-float/2addr v11, v1

    cmpl-float v11, v11, v6

    if-lez v11, :cond_3c

    move v11, v8

    goto :goto_3d

    :cond_3c
    move v11, v9

    .line 215
    .local v11, "cubeExceedEpsilon":Z
    :goto_3d
    if-eqz v11, :cond_43

    mul-float v12, v4, v4

    mul-float/2addr v12, v4

    goto :goto_47

    :cond_43
    mul-float v12, v4, v2

    sub-float/2addr v12, v0

    div-float/2addr v12, v5

    .line 216
    .local v12, "xT":F
    :goto_47
    if-eqz v11, :cond_4d

    mul-float v0, v3, v3

    mul-float/2addr v0, v3

    goto :goto_51

    :cond_4d
    mul-float/2addr v2, v4

    sub-float/2addr v2, v0

    div-float v0, v2, v5

    .line 218
    .local v0, "zT":F
    :goto_51
    sget-object v2, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    aget v2, v2, v9

    mul-float/2addr v2, v12

    float-to-double v13, v2

    sget-object v2, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    aget v2, v2, v8

    mul-float/2addr v2, v10

    float-to-double v8, v2

    sget-object v2, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    const/4 v15, 0x2

    aget v2, v2, v15

    mul-float/2addr v2, v0

    move/from16 v20, v0

    move/from16 v19, v1

    .end local v0    # "zT":F
    .end local v1    # "fy":F
    .local v19, "fy":F
    .local v20, "zT":F
    float-to-double v0, v2

    move-wide/from16 v17, v0

    move-wide v15, v8

    invoke-static/range {v13 .. v18}, Lcom/android/internal/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method static blacklist linearized(I)F
    .registers 8
    .param p0, "rgbComponent"    # I

    .line 282
    int-to-float v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 284
    .local v0, "normalized":F
    const v1, 0x3d25aee6    # 0.04045f

    cmpg-float v1, v0, v1

    const/high16 v2, 0x42c80000    # 100.0f

    if-gtz v1, :cond_14

    .line 285
    const v1, 0x414eb852    # 12.92f

    div-float v1, v0, v1

    mul-float/2addr v1, v2

    return v1

    .line 287
    :cond_14
    const v1, 0x3d6147ae    # 0.055f

    add-float/2addr v1, v0

    const v3, 0x3f870a3d    # 1.055f

    div-float/2addr v1, v3

    float-to-double v3, v1

    const-wide v5, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method public static blacklist lstarFromInt(I)F
    .registers 2
    .param p0, "argb"    # I

    .line 224
    invoke-static {p0}, Lcom/android/internal/graphics/cam/CamUtils;->yFromInt(I)F

    move-result v0

    invoke-static {v0}, Lcom/android/internal/graphics/cam/CamUtils;->lstarFromY(F)F

    move-result v0

    return v0
.end method

.method static blacklist lstarFromY(F)F
    .registers 5
    .param p0, "y"    # F

    .line 228
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 229
    const v0, 0x3c111aa7

    .line 231
    .local v0, "e":F
    const v1, 0x3c111aa7

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_12

    .line 232
    const v1, 0x4461d2f7

    mul-float/2addr v1, p0

    return v1

    .line 234
    :cond_12
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 236
    .local v1, "yIntermediate":F
    const/high16 v2, 0x42e80000    # 116.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x41800000    # 16.0f

    sub-float/2addr v2, v3

    return v2
.end method

.method public static blacklist signum(D)I
    .registers 5
    .param p0, "num"    # D

    .line 104
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_8

    .line 105
    const/4 v0, -0x1

    return v0

    .line 106
    :cond_8
    cmpl-double v0, p0, v0

    if-nez v0, :cond_e

    .line 107
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method static blacklist xyzFromInt(I)[F
    .registers 19
    .param p0, "argb"    # I

    .line 250
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v0

    .line 251
    .local v0, "r":F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v1

    .line 252
    .local v1, "g":F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v2

    .line 254
    .local v2, "b":F
    sget-object v3, Lcom/android/internal/graphics/cam/CamUtils;->SRGB_TO_XYZ:[[D

    .line 255
    .local v3, "matrix":[[D
    float-to-double v4, v0

    const/4 v6, 0x0

    aget-object v7, v3, v6

    aget-wide v7, v7, v6

    mul-double/2addr v4, v7

    float-to-double v7, v1

    aget-object v9, v3, v6

    const/4 v10, 0x1

    aget-wide v11, v9, v10

    mul-double/2addr v7, v11

    add-double/2addr v4, v7

    float-to-double v7, v2

    aget-object v9, v3, v6

    const/4 v11, 0x2

    aget-wide v12, v9, v11

    mul-double/2addr v7, v12

    add-double/2addr v4, v7

    .line 256
    .local v4, "x":D
    float-to-double v7, v0

    aget-object v9, v3, v10

    aget-wide v12, v9, v6

    mul-double/2addr v7, v12

    float-to-double v12, v1

    aget-object v9, v3, v10

    aget-wide v14, v9, v10

    mul-double/2addr v12, v14

    add-double/2addr v7, v12

    float-to-double v12, v2

    aget-object v9, v3, v10

    aget-wide v14, v9, v11

    mul-double/2addr v12, v14

    add-double/2addr v7, v12

    .line 257
    .local v7, "y":D
    float-to-double v12, v0

    aget-object v9, v3, v11

    aget-wide v14, v9, v6

    mul-double/2addr v12, v14

    float-to-double v14, v1

    aget-object v9, v3, v11

    aget-wide v16, v9, v10

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    float-to-double v14, v2

    aget-object v9, v3, v11

    aget-wide v16, v9, v11

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 258
    .local v12, "z":D
    double-to-float v9, v4

    double-to-float v14, v7

    double-to-float v15, v12

    move/from16 v16, v6

    const/4 v6, 0x3

    new-array v6, v6, [F

    aput v9, v6, v16

    aput v14, v6, v10

    aput v15, v6, v11

    return-object v6
.end method

.method static blacklist yFromInt(I)F
    .registers 12
    .param p0, "argb"    # I

    .line 240
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v0

    .line 241
    .local v0, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v1

    .line 242
    .local v1, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v2

    .line 243
    .local v2, "b":F
    sget-object v3, Lcom/android/internal/graphics/cam/CamUtils;->SRGB_TO_XYZ:[[D

    .line 244
    .local v3, "matrix":[[D
    float-to-double v4, v0

    const/4 v6, 0x1

    aget-object v7, v3, v6

    const/4 v8, 0x0

    aget-wide v7, v7, v8

    mul-double/2addr v4, v7

    float-to-double v7, v1

    aget-object v9, v3, v6

    aget-wide v9, v9, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    float-to-double v7, v2

    aget-object v6, v3, v6

    const/4 v9, 0x2

    aget-wide v9, v6, v9

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 245
    .local v4, "y":D
    double-to-float v6, v4

    return v6
.end method

.method public static blacklist yFromLstar(D)D
    .registers 11
    .param p0, "lstar"    # D

    .line 273
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    .line 274
    .local v0, "ke":D
    cmpl-double v2, p0, v0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    if-lez v2, :cond_16

    .line 275
    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    add-double/2addr v5, p0

    const-wide/high16 v7, 0x405d000000000000L    # 116.0

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    return-wide v5

    .line 277
    :cond_16
    const-wide v5, 0x408c3a5ed097b426L    # 903.2962962962963

    div-double v5, p0, v5

    mul-double/2addr v5, v3

    return-wide v5
.end method
