.class public final Landroid/permission/jarjar/com/android/permission/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addBannersToPrivacySensitiveAppsForAaos()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist appPermissionFragmentUsesPreferences()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist archivingReadOnly()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist crossUserRoleEnabled()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist crossUserRoleUxBugfixEnabled()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist declutteredPermissionManagerEnabled()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist defaultAppsRecommendationEnabled()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableCoarseFineLocationPromptForAaos()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enhancedConfirmationBackportEnabled()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist expressiveDesignEnabled()Z
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixSafetyCenterTouchTarget()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist odadNotificationsSupported()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist permissionTimelineAttributionLabelFix()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist privateProfileSupported()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist privateProfileTitleApi()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist safetyCenterEnabledNoDeviceConfig()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist safetyCenterIssueOnlyAffectsGroupStatus()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist wearComposeMaterial3()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wearPrivacyDashboardEnabledReadOnly()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method
