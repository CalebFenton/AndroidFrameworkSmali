.class public final Lcom/android/internal/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;
    }
.end annotation


# static fields
.field private static final blacklist MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final blacklist MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final blacklist TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final blacklist XYZ_EPSILON:D = 0.008856

.field private static final blacklist XYZ_KAPPA:D = 903.3

.field private static final blacklist XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final blacklist XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final blacklist XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist CAMToColor(FFF)I
    .registers 4
    .param p0, "hue"    # F
    .param p1, "chroma"    # F
    .param p2, "lstar"    # F

    .line 367
    invoke-static {p0, p1, p2}, Lcom/android/internal/graphics/cam/Cam;->getInt(FFF)I

    move-result v0

    return v0
.end method

.method public static blacklist HSLToColor([F)I
    .registers 14
    .param p0, "hsl"    # [F

    .line 288
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 289
    .local v1, "h":F
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 290
    .local v2, "s":F
    const/4 v3, 0x2

    aget v3, p0, v3

    .line 292
    .local v3, "l":F
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v6, v5

    mul-float/2addr v5, v2

    .line 293
    .local v5, "c":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    sub-float v7, v3, v7

    .line 294
    .local v7, "m":F
    const/high16 v8, 0x42700000    # 60.0f

    div-float v8, v1, v8

    rem-float/2addr v8, v4

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v6, v4

    mul-float/2addr v6, v5

    .line 296
    .local v6, "x":F
    float-to-int v4, v1

    div-int/lit8 v4, v4, 0x3c

    .line 298
    .local v4, "hueSegment":I
    const/4 v8, 0x0

    .local v8, "r":I
    const/4 v9, 0x0

    .local v9, "g":I
    const/4 v10, 0x0

    .line 300
    .local v10, "b":I
    const/high16 v11, 0x437f0000    # 255.0f

    packed-switch v4, :pswitch_data_c4

    goto/16 :goto_b1

    .line 328
    :pswitch_35
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 329
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 330
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    goto :goto_b1

    .line 322
    :pswitch_4a
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 323
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 324
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 325
    goto :goto_b1

    .line 317
    :pswitch_5f
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 318
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 319
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 320
    goto :goto_b1

    .line 312
    :pswitch_74
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 313
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 314
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 315
    goto :goto_b1

    .line 307
    :pswitch_89
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 308
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 309
    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 310
    goto :goto_b1

    .line 302
    :pswitch_9d
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 303
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 304
    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 305
    nop

    .line 334
    :goto_b1
    const/16 v11, 0xff

    invoke-static {v8, v0, v11}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v8

    .line 335
    invoke-static {v9, v0, v11}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v9

    .line 336
    invoke-static {v10, v0, v11}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v0

    .line 338
    .end local v10    # "b":I
    .local v0, "b":I
    invoke-static {v8, v9, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    return v10

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_89
        :pswitch_74
        :pswitch_5f
        :pswitch_4a
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public static blacklist LABToColor(DDD)I
    .registers 19
    .param p0, "l"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    .line 581
    invoke-static {}, Lcom/android/internal/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v6

    .line 582
    .local v6, "result":[D
    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    .line 583
    const/4 v0, 0x0

    aget-wide v7, v6, v0

    const/4 v0, 0x1

    aget-wide v9, v6, v0

    const/4 v0, 0x2

    aget-wide v11, v6, v0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static blacklist LABToXYZ(DDD[D)V
    .registers 30
    .param p0, "l"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "outXyz"    # [D

    .line 524
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    .line 525
    .local v2, "fy":D
    const-wide v6, 0x407f400000000000L    # 500.0

    div-double v6, p2, v6

    add-double/2addr v6, v2

    .line 526
    .local v6, "fx":D
    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    div-double v8, p4, v8

    sub-double v8, v2, v8

    .line 528
    .local v8, "fz":D
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 529
    .local v12, "tmp":D
    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v16, v12, v14

    const-wide v17, 0x408c3a6666666666L    # 903.3

    if-lez v16, :cond_2c

    move-wide/from16 v19, v12

    goto :goto_32

    :cond_2c
    mul-double v19, v6, v4

    sub-double v19, v19, v0

    div-double v19, v19, v17

    .line 530
    .local v19, "xr":D
    :goto_32
    const-wide v21, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v16, p0, v21

    if-lez v16, :cond_40

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    goto :goto_42

    :cond_40
    div-double v21, p0, v17

    .line 532
    .local v21, "yr":D
    :goto_42
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 533
    .end local v12    # "tmp":D
    .local v10, "tmp":D
    cmpl-double v12, v10, v14

    if-lez v12, :cond_4c

    move-wide v4, v10

    goto :goto_50

    :cond_4c
    mul-double/2addr v4, v8

    sub-double/2addr v4, v0

    div-double v4, v4, v17

    .line 535
    .local v4, "zr":D
    :goto_50
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    mul-double v0, v0, v19

    const/4 v12, 0x0

    aput-wide v0, p6, v12

    .line 536
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v21

    const/4 v12, 0x1

    aput-wide v0, p6, v12

    .line 537
    const-wide v0, 0x405b3883126e978dL    # 108.883

    mul-double/2addr v0, v4

    const/4 v12, 0x2

    aput-wide v0, p6, v12

    .line 538
    return-void
.end method

.method public static blacklist RGBToHSL(III[F)V
    .registers 20
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outHsl"    # [F

    .line 223
    move/from16 v0, p0

    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 224
    .local v1, "rf":F
    move/from16 v3, p1

    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 225
    .local v4, "gf":F
    move/from16 v5, p2

    int-to-float v6, v5

    div-float/2addr v6, v2

    .line 227
    .local v6, "bf":F
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 228
    .local v2, "max":F
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 229
    .local v7, "min":F
    sub-float v8, v2, v7

    .line 232
    .local v8, "deltaMaxMin":F
    add-float v9, v2, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 234
    .local v9, "l":F
    cmpl-float v11, v2, v7

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-nez v11, :cond_2f

    .line 236
    move v10, v13

    .local v10, "s":F
    move v11, v13

    .local v11, "h":F
    goto :goto_53

    .line 238
    .end local v10    # "s":F
    .end local v11    # "h":F
    :cond_2f
    cmpl-float v11, v2, v1

    if-nez v11, :cond_3a

    .line 239
    sub-float v11, v4, v6

    div-float/2addr v11, v8

    const/high16 v14, 0x40c00000    # 6.0f

    rem-float/2addr v11, v14

    .restart local v11    # "h":F
    goto :goto_49

    .line 240
    .end local v11    # "h":F
    :cond_3a
    cmpl-float v11, v2, v4

    if-nez v11, :cond_43

    .line 241
    sub-float v11, v6, v1

    div-float/2addr v11, v8

    add-float/2addr v11, v10

    .restart local v11    # "h":F
    goto :goto_49

    .line 243
    .end local v11    # "h":F
    :cond_43
    sub-float v11, v1, v4

    div-float/2addr v11, v8

    const/high16 v14, 0x40800000    # 4.0f

    add-float/2addr v11, v14

    .line 246
    .restart local v11    # "h":F
    :goto_49
    mul-float/2addr v10, v9

    sub-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v10, v12, v10

    div-float v10, v8, v10

    .line 249
    .restart local v10    # "s":F
    :goto_53
    const/high16 v14, 0x42700000    # 60.0f

    mul-float/2addr v14, v11

    const/high16 v15, 0x43b40000    # 360.0f

    rem-float/2addr v14, v15

    .line 250
    .end local v11    # "h":F
    .local v14, "h":F
    cmpg-float v11, v14, v13

    if-gez v11, :cond_5e

    .line 251
    add-float/2addr v14, v15

    .line 254
    :cond_5e
    const/4 v11, 0x0

    invoke-static {v14, v13, v15}, Lcom/android/internal/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, p3, v11

    .line 255
    const/4 v11, 0x1

    invoke-static {v10, v13, v12}, Lcom/android/internal/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, p3, v11

    .line 256
    const/4 v11, 0x2

    invoke-static {v9, v13, v12}, Lcom/android/internal/graphics/ColorUtils;->constrain(FFF)F

    move-result v12

    aput v12, p3, v11

    .line 257
    return-void
.end method

.method public static blacklist RGBToLAB(III[D)V
    .registers 12
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outLab"    # [D

    .line 410
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 412
    const/4 v0, 0x0

    aget-wide v1, p3, v0

    const/4 v0, 0x1

    aget-wide v3, p3, v0

    const/4 v0, 0x2

    aget-wide v5, p3, v0

    move-object v7, p3

    .end local p3    # "outLab":[D
    .local v7, "outLab":[D
    invoke-static/range {v1 .. v7}, Lcom/android/internal/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    .line 414
    return-void
.end method

.method public static blacklist RGBToXYZ(III[D)V
    .registers 29
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outXyz"    # [D

    .line 455
    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b7

    .line 459
    move/from16 v1, p0

    int-to-double v2, v1

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    .line 460
    .local v2, "sr":D
    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v8, v2, v6

    const-wide v9, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v11, 0x4003333333333333L    # 2.4

    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v15, 0x3fac28f5c28f5c29L    # 0.055

    if-gez v8, :cond_31

    div-double v17, v2, v9

    move-wide/from16 v19, v4

    goto :goto_3b

    :cond_31
    add-double v17, v2, v15

    move-wide/from16 v19, v4

    div-double v4, v17, v13

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    .line 461
    .end local v2    # "sr":D
    .local v17, "sr":D
    :goto_3b
    move/from16 v2, p1

    int-to-double v3, v2

    div-double v3, v3, v19

    .line 462
    .local v3, "sg":D
    cmpg-double v5, v3, v6

    if-gez v5, :cond_49

    div-double v21, v3, v9

    move-wide/from16 v23, v6

    goto :goto_53

    :cond_49
    add-double v21, v3, v15

    move-wide/from16 v23, v6

    div-double v6, v21, v13

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    .line 463
    .end local v3    # "sg":D
    .local v21, "sg":D
    :goto_53
    move/from16 v3, p2

    int-to-double v4, v3

    div-double v4, v4, v19

    .line 464
    .local v4, "sb":D
    cmpg-double v6, v4, v23

    if-gez v6, :cond_5f

    div-double v6, v4, v9

    goto :goto_66

    :cond_5f
    add-double/2addr v15, v4

    div-double v6, v15, v13

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 466
    .end local v4    # "sb":D
    .local v6, "sb":D
    :goto_66
    const-wide v4, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double v4, v4, v17

    const-wide v8, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double v8, v8, v21

    add-double/2addr v4, v8

    const-wide v8, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v8, v6

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v8

    const/4 v10, 0x0

    aput-wide v4, v0, v10

    .line 467
    const-wide v4, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v4, v4, v17

    const-wide v10, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v10, v10, v21

    add-double/2addr v4, v10

    const-wide v10, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    mul-double/2addr v4, v8

    const/4 v10, 0x1

    aput-wide v4, v0, v10

    .line 468
    const-wide v4, 0x3f93c36113404ea5L    # 0.0193

    mul-double v4, v4, v17

    const-wide v10, 0x3fbe83e425aee632L    # 0.1192

    mul-double v10, v10, v21

    add-double/2addr v4, v10

    const-wide v10, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    mul-double/2addr v4, v8

    const/4 v8, 0x2

    aput-wide v4, v0, v8

    .line 469
    return-void

    .line 456
    .end local v6    # "sb":D
    .end local v17    # "sr":D
    .end local v21    # "sg":D
    :cond_b7
    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "outXyz must have a length of 3."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static blacklist XYZToColor(DDD)I
    .registers 25
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D

    .line 555
    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v0, v0, p0

    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    mul-double v2, v2, p2

    add-double/2addr v0, v2

    const-wide v2, -0x402016f0068db8bbL    # -0.4986

    mul-double v2, v2, p4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 556
    .local v0, "r":D
    const-wide v4, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v4, v4, p0

    const-wide v6, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v6, v6, p2

    add-double/2addr v4, v6

    const-wide v6, 0x3fa53f7ced916873L    # 0.0415

    mul-double v6, v6, p4

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    .line 557
    .local v4, "g":D
    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v6, v6, p0

    const-wide v8, -0x4035e353f7ced917L    # -0.204

    mul-double v8, v8, p2

    add-double/2addr v6, v8

    const-wide v8, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    div-double/2addr v6, v2

    .line 559
    .local v6, "b":D
    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v8, v0, v2

    const-wide v9, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v11, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    if-lez v8, :cond_70

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    mul-double v17, v17, v13

    sub-double v17, v17, v9

    goto :goto_72

    :cond_70
    mul-double v17, v0, v15

    .line 560
    .end local v0    # "r":D
    .local v17, "r":D
    :goto_72
    cmpl-double v0, v4, v2

    if-lez v0, :cond_7d

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v13

    sub-double/2addr v0, v9

    goto :goto_7f

    :cond_7d
    mul-double v0, v4, v15

    .line 561
    .end local v4    # "g":D
    .local v0, "g":D
    :goto_7f
    cmpl-double v2, v6, v2

    if-lez v2, :cond_8a

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v13

    sub-double/2addr v2, v9

    goto :goto_8c

    :cond_8a
    mul-double v2, v6, v15

    .line 563
    .end local v6    # "b":D
    .local v2, "b":D
    :goto_8c
    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double v6, v17, v4

    .line 564
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    const/16 v8, 0xff

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v6

    mul-double v9, v0, v4

    .line 565
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9, v7, v8}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v9

    mul-double/2addr v4, v2

    .line 566
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4, v7, v8}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v4

    .line 563
    invoke-static {v6, v9, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4
.end method

.method public static blacklist XYZToLAB(DDD[D)V
    .registers 11
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "outLab"    # [D

    .line 492
    array-length v0, p6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_45

    .line 495
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double v0, p0, v0

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p0

    .line 496
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p2, v0

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p2

    .line 497
    const-wide v0, 0x405b3883126e978dL    # 108.883

    div-double v0, p4, v0

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p4

    .line 498
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    mul-double/2addr v0, p2

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p6, v2

    .line 499
    const-wide v0, 0x407f400000000000L    # 500.0

    sub-double v2, p0, p2

    mul-double/2addr v2, v0

    const/4 v0, 0x1

    aput-wide v2, p6, v0

    .line 500
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    sub-double v2, p2, p4

    mul-double/2addr v2, v0

    const/4 v0, 0x2

    aput-wide v2, p6, v0

    .line 501
    return-void

    .line 493
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outLab must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist binaryAlphaSearch(IIFLcom/android/internal/graphics/ColorUtils$ContrastCalculator;)I
    .registers 12
    .param p0, "foreground"    # I
    .param p1, "background"    # I
    .param p2, "minContrastRatio"    # F
    .param p3, "calculator"    # Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "numIterations":I
    const/4 v1, 0x0

    .line 186
    .local v1, "minAlpha":I
    const/16 v2, 0xff

    .line 188
    .local v2, "maxAlpha":I
    :goto_4
    const/16 v3, 0xa

    if-gt v0, v3, :cond_21

    sub-int v3, v2, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_21

    .line 190
    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    .line 192
    .local v3, "testAlpha":I
    invoke-interface {p3, p0, p1, v3}, Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;->calculateContrast(III)D

    move-result-wide v4

    .line 194
    .local v4, "testRatio":D
    float-to-double v6, p2

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1c

    .line 195
    move v1, v3

    goto :goto_1d

    .line 197
    :cond_1c
    move v2, v3

    .line 200
    :goto_1d
    nop

    .end local v3    # "testAlpha":I
    .end local v4    # "testRatio":D
    add-int/lit8 v0, v0, 0x1

    .line 201
    goto :goto_4

    .line 204
    :cond_21
    return v2
.end method

.method public static blacklist blendARGB(IIF)I
    .registers 12
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .line 622
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 623
    .local v0, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 624
    .local v1, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 625
    .local v2, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 626
    .local v3, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    .line 627
    .local v4, "b":F
    float-to-int v5, v1

    float-to-int v6, v2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method public static blacklist blendHSL([F[FF[F)V
    .registers 8
    .param p0, "hsl1"    # [F
    .param p1, "hsl2"    # [F
    .param p2, "ratio"    # F
    .param p3, "outResult"    # [F

    .line 644
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 647
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 649
    .local v0, "inverseRatio":F
    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    invoke-static {v2, v3, p2}, Lcom/android/internal/graphics/ColorUtils;->circularInterpolate(FFF)F

    move-result v2

    aput v2, p3, v1

    .line 650
    const/4 v1, 0x1

    aget v2, p0, v1

    mul-float/2addr v2, v0

    aget v3, p1, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 651
    const/4 v1, 0x2

    aget v2, p0, v1

    mul-float/2addr v2, v0

    aget v3, p1, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 652
    return-void

    .line 645
    .end local v0    # "inverseRatio":F
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "result must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist blendLAB([D[DD[D)V
    .registers 12
    .param p0, "lab1"    # [D
    .param p1, "lab2"    # [D
    .param p2, "ratio"    # D
    .param p4, "outResult"    # [D

    .line 667
    array-length v0, p4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 670
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    .line 671
    .local v0, "inverseRatio":D
    const/4 v2, 0x0

    aget-wide v3, p0, v2

    mul-double/2addr v3, v0

    aget-wide v5, p1, v2

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    .line 672
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    mul-double/2addr v3, v0

    aget-wide v5, p1, v2

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    .line 673
    const/4 v2, 0x2

    aget-wide v3, p0, v2

    mul-double/2addr v3, v0

    aget-wide v5, p1, v2

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    .line 674
    return-void

    .line 668
    .end local v0    # "inverseRatio":D
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outResult must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist calculateContrast(II)D
    .registers 10
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 98
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2b

    .line 102
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_12

    .line 104
    invoke-static {p0, p1}, Lcom/android/internal/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 107
    :cond_12
    invoke-static {p0}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 108
    .local v0, "luminance1":D
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    add-double/2addr v4, v2

    .line 111
    .local v4, "luminance2":D
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    return-wide v2

    .line 99
    .end local v0    # "luminance1":D
    .end local v4    # "luminance2":D
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background can not be translucent: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist calculateLuminance(I)D
    .registers 6
    .param p0, "color"    # I

    .line 84
    invoke-static {}, Lcom/android/internal/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v0

    .line 85
    .local v0, "result":[D
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToXYZ(I[D)V

    .line 87
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static blacklist calculateMinimumAlpha(IIF)I
    .registers 9
    .param p0, "foreground"    # I
    .param p1, "background"    # I
    .param p2, "minContrastRatio"    # F

    .line 151
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_21

    .line 156
    new-instance v0, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 162
    .local v0, "contrastCalculator":Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;
    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;->calculateContrast(III)D

    move-result-wide v2

    .line 163
    .local v2, "testRatio":D
    float-to-double v4, p2

    cmpg-double v4, v2, v4

    if-gez v4, :cond_18

    .line 165
    const/4 v1, -0x1

    return v1

    .line 167
    :cond_18
    invoke-static {p0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    .line 168
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/graphics/ColorUtils;->binaryAlphaSearch(IIFLcom/android/internal/graphics/ColorUtils$ContrastCalculator;)I

    move-result v1

    return v1

    .line 152
    .end local v0    # "contrastCalculator":Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;
    .end local v2    # "testRatio":D
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background can not be translucent: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist calculateMinimumBackgroundAlpha(IIF)I
    .registers 5
    .param p0, "foreground"    # I
    .param p1, "background"    # I
    .param p2, "minContrastRatio"    # F

    .line 128
    const/16 v0, 0xff

    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 129
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 130
    .local v0, "leastContrastyColor":I
    new-instance v1, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p0, p1, p2, v1}, Lcom/android/internal/graphics/ColorUtils;->binaryAlphaSearch(IIFLcom/android/internal/graphics/ColorUtils$ContrastCalculator;)I

    move-result v1

    return v1
.end method

.method static blacklist circularInterpolate(FFF)F
    .registers 5
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "f"    # F

    .line 677
    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    if-lez v0, :cond_15

    .line 678
    cmpl-float v0, p1, p0

    if-lez v0, :cond_14

    .line 679
    add-float/2addr p0, v1

    goto :goto_15

    .line 681
    :cond_14
    add-float/2addr p1, v1

    .line 684
    :cond_15
    :goto_15
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    rem-float/2addr v0, v1

    return v0
.end method

.method public static blacklist colorToCAM(I)Lcom/android/internal/graphics/cam/Cam;
    .registers 2
    .param p0, "color"    # I

    .line 350
    invoke-static {p0}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist colorToHSL(I[F)V
    .registers 5
    .param p0, "color"    # I
    .param p1, "outHsl"    # [F

    .line 271
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 272
    return-void
.end method

.method public static blacklist colorToLAB(I[D)V
    .registers 5
    .param p0, "color"    # I
    .param p1, "outLab"    # [D

    .line 389
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/graphics/ColorUtils;->RGBToLAB(III[D)V

    .line 390
    return-void
.end method

.method public static blacklist colorToXYZ(I[D)V
    .registers 5
    .param p0, "color"    # I
    .param p1, "outXyz"    # [D

    .line 432
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 433
    return-void
.end method

.method public static blacklist compositeAlpha(II)I
    .registers 4
    .param p0, "foregroundAlpha"    # I
    .param p1, "backgroundAlpha"    # I

    .line 70
    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static blacklist compositeColors(II)I
    .registers 9
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 52
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 53
    .local v0, "bgAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 54
    .local v1, "fgAlpha":I
    invoke-static {v1, v0}, Lcom/android/internal/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    .line 56
    .local v2, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 56
    invoke-static {v3, v1, v4, v0, v2}, Lcom/android/internal/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    .line 58
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 58
    invoke-static {v4, v1, v5, v0, v2}, Lcom/android/internal/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 60
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 61
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 60
    invoke-static {v5, v1, v6, v0, v2}, Lcom/android/internal/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v5

    .line 63
    .local v5, "b":I
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static blacklist compositeComponent(IIIII)I
    .registers 8
    .param p0, "fgC"    # I
    .param p1, "fgA"    # I
    .param p2, "bgC"    # I
    .param p3, "bgA"    # I
    .param p4, "a"    # I

    .line 74
    if-nez p4, :cond_4

    const/4 v0, 0x0

    return v0

    .line 75
    :cond_4
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    return v0
.end method

.method private static blacklist constrain(FFF)F
    .registers 4
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 596
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpl-float v0, p0, p2

    if-lez v0, :cond_c

    move v0, p2

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    return v0
.end method

.method private static blacklist constrain(III)I
    .registers 4
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 600
    if-ge p0, p1, :cond_4

    move v0, p1

    goto :goto_9

    :cond_4
    if-le p0, p2, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p0

    :goto_9
    return v0
.end method

.method public static blacklist distanceEuclidean([D[D)D
    .registers 11
    .param p0, "labX"    # [D
    .param p1, "labY"    # [D

    .line 590
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v5, p0, v2

    aget-wide v7, p1, v2

    sub-double/2addr v5, v7

    .line 591
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    const/4 v2, 0x2

    aget-wide v5, p0, v2

    aget-wide v7, p1, v2

    sub-double/2addr v5, v7

    .line 592
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 590
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist getTempDouble3Array()[D
    .registers 2

    .line 688
    sget-object v0, Lcom/android/internal/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 689
    .local v0, "result":[D
    if-nez v0, :cond_12

    .line 690
    const/4 v1, 0x3

    new-array v0, v1, [D

    .line 691
    sget-object v1, Lcom/android/internal/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 693
    :cond_12
    return-object v0
.end method

.method static synthetic blacklist lambda$calculateMinimumAlpha$1(III)D
    .registers 6
    .param p0, "fg"    # I
    .param p1, "bg"    # I
    .param p2, "alpha"    # I

    .line 157
    invoke-static {p0, p2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 158
    .local v0, "testForeground":I
    invoke-static {v0, p1}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v1

    return-wide v1
.end method

.method static synthetic blacklist lambda$calculateMinimumBackgroundAlpha$0(IIII)D
    .registers 7
    .param p0, "leastContrastyColor"    # I
    .param p1, "fg"    # I
    .param p2, "bg"    # I
    .param p3, "alpha"    # I

    .line 131
    int-to-float v0, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p0, p2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 134
    .local v0, "testBackground":I
    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 135
    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist pivotXyzComponent(D)D
    .registers 6
    .param p0, "component"    # D

    .line 604
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_13

    .line 605
    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_1f

    .line 606
    :cond_13
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    .line 604
    :goto_1f
    return-wide v0
.end method

.method public static blacklist setAlphaComponent(II)I
    .registers 4
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .line 376
    if-ltz p1, :cond_e

    const/16 v0, 0xff

    if-gt p1, v0, :cond_e

    .line 379
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0

    .line 377
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
