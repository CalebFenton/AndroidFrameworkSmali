.class public Lcom/android/internal/display/RefreshRateSettingsUtils;
.super Ljava/lang/Object;
.source "RefreshRateSettingsUtils.java"


# static fields
.field public static final blacklist DEFAULT_REFRESH_RATE:F = 60.0f

.field private static final blacklist TAG:Ljava/lang/String; = "RefreshRateSettingsUtils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist findHighestRefreshRateAmongAllBuiltInDisplays(Landroid/content/Context;)F
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .line 96
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 97
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    const-string v1, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    .line 98
    .local v1, "displays":[Landroid/view/Display;
    array-length v2, v1

    if-nez v2, :cond_1b

    .line 99
    const-string v2, "RefreshRateSettingsUtils"

    const-string v3, "No valid display devices"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/high16 v2, 0x42700000    # 60.0f

    return v2

    .line 103
    :cond_1b
    const/high16 v2, 0x42700000    # 60.0f

    .line 104
    .local v2, "maxRefreshRate":F
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_20
    if-ge v5, v3, :cond_48

    aget-object v6, v1, v5

    .line 105
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2c

    goto :goto_45

    .line 106
    :cond_2c
    invoke-virtual {v6}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v7

    array-length v8, v7

    move v9, v4

    :goto_32
    if-ge v9, v8, :cond_45

    aget-object v10, v7, v9

    .line 107
    .local v10, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v10}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v11

    cmpl-float v11, v11, v2

    if-lez v11, :cond_42

    .line 108
    invoke-virtual {v10}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    .line 106
    .end local v10    # "mode":Landroid/view/Display$Mode;
    :cond_42
    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    .line 104
    .end local v6    # "display":Landroid/view/Display;
    :cond_45
    :goto_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 112
    :cond_48
    return v2
.end method

.method public static blacklist findHighestRefreshRateAmongAllDisplays(Landroid/content/Context;)F
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 70
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    const-string v1, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    .line 71
    .local v1, "displays":[Landroid/view/Display;
    array-length v2, v1

    if-nez v2, :cond_1b

    .line 72
    const-string v2, "RefreshRateSettingsUtils"

    const-string v3, "No valid display devices"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/high16 v2, 0x42700000    # 60.0f

    return v2

    .line 76
    :cond_1b
    const/high16 v2, 0x42700000    # 60.0f

    .line 77
    .local v2, "maxRefreshRate":F
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_20
    if-ge v5, v3, :cond_40

    aget-object v6, v1, v5

    .line 78
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v7

    array-length v8, v7

    move v9, v4

    :goto_2a
    if-ge v9, v8, :cond_3d

    aget-object v10, v7, v9

    .line 79
    .local v10, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v10}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v11

    cmpl-float v11, v11, v2

    if-lez v11, :cond_3a

    .line 80
    invoke-virtual {v10}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    .line 78
    .end local v10    # "mode":Landroid/view/Display$Mode;
    :cond_3a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 77
    .end local v6    # "display":Landroid/view/Display;
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 84
    :cond_40
    return v2
.end method

.method public static blacklist findHighestRefreshRateForDefaultDisplay(Landroid/content/Context;)F
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 45
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 46
    .local v2, "display":Landroid/view/Display;
    if-nez v2, :cond_19

    .line 47
    const-string v1, "RefreshRateSettingsUtils"

    const-string v3, "No valid default display device"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/high16 v1, 0x42700000    # 60.0f

    return v1

    .line 51
    :cond_19
    const/high16 v3, 0x42700000    # 60.0f

    .line 52
    .local v3, "maxRefreshRate":F
    invoke-virtual {v2}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v4

    array-length v5, v4

    :goto_20
    if-ge v1, v5, :cond_33

    aget-object v6, v4, v1

    .line 53
    .local v6, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_30

    .line 54
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    .line 52
    .end local v6    # "mode":Landroid/view/Display$Mode;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 57
    :cond_33
    return v3
.end method
