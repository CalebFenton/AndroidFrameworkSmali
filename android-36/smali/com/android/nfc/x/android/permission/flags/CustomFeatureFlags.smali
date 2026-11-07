.class public Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/nfc/x/android/permission/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/nfc/x/android/permission/flags/FeatureFlags;",
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
    .registers 69
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/nfc/x/android/permission/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/nfc/x/android/permission/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 553
    new-instance v1, Ljava/util/HashSet;

    const-string v65, "com.android.nfc.x.android.permission.flags.wallet_role_icon_property_enabled"

    const-string v66, ""

    const-string v2, "com.android.nfc.x.android.permission.flags.allow_host_permission_dialogs_on_virtual_devices"

    const-string v3, "com.android.nfc.x.android.permission.flags.app_ops_service_handler_fix"

    const-string v4, "com.android.nfc.x.android.permission.flags.appop_access_tracking_logging_enabled"

    const-string v5, "com.android.nfc.x.android.permission.flags.appop_mode_caching_enabled"

    const-string v6, "com.android.nfc.x.android.permission.flags.check_op_overload_api_enabled"

    const-string v7, "com.android.nfc.x.android.permission.flags.check_op_validate_package"

    const-string v8, "com.android.nfc.x.android.permission.flags.delay_uid_state_changes_from_capability_updates"

    const-string v9, "com.android.nfc.x.android.permission.flags.device_aware_app_op_new_schema_enabled"

    const-string v10, "com.android.nfc.x.android.permission.flags.device_aware_permission_apis_enabled"

    const-string v11, "com.android.nfc.x.android.permission.flags.device_aware_permissions_enabled"

    const-string v12, "com.android.nfc.x.android.permission.flags.device_id_in_op_proxy_info_enabled"

    const-string v13, "com.android.nfc.x.android.permission.flags.device_policy_management_role_split_create_managed_profile_enabled"

    const-string v14, "com.android.nfc.x.android.permission.flags.dont_remove_existing_uid_states"

    const-string v15, "com.android.nfc.x.android.permission.flags.enable_aiai_proxied_text_classifiers"

    const-string v16, "com.android.nfc.x.android.permission.flags.enable_all_sqlite_appops_accesses"

    const-string v17, "com.android.nfc.x.android.permission.flags.enable_otp_in_text_classifiers"

    const-string v18, "com.android.nfc.x.android.permission.flags.enable_sqlite_appops_accesses"

    const-string v19, "com.android.nfc.x.android.permission.flags.enable_system_supervision_role_behavior"

    const-string v20, "com.android.nfc.x.android.permission.flags.enforce_default_device_id_in_my_attribution_source"

    const-string v21, "com.android.nfc.x.android.permission.flags.enhanced_confirmation_in_call_apis_enabled"

    const-string v22, "com.android.nfc.x.android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    const-string v23, "com.android.nfc.x.android.permission.flags.factory_reset_prep_permission_apis"

    const-string v24, "com.android.nfc.x.android.permission.flags.fine_power_monitor_permission"

    const-string v25, "com.android.nfc.x.android.permission.flags.finish_running_ops_for_killed_packages"

    const-string v26, "com.android.nfc.x.android.permission.flags.get_emergency_role_holder_api_enabled"

    const-string v27, "com.android.nfc.x.android.permission.flags.grant_read_blocked_numbers_to_system_ui_intelligence"

    const-string v28, "com.android.nfc.x.android.permission.flags.health_connect_backup_restore_permission_enabled"

    const-string v29, "com.android.nfc.x.android.permission.flags.ignore_process_text"

    const-string v30, "com.android.nfc.x.android.permission.flags.location_bypass_privacy_dashboard_enabled"

    const-string v31, "com.android.nfc.x.android.permission.flags.note_op_batching_enabled"

    const-string v32, "com.android.nfc.x.android.permission.flags.op_enable_mobile_data_by_user"

    const-string v33, "com.android.nfc.x.android.permission.flags.permission_request_short_circuit_enabled"

    const-string v34, "com.android.nfc.x.android.permission.flags.permission_tree_apis_deprecated"

    const-string v35, "com.android.nfc.x.android.permission.flags.ranging_permission_enabled"

    const-string v36, "com.android.nfc.x.android.permission.flags.rate_limit_batched_note_op_async_callbacks_enabled"

    const-string v37, "com.android.nfc.x.android.permission.flags.record_all_runtime_appops_sqlite"

    const-string v38, "com.android.nfc.x.android.permission.flags.replace_body_sensor_permission_enabled"

    const-string v39, "com.android.nfc.x.android.permission.flags.retail_demo_role_enabled"

    const-string v40, "com.android.nfc.x.android.permission.flags.runtime_permission_appops_mapping_enabled"

    const-string v41, "com.android.nfc.x.android.permission.flags.sensitive_content_improvements"

    const-string v42, "com.android.nfc.x.android.permission.flags.sensitive_content_metrics_bugfix"

    const-string v43, "com.android.nfc.x.android.permission.flags.sensitive_content_recents_screenshot_bugfix"

    const-string v44, "com.android.nfc.x.android.permission.flags.sensitive_notification_app_protection"

    const-string v45, "com.android.nfc.x.android.permission.flags.server_side_attribution_registration"

    const-string v46, "com.android.nfc.x.android.permission.flags.set_next_attribution_source"

    const-string v47, "com.android.nfc.x.android.permission.flags.should_register_attribution_source"

    const-string v48, "com.android.nfc.x.android.permission.flags.signature_permission_allowlist_enabled"

    const-string v49, "com.android.nfc.x.android.permission.flags.sqlite_discrete_op_event_logging_enabled"

    const-string v50, "com.android.nfc.x.android.permission.flags.supervision_role_permission_update_enabled"

    const-string v51, "com.android.nfc.x.android.permission.flags.sync_on_op_noted_api"

    const-string v52, "com.android.nfc.x.android.permission.flags.system_selection_toolbar_enabled"

    const-string v53, "com.android.nfc.x.android.permission.flags.system_server_role_controller_enabled"

    const-string v54, "com.android.nfc.x.android.permission.flags.system_vendor_intelligence_role_enabled"

    const-string v55, "com.android.nfc.x.android.permission.flags.text_classifier_choice_api_enabled"

    const-string v56, "com.android.nfc.x.android.permission.flags.unknown_call_package_install_blocking_enabled"

    const-string v57, "com.android.nfc.x.android.permission.flags.unknown_call_setting_blocked_logging_enabled"

    const-string v58, "com.android.nfc.x.android.permission.flags.updatable_text_classifier_for_otp_detection_enabled"

    const-string v59, "com.android.nfc.x.android.permission.flags.use_frozen_aware_remote_callback_list"

    const-string v60, "com.android.nfc.x.android.permission.flags.use_profile_labels_for_default_app_section_titles"

    const-string v61, "com.android.nfc.x.android.permission.flags.use_system_selection_toolbar_in_sysui"

    const-string v62, "com.android.nfc.x.android.permission.flags.voice_activation_permission_apis"

    const-string v63, "com.android.nfc.x.android.permission.flags.wallet_role_cross_user_enabled"

    const-string v64, "com.android.nfc.x.android.permission.flags.wallet_role_enabled"

    filled-new-array/range {v2 .. v66}, [Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 477
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist allowHostPermissionDialogsOnVirtualDevices()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.allow_host_permission_dialogs_on_virtual_devices"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appOpsServiceHandlerFix()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.app_ops_service_handler_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appopAccessTrackingLoggingEnabled()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.appop_access_tracking_logging_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appopModeCachingEnabled()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.appop_mode_caching_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkOpOverloadApiEnabled()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.check_op_overload_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkOpValidatePackage()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.check_op_validate_package"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist delayUidStateChangesFromCapabilityUpdates()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.delay_uid_state_changes_from_capability_updates"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwareAppOpNewSchemaEnabled()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.device_aware_app_op_new_schema_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwarePermissionApisEnabled()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.device_aware_permission_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwarePermissionsEnabled()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.device_aware_permissions_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceIdInOpProxyInfoEnabled()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.device_id_in_op_proxy_info_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist devicePolicyManagementRoleSplitCreateManagedProfileEnabled()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.device_policy_management_role_split_create_managed_profile_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dontRemoveExistingUidStates()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.dont_remove_existing_uid_states"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAiaiProxiedTextClassifiers()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.enable_aiai_proxied_text_classifiers"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAllSqliteAppopsAccesses()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.enable_all_sqlite_appops_accesses"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableOtpInTextClassifiers()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.enable_otp_in_text_classifiers"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSqliteAppopsAccesses()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.enable_sqlite_appops_accesses"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSystemSupervisionRoleBehavior()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.enable_system_supervision_role_behavior"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceDefaultDeviceIdInMyAttributionSource()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.enforce_default_device_id_in_my_attribution_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enhancedConfirmationInCallApisEnabled()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.enhanced_confirmation_in_call_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enhancedConfirmationModeApisEnabled()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist factoryResetPrepPermissionApis()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.factory_reset_prep_permission_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist finePowerMonitorPermission()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.fine_power_monitor_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist finishRunningOpsForKilledPackages()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.finish_running_ops_for_killed_packages"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getEmergencyRoleHolderApiEnabled()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.get_emergency_role_holder_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 66
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 485
    const-string v63, "com.android.nfc.x.android.permission.flags.wallet_role_enabled"

    const-string v64, "com.android.nfc.x.android.permission.flags.wallet_role_icon_property_enabled"

    const-string v1, "com.android.nfc.x.android.permission.flags.allow_host_permission_dialogs_on_virtual_devices"

    const-string v2, "com.android.nfc.x.android.permission.flags.app_ops_service_handler_fix"

    const-string v3, "com.android.nfc.x.android.permission.flags.appop_access_tracking_logging_enabled"

    const-string v4, "com.android.nfc.x.android.permission.flags.appop_mode_caching_enabled"

    const-string v5, "com.android.nfc.x.android.permission.flags.check_op_overload_api_enabled"

    const-string v6, "com.android.nfc.x.android.permission.flags.check_op_validate_package"

    const-string v7, "com.android.nfc.x.android.permission.flags.delay_uid_state_changes_from_capability_updates"

    const-string v8, "com.android.nfc.x.android.permission.flags.device_aware_app_op_new_schema_enabled"

    const-string v9, "com.android.nfc.x.android.permission.flags.device_aware_permission_apis_enabled"

    const-string v10, "com.android.nfc.x.android.permission.flags.device_aware_permissions_enabled"

    const-string v11, "com.android.nfc.x.android.permission.flags.device_id_in_op_proxy_info_enabled"

    const-string v12, "com.android.nfc.x.android.permission.flags.device_policy_management_role_split_create_managed_profile_enabled"

    const-string v13, "com.android.nfc.x.android.permission.flags.dont_remove_existing_uid_states"

    const-string v14, "com.android.nfc.x.android.permission.flags.enable_aiai_proxied_text_classifiers"

    const-string v15, "com.android.nfc.x.android.permission.flags.enable_all_sqlite_appops_accesses"

    const-string v16, "com.android.nfc.x.android.permission.flags.enable_otp_in_text_classifiers"

    const-string v17, "com.android.nfc.x.android.permission.flags.enable_sqlite_appops_accesses"

    const-string v18, "com.android.nfc.x.android.permission.flags.enable_system_supervision_role_behavior"

    const-string v19, "com.android.nfc.x.android.permission.flags.enforce_default_device_id_in_my_attribution_source"

    const-string v20, "com.android.nfc.x.android.permission.flags.enhanced_confirmation_in_call_apis_enabled"

    const-string v21, "com.android.nfc.x.android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    const-string v22, "com.android.nfc.x.android.permission.flags.factory_reset_prep_permission_apis"

    const-string v23, "com.android.nfc.x.android.permission.flags.fine_power_monitor_permission"

    const-string v24, "com.android.nfc.x.android.permission.flags.finish_running_ops_for_killed_packages"

    const-string v25, "com.android.nfc.x.android.permission.flags.get_emergency_role_holder_api_enabled"

    const-string v26, "com.android.nfc.x.android.permission.flags.grant_read_blocked_numbers_to_system_ui_intelligence"

    const-string v27, "com.android.nfc.x.android.permission.flags.health_connect_backup_restore_permission_enabled"

    const-string v28, "com.android.nfc.x.android.permission.flags.ignore_process_text"

    const-string v29, "com.android.nfc.x.android.permission.flags.location_bypass_privacy_dashboard_enabled"

    const-string v30, "com.android.nfc.x.android.permission.flags.note_op_batching_enabled"

    const-string v31, "com.android.nfc.x.android.permission.flags.op_enable_mobile_data_by_user"

    const-string v32, "com.android.nfc.x.android.permission.flags.permission_request_short_circuit_enabled"

    const-string v33, "com.android.nfc.x.android.permission.flags.permission_tree_apis_deprecated"

    const-string v34, "com.android.nfc.x.android.permission.flags.ranging_permission_enabled"

    const-string v35, "com.android.nfc.x.android.permission.flags.rate_limit_batched_note_op_async_callbacks_enabled"

    const-string v36, "com.android.nfc.x.android.permission.flags.record_all_runtime_appops_sqlite"

    const-string v37, "com.android.nfc.x.android.permission.flags.replace_body_sensor_permission_enabled"

    const-string v38, "com.android.nfc.x.android.permission.flags.retail_demo_role_enabled"

    const-string v39, "com.android.nfc.x.android.permission.flags.runtime_permission_appops_mapping_enabled"

    const-string v40, "com.android.nfc.x.android.permission.flags.sensitive_content_improvements"

    const-string v41, "com.android.nfc.x.android.permission.flags.sensitive_content_metrics_bugfix"

    const-string v42, "com.android.nfc.x.android.permission.flags.sensitive_content_recents_screenshot_bugfix"

    const-string v43, "com.android.nfc.x.android.permission.flags.sensitive_notification_app_protection"

    const-string v44, "com.android.nfc.x.android.permission.flags.server_side_attribution_registration"

    const-string v45, "com.android.nfc.x.android.permission.flags.set_next_attribution_source"

    const-string v46, "com.android.nfc.x.android.permission.flags.should_register_attribution_source"

    const-string v47, "com.android.nfc.x.android.permission.flags.signature_permission_allowlist_enabled"

    const-string v48, "com.android.nfc.x.android.permission.flags.sqlite_discrete_op_event_logging_enabled"

    const-string v49, "com.android.nfc.x.android.permission.flags.supervision_role_permission_update_enabled"

    const-string v50, "com.android.nfc.x.android.permission.flags.sync_on_op_noted_api"

    const-string v51, "com.android.nfc.x.android.permission.flags.system_selection_toolbar_enabled"

    const-string v52, "com.android.nfc.x.android.permission.flags.system_server_role_controller_enabled"

    const-string v53, "com.android.nfc.x.android.permission.flags.system_vendor_intelligence_role_enabled"

    const-string v54, "com.android.nfc.x.android.permission.flags.text_classifier_choice_api_enabled"

    const-string v55, "com.android.nfc.x.android.permission.flags.unknown_call_package_install_blocking_enabled"

    const-string v56, "com.android.nfc.x.android.permission.flags.unknown_call_setting_blocked_logging_enabled"

    const-string v57, "com.android.nfc.x.android.permission.flags.updatable_text_classifier_for_otp_detection_enabled"

    const-string v58, "com.android.nfc.x.android.permission.flags.use_frozen_aware_remote_callback_list"

    const-string v59, "com.android.nfc.x.android.permission.flags.use_profile_labels_for_default_app_section_titles"

    const-string v60, "com.android.nfc.x.android.permission.flags.use_system_selection_toolbar_in_sysui"

    const-string v61, "com.android.nfc.x.android.permission.flags.voice_activation_permission_apis"

    const-string v62, "com.android.nfc.x.android.permission.flags.wallet_role_cross_user_enabled"

    filled-new-array/range {v1 .. v64}, [Ljava/lang/String;

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
            "Lcom/android/nfc/x/android/permission/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 481
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/nfc/x/android/permission/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist grantReadBlockedNumbersToSystemUiIntelligence()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.grant_read_blocked_numbers_to_system_ui_intelligence"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist healthConnectBackupRestorePermissionEnabled()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.health_connect_backup_restore_permission_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreProcessText()Z
    .registers 3

    .line 211
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.ignore_process_text"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 469
    invoke-direct {p0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 470
    const/4 v0, 0x1

    return v0

    .line 472
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist locationBypassPrivacyDashboardEnabled()Z
    .registers 3

    .line 218
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.location_bypass_privacy_dashboard_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist noteOpBatchingEnabled()Z
    .registers 3

    .line 225
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.note_op_batching_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist opEnableMobileDataByUser()Z
    .registers 3

    .line 232
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.op_enable_mobile_data_by_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionRequestShortCircuitEnabled()Z
    .registers 3

    .line 239
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.permission_request_short_circuit_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionTreeApisDeprecated()Z
    .registers 3

    .line 246
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.permission_tree_apis_deprecated"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rangingPermissionEnabled()Z
    .registers 3

    .line 253
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.ranging_permission_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rateLimitBatchedNoteOpAsyncCallbacksEnabled()Z
    .registers 3

    .line 260
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.rate_limit_batched_note_op_async_callbacks_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist recordAllRuntimeAppopsSqlite()Z
    .registers 3

    .line 267
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.record_all_runtime_appops_sqlite"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist replaceBodySensorPermissionEnabled()Z
    .registers 3

    .line 274
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.replace_body_sensor_permission_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist retailDemoRoleEnabled()Z
    .registers 3

    .line 281
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.retail_demo_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist runtimePermissionAppopsMappingEnabled()Z
    .registers 3

    .line 288
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.runtime_permission_appops_mapping_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentImprovements()Z
    .registers 3

    .line 295
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.sensitive_content_improvements"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentMetricsBugfix()Z
    .registers 3

    .line 302
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.sensitive_content_metrics_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentRecentsScreenshotBugfix()Z
    .registers 3

    .line 309
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.sensitive_content_recents_screenshot_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveNotificationAppProtection()Z
    .registers 3

    .line 316
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.sensitive_notification_app_protection"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist serverSideAttributionRegistration()Z
    .registers 3

    .line 323
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.server_side_attribution_registration"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setNextAttributionSource()Z
    .registers 3

    .line 330
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.set_next_attribution_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldRegisterAttributionSource()Z
    .registers 3

    .line 337
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.should_register_attribution_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist signaturePermissionAllowlistEnabled()Z
    .registers 3

    .line 344
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.signature_permission_allowlist_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sqliteDiscreteOpEventLoggingEnabled()Z
    .registers 3

    .line 351
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.sqlite_discrete_op_event_logging_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supervisionRolePermissionUpdateEnabled()Z
    .registers 3

    .line 358
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.supervision_role_permission_update_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist syncOnOpNotedApi()Z
    .registers 3

    .line 365
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.sync_on_op_noted_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemSelectionToolbarEnabled()Z
    .registers 3

    .line 372
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.system_selection_toolbar_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemServerRoleControllerEnabled()Z
    .registers 3

    .line 379
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.system_server_role_controller_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemVendorIntelligenceRoleEnabled()Z
    .registers 3

    .line 386
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.system_vendor_intelligence_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist textClassifierChoiceApiEnabled()Z
    .registers 3

    .line 393
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.text_classifier_choice_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unknownCallPackageInstallBlockingEnabled()Z
    .registers 3

    .line 400
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.unknown_call_package_install_blocking_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unknownCallSettingBlockedLoggingEnabled()Z
    .registers 3

    .line 407
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.unknown_call_setting_blocked_logging_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updatableTextClassifierForOtpDetectionEnabled()Z
    .registers 3

    .line 414
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.updatable_text_classifier_for_otp_detection_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useFrozenAwareRemoteCallbackList()Z
    .registers 3

    .line 421
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.use_frozen_aware_remote_callback_list"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useProfileLabelsForDefaultAppSectionTitles()Z
    .registers 3

    .line 428
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.use_profile_labels_for_default_app_section_titles"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useSystemSelectionToolbarInSysui()Z
    .registers 3

    .line 435
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.use_system_selection_toolbar_in_sysui"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist voiceActivationPermissionApis()Z
    .registers 3

    .line 442
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.voice_activation_permission_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleCrossUserEnabled()Z
    .registers 3

    .line 449
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.wallet_role_cross_user_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleEnabled()Z
    .registers 3

    .line 456
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.wallet_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleIconPropertyEnabled()Z
    .registers 3

    .line 463
    new-instance v0, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.nfc.x.android.permission.flags.wallet_role_icon_property_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/x/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
