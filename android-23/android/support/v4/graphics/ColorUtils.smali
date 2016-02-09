.class public Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static HSLToColor([F)I
    .locals 12
    .param p0, "hsl"    # [F

    #@0
    .prologue
    .line 226
    const/4 v10, 0x0

    #@1
    aget v3, p0, v10

    #@3
    .line 227
    .local v3, "h":F
    const/4 v10, 0x1

    #@4
    aget v8, p0, v10

    #@6
    .line 228
    .local v8, "s":F
    const/4 v10, 0x2

    #@7
    aget v5, p0, v10

    #@9
    .line 230
    .local v5, "l":F
    const/high16 v10, 0x40000000    # 2.0f

    #@b
    mul-float/2addr v10, v5

    #@c
    const/high16 v11, 0x3f800000    # 1.0f

    #@e
    sub-float/2addr v10, v11

    #@f
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    #@12
    move-result v10

    #@13
    const/high16 v11, 0x3f800000    # 1.0f

    #@15
    sub-float v10, v11, v10

    #@17
    mul-float v1, v10, v8

    #@19
    .line 231
    .local v1, "c":F
    const/high16 v10, 0x3f000000    # 0.5f

    #@1b
    mul-float/2addr v10, v1

    #@1c
    sub-float v6, v5, v10

    #@1e
    .line 232
    .local v6, "m":F
    const/high16 v10, 0x42700000    # 60.0f

    #@20
    div-float v10, v3, v10

    #@22
    const/high16 v11, 0x40000000    # 2.0f

    #@24
    rem-float/2addr v10, v11

    #@25
    const/high16 v11, 0x3f800000    # 1.0f

    #@27
    sub-float/2addr v10, v11

    #@28
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    #@2b
    move-result v10

    #@2c
    const/high16 v11, 0x3f800000    # 1.0f

    #@2e
    sub-float v10, v11, v10

    #@30
    mul-float v9, v1, v10

    #@32
    .line 234
    .local v9, "x":F
    float-to-int v10, v3

    #@33
    div-int/lit8 v4, v10, 0x3c

    #@35
    .line 236
    .local v4, "hueSegment":I
    const/4 v7, 0x0

    #@36
    .local v7, "r":I
    const/4 v2, 0x0

    #@37
    .local v2, "g":I
    const/4 v0, 0x0

    #@38
    .line 238
    .local v0, "b":I
    packed-switch v4, :pswitch_data_0

    #@3b
    .line 272
    :goto_0
    const/4 v10, 0x0

    #@3c
    const/16 v11, 0xff

    #@3e
    invoke-static {v7, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    #@41
    move-result v7

    #@42
    .line 273
    const/4 v10, 0x0

    #@43
    const/16 v11, 0xff

    #@45
    invoke-static {v2, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    #@48
    move-result v2

    #@49
    .line 274
    const/4 v10, 0x0

    #@4a
    const/16 v11, 0xff

    #@4c
    invoke-static {v0, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    #@4f
    move-result v0

    #@50
    .line 276
    invoke-static {v7, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    #@53
    move-result v10

    #@54
    return v10

    #@55
    .line 240
    :pswitch_0
    add-float v10, v1, v6

    #@57
    const/high16 v11, 0x437f0000    # 255.0f

    #@59
    mul-float/2addr v10, v11

    #@5a
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@5d
    move-result v7

    #@5e
    .line 241
    add-float v10, v9, v6

    #@60
    const/high16 v11, 0x437f0000    # 255.0f

    #@62
    mul-float/2addr v10, v11

    #@63
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@66
    move-result v2

    #@67
    .line 242
    const/high16 v10, 0x437f0000    # 255.0f

    #@69
    mul-float/2addr v10, v6

    #@6a
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@6d
    move-result v0

    #@6e
    goto :goto_0

    #@6f
    .line 245
    :pswitch_1
    add-float v10, v9, v6

    #@71
    const/high16 v11, 0x437f0000    # 255.0f

    #@73
    mul-float/2addr v10, v11

    #@74
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@77
    move-result v7

    #@78
    .line 246
    add-float v10, v1, v6

    #@7a
    const/high16 v11, 0x437f0000    # 255.0f

    #@7c
    mul-float/2addr v10, v11

    #@7d
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@80
    move-result v2

    #@81
    .line 247
    const/high16 v10, 0x437f0000    # 255.0f

    #@83
    mul-float/2addr v10, v6

    #@84
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@87
    move-result v0

    #@88
    goto :goto_0

    #@89
    .line 250
    :pswitch_2
    const/high16 v10, 0x437f0000    # 255.0f

    #@8b
    mul-float/2addr v10, v6

    #@8c
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@8f
    move-result v7

    #@90
    .line 251
    add-float v10, v1, v6

    #@92
    const/high16 v11, 0x437f0000    # 255.0f

    #@94
    mul-float/2addr v10, v11

    #@95
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@98
    move-result v2

    #@99
    .line 252
    add-float v10, v9, v6

    #@9b
    const/high16 v11, 0x437f0000    # 255.0f

    #@9d
    mul-float/2addr v10, v11

    #@9e
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@a1
    move-result v0

    #@a2
    goto :goto_0

    #@a3
    .line 255
    :pswitch_3
    const/high16 v10, 0x437f0000    # 255.0f

    #@a5
    mul-float/2addr v10, v6

    #@a6
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@a9
    move-result v7

    #@aa
    .line 256
    add-float v10, v9, v6

    #@ac
    const/high16 v11, 0x437f0000    # 255.0f

    #@ae
    mul-float/2addr v10, v11

    #@af
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@b2
    move-result v2

    #@b3
    .line 257
    add-float v10, v1, v6

    #@b5
    const/high16 v11, 0x437f0000    # 255.0f

    #@b7
    mul-float/2addr v10, v11

    #@b8
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@bb
    move-result v0

    #@bc
    goto/16 :goto_0

    #@be
    .line 260
    :pswitch_4
    add-float v10, v9, v6

    #@c0
    const/high16 v11, 0x437f0000    # 255.0f

    #@c2
    mul-float/2addr v10, v11

    #@c3
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@c6
    move-result v7

    #@c7
    .line 261
    const/high16 v10, 0x437f0000    # 255.0f

    #@c9
    mul-float/2addr v10, v6

    #@ca
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@cd
    move-result v2

    #@ce
    .line 262
    add-float v10, v1, v6

    #@d0
    const/high16 v11, 0x437f0000    # 255.0f

    #@d2
    mul-float/2addr v10, v11

    #@d3
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@d6
    move-result v0

    #@d7
    goto/16 :goto_0

    #@d9
    .line 266
    :pswitch_5
    add-float v10, v1, v6

    #@db
    const/high16 v11, 0x437f0000    # 255.0f

    #@dd
    mul-float/2addr v10, v11

    #@de
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@e1
    move-result v7

    #@e2
    .line 267
    const/high16 v10, 0x437f0000    # 255.0f

    #@e4
    mul-float/2addr v10, v6

    #@e5
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@e8
    move-result v2

    #@e9
    .line 268
    add-float v10, v9, v6

    #@eb
    const/high16 v11, 0x437f0000    # 255.0f

    #@ed
    mul-float/2addr v10, v11

    #@ee
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@f1
    move-result v0

    #@f2
    goto/16 :goto_0

    #@f4
    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static RGBToHSL(III[F)V
    .locals 11
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "hsl"    # [F

    #@0
    .prologue
    .line 162
    int-to-float v9, p0

    #@1
    const/high16 v10, 0x437f0000    # 255.0f

    #@3
    div-float v7, v9, v10

    #@5
    .line 163
    .local v7, "rf":F
    int-to-float v9, p1

    #@6
    const/high16 v10, 0x437f0000    # 255.0f

    #@8
    div-float v2, v9, v10

    #@a
    .line 164
    .local v2, "gf":F
    int-to-float v9, p2

    #@b
    const/high16 v10, 0x437f0000    # 255.0f

    #@d
    div-float v0, v9, v10

    #@f
    .line 166
    .local v0, "bf":F
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    #@12
    move-result v9

    #@13
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    #@16
    move-result v5

    #@17
    .line 167
    .local v5, "max":F
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    #@1a
    move-result v9

    #@1b
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    #@1e
    move-result v6

    #@1f
    .line 168
    .local v6, "min":F
    sub-float v1, v5, v6

    #@21
    .line 171
    .local v1, "deltaMaxMin":F
    add-float v9, v5, v6

    #@23
    const/high16 v10, 0x40000000    # 2.0f

    #@25
    div-float v4, v9, v10

    #@27
    .line 173
    .local v4, "l":F
    cmpl-float v9, v5, v6

    #@29
    if-nez v9, :cond_1

    #@2b
    .line 175
    const/4 v8, 0x0

    #@2c
    .local v8, "s":F
    const/4 v3, 0x0

    #@2d
    .line 188
    .local v3, "h":F
    :goto_0
    const/high16 v9, 0x42700000    # 60.0f

    #@2f
    mul-float/2addr v9, v3

    #@30
    const/high16 v10, 0x43b40000    # 360.0f

    #@32
    rem-float v3, v9, v10

    #@34
    .line 189
    const/4 v9, 0x0

    #@35
    cmpg-float v9, v3, v9

    #@37
    if-gez v9, :cond_0

    #@39
    .line 190
    const/high16 v9, 0x43b40000    # 360.0f

    #@3b
    add-float/2addr v3, v9

    #@3c
    .line 193
    :cond_0
    const/4 v9, 0x0

    #@3d
    const/high16 v10, 0x43b40000    # 360.0f

    #@3f
    invoke-static {v3, v9, v10}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    #@42
    move-result v9

    #@43
    const/4 v10, 0x0

    #@44
    aput v9, p3, v10

    #@46
    .line 194
    const/4 v9, 0x0

    #@47
    const/high16 v10, 0x3f800000    # 1.0f

    #@49
    invoke-static {v8, v9, v10}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    #@4c
    move-result v9

    #@4d
    const/4 v10, 0x1

    #@4e
    aput v9, p3, v10

    #@50
    .line 195
    const/4 v9, 0x0

    #@51
    const/high16 v10, 0x3f800000    # 1.0f

    #@53
    invoke-static {v4, v9, v10}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    #@56
    move-result v9

    #@57
    const/4 v10, 0x2

    #@58
    aput v9, p3, v10

    #@5a
    .line 161
    return-void

    #@5b
    .line 177
    .end local v3    # "h":F
    .end local v8    # "s":F
    :cond_1
    cmpl-float v9, v5, v7

    #@5d
    if-nez v9, :cond_2

    #@5f
    .line 178
    sub-float v9, v2, v0

    #@61
    div-float/2addr v9, v1

    #@62
    const/high16 v10, 0x40c00000    # 6.0f

    #@64
    rem-float v3, v9, v10

    #@66
    .line 185
    .restart local v3    # "h":F
    :goto_1
    const/high16 v9, 0x40000000    # 2.0f

    #@68
    mul-float/2addr v9, v4

    #@69
    const/high16 v10, 0x3f800000    # 1.0f

    #@6b
    sub-float/2addr v9, v10

    #@6c
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    #@6f
    move-result v9

    #@70
    const/high16 v10, 0x3f800000    # 1.0f

    #@72
    sub-float v9, v10, v9

    #@74
    div-float v8, v1, v9

    #@76
    .restart local v8    # "s":F
    goto :goto_0

    #@77
    .line 179
    .end local v3    # "h":F
    .end local v8    # "s":F
    :cond_2
    cmpl-float v9, v5, v2

    #@79
    if-nez v9, :cond_3

    #@7b
    .line 180
    sub-float v9, v0, v7

    #@7d
    div-float/2addr v9, v1

    #@7e
    const/high16 v10, 0x40000000    # 2.0f

    #@80
    add-float v3, v9, v10

    #@82
    .restart local v3    # "h":F
    goto :goto_1

    #@83
    .line 182
    .end local v3    # "h":F
    :cond_3
    sub-float v9, v7, v2

    #@85
    div-float/2addr v9, v1

    #@86
    const/high16 v10, 0x40800000    # 4.0f

    #@88
    add-float v3, v9, v10

    #@8a
    .restart local v3    # "h":F
    goto :goto_1
.end method

.method public static calculateContrast(II)D
    .locals 8
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    #@0
    .prologue
    const/16 v5, 0xff

    #@2
    const-wide v6, 0x3fa999999999999aL    # 0.05

    #@7
    .line 84
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@a
    move-result v4

    #@b
    if-eq v4, v5, :cond_0

    #@d
    .line 85
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v5, "background can not be translucent"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 87
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@19
    move-result v4

    #@1a
    if-ge v4, v5, :cond_1

    #@1c
    .line 89
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    #@1f
    move-result p0

    #@20
    .line 92
    :cond_1
    invoke-static {p0}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    #@23
    move-result-wide v4

    #@24
    add-double v0, v4, v6

    #@26
    .line 93
    .local v0, "luminance1":D
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    #@29
    move-result-wide v4

    #@2a
    add-double v2, v4, v6

    #@2c
    .line 96
    .local v2, "luminance2":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    #@2f
    move-result-wide v4

    #@30
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    #@33
    move-result-wide v6

    #@34
    div-double/2addr v4, v6

    #@35
    return-wide v4
.end method

.method public static calculateLuminance(I)D
    .locals 10
    .param p0, "color"    # I

    #@0
    .prologue
    .line 64
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@3
    move-result v6

    #@4
    int-to-double v6, v6

    #@5
    const-wide v8, 0x406fe00000000000L    # 255.0

    #@a
    div-double v4, v6, v8

    #@c
    .line 65
    .local v4, "red":D
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    #@11
    cmpg-double v6, v4, v6

    #@13
    if-gez v6, :cond_0

    #@15
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    #@1a
    div-double/2addr v4, v6

    #@1b
    .line 67
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@1e
    move-result v6

    #@1f
    int-to-double v6, v6

    #@20
    const-wide v8, 0x406fe00000000000L    # 255.0

    #@25
    div-double v2, v6, v8

    #@27
    .line 68
    .local v2, "green":D
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    #@2c
    cmpg-double v6, v2, v6

    #@2e
    if-gez v6, :cond_1

    #@30
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    #@35
    div-double/2addr v2, v6

    #@36
    .line 70
    :goto_1
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@39
    move-result v6

    #@3a
    int-to-double v6, v6

    #@3b
    const-wide v8, 0x406fe00000000000L    # 255.0

    #@40
    div-double v0, v6, v8

    #@42
    .line 71
    .local v0, "blue":D
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    #@47
    cmpg-double v6, v0, v6

    #@49
    if-gez v6, :cond_2

    #@4b
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    #@50
    div-double/2addr v0, v6

    #@51
    .line 73
    :goto_2
    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    #@56
    mul-double/2addr v6, v4

    #@57
    const-wide v8, 0x3fe6e2eb1c432ca5L    # 0.7152

    #@5c
    mul-double/2addr v8, v2

    #@5d
    add-double/2addr v6, v8

    #@5e
    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    #@63
    mul-double/2addr v8, v0

    #@64
    add-double/2addr v6, v8

    #@65
    return-wide v6

    #@66
    .line 65
    .end local v0    # "blue":D
    .end local v2    # "green":D
    :cond_0
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    #@6b
    add-double/2addr v6, v4

    #@6c
    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    #@71
    div-double/2addr v6, v8

    #@72
    const-wide v8, 0x4003333333333333L    # 2.4

    #@77
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@7a
    move-result-wide v4

    #@7b
    goto :goto_0

    #@7c
    .line 68
    .restart local v2    # "green":D
    :cond_1
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    #@81
    add-double/2addr v6, v2

    #@82
    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    #@87
    div-double/2addr v6, v8

    #@88
    const-wide v8, 0x4003333333333333L    # 2.4

    #@8d
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@90
    move-result-wide v2

    #@91
    goto :goto_1

    #@92
    .line 71
    .restart local v0    # "blue":D
    :cond_2
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    #@97
    add-double/2addr v6, v0

    #@98
    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    #@9d
    div-double/2addr v6, v8

    #@9e
    const-wide v8, 0x4003333333333333L    # 2.4

    #@a3
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@a6
    move-result-wide v0

    #@a7
    goto :goto_2
.end method

.method public static calculateMinimumAlpha(IIF)I
    .locals 11
    .param p0, "foreground"    # I
    .param p1, "background"    # I
    .param p2, "minContrastRatio"    # F

    #@0
    .prologue
    const/16 v8, 0xff

    #@2
    const/16 v10, 0xa

    #@4
    .line 111
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@7
    move-result v5

    #@8
    if-eq v5, v8, :cond_0

    #@a
    .line 112
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v8, "background can not be translucent"

    #@f
    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v5

    #@13
    .line 116
    :cond_0
    invoke-static {p0, v8}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    #@16
    move-result v4

    #@17
    .line 117
    .local v4, "testForeground":I
    invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    #@1a
    move-result-wide v6

    #@1b
    .line 118
    .local v6, "testRatio":D
    float-to-double v8, p2

    #@1c
    cmpg-double v5, v6, v8

    #@1e
    if-gez v5, :cond_1

    #@20
    .line 120
    const/4 v5, -0x1

    #@21
    return v5

    #@22
    .line 124
    :cond_1
    const/4 v2, 0x0

    #@23
    .line 125
    .local v2, "numIterations":I
    const/4 v1, 0x0

    #@24
    .line 126
    .local v1, "minAlpha":I
    const/16 v0, 0xff

    #@26
    .line 128
    .local v0, "maxAlpha":I
    :goto_0
    if-gt v2, v10, :cond_3

    #@28
    .line 129
    sub-int v5, v0, v1

    #@2a
    if-le v5, v10, :cond_3

    #@2c
    .line 130
    add-int v5, v1, v0

    #@2e
    div-int/lit8 v3, v5, 0x2

    #@30
    .line 132
    .local v3, "testAlpha":I
    invoke-static {p0, v3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    #@33
    move-result v4

    #@34
    .line 133
    invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    #@37
    move-result-wide v6

    #@38
    .line 135
    float-to-double v8, p2

    #@39
    cmpg-double v5, v6, v8

    #@3b
    if-gez v5, :cond_2

    #@3d
    .line 136
    move v1, v3

    #@3e
    .line 141
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 138
    :cond_2
    move v0, v3

    #@42
    goto :goto_1

    #@43
    .line 145
    .end local v3    # "testAlpha":I
    :cond_3
    return v0
.end method

.method public static colorToHSL(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "hsl"    # [F

    #@0
    .prologue
    .line 210
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@7
    move-result v1

    #@8
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@b
    move-result v2

    #@c
    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    #@f
    .line 209
    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 2
    .param p0, "foregroundAlpha"    # I
    .param p1, "backgroundAlpha"    # I

    #@0
    .prologue
    .line 50
    rsub-int v0, p1, 0xff

    #@2
    rsub-int v1, p0, 0xff

    #@4
    mul-int/2addr v0, v1

    #@5
    div-int/lit16 v0, v0, 0xff

    #@7
    rsub-int v0, v0, 0xff

    #@9
    return v0
.end method

.method public static compositeColors(II)I
    .locals 8
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    #@0
    .prologue
    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v2

    #@4
    .line 36
    .local v2, "bgAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@7
    move-result v3

    #@8
    .line 37
    .local v3, "fgAlpha":I
    invoke-static {v3, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I

    #@b
    move-result v0

    #@c
    .line 39
    .local v0, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@f
    move-result v6

    #@10
    .line 40
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    #@13
    move-result v7

    #@14
    .line 39
    invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    #@17
    move-result v5

    #@18
    .line 41
    .local v5, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@1b
    move-result v6

    #@1c
    .line 42
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    #@1f
    move-result v7

    #@20
    .line 41
    invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    #@23
    move-result v4

    #@24
    .line 43
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@27
    move-result v6

    #@28
    .line 44
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    #@2b
    move-result v7

    #@2c
    .line 43
    invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    #@2f
    move-result v1

    #@30
    .line 46
    .local v1, "b":I
    invoke-static {v0, v5, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    #@33
    move-result v6

    #@34
    return v6
.end method

.method private static compositeComponent(IIIII)I
    .locals 3
    .param p0, "fgC"    # I
    .param p1, "fgA"    # I
    .param p2, "bgC"    # I
    .param p3, "bgA"    # I
    .param p4, "a"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 54
    if-nez p4, :cond_0

    #@3
    return v0

    #@4
    .line 55
    :cond_0
    mul-int/lit16 v0, p0, 0xff

    #@6
    mul-int/2addr v0, p1

    #@7
    mul-int v1, p2, p3

    #@9
    rsub-int v2, p1, 0xff

    #@b
    mul-int/2addr v1, v2

    #@c
    add-int/2addr v0, v1

    #@d
    mul-int/lit16 v1, p4, 0xff

    #@f
    div-int/2addr v0, v1

    #@10
    return v0
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    #@0
    .prologue
    .line 290
    cmpg-float v0, p0, p1

    #@2
    if-gez v0, :cond_0

    #@4
    .end local p1    # "low":F
    :goto_0
    return p1

    #@5
    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    #@7
    if-lez v0, :cond_1

    #@9
    move p1, p2

    #@a
    goto :goto_0

    #@b
    :cond_1
    move p1, p0

    #@c
    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 0
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    #@0
    .prologue
    .line 294
    if-ge p0, p1, :cond_0

    #@2
    .end local p1    # "low":I
    :goto_0
    return p1

    #@3
    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    #@5
    move p1, p2

    #@6
    goto :goto_0

    #@7
    :cond_1
    move p1, p0

    #@8
    goto :goto_0
.end method

.method public static setAlphaComponent(II)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 283
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0xff

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "alpha must be between 0 and 255."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 286
    :cond_1
    const v0, 0xffffff

    #@12
    and-int/2addr v0, p0

    #@13
    shl-int/lit8 v1, p1, 0x18

    #@15
    or-int/2addr v0, v1

    #@16
    return v0
.end method
