.class public Lcom/android/internal/widget/remotecompose/core/operations/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asNan(I)F
    .registers 2
    .param p0, "v"    # I

    .line 29
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    or-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static blacklist clamp(I)I
    .registers 3
    .param p0, "c"    # I

    .line 253
    const/16 v0, 0xff

    .line 254
    .local v0, "n":I
    shr-int/lit8 v1, p0, 0x1f

    not-int v1, v1

    and-int/2addr p0, v1

    .line 255
    sub-int/2addr p0, v0

    .line 256
    shr-int/lit8 v1, p0, 0x1f

    and-int/2addr p0, v1

    .line 257
    add-int/2addr p0, v0

    .line 258
    return p0
.end method

.method public static blacklist colorInt(I)Ljava/lang/String;
    .registers 4
    .param p0, "color"    # I

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist floatToString(F)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # F

    .line 125
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 126
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    if-nez v0, :cond_f

    .line 127
    const-string v0, "NaN"

    return-object v0

    .line 129
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_2d
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist floatToString(FF)Ljava/lang/String;
    .registers 4
    .param p0, "idvalue"    # F
    .param p1, "value"    # F

    .line 109
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 110
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    if-nez v0, :cond_f

    .line 111
    const-string v0, "NaN"

    return-object v0

    .line 113
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_35
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getBrightness(I)F
    .registers 11
    .param p0, "argb"    # I

    .line 384
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 385
    .local v0, "r":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 386
    .local v1, "g":I
    and-int/lit16 v2, p0, 0xff

    .line 387
    .local v2, "b":I
    int-to-float v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    .line 388
    .local v3, "rf":F
    int-to-float v5, v1

    div-float/2addr v5, v4

    .line 389
    .local v5, "gf":F
    int-to-float v6, v2

    div-float/2addr v6, v4

    .line 390
    .local v6, "bf":F
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 391
    .local v4, "max":F
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 393
    .local v7, "min":F
    add-float v8, v4, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    return v8
.end method

.method public static blacklist getHue(I)F
    .registers 13
    .param p0, "argb"    # I

    .line 317
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 318
    .local v0, "r":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 319
    .local v1, "g":I
    and-int/lit16 v2, p0, 0xff

    .line 321
    .local v2, "b":I
    int-to-float v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    .line 322
    .local v3, "rf":F
    int-to-float v5, v1

    div-float/2addr v5, v4

    .line 323
    .local v5, "gf":F
    int-to-float v6, v2

    div-float/2addr v6, v4

    .line 324
    .local v6, "bf":F
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 325
    .local v4, "max":F
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 326
    .local v7, "min":F
    sub-float v8, v4, v7

    .line 328
    .local v8, "deltaMaxMin":F
    cmpl-float v9, v4, v7

    if-nez v9, :cond_2a

    .line 330
    const/4 v9, 0x0

    .local v9, "h":F
    goto :goto_46

    .line 332
    .end local v9    # "h":F
    :cond_2a
    cmpl-float v9, v4, v3

    if-nez v9, :cond_35

    .line 333
    sub-float v9, v5, v6

    div-float/2addr v9, v8

    const/high16 v10, 0x40c00000    # 6.0f

    rem-float/2addr v9, v10

    .restart local v9    # "h":F
    goto :goto_46

    .line 334
    .end local v9    # "h":F
    :cond_35
    cmpl-float v9, v4, v5

    if-nez v9, :cond_40

    .line 335
    sub-float v9, v6, v3

    div-float/2addr v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v9, v10

    .restart local v9    # "h":F
    goto :goto_46

    .line 337
    .end local v9    # "h":F
    :cond_40
    sub-float v9, v3, v5

    div-float/2addr v9, v8

    const/high16 v10, 0x40800000    # 4.0f

    add-float/2addr v9, v10

    .line 340
    .restart local v9    # "h":F
    :goto_46
    const/high16 v10, 0x42700000    # 60.0f

    mul-float/2addr v10, v9

    const/high16 v11, 0x43b40000    # 360.0f

    rem-float/2addr v10, v11

    .line 341
    .end local v9    # "h":F
    .local v10, "h":F
    const/4 v9, 0x0

    cmpg-float v9, v10, v9

    if-gez v9, :cond_52

    .line 342
    add-float/2addr v10, v11

    .line 344
    :cond_52
    div-float v9, v10, v11

    return v9
.end method

.method public static blacklist getSaturation(I)F
    .registers 13
    .param p0, "argb"    # I

    .line 354
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 355
    .local v0, "r":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 356
    .local v1, "g":I
    and-int/lit16 v2, p0, 0xff

    .line 358
    .local v2, "b":I
    int-to-float v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    .line 359
    .local v3, "rf":F
    int-to-float v5, v1

    div-float/2addr v5, v4

    .line 360
    .local v5, "gf":F
    int-to-float v6, v2

    div-float/2addr v6, v4

    .line 361
    .local v6, "bf":F
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 362
    .local v4, "max":F
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 363
    .local v7, "min":F
    sub-float v8, v4, v7

    .line 365
    .local v8, "deltaMaxMin":F
    add-float v9, v4, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 366
    .local v9, "l":F
    cmpl-float v11, v4, v7

    if-nez v11, :cond_2f

    .line 368
    const/4 v10, 0x0

    .local v10, "s":F
    goto :goto_3a

    .line 371
    .end local v10    # "s":F
    :cond_2f
    mul-float/2addr v10, v9

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v11, v10

    div-float v10, v8, v11

    .line 374
    .restart local v10    # "s":F
    :goto_3a
    return v10
.end method

.method public static blacklist hsvToRgb(FFF)I
    .registers 12
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "value"    # F

    .line 270
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    .line 271
    .local v1, "h":I
    mul-float/2addr v0, p0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    .line 272
    .local v0, "f":F
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v3, p2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p1

    mul-float/2addr v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 273
    .local v3, "p":I
    mul-float v6, p2, v2

    mul-float v7, v0, p1

    sub-float v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    float-to-int v6, v6

    .line 274
    .local v6, "q":I
    mul-float v7, p2, v2

    sub-float v8, v4, v0

    mul-float/2addr v8, p1

    sub-float/2addr v4, v8

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    float-to-int v4, v7

    .line 275
    .local v4, "t":I
    mul-float/2addr v2, p2

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 276
    .local v2, "v":I
    const/high16 v5, -0x1000000

    packed-switch v1, :pswitch_data_62

    .line 290
    const/4 v5, 0x0

    return v5

    .line 288
    :pswitch_31
    shl-int/lit8 v7, v2, 0x10

    shl-int/lit8 v8, v3, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    or-int/2addr v5, v7

    return v5

    .line 286
    :pswitch_39
    shl-int/lit8 v7, v4, 0x10

    shl-int/lit8 v8, v3, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    or-int/2addr v5, v7

    return v5

    .line 284
    :pswitch_41
    shl-int/lit8 v7, v3, 0x10

    shl-int/lit8 v8, v6, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    or-int/2addr v5, v7

    return v5

    .line 282
    :pswitch_49
    shl-int/lit8 v7, v3, 0x10

    shl-int/lit8 v8, v2, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    or-int/2addr v5, v7

    return v5

    .line 280
    :pswitch_51
    shl-int/lit8 v7, v6, 0x10

    shl-int/lit8 v8, v2, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    or-int/2addr v5, v7

    return v5

    .line 278
    :pswitch_59
    shl-int/lit8 v7, v2, 0x10

    shl-int/lit8 v8, v4, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    or-int/2addr v5, v7

    return v5

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_41
        :pswitch_39
        :pswitch_31
    .end packed-switch
.end method

.method public static blacklist idFromLong(J)J
    .registers 4
    .param p0, "v"    # J

    .line 60
    const-wide v0, 0x100000000L

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static blacklist idFromNan(F)I
    .registers 3
    .param p0, "value"    # F

    .line 39
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 40
    .local v0, "b":I
    const v1, 0x3fffff

    and-int/2addr v1, v0

    return v1
.end method

.method public static blacklist idString(I)Ljava/lang/String;
    .registers 4
    .param p0, "b"    # I

    .line 83
    const v0, 0xfffff

    if-le p0, v0, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/2addr v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_25

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist idStringFromNan(F)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # F

    .line 71
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0x3fffff

    and-int/2addr v0, v1

    .line 72
    .local v0, "b":I
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist interpolateColor(IIF)I
    .registers 26
    .param p0, "c1"    # I
    .param p1, "c2"    # I
    .param p2, "t"    # F

    .line 205
    move/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_d8

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_11

    goto/16 :goto_d8

    .line 207
    :cond_11
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_18

    .line 208
    return v1

    .line 210
    :cond_18
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    .line 211
    .local v2, "a":I
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 212
    .local v3, "r":I
    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 213
    .local v4, "g":I
    and-int/lit16 v5, v0, 0xff

    .line 214
    .local v5, "b":I
    int-to-float v6, v3

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    float-to-double v8, v6

    const-wide v10, 0x400199999999999aL    # 2.2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v6, v8

    .line 215
    .local v6, "f_r":F
    int-to-float v8, v4

    div-float/2addr v8, v7

    float-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 216
    .local v8, "f_g":F
    int-to-float v9, v5

    div-float/2addr v9, v7

    float-to-double v12, v9

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v9, v12

    .line 217
    .local v9, "f_b":F
    move v12, v6

    .line 218
    .local v12, "c1fr":F
    move v13, v8

    .line 219
    .local v13, "c1fg":F
    move v14, v9

    .line 220
    .local v14, "c1fb":F
    int-to-float v15, v2

    div-float/2addr v15, v7

    .line 222
    .local v15, "c1fa":F
    move/from16 v16, v7

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v2, v7, 0xff

    .line 223
    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v3, v7, 0xff

    .line 224
    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v4, v7, 0xff

    .line 225
    and-int/lit16 v5, v1, 0xff

    .line 226
    int-to-float v7, v3

    div-float v7, v7, v16

    float-to-double v0, v7

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 227
    .end local v6    # "f_r":F
    .local v0, "f_r":F
    int-to-float v1, v4

    div-float v1, v1, v16

    float-to-double v6, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 228
    .end local v8    # "f_g":F
    .local v1, "f_g":F
    int-to-float v6, v5

    div-float v6, v6, v16

    float-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 229
    .end local v9    # "f_b":F
    .local v6, "f_b":F
    move v7, v0

    .line 230
    .local v7, "c2fr":F
    move v8, v1

    .line 231
    .local v8, "c2fg":F
    move v9, v6

    .line 232
    .local v9, "c2fb":F
    int-to-float v10, v2

    div-float v10, v10, v16

    .line 233
    .local v10, "c2fa":F
    sub-float v11, v7, v12

    mul-float v11, v11, p2

    add-float/2addr v11, v12

    .line 234
    .end local v0    # "f_r":F
    .local v11, "f_r":F
    sub-float v0, v8, v13

    mul-float v0, v0, p2

    add-float/2addr v0, v13

    .line 235
    .end local v1    # "f_g":F
    .local v0, "f_g":F
    sub-float v1, v9, v14

    mul-float v1, v1, p2

    add-float/2addr v1, v14

    .line 236
    .end local v6    # "f_b":F
    .local v1, "f_b":F
    sub-float v6, v10, v15

    mul-float v6, v6, p2

    add-float/2addr v6, v15

    .line 238
    .local v6, "f_a":F
    move/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "a":I
    .end local v3    # "r":I
    .local v17, "a":I
    .local v18, "r":I
    float-to-double v2, v11

    move/from16 v19, v4

    move/from16 v20, v5

    .end local v4    # "g":I
    .end local v5    # "b":I
    .local v19, "g":I
    .local v20, "b":I
    const-wide v4, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->clamp(I)I

    move-result v2

    .line 239
    .local v2, "outr":I
    move/from16 v21, v2

    .end local v2    # "outr":I
    .local v21, "outr":I
    float-to-double v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->clamp(I)I

    move-result v2

    .line 240
    .local v2, "outg":I
    move/from16 v22, v2

    .end local v2    # "outg":I
    .local v22, "outg":I
    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->clamp(I)I

    move-result v2

    .line 241
    .local v2, "outb":I
    mul-float v3, v6, v16

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->clamp(I)I

    move-result v3

    .line 243
    .local v3, "outa":I
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v21, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v22, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v2

    return v4

    .line 206
    .end local v0    # "f_g":F
    .end local v1    # "f_b":F
    .end local v2    # "outb":I
    .end local v3    # "outa":I
    .end local v6    # "f_a":F
    .end local v7    # "c2fr":F
    .end local v8    # "c2fg":F
    .end local v9    # "c2fb":F
    .end local v10    # "c2fa":F
    .end local v11    # "f_r":F
    .end local v12    # "c1fr":F
    .end local v13    # "c1fg":F
    .end local v14    # "c1fb":F
    .end local v15    # "c1fa":F
    .end local v17    # "a":I
    .end local v18    # "r":I
    .end local v19    # "g":I
    .end local v20    # "b":I
    .end local v21    # "outr":I
    .end local v22    # "outg":I
    :cond_d8
    :goto_d8
    return p0
.end method

.method public static blacklist isVariable(F)Z
    .registers 4
    .param p0, "v"    # F

    .line 175
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 176
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    .line 177
    .local v0, "id":I
    if-nez v0, :cond_e

    return v1

    .line 178
    :cond_e
    const/16 v2, 0x28

    if-gt v0, v2, :cond_16

    const/16 v2, 0xa

    if-ge v0, v2, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1

    .line 180
    .end local v0    # "id":I
    :cond_18
    return v1
.end method

.method public static blacklist log(Ljava/lang/String;)V
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 141
    .local v0, "s":Ljava/lang/StackTraceElement;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 143
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static blacklist logStack(Ljava/lang/String;I)V
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "n"    # I

    .line 159
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 160
    .local v0, "st":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_a
    add-int/lit8 v2, p1, 0x1

    if-ge v1, v2, :cond_59

    .line 161
    aget-object v2, v0, v1

    .line 162
    .local v2, "s":Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/String;

    new-array v4, v1, [C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "space":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 164
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    .end local v2    # "s":Ljava/lang/StackTraceElement;
    .end local v3    # "space":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 166
    .end local v1    # "i":I
    :cond_59
    return-void
.end method

.method public static blacklist longIdFromNan(F)J
    .registers 5
    .param p0, "value"    # F

    .line 50
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist toARGB(FFFF)I
    .registers 10
    .param p0, "alpha"    # F
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .line 303
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 304
    .local v1, "a":I
    mul-float v3, p1, v0

    add-float/2addr v3, v2

    float-to-int v3, v3

    .line 305
    .local v3, "r":I
    mul-float v4, p2, v0

    add-float/2addr v4, v2

    float-to-int v4, v4

    .line 306
    .local v4, "g":I
    mul-float/2addr v0, p3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 307
    .local v0, "b":I
    shl-int/lit8 v2, v1, 0x18

    shl-int/lit8 v5, v3, 0x10

    or-int/2addr v2, v5

    shl-int/lit8 v5, v4, 0x8

    or-int/2addr v2, v5

    or-int/2addr v2, v0

    return v2
.end method

.method public static blacklist trimString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "n"    # I

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_20

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, -0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 98
    :cond_20
    return-object p0
.end method
