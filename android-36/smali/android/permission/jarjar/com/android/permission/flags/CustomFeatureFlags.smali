.class public Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v1, Ljava/util/HashSet;

    const-string v20, "com.android.permission.flags.wear_privacy_dashboard_enabled_read_only"

    const-string v21, ""

    const-string v2, "com.android.permission.flags.add_banners_to_privacy_sensitive_apps_for_aaos"

    const-string v3, "com.android.permission.flags.app_permission_fragment_uses_preferences"

    const-string v4, "com.android.permission.flags.archiving_read_only"

    const-string v5, "com.android.permission.flags.cross_user_role_enabled"

    const-string v6, "com.android.permission.flags.cross_user_role_ux_bugfix_enabled"

    const-string v7, "com.android.permission.flags.decluttered_permission_manager_enabled"

    const-string v8, "com.android.permission.flags.default_apps_recommendation_enabled"

    const-string v9, "com.android.permission.flags.enable_coarse_fine_location_prompt_for_aaos"

    const-string v10, "com.android.permission.flags.enhanced_confirmation_backport_enabled"

    const-string v11, "com.android.permission.flags.expressive_design_enabled"

    const-string v12, "com.android.permission.flags.fix_safety_center_touch_target"

    const-string v13, "com.android.permission.flags.odad_notifications_supported"

    const-string v14, "com.android.permission.flags.permission_timeline_attribution_label_fix"

    const-string v15, "com.android.permission.flags.private_profile_supported"

    const-string v16, "com.android.permission.flags.private_profile_title_api"

    const-string v17, "com.android.permission.flags.safety_center_enabled_no_device_config"

    const-string v18, "com.android.permission.flags.safety_center_issue_only_affects_group_status"

    const-string v19, "com.android.permission.flags.wear_compose_material3"

    filled-new-array/range {v2 .. v21}, [Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist addBannersToPrivacySensitiveAppsForAaos()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.permission.flags.add_banners_to_privacy_sensitive_apps_for_aaos"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appPermissionFragmentUsesPreferences()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.permission.flags.app_permission_fragment_uses_preferences"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist archivingReadOnly()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.permission.flags.archiving_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist crossUserRoleEnabled()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.permission.flags.cross_user_role_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist crossUserRoleUxBugfixEnabled()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.permission.flags.cross_user_role_ux_bugfix_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist declutteredPermissionManagerEnabled()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.permission.flags.decluttered_permission_manager_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist defaultAppsRecommendationEnabled()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.permission.flags.default_apps_recommendation_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCoarseFineLocationPromptForAaos()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.permission.flags.enable_coarse_fine_location_prompt_for_aaos"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enhancedConfirmationBackportEnabled()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.permission.flags.enhanced_confirmation_backport_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist expressiveDesignEnabled()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.permission.flags.expressive_design_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixSafetyCenterTouchTarget()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.permission.flags.fix_safety_center_touch_target"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    const-string v18, "com.android.permission.flags.wear_compose_material3"

    const-string v19, "com.android.permission.flags.wear_privacy_dashboard_enabled_read_only"

    const-string v1, "com.android.permission.flags.add_banners_to_privacy_sensitive_apps_for_aaos"

    const-string v2, "com.android.permission.flags.app_permission_fragment_uses_preferences"

    const-string v3, "com.android.permission.flags.archiving_read_only"

    const-string v4, "com.android.permission.flags.cross_user_role_enabled"

    const-string v5, "com.android.permission.flags.cross_user_role_ux_bugfix_enabled"

    const-string v6, "com.android.permission.flags.decluttered_permission_manager_enabled"

    const-string v7, "com.android.permission.flags.default_apps_recommendation_enabled"

    const-string v8, "com.android.permission.flags.enable_coarse_fine_location_prompt_for_aaos"

    const-string v9, "com.android.permission.flags.enhanced_confirmation_backport_enabled"

    const-string v10, "com.android.permission.flags.expressive_design_enabled"

    const-string v11, "com.android.permission.flags.fix_safety_center_touch_target"

    const-string v12, "com.android.permission.flags.odad_notifications_supported"

    const-string v13, "com.android.permission.flags.permission_timeline_attribution_label_fix"

    const-string v14, "com.android.permission.flags.private_profile_supported"

    const-string v15, "com.android.permission.flags.private_profile_title_api"

    const-string v16, "com.android.permission.flags.safety_center_enabled_no_device_config"

    const-string v17, "com.android.permission.flags.safety_center_issue_only_affects_group_status"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 166
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/permission/jarjar/com/android/permission/flags/FeatureFlags;>;"
    iget-object v0, p0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 154
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 155
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist odadNotificationsSupported()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.permission.flags.odad_notifications_supported"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionTimelineAttributionLabelFix()Z
    .registers 3

    .line 106
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.permission.flags.permission_timeline_attribution_label_fix"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist privateProfileSupported()Z
    .registers 3

    .line 113
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.permission.flags.private_profile_supported"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist privateProfileTitleApi()Z
    .registers 3

    .line 120
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.permission.flags.private_profile_title_api"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist safetyCenterEnabledNoDeviceConfig()Z
    .registers 3

    .line 127
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.permission.flags.safety_center_enabled_no_device_config"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist safetyCenterIssueOnlyAffectsGroupStatus()Z
    .registers 3

    .line 134
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.permission.flags.safety_center_issue_only_affects_group_status"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wearComposeMaterial3()Z
    .registers 3

    .line 141
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.permission.flags.wear_compose_material3"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wearPrivacyDashboardEnabledReadOnly()Z
    .registers 3

    .line 148
    new-instance v0, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.permission.flags.wear_privacy_dashboard_enabled_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
