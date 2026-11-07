.class public final Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/permission/jarjar/android/permission/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist allowHostPermissionDialogsOnVirtualDevices:Z

.field private static blacklist checkOpOverloadApiEnabled:Z

.field private static blacklist deviceAwarePermissionApisEnabled:Z

.field private static blacklist deviceAwarePermissionsEnabled:Z

.field private static blacklist deviceIdInOpProxyInfoEnabled:Z

.field private static blacklist devicePolicyManagementRoleSplitCreateManagedProfileEnabled:Z

.field private static blacklist enableAiaiProxiedTextClassifiers:Z

.field private static blacklist enableAllSqliteAppopsAccesses:Z

.field private static blacklist enableOtpInTextClassifiers:Z

.field private static blacklist enableSqliteAppopsAccesses:Z

.field private static blacklist enableSystemSupervisionRoleBehavior:Z

.field private static blacklist enhancedConfirmationInCallApisEnabled:Z

.field private static blacklist enhancedConfirmationModeApisEnabled:Z

.field private static blacklist factoryResetPrepPermissionApis:Z

.field private static blacklist finePowerMonitorPermission:Z

.field private static blacklist getEmergencyRoleHolderApiEnabled:Z

.field private static blacklist grantReadBlockedNumbersToSystemUiIntelligence:Z

.field private static blacklist healthConnectBackupRestorePermissionEnabled:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist locationBypassPrivacyDashboardEnabled:Z

.field private static blacklist noteOpBatchingEnabled:Z

.field private static blacklist opEnableMobileDataByUser:Z

.field private static blacklist permissionRequestShortCircuitEnabled:Z

.field private static blacklist permissionTreeApisDeprecated:Z

.field private static blacklist rangingPermissionEnabled:Z

.field private static blacklist rateLimitBatchedNoteOpAsyncCallbacksEnabled:Z

.field private static blacklist recordAllRuntimeAppopsSqlite:Z

.field private static blacklist replaceBodySensorPermissionEnabled:Z

.field private static blacklist retailDemoRoleEnabled:Z

.field private static blacklist sensitiveNotificationAppProtection:Z

.field private static blacklist setNextAttributionSource:Z

.field private static blacklist shouldRegisterAttributionSource:Z

.field private static blacklist supervisionRolePermissionUpdateEnabled:Z

.field private static blacklist syncOnOpNotedApi:Z

.field private static blacklist systemServerRoleControllerEnabled:Z

.field private static blacklist systemVendorIntelligenceRoleEnabled:Z

.field private static blacklist textClassifierChoiceApiEnabled:Z

.field private static blacklist unknownCallPackageInstallBlockingEnabled:Z

.field private static blacklist unknownCallSettingBlockedLoggingEnabled:Z

.field private static blacklist updatableTextClassifierForOtpDetectionEnabled:Z

.field private static blacklist useProfileLabelsForDefaultAppSectionTitles:Z

.field private static blacklist voiceActivationPermissionApis:Z

.field private static blacklist walletRoleCrossUserEnabled:Z

.field private static blacklist walletRoleEnabled:Z

.field private static blacklist walletRoleIconPropertyEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->allowHostPermissionDialogsOnVirtualDevices:Z

    .line 12
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->checkOpOverloadApiEnabled:Z

    .line 13
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->deviceAwarePermissionApisEnabled:Z

    .line 14
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->deviceAwarePermissionsEnabled:Z

    .line 15
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->deviceIdInOpProxyInfoEnabled:Z

    .line 16
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->devicePolicyManagementRoleSplitCreateManagedProfileEnabled:Z

    .line 17
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableAiaiProxiedTextClassifiers:Z

    .line 18
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableAllSqliteAppopsAccesses:Z

    .line 19
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableOtpInTextClassifiers:Z

    .line 20
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableSqliteAppopsAccesses:Z

    .line 21
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableSystemSupervisionRoleBehavior:Z

    .line 22
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationInCallApisEnabled:Z

    .line 23
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationModeApisEnabled:Z

    .line 24
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->factoryResetPrepPermissionApis:Z

    .line 25
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->finePowerMonitorPermission:Z

    .line 26
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->getEmergencyRoleHolderApiEnabled:Z

    .line 27
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->grantReadBlockedNumbersToSystemUiIntelligence:Z

    .line 28
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->healthConnectBackupRestorePermissionEnabled:Z

    .line 29
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->locationBypassPrivacyDashboardEnabled:Z

    .line 30
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->noteOpBatchingEnabled:Z

    .line 31
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->opEnableMobileDataByUser:Z

    .line 32
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->permissionRequestShortCircuitEnabled:Z

    .line 33
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->permissionTreeApisDeprecated:Z

    .line 34
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->rangingPermissionEnabled:Z

    .line 35
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->rateLimitBatchedNoteOpAsyncCallbacksEnabled:Z

    .line 36
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->recordAllRuntimeAppopsSqlite:Z

    .line 37
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->replaceBodySensorPermissionEnabled:Z

    .line 38
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->retailDemoRoleEnabled:Z

    .line 39
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->sensitiveNotificationAppProtection:Z

    .line 40
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->setNextAttributionSource:Z

    .line 41
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->shouldRegisterAttributionSource:Z

    .line 42
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->supervisionRolePermissionUpdateEnabled:Z

    .line 43
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->syncOnOpNotedApi:Z

    .line 44
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->systemServerRoleControllerEnabled:Z

    .line 45
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->systemVendorIntelligenceRoleEnabled:Z

    .line 46
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->textClassifierChoiceApiEnabled:Z

    .line 47
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->unknownCallPackageInstallBlockingEnabled:Z

    .line 48
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->unknownCallSettingBlockedLoggingEnabled:Z

    .line 49
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->updatableTextClassifierForOtpDetectionEnabled:Z

    .line 50
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->useProfileLabelsForDefaultAppSectionTitles:Z

    .line 51
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->voiceActivationPermissionApis:Z

    .line 52
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->walletRoleCrossUserEnabled:Z

    .line 53
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->walletRoleEnabled:Z

    .line 54
    sput-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->walletRoleIconPropertyEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 8

    .line 57
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "android.permission.flags"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 58
    .local v2, "reader":Landroid/os/flagging/AconfigPackage;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x24

    const/4 v5, 0x0

    if-lt v3, v4, :cond_12

    move v3, v1

    goto :goto_18

    :cond_12
    const-string v3, "replace_body_sensor_permission_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_18
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->replaceBodySensorPermissionEnabled:Z

    .line 59
    const-string v3, "device_policy_management_role_split_create_managed_profile_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->devicePolicyManagementRoleSplitCreateManagedProfileEnabled:Z

    .line 60
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_28

    move v3, v1

    goto :goto_2e

    :cond_28
    const-string v3, "health_connect_backup_restore_permission_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_2e
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->healthConnectBackupRestorePermissionEnabled:Z

    .line 61
    const-string v3, "allow_host_permission_dialogs_on_virtual_devices"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->allowHostPermissionDialogsOnVirtualDevices:Z

    .line 62
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_3e

    move v3, v1

    goto :goto_44

    :cond_3e
    const-string v3, "check_op_overload_api_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_44
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->checkOpOverloadApiEnabled:Z

    .line 63
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x23

    if-lt v3, v6, :cond_4e

    move v3, v1

    goto :goto_54

    :cond_4e
    const-string v3, "device_aware_permission_apis_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_54
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->deviceAwarePermissionApisEnabled:Z

    .line 64
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_5c

    move v3, v1

    goto :goto_62

    :cond_5c
    const-string v3, "device_aware_permissions_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_62
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->deviceAwarePermissionsEnabled:Z

    .line 65
    const-string v3, "device_id_in_op_proxy_info_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->deviceIdInOpProxyInfoEnabled:Z

    .line 66
    const-string v3, "enable_aiai_proxied_text_classifiers"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableAiaiProxiedTextClassifiers:Z

    .line 67
    const-string v3, "enable_all_sqlite_appops_accesses"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableAllSqliteAppopsAccesses:Z

    .line 68
    const-string v3, "enable_otp_in_text_classifiers"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableOtpInTextClassifiers:Z

    .line 69
    const-string v3, "enable_sqlite_appops_accesses"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableSqliteAppopsAccesses:Z

    .line 70
    const-string v3, "enhanced_confirmation_in_call_apis_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationInCallApisEnabled:Z

    .line 71
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_9a

    move v3, v1

    goto :goto_a0

    :cond_9a
    const-string v3, "enhanced_confirmation_mode_apis_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_a0
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationModeApisEnabled:Z

    .line 72
    const-string v3, "fine_power_monitor_permission"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->finePowerMonitorPermission:Z

    .line 73
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_b0

    move v3, v1

    goto :goto_b6

    :cond_b0
    const-string v3, "get_emergency_role_holder_api_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_b6
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->getEmergencyRoleHolderApiEnabled:Z

    .line 74
    const-string v3, "grant_read_blocked_numbers_to_system_ui_intelligence"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->grantReadBlockedNumbersToSystemUiIntelligence:Z

    .line 75
    const-string v3, "location_bypass_privacy_dashboard_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->locationBypassPrivacyDashboardEnabled:Z

    .line 76
    const-string v3, "note_op_batching_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->noteOpBatchingEnabled:Z

    .line 77
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_d6

    move v3, v1

    goto :goto_dc

    :cond_d6
    const-string v3, "op_enable_mobile_data_by_user"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_dc
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->opEnableMobileDataByUser:Z

    .line 78
    const-string v3, "permission_request_short_circuit_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->permissionRequestShortCircuitEnabled:Z

    .line 79
    const-string v3, "permission_tree_apis_deprecated"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->permissionTreeApisDeprecated:Z

    .line 80
    const-string v3, "rate_limit_batched_note_op_async_callbacks_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->rateLimitBatchedNoteOpAsyncCallbacksEnabled:Z

    .line 81
    const-string v3, "record_all_runtime_appops_sqlite"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->recordAllRuntimeAppopsSqlite:Z

    .line 82
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_104

    move v3, v1

    goto :goto_10a

    :cond_104
    const-string v3, "retail_demo_role_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_10a
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->retailDemoRoleEnabled:Z

    .line 83
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_112

    move v3, v1

    goto :goto_118

    :cond_112
    const-string v3, "sensitive_notification_app_protection"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_118
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->sensitiveNotificationAppProtection:Z

    .line 84
    const-string v3, "set_next_attribution_source"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->setNextAttributionSource:Z

    .line 85
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_128

    move v3, v1

    goto :goto_12e

    :cond_128
    const-string v3, "should_register_attribution_source"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_12e
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->shouldRegisterAttributionSource:Z

    .line 86
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_136

    move v3, v1

    goto :goto_13c

    :cond_136
    const-string v3, "sync_on_op_noted_api"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_13c
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->syncOnOpNotedApi:Z

    .line 87
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_144

    move v3, v1

    goto :goto_14a

    :cond_144
    const-string v3, "system_server_role_controller_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_14a
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->systemServerRoleControllerEnabled:Z

    .line 88
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_152

    move v3, v1

    goto :goto_158

    :cond_152
    const-string v3, "system_vendor_intelligence_role_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_158
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->systemVendorIntelligenceRoleEnabled:Z

    .line 89
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_160

    move v3, v1

    goto :goto_166

    :cond_160
    const-string v3, "text_classifier_choice_api_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_166
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->textClassifierChoiceApiEnabled:Z

    .line 90
    const-string v3, "unknown_call_package_install_blocking_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->unknownCallPackageInstallBlockingEnabled:Z

    .line 91
    const-string v3, "unknown_call_setting_blocked_logging_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->unknownCallSettingBlockedLoggingEnabled:Z

    .line 92
    const-string v3, "updatable_text_classifier_for_otp_detection_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->updatableTextClassifierForOtpDetectionEnabled:Z

    .line 93
    const-string v3, "voice_activation_permission_apis"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->voiceActivationPermissionApis:Z

    .line 94
    const-string v3, "use_profile_labels_for_default_app_section_titles"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->useProfileLabelsForDefaultAppSectionTitles:Z

    .line 95
    const-string v3, "enable_system_supervision_role_behavior"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableSystemSupervisionRoleBehavior:Z

    .line 96
    const-string v3, "supervision_role_permission_update_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->supervisionRolePermissionUpdateEnabled:Z

    .line 97
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_1a6

    move v3, v1

    goto :goto_1ac

    :cond_1a6
    const-string v3, "ranging_permission_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_1ac
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->rangingPermissionEnabled:Z

    .line 98
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_1b4

    move v3, v1

    goto :goto_1ba

    :cond_1b4
    const-string v3, "factory_reset_prep_permission_apis"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_1ba
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->factoryResetPrepPermissionApis:Z

    .line 99
    const-string v3, "wallet_role_cross_user_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->walletRoleCrossUserEnabled:Z

    .line 100
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_1ca

    move v3, v1

    goto :goto_1d0

    :cond_1ca
    const-string v3, "wallet_role_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_1d0
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->walletRoleEnabled:Z

    .line 101
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_1d8

    move v3, v1

    goto :goto_1de

    :cond_1d8
    const-string v3, "wallet_role_icon_property_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_1de
    sput-boolean v3, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->walletRoleIconPropertyEnabled:Z
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e0} :catch_1ea
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_1e0} :catch_1e1

    .end local v2    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_1f2

    .line 105
    :catch_1e1
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/LinkageError;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f3

    .line 102
    .end local v2    # "e":Ljava/lang/LinkageError;
    :catch_1ea
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1f2
    nop

    .line 110
    :goto_1f3
    sput-boolean v1, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    .line 111
    return-void
.end method


# virtual methods
.method public blacklist allowHostPermissionDialogsOnVirtualDevices()Z
    .registers 2

    .line 114
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 115
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 117
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->allowHostPermissionDialogsOnVirtualDevices:Z

    return v0
.end method

.method public blacklist checkOpOverloadApiEnabled()Z
    .registers 2

    .line 122
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 123
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 125
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->checkOpOverloadApiEnabled:Z

    return v0
.end method

.method public blacklist deviceAwarePermissionApisEnabled()Z
    .registers 2

    .line 130
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 131
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 133
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->deviceAwarePermissionApisEnabled:Z

    return v0
.end method

.method public blacklist deviceAwarePermissionsEnabled()Z
    .registers 2

    .line 138
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 139
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 141
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->deviceAwarePermissionsEnabled:Z

    return v0
.end method

.method public blacklist deviceIdInOpProxyInfoEnabled()Z
    .registers 2

    .line 146
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 147
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 149
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->deviceIdInOpProxyInfoEnabled:Z

    return v0
.end method

.method public blacklist devicePolicyManagementRoleSplitCreateManagedProfileEnabled()Z
    .registers 2

    .line 154
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 155
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 157
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->devicePolicyManagementRoleSplitCreateManagedProfileEnabled:Z

    return v0
.end method

.method public blacklist enableAiaiProxiedTextClassifiers()Z
    .registers 2

    .line 162
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 163
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 165
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableAiaiProxiedTextClassifiers:Z

    return v0
.end method

.method public blacklist enableAllSqliteAppopsAccesses()Z
    .registers 2

    .line 170
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 171
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 173
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableAllSqliteAppopsAccesses:Z

    return v0
.end method

.method public blacklist enableOtpInTextClassifiers()Z
    .registers 2

    .line 178
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 179
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 181
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableOtpInTextClassifiers:Z

    return v0
.end method

.method public blacklist enableSqliteAppopsAccesses()Z
    .registers 2

    .line 186
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 187
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 189
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableSqliteAppopsAccesses:Z

    return v0
.end method

.method public blacklist enableSystemSupervisionRoleBehavior()Z
    .registers 2

    .line 194
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 195
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 197
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enableSystemSupervisionRoleBehavior:Z

    return v0
.end method

.method public blacklist enhancedConfirmationInCallApisEnabled()Z
    .registers 2

    .line 202
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 203
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 205
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationInCallApisEnabled:Z

    return v0
.end method

.method public blacklist enhancedConfirmationModeApisEnabled()Z
    .registers 2

    .line 210
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 211
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 213
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationModeApisEnabled:Z

    return v0
.end method

.method public blacklist factoryResetPrepPermissionApis()Z
    .registers 2

    .line 218
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 219
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 221
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->factoryResetPrepPermissionApis:Z

    return v0
.end method

.method public blacklist finePowerMonitorPermission()Z
    .registers 2

    .line 226
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 227
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 229
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->finePowerMonitorPermission:Z

    return v0
.end method

.method public blacklist getEmergencyRoleHolderApiEnabled()Z
    .registers 2

    .line 234
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 235
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 237
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->getEmergencyRoleHolderApiEnabled:Z

    return v0
.end method

.method public blacklist grantReadBlockedNumbersToSystemUiIntelligence()Z
    .registers 2

    .line 242
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 243
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 245
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->grantReadBlockedNumbersToSystemUiIntelligence:Z

    return v0
.end method

.method public blacklist healthConnectBackupRestorePermissionEnabled()Z
    .registers 2

    .line 250
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 251
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 253
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->healthConnectBackupRestorePermissionEnabled:Z

    return v0
.end method

.method public blacklist locationBypassPrivacyDashboardEnabled()Z
    .registers 2

    .line 258
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 259
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 261
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->locationBypassPrivacyDashboardEnabled:Z

    return v0
.end method

.method public blacklist noteOpBatchingEnabled()Z
    .registers 2

    .line 266
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 267
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 269
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->noteOpBatchingEnabled:Z

    return v0
.end method

.method public blacklist opEnableMobileDataByUser()Z
    .registers 2

    .line 274
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 275
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 277
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->opEnableMobileDataByUser:Z

    return v0
.end method

.method public blacklist permissionRequestShortCircuitEnabled()Z
    .registers 2

    .line 282
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 283
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 285
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->permissionRequestShortCircuitEnabled:Z

    return v0
.end method

.method public blacklist permissionTreeApisDeprecated()Z
    .registers 2

    .line 290
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 291
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 293
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->permissionTreeApisDeprecated:Z

    return v0
.end method

.method public blacklist rangingPermissionEnabled()Z
    .registers 2

    .line 298
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 299
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 301
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->rangingPermissionEnabled:Z

    return v0
.end method

.method public blacklist rateLimitBatchedNoteOpAsyncCallbacksEnabled()Z
    .registers 2

    .line 306
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 307
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 309
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->rateLimitBatchedNoteOpAsyncCallbacksEnabled:Z

    return v0
.end method

.method public blacklist recordAllRuntimeAppopsSqlite()Z
    .registers 2

    .line 314
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 315
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 317
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->recordAllRuntimeAppopsSqlite:Z

    return v0
.end method

.method public blacklist replaceBodySensorPermissionEnabled()Z
    .registers 2

    .line 322
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 323
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 325
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->replaceBodySensorPermissionEnabled:Z

    return v0
.end method

.method public blacklist retailDemoRoleEnabled()Z
    .registers 2

    .line 330
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 331
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 333
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->retailDemoRoleEnabled:Z

    return v0
.end method

.method public blacklist sensitiveNotificationAppProtection()Z
    .registers 2

    .line 338
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 339
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 341
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->sensitiveNotificationAppProtection:Z

    return v0
.end method

.method public blacklist setNextAttributionSource()Z
    .registers 2

    .line 346
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 347
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 349
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->setNextAttributionSource:Z

    return v0
.end method

.method public blacklist shouldRegisterAttributionSource()Z
    .registers 2

    .line 354
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 355
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 357
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->shouldRegisterAttributionSource:Z

    return v0
.end method

.method public blacklist supervisionRolePermissionUpdateEnabled()Z
    .registers 2

    .line 362
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 363
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 365
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->supervisionRolePermissionUpdateEnabled:Z

    return v0
.end method

.method public blacklist syncOnOpNotedApi()Z
    .registers 2

    .line 370
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 371
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 373
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->syncOnOpNotedApi:Z

    return v0
.end method

.method public blacklist systemServerRoleControllerEnabled()Z
    .registers 2

    .line 378
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 379
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 381
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->systemServerRoleControllerEnabled:Z

    return v0
.end method

.method public blacklist systemVendorIntelligenceRoleEnabled()Z
    .registers 2

    .line 386
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 387
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 389
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->systemVendorIntelligenceRoleEnabled:Z

    return v0
.end method

.method public blacklist textClassifierChoiceApiEnabled()Z
    .registers 2

    .line 394
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 395
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 397
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->textClassifierChoiceApiEnabled:Z

    return v0
.end method

.method public blacklist unknownCallPackageInstallBlockingEnabled()Z
    .registers 2

    .line 402
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 403
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 405
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->unknownCallPackageInstallBlockingEnabled:Z

    return v0
.end method

.method public blacklist unknownCallSettingBlockedLoggingEnabled()Z
    .registers 2

    .line 410
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 411
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 413
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->unknownCallSettingBlockedLoggingEnabled:Z

    return v0
.end method

.method public blacklist updatableTextClassifierForOtpDetectionEnabled()Z
    .registers 2

    .line 418
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 419
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 421
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->updatableTextClassifierForOtpDetectionEnabled:Z

    return v0
.end method

.method public blacklist useProfileLabelsForDefaultAppSectionTitles()Z
    .registers 2

    .line 426
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 427
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 429
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->useProfileLabelsForDefaultAppSectionTitles:Z

    return v0
.end method

.method public blacklist voiceActivationPermissionApis()Z
    .registers 2

    .line 434
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 435
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 437
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->voiceActivationPermissionApis:Z

    return v0
.end method

.method public blacklist walletRoleCrossUserEnabled()Z
    .registers 2

    .line 442
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 443
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 445
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->walletRoleCrossUserEnabled:Z

    return v0
.end method

.method public blacklist walletRoleEnabled()Z
    .registers 2

    .line 450
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 451
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 453
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->walletRoleEnabled:Z

    return v0
.end method

.method public blacklist walletRoleIconPropertyEnabled()Z
    .registers 2

    .line 458
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 459
    invoke-direct {p0}, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 461
    :cond_7
    sget-boolean v0, Landroid/permission/jarjar/android/permission/flags/FeatureFlagsImpl;->walletRoleIconPropertyEnabled:Z

    return v0
.end method
