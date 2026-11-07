.class public final Landroid/view/accessibility/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/view/accessibility/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist a11yCharacterInWindowApi()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist a11yExpansionStateApi()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist a11yIsRequiredApi()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist a11yIsVisitedApi()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist a11yOverlayCallbacks()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public greylist a11yQsShortcut()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist a11ySelectionApi()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist allowShortcutChooserOnLockscreen()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist brailleDisplayHid()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cleanupAccessibilityWarningDialog()Z
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public greylist collectionInfoItemCounts()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public greylist copyEventsForGestureDetection()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public greylist deprecateAccessibilityAnnouncementApis()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public greylist deprecateAniLabelForApis()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSystemPinchZoomGesture()Z
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableTypeWindowControl()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public greylist flashNotificationSystemApi()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public greylist focusRectMinSize()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public greylist forceInvertColor()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public greylist globalActionMediaPlayPause()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public greylist globalActionMenu()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public greylist granularScrolling()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public greylist indeterminateRangeInfo()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public greylist migrateEnableShortcuts()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist motionEventObserving()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist preventA11yNontoolFromInjectingIntoSensitiveViews()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public greylist preventLeakingViewrootimpl()Z
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public greylist reduceWindowContentChangedEventThrottle()Z
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public greylist removeChildHoverCheckForTouchExploration()Z
    .registers 2

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public greylist requestRectangleWithSource()Z
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public greylist restoreA11ySecureSettingsOnHsumDevice()Z
    .registers 2

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public greylist restoreA11yShortcutTargetService()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public greylist skipAccessibilityWarningDialogForTrustedServices()Z
    .registers 2

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public greylist supplementalDescription()Z
    .registers 2

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public greylist supportMultipleLabeledby()Z
    .registers 2

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public greylist supportSystemPinchZoomOptOutApis()Z
    .registers 2

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public greylist triStateChecked()Z
    .registers 2

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public greylist updateAlwaysOnA11yService()Z
    .registers 2

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public greylist warningUseDefaultDialogType()Z
    .registers 2

    .line 276
    const/4 v0, 0x1

    return v0
.end method
