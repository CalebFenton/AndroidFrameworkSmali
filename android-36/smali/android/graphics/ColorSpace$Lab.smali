.class final Landroid/graphics/ColorSpace$Lab;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Lab"
.end annotation


# static fields
.field private static final greylist-max-o A:F = 0.008856452f

.field private static final greylist-max-o B:F = 7.787037f

.field private static final greylist-max-o C:F = 0.13793103f

.field private static final greylist-max-o D:F = 0.20689656f


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 2176
    sget-object v0, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    invoke-direct {p0, p1, v0, p2}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    .line 2177
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist fromXyz([F)[F
    .registers 16
    .param p1, "v"    # [F

    .line 2216
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v2

    aget v2, v2, v0

    div-float/2addr v1, v2

    .line 2217
    .local v1, "X":F
    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v4

    aget v4, v4, v2

    div-float/2addr v3, v4

    .line 2218
    .local v3, "Y":F
    const/4 v4, 0x2

    aget v5, p1, v4

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v6

    aget v6, v6, v4

    div-float/2addr v5, v6

    .line 2220
    .local v5, "Z":F
    const v6, 0x3c111aa7

    cmpl-float v7, v1, v6

    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    const v10, 0x3e0d3dcb

    const v11, 0x40f92f68

    if-lez v7, :cond_37

    float-to-double v12, v1

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v7, v12

    goto :goto_3a

    :cond_37
    mul-float v7, v1, v11

    add-float/2addr v7, v10

    .line 2221
    .local v7, "fx":F
    :goto_3a
    cmpl-float v12, v3, v6

    if-lez v12, :cond_45

    float-to-double v12, v3

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    goto :goto_48

    :cond_45
    mul-float v12, v3, v11

    add-float/2addr v12, v10

    .line 2222
    .local v12, "fy":F
    :goto_48
    cmpl-float v6, v5, v6

    if-lez v6, :cond_53

    float-to-double v10, v5

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v6, v8

    goto :goto_56

    :cond_53
    mul-float/2addr v11, v5

    add-float v6, v11, v10

    .line 2224
    .local v6, "fz":F
    :goto_56
    const/high16 v8, 0x42e80000    # 116.0f

    mul-float/2addr v8, v12

    const/high16 v9, 0x41800000    # 16.0f

    sub-float/2addr v8, v9

    .line 2225
    .local v8, "L":F
    const/high16 v9, 0x43fa0000    # 500.0f

    sub-float v10, v7, v12

    mul-float/2addr v10, v9

    .line 2226
    .local v10, "a":F
    const/high16 v9, 0x43480000    # 200.0f

    sub-float v11, v12, v6

    mul-float/2addr v11, v9

    .line 2228
    .local v11, "b":F
    const/4 v9, 0x0

    const/high16 v13, 0x42c80000    # 100.0f

    invoke-static {v8, v9, v13}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v9

    aput v9, p1, v0

    .line 2229
    const/high16 v0, -0x3d000000    # -128.0f

    const/high16 v9, 0x43000000    # 128.0f

    invoke-static {v10, v0, v9}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v13

    aput v13, p1, v2

    .line 2230
    invoke-static {v11, v0, v9}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v0

    aput v0, p1, v4

    .line 2232
    return-object p1
.end method

.method public whitelist getMaxValue(I)F
    .registers 3
    .param p1, "component"    # I

    .line 2191
    if-nez p1, :cond_5

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_7

    :cond_5
    const/high16 v0, 0x43000000    # 128.0f

    :goto_7
    return v0
.end method

.method public whitelist getMinValue(I)F
    .registers 3
    .param p1, "component"    # I

    .line 2186
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    const/high16 v0, -0x3d000000    # -128.0f

    :goto_6
    return v0
.end method

.method public whitelist isWideGamut()Z
    .registers 2

    .line 2181
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist toXyz([F)[F
    .registers 13
    .param p1, "v"    # [F

    .line 2196
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v1, v2, v3}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 2197
    const/4 v1, 0x1

    aget v2, p1, v1

    const/high16 v3, -0x3d000000    # -128.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-static {v2, v3, v4}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 2198
    const/4 v2, 0x2

    aget v5, p1, v2

    invoke-static {v5, v3, v4}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v3

    aput v3, p1, v2

    .line 2200
    aget v3, p1, v0

    const/high16 v4, 0x41800000    # 16.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x42e80000    # 116.0f

    div-float/2addr v3, v4

    .line 2201
    .local v3, "fy":F
    aget v4, p1, v1

    const v5, 0x3b03126f    # 0.002f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    .line 2202
    .local v4, "fx":F
    aget v5, p1, v2

    const v6, 0x3ba3d70a    # 0.005f

    mul-float/2addr v5, v6

    sub-float v5, v3, v5

    .line 2203
    .local v5, "fz":F
    const v6, 0x3e53dcb1

    cmpl-float v7, v4, v6

    const v8, 0x3e0d3dcb

    const v9, 0x3e038027

    if-lez v7, :cond_4a

    mul-float v7, v4, v4

    mul-float/2addr v7, v4

    goto :goto_4d

    :cond_4a
    sub-float v7, v4, v8

    mul-float/2addr v7, v9

    .line 2204
    .local v7, "X":F
    :goto_4d
    cmpl-float v10, v3, v6

    if-lez v10, :cond_55

    mul-float v10, v3, v3

    mul-float/2addr v10, v3

    goto :goto_58

    :cond_55
    sub-float v10, v3, v8

    mul-float/2addr v10, v9

    .line 2205
    .local v10, "Y":F
    :goto_58
    cmpl-float v6, v5, v6

    if-lez v6, :cond_60

    mul-float v6, v5, v5

    mul-float/2addr v6, v5

    goto :goto_63

    :cond_60
    sub-float v6, v5, v8

    mul-float/2addr v6, v9

    .line 2207
    .local v6, "Z":F
    :goto_63
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v8

    aget v8, v8, v0

    mul-float/2addr v8, v7

    aput v8, p1, v0

    .line 2208
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v0

    aget v0, v0, v1

    mul-float/2addr v0, v10

    aput v0, p1, v1

    .line 2209
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v0

    aget v0, v0, v2

    mul-float/2addr v0, v6

    aput v0, p1, v2

    .line 2211
    return-object p1
.end method
