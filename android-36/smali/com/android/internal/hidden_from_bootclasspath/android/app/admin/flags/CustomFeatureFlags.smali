.class public Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;",
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
    .registers 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 425
    new-instance v1, Ljava/util/HashSet;

    const-string v49, "android.app.admin.flags.user_provisioning_same_state"

    const-string v50, ""

    const-string v2, "android.app.admin.flags.active_admin_cleanup"

    const-string v3, "android.app.admin.flags.allow_querying_profile_type"

    const-string v4, "android.app.admin.flags.assist_content_user_restriction_enabled"

    const-string v5, "android.app.admin.flags.backup_connected_apps_settings"

    const-string v6, "android.app.admin.flags.backup_service_security_log_event_enabled"

    const-string v7, "android.app.admin.flags.coexistence_migration_for_supervision_enabled"

    const-string v8, "android.app.admin.flags.cross_user_suspension_enabled_ro"

    const-string v9, "android.app.admin.flags.dedicated_device_control_api_enabled"

    const-string v10, "android.app.admin.flags.default_sms_personal_app_suspension_fix_enabled"

    const-string v11, "android.app.admin.flags.device_policy_size_tracking_enabled"

    const-string v12, "android.app.admin.flags.device_theft_api_enabled"

    const-string v13, "android.app.admin.flags.device_theft_impl_enabled"

    const-string v14, "android.app.admin.flags.disallow_user_control_stopped_state_fix"

    const-string v15, "android.app.admin.flags.enable_supervision_service_sync"

    const-string v16, "android.app.admin.flags.esim_management_enabled"

    const-string v17, "android.app.admin.flags.esim_management_ux_enabled"

    const-string v18, "android.app.admin.flags.headless_device_owner_single_user_enabled"

    const-string v19, "android.app.admin.flags.headless_single_min_target_sdk"

    const-string v20, "android.app.admin.flags.internal_log_event_listener"

    const-string v21, "android.app.admin.flags.is_mte_policy_enforced"

    const-string v22, "android.app.admin.flags.is_recursive_required_app_merging_enabled"

    const-string v23, "android.app.admin.flags.lock_now_coexistence"

    const-string v24, "android.app.admin.flags.management_mode_policy_metrics"

    const-string v25, "android.app.admin.flags.onboarding_bugreport_storage_bug_fix"

    const-string v26, "android.app.admin.flags.onboarding_bugreport_v2_enabled"

    const-string v27, "android.app.admin.flags.onboarding_consentless_bugreports"

    const-string v28, "android.app.admin.flags.permission_migration_for_zero_trust_api_enabled"

    const-string v29, "android.app.admin.flags.policy_engine_migration_v2_enabled"

    const-string v30, "android.app.admin.flags.provisioning_context_parameter"

    const-string v31, "android.app.admin.flags.quiet_mode_credential_bug_fix"

    const-string v32, "android.app.admin.flags.remove_managed_esim_on_work_profile_deletion"

    const-string v33, "android.app.admin.flags.remove_managed_profile_enabled"

    const-string v34, "android.app.admin.flags.reset_password_with_token_coexistence"

    const-string v35, "android.app.admin.flags.secondary_lockscreen_api_enabled"

    const-string v36, "android.app.admin.flags.security_log_v2_enabled"

    const-string v37, "android.app.admin.flags.set_application_restrictions_coexistence"

    const-string v38, "android.app.admin.flags.set_auto_time_enabled_coexistence"

    const-string v39, "android.app.admin.flags.set_auto_time_zone_enabled_coexistence"

    const-string v40, "android.app.admin.flags.set_backup_service_enabled_coexistence"

    const-string v41, "android.app.admin.flags.set_keyguard_disabled_features_coexistence"

    const-string v42, "android.app.admin.flags.set_mte_policy_coexistence"

    const-string v43, "android.app.admin.flags.set_permission_grant_state_coexistence"

    const-string v44, "android.app.admin.flags.split_create_managed_profile_enabled"

    const-string v45, "android.app.admin.flags.suspend_packages_coexistence"

    const-string v46, "android.app.admin.flags.unmanaged_mode_migration"

    const-string v47, "android.app.admin.flags.unsuspend_not_suspended"

    const-string v48, "android.app.admin.flags.use_policy_intersection_for_permitted_input_methods"

    filled-new-array/range {v2 .. v50}, [Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 365
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist activeAdminCleanup()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.admin.flags.active_admin_cleanup"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowQueryingProfileType()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.app.admin.flags.allow_querying_profile_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist assistContentUserRestrictionEnabled()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.app.admin.flags.assist_content_user_restriction_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist backupConnectedAppsSettings()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.app.admin.flags.backup_connected_apps_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist backupServiceSecurityLogEventEnabled()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.app.admin.flags.backup_service_security_log_event_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist coexistenceMigrationForSupervisionEnabled()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.app.admin.flags.coexistence_migration_for_supervision_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist crossUserSuspensionEnabledRo()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.app.admin.flags.cross_user_suspension_enabled_ro"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dedicatedDeviceControlApiEnabled()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.app.admin.flags.dedicated_device_control_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist defaultSmsPersonalAppSuspensionFixEnabled()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.app.admin.flags.default_sms_personal_app_suspension_fix_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist devicePolicySizeTrackingEnabled()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.app.admin.flags.device_policy_size_tracking_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceTheftApiEnabled()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.app.admin.flags.device_theft_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceTheftImplEnabled()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.app.admin.flags.device_theft_impl_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disallowUserControlStoppedStateFix()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.app.admin.flags.disallow_user_control_stopped_state_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSupervisionServiceSync()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.app.admin.flags.enable_supervision_service_sync"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist esimManagementEnabled()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.app.admin.flags.esim_management_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist esimManagementUxEnabled()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.app.admin.flags.esim_management_ux_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 373
    const-string v47, "android.app.admin.flags.use_policy_intersection_for_permitted_input_methods"

    const-string v48, "android.app.admin.flags.user_provisioning_same_state"

    const-string v1, "android.app.admin.flags.active_admin_cleanup"

    const-string v2, "android.app.admin.flags.allow_querying_profile_type"

    const-string v3, "android.app.admin.flags.assist_content_user_restriction_enabled"

    const-string v4, "android.app.admin.flags.backup_connected_apps_settings"

    const-string v5, "android.app.admin.flags.backup_service_security_log_event_enabled"

    const-string v6, "android.app.admin.flags.coexistence_migration_for_supervision_enabled"

    const-string v7, "android.app.admin.flags.cross_user_suspension_enabled_ro"

    const-string v8, "android.app.admin.flags.dedicated_device_control_api_enabled"

    const-string v9, "android.app.admin.flags.default_sms_personal_app_suspension_fix_enabled"

    const-string v10, "android.app.admin.flags.device_policy_size_tracking_enabled"

    const-string v11, "android.app.admin.flags.device_theft_api_enabled"

    const-string v12, "android.app.admin.flags.device_theft_impl_enabled"

    const-string v13, "android.app.admin.flags.disallow_user_control_stopped_state_fix"

    const-string v14, "android.app.admin.flags.enable_supervision_service_sync"

    const-string v15, "android.app.admin.flags.esim_management_enabled"

    const-string v16, "android.app.admin.flags.esim_management_ux_enabled"

    const-string v17, "android.app.admin.flags.headless_device_owner_single_user_enabled"

    const-string v18, "android.app.admin.flags.headless_single_min_target_sdk"

    const-string v19, "android.app.admin.flags.internal_log_event_listener"

    const-string v20, "android.app.admin.flags.is_mte_policy_enforced"

    const-string v21, "android.app.admin.flags.is_recursive_required_app_merging_enabled"

    const-string v22, "android.app.admin.flags.lock_now_coexistence"

    const-string v23, "android.app.admin.flags.management_mode_policy_metrics"

    const-string v24, "android.app.admin.flags.onboarding_bugreport_storage_bug_fix"

    const-string v25, "android.app.admin.flags.onboarding_bugreport_v2_enabled"

    const-string v26, "android.app.admin.flags.onboarding_consentless_bugreports"

    const-string v27, "android.app.admin.flags.permission_migration_for_zero_trust_api_enabled"

    const-string v28, "android.app.admin.flags.policy_engine_migration_v2_enabled"

    const-string v29, "android.app.admin.flags.provisioning_context_parameter"

    const-string v30, "android.app.admin.flags.quiet_mode_credential_bug_fix"

    const-string v31, "android.app.admin.flags.remove_managed_esim_on_work_profile_deletion"

    const-string v32, "android.app.admin.flags.remove_managed_profile_enabled"

    const-string v33, "android.app.admin.flags.reset_password_with_token_coexistence"

    const-string v34, "android.app.admin.flags.secondary_lockscreen_api_enabled"

    const-string v35, "android.app.admin.flags.security_log_v2_enabled"

    const-string v36, "android.app.admin.flags.set_application_restrictions_coexistence"

    const-string v37, "android.app.admin.flags.set_auto_time_enabled_coexistence"

    const-string v38, "android.app.admin.flags.set_auto_time_zone_enabled_coexistence"

    const-string v39, "android.app.admin.flags.set_backup_service_enabled_coexistence"

    const-string v40, "android.app.admin.flags.set_keyguard_disabled_features_coexistence"

    const-string v41, "android.app.admin.flags.set_mte_policy_coexistence"

    const-string v42, "android.app.admin.flags.set_permission_grant_state_coexistence"

    const-string v43, "android.app.admin.flags.split_create_managed_profile_enabled"

    const-string v44, "android.app.admin.flags.suspend_packages_coexistence"

    const-string v45, "android.app.admin.flags.unmanaged_mode_migration"

    const-string v46, "android.app.admin.flags.unsuspend_not_suspended"

    filled-new-array/range {v1 .. v48}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 369
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist headlessDeviceOwnerSingleUserEnabled()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.app.admin.flags.headless_device_owner_single_user_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist headlessSingleMinTargetSdk()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.app.admin.flags.headless_single_min_target_sdk"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist internalLogEventListener()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "android.app.admin.flags.internal_log_event_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 357
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 358
    const/4 v0, 0x1

    return v0

    .line 360
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMtePolicyEnforced()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.app.admin.flags.is_mte_policy_enforced"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isRecursiveRequiredAppMergingEnabled()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.app.admin.flags.is_recursive_required_app_merging_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist lockNowCoexistence()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.app.admin.flags.lock_now_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist managementModePolicyMetrics()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.app.admin.flags.management_mode_policy_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist onboardingBugreportStorageBugFix()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.app.admin.flags.onboarding_bugreport_storage_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist onboardingBugreportV2Enabled()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.app.admin.flags.onboarding_bugreport_v2_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist onboardingConsentlessBugreports()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.app.admin.flags.onboarding_consentless_bugreports"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionMigrationForZeroTrustApiEnabled()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.app.admin.flags.permission_migration_for_zero_trust_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist policyEngineMigrationV2Enabled()Z
    .registers 3

    .line 211
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.app.admin.flags.policy_engine_migration_v2_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist provisioningContextParameter()Z
    .registers 3

    .line 218
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.app.admin.flags.provisioning_context_parameter"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist quietModeCredentialBugFix()Z
    .registers 3

    .line 225
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.app.admin.flags.quiet_mode_credential_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeManagedEsimOnWorkProfileDeletion()Z
    .registers 3

    .line 232
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.app.admin.flags.remove_managed_esim_on_work_profile_deletion"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeManagedProfileEnabled()Z
    .registers 3

    .line 239
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.app.admin.flags.remove_managed_profile_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist resetPasswordWithTokenCoexistence()Z
    .registers 3

    .line 246
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.app.admin.flags.reset_password_with_token_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist secondaryLockscreenApiEnabled()Z
    .registers 3

    .line 253
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.admin.flags.secondary_lockscreen_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist securityLogV2Enabled()Z
    .registers 3

    .line 260
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.app.admin.flags.security_log_v2_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setApplicationRestrictionsCoexistence()Z
    .registers 3

    .line 267
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.app.admin.flags.set_application_restrictions_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setAutoTimeEnabledCoexistence()Z
    .registers 3

    .line 274
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.app.admin.flags.set_auto_time_enabled_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setAutoTimeZoneEnabledCoexistence()Z
    .registers 3

    .line 281
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.app.admin.flags.set_auto_time_zone_enabled_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setBackupServiceEnabledCoexistence()Z
    .registers 3

    .line 288
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "android.app.admin.flags.set_backup_service_enabled_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setKeyguardDisabledFeaturesCoexistence()Z
    .registers 3

    .line 295
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.app.admin.flags.set_keyguard_disabled_features_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setMtePolicyCoexistence()Z
    .registers 3

    .line 302
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.app.admin.flags.set_mte_policy_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setPermissionGrantStateCoexistence()Z
    .registers 3

    .line 309
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.app.admin.flags.set_permission_grant_state_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist splitCreateManagedProfileEnabled()Z
    .registers 3

    .line 316
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.app.admin.flags.split_create_managed_profile_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist suspendPackagesCoexistence()Z
    .registers 3

    .line 323
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.app.admin.flags.suspend_packages_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unmanagedModeMigration()Z
    .registers 3

    .line 330
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.app.admin.flags.unmanaged_mode_migration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unsuspendNotSuspended()Z
    .registers 3

    .line 337
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.app.admin.flags.unsuspend_not_suspended"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist usePolicyIntersectionForPermittedInputMethods()Z
    .registers 3

    .line 344
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.app.admin.flags.use_policy_intersection_for_permitted_input_methods"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist userProvisioningSameState()Z
    .registers 3

    .line 351
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.app.admin.flags.user_provisioning_same_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
