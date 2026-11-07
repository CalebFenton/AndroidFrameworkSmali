.class public final Landroid/service/dreams/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/service/dreams/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist allowDreamWhenPostured()Z
    .registers 2

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cleanupDreamSettingsOnUninstall()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist dismissDreamOnKeyguardDismiss()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist dreamHandlesBeingObscured()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist dreamHandlesConfirmKeys()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist dreamOverlayHost()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public greylist dreamWakeRedirect()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist dreamsV2()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist publishPreviewStateToOverlay()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public greylist startAndStopDozingInBackground()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method
