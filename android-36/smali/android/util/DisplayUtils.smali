.class public Landroid/util/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 41
    const/4 v0, -0x1

    .line 42
    .local v0, "index":I
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_23

    .line 45
    :cond_a
    const v1, 0x1070054

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "ids":[Ljava/lang/String;
    array-length v2, v1

    .line 47
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v2, :cond_22

    .line 48
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 49
    move v0, v3

    .line 50
    goto :goto_22

    .line 47
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 53
    .end local v3    # "i":I
    :cond_22
    :goto_22
    return v0

    .line 43
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "size":I
    :cond_23
    :goto_23
    return v0
.end method

.method public static blacklist getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;
    .registers 7
    .param p0, "modes"    # [Landroid/view/Display$Mode;

    .line 60
    if-eqz p0, :cond_1d

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_1d

    .line 63
    :cond_6
    const/4 v0, 0x0

    .line 64
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 65
    .local v1, "target":Landroid/view/Display$Mode;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1c

    aget-object v4, p0, v3

    .line 66
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    if-le v5, v0, :cond_19

    .line 67
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    .line 68
    move-object v1, v4

    .line 65
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 71
    :cond_1c
    return-object v1

    .line 61
    .end local v0    # "maxWidth":I
    .end local v1    # "target":Landroid/view/Display$Mode;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getPhysicalPixelDisplaySizeRatio(IIII)F
    .registers 7
    .param p0, "physicalWidth"    # I
    .param p1, "physicalHeight"    # I
    .param p2, "currentWidth"    # I
    .param p3, "currentHeight"    # I

    .line 79
    if-ne p0, p2, :cond_7

    if-ne p1, p3, :cond_7

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 82
    :cond_7
    int-to-float v0, p2

    int-to-float v1, p0

    div-float/2addr v0, v1

    .line 83
    .local v0, "widthRatio":F
    int-to-float v1, p3

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 84
    .local v1, "heightRatio":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method
