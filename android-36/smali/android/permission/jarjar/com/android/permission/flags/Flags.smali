.class public final Landroid/permission/jarjar/com/android/permission/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_BANNERS_TO_PRIVACY_SENSITIVE_APPS_FOR_AAOS:Ljava/lang/String; = "com.android.permission.flags.add_banners_to_privacy_sensitive_apps_for_aaos"

.field public static final blacklist FLAG_APP_PERMISSION_FRAGMENT_USES_PREFERENCES:Ljava/lang/String; = "com.android.permission.flags.app_permission_fragment_uses_preferences"

.field public static final blacklist FLAG_ARCHIVING_READ_ONLY:Ljava/lang/String; = "com.android.permission.flags.archiving_read_only"

.field public static final blacklist FLAG_CROSS_USER_ROLE_ENABLED:Ljava/lang/String; = "com.android.permission.flags.cross_user_role_enabled"

.field public static final blacklist FLAG_CROSS_USER_ROLE_UX_BUGFIX_ENABLED:Ljava/lang/String; = "com.android.permission.flags.cross_user_role_ux_bugfix_enabled"

.field public static final blacklist FLAG_DECLUTTERED_PERMISSION_MANAGER_ENABLED:Ljava/lang/String; = "com.android.permission.flags.decluttered_permission_manager_enabled"

.field public static final blacklist FLAG_DEFAULT_APPS_RECOMMENDATION_ENABLED:Ljava/lang/String; = "com.android.permission.flags.default_apps_recommendation_enabled"

.field public static final blacklist FLAG_ENABLE_COARSE_FINE_LOCATION_PROMPT_FOR_AAOS:Ljava/lang/String; = "com.android.permission.flags.enable_coarse_fine_location_prompt_for_aaos"

.field public static final blacklist FLAG_ENHANCED_CONFIRMATION_BACKPORT_ENABLED:Ljava/lang/String; = "com.android.permission.flags.enhanced_confirmation_backport_enabled"

.field public static final blacklist FLAG_EXPRESSIVE_DESIGN_ENABLED:Ljava/lang/String; = "com.android.permission.flags.expressive_design_enabled"

.field public static final blacklist FLAG_FIX_SAFETY_CENTER_TOUCH_TARGET:Ljava/lang/String; = "com.android.permission.flags.fix_safety_center_touch_target"

.field public static final blacklist FLAG_ODAD_NOTIFICATIONS_SUPPORTED:Ljava/lang/String; = "com.android.permission.flags.odad_notifications_supported"

.field public static final blacklist FLAG_PERMISSION_TIMELINE_ATTRIBUTION_LABEL_FIX:Ljava/lang/String; = "com.android.permission.flags.permission_timeline_attribution_label_fix"

.field public static final blacklist FLAG_PRIVATE_PROFILE_SUPPORTED:Ljava/lang/String; = "com.android.permission.flags.private_profile_supported"

.field public static final blacklist FLAG_PRIVATE_PROFILE_TITLE_API:Ljava/lang/String; = "com.android.permission.flags.private_profile_title_api"

.field public static final blacklist FLAG_SAFETY_CENTER_ENABLED_NO_DEVICE_CONFIG:Ljava/lang/String; = "com.android.permission.flags.safety_center_enabled_no_device_config"

.field public static final blacklist FLAG_SAFETY_CENTER_ISSUE_ONLY_AFFECTS_GROUP_STATUS:Ljava/lang/String; = "com.android.permission.flags.safety_center_issue_only_affects_group_status"

.field public static final blacklist FLAG_WEAR_COMPOSE_MATERIAL3:Ljava/lang/String; = "com.android.permission.flags.wear_compose_material3"

.field public static final blacklist FLAG_WEAR_PRIVACY_DASHBOARD_ENABLED_READ_ONLY:Ljava/lang/String; = "com.android.permission.flags.wear_privacy_dashboard_enabled_read_only"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addBannersToPrivacySensitiveAppsForAaos()Z
    .registers 1

    .line 50
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->addBannersToPrivacySensitiveAppsForAaos()Z

    move-result v0

    return v0
.end method

.method public static blacklist appPermissionFragmentUsesPreferences()Z
    .registers 1

    .line 57
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->appPermissionFragmentUsesPreferences()Z

    move-result v0

    return v0
.end method

.method public static blacklist archivingReadOnly()Z
    .registers 1

    .line 64
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->archivingReadOnly()Z

    move-result v0

    return v0
.end method

.method public static blacklist crossUserRoleEnabled()Z
    .registers 1

    .line 71
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->crossUserRoleEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist crossUserRoleUxBugfixEnabled()Z
    .registers 1

    .line 78
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->crossUserRoleUxBugfixEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist declutteredPermissionManagerEnabled()Z
    .registers 1

    .line 85
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->declutteredPermissionManagerEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist defaultAppsRecommendationEnabled()Z
    .registers 1

    .line 92
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->defaultAppsRecommendationEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableCoarseFineLocationPromptForAaos()Z
    .registers 1

    .line 99
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->enableCoarseFineLocationPromptForAaos()Z

    move-result v0

    return v0
.end method

.method public static blacklist enhancedConfirmationBackportEnabled()Z
    .registers 1

    .line 106
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->enhancedConfirmationBackportEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist expressiveDesignEnabled()Z
    .registers 1

    .line 113
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->expressiveDesignEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixSafetyCenterTouchTarget()Z
    .registers 1

    .line 120
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->fixSafetyCenterTouchTarget()Z

    move-result v0

    return v0
.end method

.method public static blacklist odadNotificationsSupported()Z
    .registers 1

    .line 127
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->odadNotificationsSupported()Z

    move-result v0

    return v0
.end method

.method public static blacklist permissionTimelineAttributionLabelFix()Z
    .registers 1

    .line 134
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->permissionTimelineAttributionLabelFix()Z

    move-result v0

    return v0
.end method

.method public static blacklist privateProfileSupported()Z
    .registers 1

    .line 141
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->privateProfileSupported()Z

    move-result v0

    return v0
.end method

.method public static blacklist privateProfileTitleApi()Z
    .registers 1

    .line 148
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->privateProfileTitleApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist safetyCenterEnabledNoDeviceConfig()Z
    .registers 1

    .line 155
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->safetyCenterEnabledNoDeviceConfig()Z

    move-result v0

    return v0
.end method

.method public static blacklist safetyCenterIssueOnlyAffectsGroupStatus()Z
    .registers 1

    .line 162
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->safetyCenterIssueOnlyAffectsGroupStatus()Z

    move-result v0

    return v0
.end method

.method public static blacklist wearComposeMaterial3()Z
    .registers 1

    .line 169
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->wearComposeMaterial3()Z

    move-result v0

    return v0
.end method

.method public static blacklist wearPrivacyDashboardEnabledReadOnly()Z
    .registers 1

    .line 176
    sget-object v0, Landroid/permission/jarjar/com/android/permission/flags/Flags;->FEATURE_FLAGS:Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;->wearPrivacyDashboardEnabledReadOnly()Z

    move-result v0

    return v0
.end method
