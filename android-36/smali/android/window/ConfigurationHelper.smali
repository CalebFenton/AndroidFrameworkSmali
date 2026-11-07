.class public Landroid/window/ConfigurationHelper;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist freeTextLayoutCachesIfNeeded(I)V
    .registers 2
    .param p0, "configDiff"    # I

    .line 45
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_7

    .line 46
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 48
    :cond_7
    return-void
.end method

.method public static blacklist isDifferentDisplay(II)Z
    .registers 3
    .param p0, "displayId"    # I
    .param p1, "newDisplayId"    # I

    .line 97
    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-eq p0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static blacklist isDisplayRotationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 6
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 122
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    .line 123
    .local v0, "origRot":I
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v1

    .line 124
    .local v1, "newRot":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_17

    if-ne v0, v3, :cond_13

    goto :goto_17

    .line 128
    :cond_13
    if-eq v0, v1, :cond_16

    const/4 v2, 0x1

    :cond_16
    return v2

    .line 126
    :cond_17
    :goto_17
    return v2
.end method

.method public static blacklist shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z
    .registers 8
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "displayChanged"    # Z
    .param p5, "configChanged"    # Ljava/lang/Boolean;

    .line 67
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 68
    return v0

    .line 72
    :cond_4
    if-eqz p4, :cond_7

    .line 73
    return v0

    .line 77
    :cond_7
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    invoke-virtual {v1, p0, p3}, Landroid/app/ResourcesManager;->isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 78
    return v0

    .line 82
    :cond_12
    invoke-static {p1, p2}, Landroid/window/ConfigurationHelper;->shouldUpdateWindowMetricsBounds(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 83
    return v0

    .line 86
    :cond_19
    invoke-static {p1, p2}, Landroid/window/ConfigurationHelper;->isDisplayRotationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 87
    return v0

    .line 89
    :cond_20
    if-nez p5, :cond_2b

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2f

    :cond_29
    const/4 v0, 0x0

    goto :goto_2f

    :cond_2b
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2f
    return v0
.end method

.method private static blacklist shouldUpdateWindowMetricsBounds(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 7
    .param p0, "currentConfig"    # Landroid/content/res/Configuration;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 111
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 112
    .local v0, "currentBounds":Landroid/graphics/Rect;
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 114
    .local v1, "newBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 115
    .local v2, "currentMaxBounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 117
    .local v3, "newMaxBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_27

    :cond_25
    const/4 v4, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v4, 0x1

    :goto_28
    return v4
.end method
