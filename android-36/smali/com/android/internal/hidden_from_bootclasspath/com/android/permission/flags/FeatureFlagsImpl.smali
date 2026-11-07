.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist addBannersToPrivacySensitiveAppsForAaos:Z

.field private static blacklist appPermissionFragmentUsesPreferences:Z

.field private static blacklist archivingReadOnly:Z

.field private static blacklist crossUserRoleEnabled:Z

.field private static blacklist crossUserRoleUxBugfixEnabled:Z

.field private static blacklist declutteredPermissionManagerEnabled:Z

.field private static blacklist defaultAppsRecommendationEnabled:Z

.field private static blacklist enableCoarseFineLocationPromptForAaos:Z

.field private static blacklist enhancedConfirmationBackportEnabled:Z

.field private static blacklist expressiveDesignEnabled:Z

.field private static blacklist fixSafetyCenterTouchTarget:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist odadNotificationsSupported:Z

.field private static blacklist permissionTimelineAttributionLabelFix:Z

.field private static blacklist privateProfileSupported:Z

.field private static blacklist privateProfileTitleApi:Z

.field private static blacklist safetyCenterEnabledNoDeviceConfig:Z

.field private static blacklist safetyCenterIssueOnlyAffectsGroupStatus:Z

.field private static blacklist wearComposeMaterial3:Z

.field private static blacklist wearPrivacyDashboardEnabledReadOnly:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->addBannersToPrivacySensitiveAppsForAaos:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->appPermissionFragmentUsesPreferences:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->archivingReadOnly:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleEnabled:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleUxBugfixEnabled:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->declutteredPermissionManagerEnabled:Z

    .line 17
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->defaultAppsRecommendationEnabled:Z

    .line 18
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enableCoarseFineLocationPromptForAaos:Z

    .line 19
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationBackportEnabled:Z

    .line 20
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->expressiveDesignEnabled:Z

    .line 21
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->fixSafetyCenterTouchTarget:Z

    .line 22
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->odadNotificationsSupported:Z

    .line 23
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->permissionTimelineAttributionLabelFix:Z

    .line 24
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileSupported:Z

    .line 25
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileTitleApi:Z

    .line 26
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterEnabledNoDeviceConfig:Z

    .line 27
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterIssueOnlyAffectsGroupStatus:Z

    .line 28
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearComposeMaterial3:Z

    .line 29
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearPrivacyDashboardEnabledReadOnly:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 6

    .line 32
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.android.permission.flags"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 33
    .local v2, "reader":Landroid/os/flagging/AconfigPackage;
    const-string v3, "add_banners_to_privacy_sensitive_apps_for_aaos"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->addBannersToPrivacySensitiveAppsForAaos:Z

    .line 34
    const-string v3, "app_permission_fragment_uses_preferences"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->appPermissionFragmentUsesPreferences:Z

    .line 35
    const-string v3, "archiving_read_only"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->archivingReadOnly:Z

    .line 36
    const-string v3, "cross_user_role_enabled"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleEnabled:Z

    .line 37
    const-string v3, "cross_user_role_ux_bugfix_enabled"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleUxBugfixEnabled:Z

    .line 38
    const-string v3, "decluttered_permission_manager_enabled"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->declutteredPermissionManagerEnabled:Z

    .line 39
    const-string v3, "default_apps_recommendation_enabled"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->defaultAppsRecommendationEnabled:Z

    .line 40
    const-string v3, "enable_coarse_fine_location_prompt_for_aaos"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enableCoarseFineLocationPromptForAaos:Z

    .line 41
    const-string v3, "enhanced_confirmation_backport_enabled"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationBackportEnabled:Z

    .line 42
    const-string v3, "expressive_design_enabled"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->expressiveDesignEnabled:Z

    .line 43
    const-string v3, "fix_safety_center_touch_target"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->fixSafetyCenterTouchTarget:Z

    .line 44
    const-string v3, "odad_notifications_supported"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->odadNotificationsSupported:Z

    .line 45
    const-string/jumbo v3, "permission_timeline_attribution_label_fix"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->permissionTimelineAttributionLabelFix:Z

    .line 46
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileSupported:Z

    .line 47
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileTitleApi:Z

    .line 48
    const-string/jumbo v3, "safety_center_enabled_no_device_config"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterEnabledNoDeviceConfig:Z

    .line 49
    const-string/jumbo v3, "safety_center_issue_only_affects_group_status"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterIssueOnlyAffectsGroupStatus:Z

    .line 50
    const-string/jumbo v3, "wear_compose_material3"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearComposeMaterial3:Z

    .line 51
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearPrivacyDashboardEnabledReadOnly:Z
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_94} :catch_9e
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_94} :catch_95

    .end local v2    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_a6

    .line 55
    :catch_95
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/LinkageError;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 52
    .end local v2    # "e":Ljava/lang/LinkageError;
    :catch_9e
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_a6
    nop

    .line 60
    :goto_a7
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist addBannersToPrivacySensitiveAppsForAaos()Z
    .registers 2

    .line 64
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 65
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 67
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->addBannersToPrivacySensitiveAppsForAaos:Z

    return v0
.end method

.method public blacklist appPermissionFragmentUsesPreferences()Z
    .registers 2

    .line 72
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 73
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 75
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->appPermissionFragmentUsesPreferences:Z

    return v0
.end method

.method public blacklist archivingReadOnly()Z
    .registers 2

    .line 80
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 81
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 83
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->archivingReadOnly:Z

    return v0
.end method

.method public blacklist crossUserRoleEnabled()Z
    .registers 2

    .line 88
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 89
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 91
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleEnabled:Z

    return v0
.end method

.method public blacklist crossUserRoleUxBugfixEnabled()Z
    .registers 2

    .line 96
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 97
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 99
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleUxBugfixEnabled:Z

    return v0
.end method

.method public blacklist declutteredPermissionManagerEnabled()Z
    .registers 2

    .line 104
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 105
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 107
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->declutteredPermissionManagerEnabled:Z

    return v0
.end method

.method public blacklist defaultAppsRecommendationEnabled()Z
    .registers 2

    .line 112
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 113
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 115
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->defaultAppsRecommendationEnabled:Z

    return v0
.end method

.method public blacklist enableCoarseFineLocationPromptForAaos()Z
    .registers 2

    .line 120
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 121
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 123
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enableCoarseFineLocationPromptForAaos:Z

    return v0
.end method

.method public blacklist enhancedConfirmationBackportEnabled()Z
    .registers 2

    .line 128
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 129
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 131
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationBackportEnabled:Z

    return v0
.end method

.method public blacklist expressiveDesignEnabled()Z
    .registers 2

    .line 136
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 137
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 139
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->expressiveDesignEnabled:Z

    return v0
.end method

.method public blacklist fixSafetyCenterTouchTarget()Z
    .registers 2

    .line 144
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 145
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 147
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->fixSafetyCenterTouchTarget:Z

    return v0
.end method

.method public blacklist odadNotificationsSupported()Z
    .registers 2

    .line 152
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 153
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 155
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->odadNotificationsSupported:Z

    return v0
.end method

.method public blacklist permissionTimelineAttributionLabelFix()Z
    .registers 2

    .line 160
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 161
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 163
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->permissionTimelineAttributionLabelFix:Z

    return v0
.end method

.method public blacklist privateProfileSupported()Z
    .registers 2

    .line 168
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 169
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 171
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileSupported:Z

    return v0
.end method

.method public blacklist privateProfileTitleApi()Z
    .registers 2

    .line 176
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 177
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 179
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileTitleApi:Z

    return v0
.end method

.method public blacklist safetyCenterEnabledNoDeviceConfig()Z
    .registers 2

    .line 184
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 185
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 187
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterEnabledNoDeviceConfig:Z

    return v0
.end method

.method public blacklist safetyCenterIssueOnlyAffectsGroupStatus()Z
    .registers 2

    .line 192
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 193
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 195
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterIssueOnlyAffectsGroupStatus:Z

    return v0
.end method

.method public blacklist wearComposeMaterial3()Z
    .registers 2

    .line 200
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 201
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 203
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearComposeMaterial3:Z

    return v0
.end method

.method public blacklist wearPrivacyDashboardEnabledReadOnly()Z
    .registers 2

    .line 208
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 209
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 211
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearPrivacyDashboardEnabledReadOnly:Z

    return v0
.end method
