.class public final Lcom/android/server/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist certpininstallerRemoval()Z
    .registers 2

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist consolidateBatteryChangeEvents()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist datetimeNotifications()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public greylist disableSystemCompaction()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist earlyDataManagerInit()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableOdpFeatureGuard()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist modifierShortcutManagerMultiuser()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist newBugreportKeyboardShortcut()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist optionalBackgroundInstallControl()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist pinGlobalQuota()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist pinWebview()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public greylist pkgTargetedBatteryChangedNotSticky()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist rateLimitBatteryChangedBroadcast()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public greylist traceBatteryChangedBroadcastEvent()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method
