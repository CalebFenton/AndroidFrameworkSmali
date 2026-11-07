.class public Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/permission/jarjar/android/permission/flags/FeatureFlags;


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
            "Landroid/permission/jarjar/android/permission/flags/FeatureFlags;",
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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/permission/jarjar/android/permission/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 18
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/permission/jarjar/android/permission/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Ljava/util/HashSet;

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 388
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x14

    new-array v2, v2, [Ljava/util/Map$Entry;

    .line 390
    const/16 v3, 0x24

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android.permission.flags.check_op_overload_api_enabled"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 391
    const/16 v4, 0x23

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "android.permission.flags.device_aware_permission_apis_enabled"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    .line 392
    const-string v5, "android.permission.flags.device_aware_permissions_enabled"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    .line 393
    const-string v5, "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    .line 394
    const-string v5, "android.permission.flags.factory_reset_prep_permission_apis"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v2, v6

    .line 395
    const-string v5, "android.permission.flags.get_emergency_role_holder_api_enabled"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v2, v6

    .line 396
    const-string v5, "android.permission.flags.health_connect_backup_restore_permission_enabled"

    invoke-static {v5, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v2, v6

    .line 397
    const-string v5, "android.permission.flags.op_enable_mobile_data_by_user"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v2, v6

    .line 398
    const-string v5, "android.permission.flags.ranging_permission_enabled"

    invoke-static {v5, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/16 v6, 0x8

    aput-object v5, v2, v6

    .line 399
    const-string v5, "android.permission.flags.replace_body_sensor_permission_enabled"

    invoke-static {v5, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v2, v6

    .line 400
    const-string v5, "android.permission.flags.retail_demo_role_enabled"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/16 v6, 0xa

    aput-object v5, v2, v6

    .line 401
    const-string v5, "android.permission.flags.sensitive_notification_app_protection"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/16 v6, 0xb

    aput-object v5, v2, v6

    .line 402
    const-string v5, "android.permission.flags.should_register_attribution_source"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/16 v6, 0xc

    aput-object v5, v2, v6

    .line 403
    const-string v5, "android.permission.flags.sync_on_op_noted_api"

    invoke-static {v5, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/16 v6, 0xd

    aput-object v5, v2, v6

    .line 404
    const-string v5, "android.permission.flags.system_server_role_controller_enabled"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/16 v6, 0xe

    aput-object v5, v2, v6

    .line 405
    const-string v5, "android.permission.flags.system_vendor_intelligence_role_enabled"

    invoke-static {v5, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/16 v6, 0xf

    aput-object v5, v2, v6

    .line 406
    const-string v5, "android.permission.flags.text_classifier_choice_api_enabled"

    invoke-static {v5, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/16 v6, 0x10

    aput-object v5, v2, v6

    .line 407
    const-string v5, "android.permission.flags.wallet_role_enabled"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v5, 0x11

    aput-object v4, v2, v5

    .line 408
    const-string v4, "android.permission.flags.wallet_role_icon_property_enabled"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x12

    aput-object v3, v2, v4

    .line 409
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v3, 0x13

    aput-object v1, v2, v3

    .line 389
    invoke-static {v2}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist allowHostPermissionDialogsOnVirtualDevices()Z
    .registers 3

    .line 24
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.permission.flags.allow_host_permission_dialogs_on_virtual_devices"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkOpOverloadApiEnabled()Z
    .registers 3

    .line 31
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.permission.flags.check_op_overload_api_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwarePermissionApisEnabled()Z
    .registers 3

    .line 38
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.permission.flags.device_aware_permission_apis_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwarePermissionsEnabled()Z
    .registers 3

    .line 45
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.permission.flags.device_aware_permissions_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceIdInOpProxyInfoEnabled()Z
    .registers 3

    .line 52
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.permission.flags.device_id_in_op_proxy_info_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist devicePolicyManagementRoleSplitCreateManagedProfileEnabled()Z
    .registers 3

    .line 59
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.permission.flags.device_policy_management_role_split_create_managed_profile_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAiaiProxiedTextClassifiers()Z
    .registers 3

    .line 66
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.permission.flags.enable_aiai_proxied_text_classifiers"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAllSqliteAppopsAccesses()Z
    .registers 3

    .line 73
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.permission.flags.enable_all_sqlite_appops_accesses"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableOtpInTextClassifiers()Z
    .registers 3

    .line 80
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.permission.flags.enable_otp_in_text_classifiers"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSqliteAppopsAccesses()Z
    .registers 3

    .line 87
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.permission.flags.enable_sqlite_appops_accesses"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSystemSupervisionRoleBehavior()Z
    .registers 3

    .line 94
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.permission.flags.enable_system_supervision_role_behavior"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enhancedConfirmationInCallApisEnabled()Z
    .registers 3

    .line 101
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.permission.flags.enhanced_confirmation_in_call_apis_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enhancedConfirmationModeApisEnabled()Z
    .registers 3

    .line 108
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist factoryResetPrepPermissionApis()Z
    .registers 3

    .line 115
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.permission.flags.factory_reset_prep_permission_apis"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist finePowerMonitorPermission()Z
    .registers 3

    .line 122
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.permission.flags.fine_power_monitor_permission"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getEmergencyRoleHolderApiEnabled()Z
    .registers 3

    .line 129
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.permission.flags.get_emergency_role_holder_api_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 335
    const-string v43, "android.permission.flags.wallet_role_enabled"

    const-string v44, "android.permission.flags.wallet_role_icon_property_enabled"

    const-string v1, "android.permission.flags.allow_host_permission_dialogs_on_virtual_devices"

    const-string v2, "android.permission.flags.check_op_overload_api_enabled"

    const-string v3, "android.permission.flags.device_aware_permission_apis_enabled"

    const-string v4, "android.permission.flags.device_aware_permissions_enabled"

    const-string v5, "android.permission.flags.device_id_in_op_proxy_info_enabled"

    const-string v6, "android.permission.flags.device_policy_management_role_split_create_managed_profile_enabled"

    const-string v7, "android.permission.flags.enable_aiai_proxied_text_classifiers"

    const-string v8, "android.permission.flags.enable_all_sqlite_appops_accesses"

    const-string v9, "android.permission.flags.enable_otp_in_text_classifiers"

    const-string v10, "android.permission.flags.enable_sqlite_appops_accesses"

    const-string v11, "android.permission.flags.enable_system_supervision_role_behavior"

    const-string v12, "android.permission.flags.enhanced_confirmation_in_call_apis_enabled"

    const-string v13, "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    const-string v14, "android.permission.flags.factory_reset_prep_permission_apis"

    const-string v15, "android.permission.flags.fine_power_monitor_permission"

    const-string v16, "android.permission.flags.get_emergency_role_holder_api_enabled"

    const-string v17, "android.permission.flags.grant_read_blocked_numbers_to_system_ui_intelligence"

    const-string v18, "android.permission.flags.health_connect_backup_restore_permission_enabled"

    const-string v19, "android.permission.flags.location_bypass_privacy_dashboard_enabled"

    const-string v20, "android.permission.flags.note_op_batching_enabled"

    const-string v21, "android.permission.flags.op_enable_mobile_data_by_user"

    const-string v22, "android.permission.flags.permission_request_short_circuit_enabled"

    const-string v23, "android.permission.flags.permission_tree_apis_deprecated"

    const-string v24, "android.permission.flags.ranging_permission_enabled"

    const-string v25, "android.permission.flags.rate_limit_batched_note_op_async_callbacks_enabled"

    const-string v26, "android.permission.flags.record_all_runtime_appops_sqlite"

    const-string v27, "android.permission.flags.replace_body_sensor_permission_enabled"

    const-string v28, "android.permission.flags.retail_demo_role_enabled"

    const-string v29, "android.permission.flags.sensitive_notification_app_protection"

    const-string v30, "android.permission.flags.set_next_attribution_source"

    const-string v31, "android.permission.flags.should_register_attribution_source"

    const-string v32, "android.permission.flags.supervision_role_permission_update_enabled"

    const-string v33, "android.permission.flags.sync_on_op_noted_api"

    const-string v34, "android.permission.flags.system_server_role_controller_enabled"

    const-string v35, "android.permission.flags.system_vendor_intelligence_role_enabled"

    const-string v36, "android.permission.flags.text_classifier_choice_api_enabled"

    const-string v37, "android.permission.flags.unknown_call_package_install_blocking_enabled"

    const-string v38, "android.permission.flags.unknown_call_setting_blocked_logging_enabled"

    const-string v39, "android.permission.flags.updatable_text_classifier_for_otp_detection_enabled"

    const-string v40, "android.permission.flags.use_profile_labels_for_default_app_section_titles"

    const-string v41, "android.permission.flags.voice_activation_permission_apis"

    const-string v42, "android.permission.flags.wallet_role_cross_user_enabled"

    filled-new-array/range {v1 .. v44}, [Ljava/lang/String;

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
            "Landroid/permission/jarjar/android/permission/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 331
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/permission/jarjar/android/permission/flags/FeatureFlags;>;"
    iget-object v0, p0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist grantReadBlockedNumbersToSystemUiIntelligence()Z
    .registers 3

    .line 136
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.permission.flags.grant_read_blocked_numbers_to_system_ui_intelligence"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist healthConnectBackupRestorePermissionEnabled()Z
    .registers 3

    .line 143
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.permission.flags.health_connect_backup_restore_permission_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagFinalized(Ljava/lang/String;)Z
    .registers 5
    .param p1, "flagName"    # Ljava/lang/String;

    .line 414
    iget-object v0, p0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 415
    return v1

    .line 417
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

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

.method public blacklist locationBypassPrivacyDashboardEnabled()Z
    .registers 3

    .line 150
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.permission.flags.location_bypass_privacy_dashboard_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist noteOpBatchingEnabled()Z
    .registers 3

    .line 157
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.permission.flags.note_op_batching_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist opEnableMobileDataByUser()Z
    .registers 3

    .line 164
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.permission.flags.op_enable_mobile_data_by_user"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionRequestShortCircuitEnabled()Z
    .registers 3

    .line 171
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.permission.flags.permission_request_short_circuit_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionTreeApisDeprecated()Z
    .registers 3

    .line 178
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.permission.flags.permission_tree_apis_deprecated"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rangingPermissionEnabled()Z
    .registers 3

    .line 185
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.permission.flags.ranging_permission_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rateLimitBatchedNoteOpAsyncCallbacksEnabled()Z
    .registers 3

    .line 192
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.permission.flags.rate_limit_batched_note_op_async_callbacks_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist recordAllRuntimeAppopsSqlite()Z
    .registers 3

    .line 199
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.permission.flags.record_all_runtime_appops_sqlite"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist replaceBodySensorPermissionEnabled()Z
    .registers 3

    .line 206
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.permission.flags.replace_body_sensor_permission_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist retailDemoRoleEnabled()Z
    .registers 3

    .line 213
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.permission.flags.retail_demo_role_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveNotificationAppProtection()Z
    .registers 3

    .line 220
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.permission.flags.sensitive_notification_app_protection"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setNextAttributionSource()Z
    .registers 3

    .line 227
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.permission.flags.set_next_attribution_source"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldRegisterAttributionSource()Z
    .registers 3

    .line 234
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.permission.flags.should_register_attribution_source"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supervisionRolePermissionUpdateEnabled()Z
    .registers 3

    .line 241
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.permission.flags.supervision_role_permission_update_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist syncOnOpNotedApi()Z
    .registers 3

    .line 248
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.permission.flags.sync_on_op_noted_api"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemServerRoleControllerEnabled()Z
    .registers 3

    .line 255
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.permission.flags.system_server_role_controller_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemVendorIntelligenceRoleEnabled()Z
    .registers 3

    .line 262
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.permission.flags.system_vendor_intelligence_role_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist textClassifierChoiceApiEnabled()Z
    .registers 3

    .line 269
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.permission.flags.text_classifier_choice_api_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unknownCallPackageInstallBlockingEnabled()Z
    .registers 3

    .line 276
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.permission.flags.unknown_call_package_install_blocking_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unknownCallSettingBlockedLoggingEnabled()Z
    .registers 3

    .line 283
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.permission.flags.unknown_call_setting_blocked_logging_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updatableTextClassifierForOtpDetectionEnabled()Z
    .registers 3

    .line 290
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.permission.flags.updatable_text_classifier_for_otp_detection_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useProfileLabelsForDefaultAppSectionTitles()Z
    .registers 3

    .line 297
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.permission.flags.use_profile_labels_for_default_app_section_titles"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist voiceActivationPermissionApis()Z
    .registers 3

    .line 304
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.permission.flags.voice_activation_permission_apis"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleCrossUserEnabled()Z
    .registers 3

    .line 311
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.permission.flags.wallet_role_cross_user_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleEnabled()Z
    .registers 3

    .line 318
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.permission.flags.wallet_role_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleIconPropertyEnabled()Z
    .registers 3

    .line 325
    new-instance v0, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.permission.flags.wallet_role_icon_property_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/permission/jarjar/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
