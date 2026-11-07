.class public final Landroid/server/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/server/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist allowNetworkTimeUpdateService()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist allowRemovingVpnService()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist earlySystemConfigInit()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableThemeService()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist migrateWristOrientation()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeAppIntegrityManagerService()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public greylist removeGameManagerServiceFromWear()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeTextService()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeWearableSensingServiceFromWear()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist telemetryApisService()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist wearGestureApi()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method
