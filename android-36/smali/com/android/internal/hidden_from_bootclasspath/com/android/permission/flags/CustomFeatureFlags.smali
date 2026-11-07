.class public Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;


# instance fields
.field private blacklist mFinalizedFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;",
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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 18
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/HashSet;

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/util/Map$Entry;

    .line 190
    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "com.android.permission.flags.private_profile_supported"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 191
    const-string v4, "com.android.permission.flags.private_profile_title_api"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 192
    const-string v4, "com.android.permission.flags.wear_privacy_dashboard_enabled_read_only"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 193
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    .line 189
    invoke-static {v2}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist addBannersToPrivacySensitiveAppsForAaos()Z
    .registers 3

    .line 24
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.permission.flags.add_banners_to_privacy_sensitive_apps_for_aaos"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appPermissionFragmentUsesPreferences()Z
    .registers 3

    .line 31
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.permission.flags.app_permission_fragment_uses_preferences"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist archivingReadOnly()Z
    .registers 3

    .line 38
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.permission.flags.archiving_read_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist crossUserRoleEnabled()Z
    .registers 3

    .line 45
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.permission.flags.cross_user_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist crossUserRoleUxBugfixEnabled()Z
    .registers 3

    .line 52
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.permission.flags.cross_user_role_ux_bugfix_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist declutteredPermissionManagerEnabled()Z
    .registers 3

    .line 59
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.permission.flags.decluttered_permission_manager_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist defaultAppsRecommendationEnabled()Z
    .registers 3

    .line 66
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.permission.flags.default_apps_recommendation_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCoarseFineLocationPromptForAaos()Z
    .registers 3

    .line 73
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.permission.flags.enable_coarse_fine_location_prompt_for_aaos"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enhancedConfirmationBackportEnabled()Z
    .registers 3

    .line 80
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.permission.flags.enhanced_confirmation_backport_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist expressiveDesignEnabled()Z
    .registers 3

    .line 87
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.permission.flags.expressive_design_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixSafetyCenterTouchTarget()Z
    .registers 3

    .line 94
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.permission.flags.fix_safety_center_touch_target"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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

    .line 160
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
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 156
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagFinalized(Ljava/lang/String;)Z
    .registers 5
    .param p1, "flagName"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 199
    return v1

    .line 201
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public blacklist odadNotificationsSupported()Z
    .registers 3

    .line 101
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.permission.flags.odad_notifications_supported"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionTimelineAttributionLabelFix()Z
    .registers 3

    .line 108
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.permission.flags.permission_timeline_attribution_label_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist privateProfileSupported()Z
    .registers 3

    .line 115
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.permission.flags.private_profile_supported"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist privateProfileTitleApi()Z
    .registers 3

    .line 122
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.permission.flags.private_profile_title_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist safetyCenterEnabledNoDeviceConfig()Z
    .registers 3

    .line 129
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.permission.flags.safety_center_enabled_no_device_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist safetyCenterIssueOnlyAffectsGroupStatus()Z
    .registers 3

    .line 136
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.permission.flags.safety_center_issue_only_affects_group_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wearComposeMaterial3()Z
    .registers 3

    .line 143
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.permission.flags.wear_compose_material3"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wearPrivacyDashboardEnabledReadOnly()Z
    .registers 3

    .line 150
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.permission.flags.wear_privacy_dashboard_enabled_read_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
