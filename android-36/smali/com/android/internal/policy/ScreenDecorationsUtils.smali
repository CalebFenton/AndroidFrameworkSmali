.class public Lcom/android/internal/policy/ScreenDecorationsUtils;
.super Ljava/lang/Object;
.source "ScreenDecorationsUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getPhysicalPixelDisplaySizeRatio(Landroid/content/Context;)F
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 85
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 86
    iget-object v1, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 87
    invoke-static {v1}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v1

    .line 88
    .local v1, "maxDisplayMode":Landroid/view/Display$Mode;
    if-nez v1, :cond_17

    .line 89
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 91
    :cond_17
    nop

    .line 92
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    .line 93
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v5

    .line 91
    invoke-static {v2, v3, v4, v5}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result v2

    return v2
.end method

.method public static blacklist getWindowCornerRadius(Landroid/content/Context;)F
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 46
    return v2

    .line 49
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    .line 52
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_18

    .line 53
    return v2

    .line 55
    :cond_18
    invoke-virtual {v1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "displayUniqueId":Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/view/RoundedCorners;->getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    .line 58
    invoke-static {v0, v3}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 60
    .local v4, "defaultRadius":F
    invoke-static {v0, v3}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    .line 61
    invoke-static {v0, v3}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusTopAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 62
    .local v5, "topRadius":F
    cmpl-float v6, v5, v2

    if-nez v6, :cond_35

    .line 63
    move v5, v4

    .line 65
    :cond_35
    invoke-static {v0, v3}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v6

    .line 66
    invoke-static {v0, v3}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusBottomAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 67
    .local v6, "bottomRadius":F
    cmpl-float v2, v6, v2

    if-nez v2, :cond_44

    .line 68
    move v6, v4

    .line 72
    :cond_44
    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getPhysicalPixelDisplaySizeRatio(Landroid/content/Context;)F

    move-result v2

    .line 73
    .local v2, "scale":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_50

    .line 74
    mul-float/2addr v5, v2

    .line 75
    mul-float/2addr v6, v2

    .line 80
    :cond_50
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    return v7
.end method

.method public static blacklist supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 100
    const v0, 0x1110270

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
