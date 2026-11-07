.class public final Lcom/android/internal/policy/DesktopModeCompatUtils;
.super Ljava/lang/Object;
.source "DesktopModeCompatUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isAnyForceConsumptionFlagsEnabled()Z
    .registers 1

    .line 57
    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION_ALWAYS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION:Landroid/window/DesktopModeFlags;

    .line 58
    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 57
    :goto_14
    return v0
.end method

.method private static blacklist isConfigurationDecoupled(Landroid/content/pm/ActivityInfo;Z)Z
    .registers 4
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;
    .param p1, "optOutEdgeToEdge"    # Z

    .line 53
    const-wide/32 v0, 0x90d3a73

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static blacklist shouldExcludeCaptionFromAppBounds(Landroid/content/pm/ActivityInfo;ZZ)Z
    .registers 5
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;
    .param p1, "isResizeable"    # Z
    .param p2, "optOutEdgeToEdge"    # Z

    .line 44
    sget-object v0, Landroid/window/DesktopModeFlags;->EXCLUDE_CAPTION_FROM_APP_BOUNDS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 45
    invoke-static {}, Lcom/android/internal/policy/DesktopModeCompatUtils;->isAnyForceConsumptionFlagsEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 46
    invoke-static {p0, p2}, Lcom/android/internal/policy/DesktopModeCompatUtils;->isConfigurationDecoupled(Landroid/content/pm/ActivityInfo;Z)Z

    move-result v0

    if-nez v0, :cond_21

    if-eqz p1, :cond_1f

    .line 48
    const-wide/32 v0, 0x1720a297

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 44
    :goto_22
    return v0
.end method
