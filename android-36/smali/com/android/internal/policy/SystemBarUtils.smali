.class public final Lcom/android/internal/policy/SystemBarUtils;
.super Ljava/lang/Object;
.source "SystemBarUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDesktopViewAppHeaderHeightId()I
    .registers 1

    .line 119
    const v0, 0x1050166

    return v0
.end method

.method public static blacklist getDesktopViewAppHeaderHeightPx(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/SystemBarUtils;->getDesktopViewAppHeaderHeightId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getQuickQsOffsetHeight(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050323

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 95
    .local v0, "defaultSize":I
    invoke-static {p0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 97
    .local v1, "statusBarHeight":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public static blacklist getStatusBarHeight(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method public static blacklist getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I
    .registers 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "cutout"    # Landroid/view/DisplayCutout;

    .line 49
    const v0, 0x1050365

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 50
    .local v0, "defaultSize":I
    const/4 v1, 0x0

    if-nez p1, :cond_c

    move v2, v1

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    .line 51
    .local v2, "safeInsetTop":I
    :goto_10
    if-nez p1, :cond_13

    goto :goto_19

    :cond_13
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 54
    .local v1, "waterfallInsetTop":I
    :goto_19
    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method public static blacklist getStatusBarHeightForRotation(Landroid/content/Context;I)I
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetRot"    # I

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 63
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 64
    .local v1, "rotation":I
    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    .line 65
    .local v2, "cutout":Landroid/view/DisplayCutout;
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 66
    .local v3, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 70
    .local v4, "localWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 71
    .local v5, "localHeight":I
    if-nez v2, :cond_2f

    .line 72
    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 73
    .local v6, "insets":Landroid/graphics/Insets;
    sget-object v7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .local v7, "waterfallInsets":Landroid/graphics/Insets;
    goto :goto_42

    .line 75
    .end local v6    # "insets":Landroid/graphics/Insets;
    .end local v7    # "waterfallInsets":Landroid/graphics/Insets;
    :cond_2f
    nop

    .line 76
    invoke-virtual {v2, v4, v5, v1, p1}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object v6

    .line 77
    .local v6, "rotated":Landroid/view/DisplayCutout;
    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v7

    .line 78
    .local v7, "insets":Landroid/graphics/Insets;
    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v8

    move-object v6, v7

    move-object v7, v8

    .line 80
    .local v6, "insets":Landroid/graphics/Insets;
    .local v7, "waterfallInsets":Landroid/graphics/Insets;
    :goto_42
    nop

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050365

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 84
    .local v8, "defaultSize":I
    iget v9, v6, Landroid/graphics/Insets;->top:I

    iget v10, v7, Landroid/graphics/Insets;->top:I

    add-int/2addr v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    return v9
.end method

.method public static blacklist getTaskbarHeight(Landroid/content/res/Resources;)I
    .registers 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 104
    const v0, 0x1050373

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
