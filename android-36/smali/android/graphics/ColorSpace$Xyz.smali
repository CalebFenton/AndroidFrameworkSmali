.class final Landroid/graphics/ColorSpace$Xyz;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Xyz"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 2125
    sget-object v0, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    invoke-direct {p0, p1, v0, p2}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    .line 2126
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static greylist-max-o clamp(F)F
    .registers 3
    .param p0, "x"    # F

    .line 2160
    const/high16 v0, -0x40000000    # -2.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_7

    :goto_6
    goto :goto_f

    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_e

    goto :goto_6

    :cond_e
    move v0, p0

    :goto_f
    return v0
.end method


# virtual methods
.method public whitelist fromXyz([F)[F
    .registers 4
    .param p1, "v"    # [F

    .line 2153
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 2154
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 2155
    const/4 v0, 0x2

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 2156
    return-object p1
.end method

.method public whitelist getMaxValue(I)F
    .registers 3
    .param p1, "component"    # I

    .line 2140
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public whitelist getMinValue(I)F
    .registers 3
    .param p1, "component"    # I

    .line 2135
    const/high16 v0, -0x40000000    # -2.0f

    return v0
.end method

.method public whitelist isWideGamut()Z
    .registers 2

    .line 2130
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist toXyz([F)[F
    .registers 4
    .param p1, "v"    # [F

    .line 2145
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 2146
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 2147
    const/4 v0, 0x2

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 2148
    return-object p1
.end method
